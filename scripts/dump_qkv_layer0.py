import os
import json
import hashlib
import numpy as np
import torch
from transformers import AutoModel

MODEL_ID = "dccuchile/bert-base-spanish-wwm-cased"
# Ruta de entrada (los casos golden_XX_seq64 con input_ids.npy y attention_mask.npy)
BASE = "/home/dolv07/golden_beto"

# --- NUEVA RUTA DE SALIDA: data/golden dentro del proyecto ---
# Usamos expanduser para obtener /home/dolv07 y construimos la ruta completa
OUTDIR = os.path.join(os.path.expanduser("~"), "gemm-beto-kv260", "data", "golden")

os.makedirs(OUTDIR, exist_ok=True)

def sha256_of_array(x: np.ndarray) -> str:
    return hashlib.sha256(x.tobytes()).hexdigest()

@torch.no_grad()
def dump_case(case_dir: str, model):
    case_path = f"{BASE}/{case_dir}"
    input_ids = np.load(f"{case_path}/input_ids.npy")
    attention_mask = np.load(f"{case_path}/attention_mask.npy")

    # containers
    saved = {}

    # hook: query/key/value in layer 0
    layer0 = model.encoder.layer[0].attention.self

    def hook_query(module, inp, out):
        saved["X"] = inp[0].detach().cpu().numpy().astype(np.float32)  # input hidden_states
        saved["Q"] = out.detach().cpu().numpy().astype(np.float32)

    def hook_key(module, inp, out):
        saved["K"] = out.detach().cpu().numpy().astype(np.float32)

    def hook_value(module, inp, out):
        saved["V"] = out.detach().cpu().numpy().astype(np.float32)

    hq = layer0.query.register_forward_hook(hook_query)
    hk = layer0.key.register_forward_hook(hook_key)
    hv = layer0.value.register_forward_hook(hook_value)

    # forward
    inp = torch.tensor(input_ids, dtype=torch.long)
    att = torch.tensor(attention_mask, dtype=torch.long)
    _ = model(input_ids=inp, attention_mask=att)

    # remove hooks
    hq.remove(); hk.remove(); hv.remove()

    # save outputs (ahora dentro de OUTDIR/case_dir)
    out_base = os.path.join(OUTDIR, case_dir)
    os.makedirs(out_base, exist_ok=True)

    np.save(os.path.join(out_base, "X.npy"), saved["X"])
    np.save(os.path.join(out_base, "Q.npy"), saved["Q"])
    np.save(os.path.join(out_base, "K.npy"), saved["K"])
    np.save(os.path.join(out_base, "V.npy"), saved["V"])

    # also save weights/bias for exact linear (important for quant)
    np.save(os.path.join(out_base, "Wq.npy"), layer0.query.weight.detach().cpu().numpy().astype(np.float32))
    np.save(os.path.join(out_base, "bq.npy"), layer0.query.bias.detach().cpu().numpy().astype(np.float32))
    np.save(os.path.join(out_base, "Wk.npy"), layer0.key.weight.detach().cpu().numpy().astype(np.float32))
    np.save(os.path.join(out_base, "bk.npy"), layer0.key.bias.detach().cpu().numpy().astype(np.float32))
    np.save(os.path.join(out_base, "Wv.npy"), layer0.value.weight.detach().cpu().numpy().astype(np.float32))
    np.save(os.path.join(out_base, "bv.npy"), layer0.value.bias.detach().cpu().numpy().astype(np.float32))

    meta = {
        "model": MODEL_ID,
        "case": case_dir,
        "seq_len": int(input_ids.shape[1]),
        "X_shape": list(saved["X"].shape),
        "Q_shape": list(saved["Q"].shape),
        "dtype": "float32",
        "sha256_X": sha256_of_array(saved["X"]),
        "sha256_Q": sha256_of_array(saved["Q"]),
        "sha256_K": sha256_of_array(saved["K"]),
        "sha256_V": sha256_of_array(saved["V"]),
    }

    with open(os.path.join(out_base, "meta.json"), "w") as f:
        json.dump(meta, f, indent=2)

    print(f"\n✅ dumped {case_dir}")
    print("X:", saved["X"].shape, "Q:", saved["Q"].shape)

def main():
    # Quita el pooler para evitar warning (y da exactamente lo mismo para last_hidden_state)
    model = AutoModel.from_pretrained(MODEL_ID, add_pooling_layer=False)
    model.eval()

    for c in ["golden_00_seq64", "golden_01_seq64", "golden_02_seq64"]:
        dump_case(c, model)

    print("\nDONE. Output in:", OUTDIR)

if __name__ == "__main__":
    main()
