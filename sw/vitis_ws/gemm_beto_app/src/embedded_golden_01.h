#ifndef EMBEDDED_GOLDEN_01_H
#define EMBEDDED_GOLDEN_01_H

#include <stdint.h>

#define EMBED_CASE_M 64
#define EMBED_CASE_K 768
#define EMBED_CASE_N 768
#define EMBED_CASE_X_ELEMS 49152
#define EMBED_CASE_W_ELEMS 589824
#define EMBED_CASE_Y_ELEMS 49152

extern const int8_t embedded_golden_01_Xq[49152];
extern const int8_t embedded_golden_01_Wq[589824];
extern const int8_t embedded_golden_01_Wk[589824];
extern const int8_t embedded_golden_01_Wv[589824];

extern const int32_t embedded_golden_01_Qref[49152];
extern const int32_t embedded_golden_01_Kref[49152];
extern const int32_t embedded_golden_01_Vref[49152];

#endif
