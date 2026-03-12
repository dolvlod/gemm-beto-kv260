#include <ap_int.h>

static const int M = 64;
static const int N = 768;
static const int K = 768;

static const int TM = 32;
static const int TN = 32;
static const int TK = 32;

extern "C" void gemm_int8(
    const ap_int<8>* X,   // [M*K]
    const ap_int<8>* W,   // [N*K]
    ap_int<32>* Y         // [M*N]
) {
#pragma HLS INTERFACE m_axi port=X offset=slave bundle=gmem0 depth=49152
#pragma HLS INTERFACE m_axi port=W offset=slave bundle=gmem1 depth=589824
#pragma HLS INTERFACE m_axi port=Y offset=slave bundle=gmem2 depth=49152

#pragma HLS INTERFACE s_axilite port=X bundle=control
#pragma HLS INTERFACE s_axilite port=W bundle=control
#pragma HLS INTERFACE s_axilite port=Y bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    ap_int<8> Xbuf[M][K];
#pragma HLS BIND_STORAGE variable=Xbuf type=ram_2p impl=bram

load_X:
    for (int i = 0; i < M; i++) {
        for (int k = 0; k < K; k++) {
#pragma HLS PIPELINE II=1
            Xbuf[i][k] = X[i * K + k];
        }
    }

tile_m:
    for (int m0 = 0; m0 < M; m0 += TM) {
    tile_n:
        for (int n0 = 0; n0 < N; n0 += TN) {

            ap_int<32> acc[TM][TN];
#pragma HLS ARRAY_PARTITION variable=acc complete dim=2

        init_acc:
            for (int i = 0; i < TM; i++) {
                for (int j = 0; j < TN; j++) {
#pragma HLS PIPELINE II=1
                    acc[i][j] = 0;
                }
            }

        tile_k:
            for (int k0 = 0; k0 < K; k0 += TK) {

                ap_int<8> Xtile[TM][TK];
                ap_int<8> Wtile[TN][TK];
#pragma HLS ARRAY_PARTITION variable=Xtile complete dim=2
#pragma HLS ARRAY_PARTITION variable=Wtile complete dim=2

            load_Xtile:
                for (int i = 0; i < TM; i++) {
                    for (int kk = 0; kk < TK; kk++) {
#pragma HLS PIPELINE II=1
                        Xtile[i][kk] = Xbuf[m0 + i][k0 + kk];
                    }
                }

            load_Wtile:
                for (int j = 0; j < TN; j++) {
                    for (int kk = 0; kk < TK; kk++) {
#pragma HLS PIPELINE II=1
                        Wtile[j][kk] = W[(n0 + j) * K + (k0 + kk)];
                    }
                }

            compute:
                for (int i = 0; i < TM; i++) {
                    for (int j = 0; j < TN; j++) {
#pragma HLS PIPELINE II=1
                        ap_int<32> sum = acc[i][j];
                        for (int kk = 0; kk < TK; kk++) {
#pragma HLS UNROLL factor=8
                            sum += (ap_int<32>)Xtile[i][kk] * (ap_int<32>)Wtile[j][kk];
                        }
                        acc[i][j] = sum;
                    }
                }
            }

        store_Y:
            for (int i = 0; i < TM; i++) {
                for (int j = 0; j < TN; j++) {
#pragma HLS PIPELINE II=1
                    Y[(m0 + i) * N + (n0 + j)] = acc[i][j];
                }
            }
        }
    }
}
