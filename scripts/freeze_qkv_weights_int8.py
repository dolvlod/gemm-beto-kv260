import os, json
import numpy as np

PROJECT_ROOT = os.path.expanduser("~/gemm-beto-kv260")
SRC = os.path.join(PROJECT_ROOT, "data", "golden", "golden_00_seq64")   # entrada: pesos float32
OUT = os.path.join(PROJECT_ROOT, "data", "frozen_weights")              # salida: pesos cuantizados

os.makedirs(OUT, exist_ok=True)

def quantize_symmetric_int8_per_channel(W: np.ndarray):
    """
    W shape: [out, in]
    Return:
      Wq int8 [out, in]
      sw float32 [out]
    """
    max_abs = np.max(np.abs(W), axis=1)                       # [out]
    sw = np.where(max_abs > 0, max_abs / 127.0, 1.0).astype(np.float32)
    Wq = np.round(W / sw[:, None]).astype(np.int32)
    Wq = np.clip(Wq, -127, 127).astype(np.int8)
    return Wq, sw

def save_one(tag: str):
    # Load float weights/bias
    W = np.load(f"{SRC}/W{tag}.npy").astype(np.float32)       # [768,768]
    b = np.load(f"{SRC}/b{tag}.npy").astype(np.float32)       # [768]

    # Quantize
    Wq, sw = quantize_symmetric_int8_per_channel(W)

    # Save
    np.save(f"{OUT}/W{tag}_int8.npy", Wq)
    np.save(f"{OUT}/sw_{tag}.npy", sw)
    np.save(f"{OUT}/b{tag}.npy", b)  # float32 (no se cuantiza aquí)

    # Quick self-check reconstruction error
    W_rec = (Wq.astype(np.float32) * sw[:, None])
    err = W_rec - W
    max_abs = float(np.max(np.abs(err)))
    mean_abs = float(np.mean(np.abs(err)))

    print(f"\n✅ Frozen {tag}")
    print("W float:", W.shape, W.dtype)
    print("Wq int8:", Wq.shape, Wq.dtype)
    print("sw:", sw.shape, sw.dtype, "min/max:", float(sw.min()), float(sw.max()))
    print("bias:", b.shape, b.dtype)
    print("recon weight error | max_abs:", max_abs, "mean_abs:", mean_abs)

def main():
    meta = {
        "scheme": "int8 symmetric per-channel weights, bias float32",
        "range_int8": [-127, 127],
        "SRC": SRC,
        "OUT": OUT,
        "notes": [
            "Wq saved as int8; sw saved as float32 per output channel.",
            "Reconstruction: W ≈ Wq * sw[:,None].",
            "Bias kept float32 for simplicity and fidelity."
        ]
    }

    for tag in ["q", "k", "v"]:
        save_one(tag)

    with open(f"{OUT}/meta.json", "w") as f:
        json.dump(meta, f, indent=2)

    print("\nDONE ✅ Outputs saved in:", OUT)

if __name__ == "__main__":
    main()
