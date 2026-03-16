#ifndef EMBEDDED_GOLDEN_00_H
#define EMBEDDED_GOLDEN_00_H

#include <stdint.h>

#define EMBED_CASE_M 64
#define EMBED_CASE_K 768
#define EMBED_CASE_N 768
#define EMBED_CASE_X_ELEMS 49152
#define EMBED_CASE_W_ELEMS 589824
#define EMBED_CASE_Y_ELEMS 49152

extern const int8_t embedded_golden_00_Xq[49152];
extern const int8_t embedded_golden_00_Wq[589824];
extern const int8_t embedded_golden_00_Wk[589824];
extern const int8_t embedded_golden_00_Wv[589824];

extern const int32_t embedded_golden_00_Qref[49152];
extern const int32_t embedded_golden_00_Kref[49152];
extern const int32_t embedded_golden_00_Vref[49152];

#endif
