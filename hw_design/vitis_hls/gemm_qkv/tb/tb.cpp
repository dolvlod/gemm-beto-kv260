#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cstdint>
#include <cstring>
#include <ap_int.h>

extern "C" void gemm_int8(const ap_int<8>* X, const ap_int<8>* W, ap_int<32>* Y);

static const int M = 64;   // seq_len
static const int K = 768;  // hidden_size in
static const int N = 768;  // hidden_size out for Q/K/V

struct ProjSpec {
    std::string name;
    std::string w_file;
    std::string ref_file;
};

bool read_file(const std::string& path, std::vector<uint8_t>& out) {
    std::ifstream f(path, std::ios::binary);
    if (!f) return false;
    f.seekg(0, std::ios::end);
    std::streamsize sz = f.tellg();
    if (sz < 0) return false;
    f.seekg(0, std::ios::beg);
    out.resize(static_cast<size_t>(sz));
    if (sz > 0) {
        f.read(reinterpret_cast<char*>(out.data()), sz);
    }
    return f.good() || f.eof();
}

bool load_int8_tensor(const std::string& path, size_t expected_bytes, std::vector<ap_int<8>>& out) {
    std::vector<uint8_t> raw;
    if (!read_file(path, raw)) {
        std::cerr << "ERROR: could not read " << path << "\n";
        return false;
    }
    if (raw.size() != expected_bytes) {
        std::cerr << "ERROR: bad size for " << path
                  << " (got " << raw.size() << ", expected " << expected_bytes << ")\n";
        return false;
    }

    out.resize(expected_bytes);
    for (size_t i = 0; i < expected_bytes; i++) {
        out[i] = static_cast<int8_t>(raw[i]);
    }
    return true;
}

bool load_int32_ref(const std::string& path, size_t expected_elems, std::vector<int32_t>& out) {
    std::vector<uint8_t> raw;
    if (!read_file(path, raw)) {
        std::cerr << "ERROR: could not read " << path << "\n";
        return false;
    }

    size_t expected_bytes = expected_elems * sizeof(int32_t);
    if (raw.size() != expected_bytes) {
        std::cerr << "ERROR: bad size for " << path
                  << " (got " << raw.size() << ", expected " << expected_bytes << ")\n";
        return false;
    }

    out.resize(expected_elems);
    std::memcpy(out.data(), raw.data(), expected_bytes);
    return true;
}

bool run_projection(
    const std::string& case_dir,
    const std::vector<ap_int<8>>& X,
    const ProjSpec& proj,
    int& mismatches_out,
    int32_t& max_abs_err_out
) {
    std::vector<ap_int<8>> W;
    std::vector<ap_int<32>> Y(M * N);
    std::vector<int32_t> Yref;

    std::string w_path   = case_dir + "/" + proj.w_file;
    std::string ref_path = case_dir + "/" + proj.ref_file;

    if (!load_int8_tensor(w_path, N * K, W)) return false;
    if (!load_int32_ref(ref_path, M * N, Yref)) return false;

    gemm_int8(X.data(), W.data(), Y.data());

    int mism = 0;
    int32_t max_err = 0;

    for (int i = 0; i < M * N; i++) {
        int32_t y = static_cast<int32_t>(Y[i]);
        int32_t ref = Yref[i];
        int32_t err = y - ref;
        if (err != 0) mism++;

        int32_t abs_err = (err < 0) ? -err : err;
        if (abs_err > max_err) max_err = abs_err;
    }

    mismatches_out = mism;
    max_abs_err_out = max_err;
    return true;
}

int main() {
    const std::string root = "/home/dolv07/gemm-beto-kv260/data/hls_bins";

    const std::vector<std::string> cases = {
        "golden_00_seq64",
        "golden_01_seq64",
        "golden_02_seq64"
    };

    const std::vector<ProjSpec> projs = {
        {"Q", "Wq.bin", "Qref.bin"},
        {"K", "Wk.bin", "Kref.bin"},
        {"V", "Wv.bin", "Vref.bin"}
    };

    int total_tests = 0;
    int total_fail = 0;

    for (const auto& c : cases) {
        std::string case_dir = root + "/" + c;

        std::vector<ap_int<8>> X;
        std::string x_path = case_dir + "/Xq.bin";

        std::cout << "\n==================================================\n";
        std::cout << "CASE: " << c << "\n";
        std::cout << "==================================================\n";

        if (!load_int8_tensor(x_path, M * K, X)) {
            std::cerr << "ERROR: failed loading X for " << c << "\n";
            total_fail += static_cast<int>(projs.size());
            total_tests += static_cast<int>(projs.size());
            continue;
        }

        for (const auto& p : projs) {
            total_tests++;

            int mism = 0;
            int32_t max_err = 0;

            bool ok = run_projection(case_dir, X, p, mism, max_err);
            if (!ok) {
                std::cout << "[" << c << "][" << p.name << "] ERROR loading files or running test\n";
                total_fail++;
                continue;
            }

            std::cout << "[" << c << "][" << p.name << "] "
                      << "Mismatches: " << mism << " / " << (M * N)
                      << ", Max abs err: " << max_err;

            if (mism == 0) {
                std::cout << "  --> PASS\n";
            } else {
                std::cout << "  --> FAIL\n";
                total_fail++;
            }
        }
    }

    std::cout << "\n==================================================\n";
    std::cout << "TOTAL TESTS: " << total_tests << "\n";
    std::cout << "TOTAL FAILS: " << total_fail << "\n";
    std::cout << "==================================================\n";

    if (total_fail == 0) {
        std::cout << "✅ ALL PASS\n";
        return 0;
    } else {
        std::cout << "❌ SOME TESTS FAILED\n";
        return 2;
    }
}
