import os
import json
import numpy as np

BASE = os.path.join(os.path.expanduser("~"), "gemm-beto-kv260", "data", "golden")
RESULTS_DIR = os.path.join(os.path.expanduser("~"), "gemm-beto-kv260", "results", "simulation_outputs")
os.makedirs(RESULTS_DIR, exist_ok=True)

def quantize_symmetric_int8_per_tensor(x: np.ndarray):
    max_abs = np.max(np.abs(x))
    scale = max_abs / 127.0 if max_abs > 0 else 1.0
    q = np.round(x / scale).astype(np.int32)
    q = np.clip(q, -127, 127).astype(np.int8)
    return q, scale

def quantize_symmetric_int8_per_channel_weights(W: np.ndarray):
    max_abs = np.max(np.abs(W), axis=1)
    scale = np.where(max_abs > 0, max_abs / 127.0, 1.0).astype(np.float32)
    q = np.round(W / scale[:, None]).astype(np.int32)
    q = np.clip(q, -127, 127).astype(np.int8)
    return q, scale

def test_one(case, name):  # name = Q/K/V
    X = np.load(f"{BASE}/{case}/X.npy").astype(np.float32).reshape(-1, 768)
    Y_gold = np.load(f"{BASE}/{case}/{name}.npy").astype(np.float32).reshape(-1, 768)
    W = np.load(f"{BASE}/{case}/W{name.lower()}.npy").astype(np.float32)
    b = np.load(f"{BASE}/{case}/b{name.lower()}.npy").astype(np.float32)

    Xq, sx = quantize_symmetric_int8_per_tensor(X)
    Wq, sw = quantize_symmetric_int8_per_channel_weights(W)

    Y_int32 = Xq.astype(np.int32) @ Wq.astype(np.int32).T
    Y_deq = Y_int32.astype(np.float32) * (sx * sw[None, :]) + b[None, :]

    diff = Y_deq - Y_gold
    max_abs = float(np.max(np.abs(diff)))
    mean_abs = float(np.mean(np.abs(diff)))
    rmse = float(np.sqrt(np.mean(diff**2)))

    mask = np.abs(Y_gold) > 1e-2
    mean_rel = float(np.mean(np.abs(diff[mask]) / np.abs(Y_gold[mask]))) if np.any(mask) else float("nan")

    return max_abs, mean_abs, rmse, float(sx), float(sw.min()), float(sw.max()), mean_rel

def run_case(case):
    print(f"\n=== {case} ===")
    case_results = {}
    for name in ["Q", "K", "V"]:
        max_abs, mean_abs, rmse, sx, swmin, swmax, mean_rel = test_one(case, name)
        print(f"{name}: max_abs={max_abs:.6f}  mean_abs={mean_abs:.6f}  rmse={rmse:.6f}  mean_rel(clean)={mean_rel:.3f}")
        case_results[name] = {
            "max_abs": max_abs,
            "mean_abs": mean_abs,
            "rmse": rmse,
            "mean_rel": mean_rel,
            "sx": sx,
            "sw_min": swmin,
            "sw_max": swmax
        }
    print("----")
    with open(os.path.join(RESULTS_DIR, f"{case}_quant_errors.json"), "w") as f:
        json.dump(case_results, f, indent=2)

if __name__ == "__main__":
    for case in ["golden_00_seq64", "golden_01_seq64", "golden_02_seq64"]:
        run_case(case)
