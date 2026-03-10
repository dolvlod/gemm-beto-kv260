import numpy as np
import torch
import hashlib
from transformers import AutoModel

MODEL_ID = "dccuchile/bert-base-spanish-wwm-cased"
BASE = "/home/dolv07/golden_beto"

def sha256_of_array(x: np.ndarray) -> str:
    # hash de bytes exactos del float32
    return hashlib.sha256(x.tobytes()).hexdigest()

@torch.no_grad()
def run_case(case_dir: str):
    meta_str = np.load(f"{BASE}/{case_dir}/meta.npy", allow_pickle=True).item()
    meta = eval(meta_str) if meta_str.strip().startswith("{") else meta_str  # fallback

    input_ids = np.load(f"{BASE}/{case_dir}/input_ids.npy")
    attention_mask = np.load(f"{BASE}/{case_dir}/attention_mask.npy")
    golden = np.load(f"{BASE}/{case_dir}/last_hidden_state.npy")

    model = AutoModel.from_pretrained(MODEL_ID)
    model.eval()

    inp = torch.tensor(input_ids, dtype=torch.long)
    att = torch.tensor(attention_mask, dtype=torch.long)
    out = model(input_ids=inp, attention_mask=att).last_hidden_state.cpu().numpy().astype(np.float32)

    max_abs = np.max(np.abs(out - golden))
    hash_now = sha256_of_array(out)
    hash_golden = eval(meta_str).get("sha256_last_hidden_state", "N/A") if meta_str.strip().startswith("{") else "N/A"

    print(f"\n=== {case_dir} ===")
    print("shape:", out.shape, "dtype:", out.dtype)
    print("max_abs_error:", float(max_abs))
    print("sha256(now):   ", hash_now)
    print("sha256(golden):", hash_golden)

for c in ["golden_00_seq64", "golden_01_seq64", "golden_02_seq64"]:
    run_case(c)
