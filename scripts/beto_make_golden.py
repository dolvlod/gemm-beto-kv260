import os
import json
import hashlib
import numpy as np
import torch
from transformers import AutoTokenizer, AutoModel

# ===== CONFIGURACIÓN =====
MODEL = "dccuchile/bert-base-spanish-wwm-cased"
SEQ_LEN = 64
PROJECT_ROOT = os.path.expanduser("~/gemm-beto-kv260")
OUTDIR_BASE = os.path.join(PROJECT_ROOT, "data", "golden_inputs")  # Carpeta donde se guardarán los casos

TEXTS = [
    "Este es un texto corto en español para verificar BETO.",
    "Bogotá es la capital de Colombia y tiene un clima variable.",
    "Me gusta estudiar y comparar resultados numéricos de modelos."
]

# ===== FUNCIONES AUXILIARES =====
def sha256_bytes(b: bytes) -> str:
    return hashlib.sha256(b).hexdigest()

# ===== PREPARACIÓN =====
os.makedirs(OUTDIR_BASE, exist_ok=True)

# Reproducibilidad (hasta donde PyTorch CPU lo permite)
torch.manual_seed(0)
torch.set_num_threads(8)
torch.set_num_interop_threads(1)

tokenizer = AutoTokenizer.from_pretrained(MODEL)
model = AutoModel.from_pretrained(MODEL, add_pooling_layer=False)
model.eval()

# ===== GENERACIÓN DE CADA CASO =====
for idx, text in enumerate(TEXTS):
    # Nombre de la carpeta para este caso (ej. golden_00_seq64)
    case_name = f"golden_{idx:02d}_seq{SEQ_LEN}"
    case_dir = os.path.join(OUTDIR_BASE, case_name)
    os.makedirs(case_dir, exist_ok=True)

    # Tokenizar
    enc = tokenizer(
        text,
        padding="max_length",
        truncation=True,
        max_length=SEQ_LEN,
        return_tensors="pt",
    )

    # Obtener last_hidden_state
    with torch.inference_mode():
        out = model(**enc).last_hidden_state  # (1, L, 768)

    # Convertir a numpy (los tipos se mantienen como están)
    input_ids = enc["input_ids"].cpu().numpy().astype(np.int64)          # forma (1, 64)
    attention_mask = enc["attention_mask"].cpu().numpy().astype(np.int64)
    last_hidden_state = out.cpu().numpy().astype(np.float32)             # forma (1, 64, 768)

    # Guardar archivos .npy
    np.save(os.path.join(case_dir, "input_ids.npy"), input_ids)
    np.save(os.path.join(case_dir, "attention_mask.npy"), attention_mask)
    np.save(os.path.join(case_dir, "last_hidden_state.npy"), last_hidden_state)

    # Metadatos (sin el hash, pero puedes incluirlo si quieres)
    meta = {
        "model": MODEL,
        "seq_len": SEQ_LEN,
        "text": text,
        "shape": list(last_hidden_state.shape),
        "dtype": str(last_hidden_state.dtype),
        "torch_version": torch.__version__,
    }
    # Hash opcional (puedes agregarlo si lo necesitas)
    meta["sha256_last_hidden_state"] = sha256_bytes(last_hidden_state.tobytes())

    with open(os.path.join(case_dir, "meta.json"), "w") as f:
        json.dump(meta, f, indent=2, ensure_ascii=False)

    print(f"[OK] Generado {case_dir}")
    print("     sha256:", meta["sha256_last_hidden_state"][:16], "...")  # solo primeros 16

print("\n✅ Todos los casos generados en:", OUTDIR_BASE)
