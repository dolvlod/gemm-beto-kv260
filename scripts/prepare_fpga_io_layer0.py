import os
import numpy as np

PROJECT_ROOT = os.path.expanduser("~/gemm-beto-kv260")
IN_BASE = os.path.join(PROJECT_ROOT, "data", "golden")
W_BASE  = os.path.join(PROJECT_ROOT, "data", "frozen_weights")
OUT_BASE = os.path.join(PROJECT_ROOT, "data", "fpga_io")

os.makedirs(OUT_BASE, exist_ok=True)

def quantize_symmetric_int8_per_tensor(x: np.ndarray):
    max_abs = np.max(np.abs(x))
    sx = max_abs / 127.0 if max_abs > 0 else 1.0
    xq = np.round(x / sx).astype(np.int32)
    xq = np.clip(xq, -127, 127).astype(np.int8)
    return xq, np.float32(sx)

def run_case(case):
    print(f"\n=== {case} ===")
    case_in = os.path.join(IN_BASE, case)
    case_out = os.path.join(OUT_BASE, case)
    os.makedirs(case_out, exist_ok=True)

    # Load float X
    X = np.load(os.path.join(case_in, "X.npy")).astype(np.float32)     # [1,64,768]
    X2 = X.reshape(-1, 768)                                            # [64,768]

    # Quantize X -> Xq
    Xq, sx = quantize_symmetric_int8_per_tensor(X2)

    # Save Xq and sx
    np.save(os.path.join(case_out, "Xq_int8.npy"), Xq)
    np.save(os.path.join(case_out, "sx.npy"), np.array([sx], dtype=np.float32))

    print("X:", X2.shape, "-> Xq:", Xq.shape, Xq.dtype, "sx:", float(sx))

    # Load frozen weights int8
    for tag in ["q","k","v"]:
        W_int8 = np.load(os.path.join(W_BASE, f"W{tag}_int8.npy")).astype(np.int8)   # [768,768]
        # int32 reference: Xq @ W^T
        Y_int32 = Xq.astype(np.int32) @ W_int8.astype(np.int32).T                    # [64,768]
        np.save(os.path.join(case_out, f"{tag.upper()}_int32_ref.npy"), Y_int32)

        print(f"{tag.upper()}_int32_ref saved:", Y_int32.shape, Y_int32.dtype,
              "range:", int(Y_int32.min()), int(Y_int32.max()))

if __name__ == "__main__":
    for case in ["golden_00_seq64", "golden_01_seq64", "golden_02_seq64"]:
        run_case(case)

    print("\nDONE ✅ Output in:", OUT_BASE)

