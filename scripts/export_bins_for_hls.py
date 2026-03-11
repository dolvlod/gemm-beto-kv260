#!/usr/bin/env python3
# -*- coding: utf-8 -*-



import os
import json
import hashlib
import numpy as np

# Ruta del repo: .../gemm-beto-kv260
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(SCRIPT_DIR)

DATA_DIR = os.path.join(REPO_ROOT, "data")
FPGA_IO_DIR = os.path.join(DATA_DIR, "fpga_io")
FROZEN_DIR = os.path.join(DATA_DIR, "frozen_weights")
HLS_BINS_DIR = os.path.join(DATA_DIR, "hls_bins")

os.makedirs(HLS_BINS_DIR, exist_ok=True)


def sha256_file(path):
    sha = hashlib.sha256()
    with open(path, "rb") as f:
        for block in iter(lambda: f.read(65536), b""):
            sha.update(block)
    return sha.hexdigest()


def save_bin(case, name, arr, dtype=None):
    if dtype is not None:
        arr = arr.astype(dtype)
    out_path = os.path.join(HLS_BINS_DIR, case, name)
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    arr.tofile(out_path)
    return out_path


def add_manifest_entry(manifest, name, arr, path):
    manifest["files"][name] = {
        "shape": list(arr.shape),
        "dtype": str(arr.dtype),
        "sha256": sha256_file(path),
        "bytes": int(os.path.getsize(path)),
    }


def export_case(case):
    print(f"\n=== Exportando {case} ===")
    case_fpga = os.path.join(FPGA_IO_DIR, case)

    if not os.path.isdir(case_fpga):
        raise FileNotFoundError(
            f"No existe la carpeta del caso: {case_fpga}"
        )

    manifest = {
        "case": case,
        "description": "Archivos binarios para simulacion HLS/validacion del kernel GEMM",
        "generated_by": "scripts/export_bins_for_hls.py",
        "paths": {
            "fpga_io": case_fpga,
            "frozen_weights": FROZEN_DIR,
            "hls_bins": os.path.join(HLS_BINS_DIR, case),
        },
        "files": {},
    }

    # 1) Entrada cuantizada Xq
    xq_path = os.path.join(case_fpga, "Xq_int8.npy")
    if os.path.exists(xq_path):
        xq = np.load(xq_path).astype(np.int8)
        out = save_bin(case, "Xq.bin", xq)
        add_manifest_entry(manifest, "Xq.bin", xq, out)
        print(f"  Generado Xq.bin {xq.shape}")
    else:
        print("  Aviso: Xq_int8.npy no encontrado")

    # 2) Pesos congelados Wq, Wk, Wv
    for tag in ["q", "k", "v"]:
        src = os.path.join(FROZEN_DIR, f"W{tag}_int8.npy")
        if os.path.exists(src):
            w = np.load(src).astype(np.int8)
            name = f"W{tag}.bin"
            out = save_bin(case, name, w)
            add_manifest_entry(manifest, name, w, out)
            print(f"  Generado {name} {w.shape}")
        else:
            print(f"  Aviso: W{tag}_int8.npy no encontrado")

    # 3) Referencias int32 Q/K/V
    for proj in ["Q", "K", "V"]:
        src = os.path.join(case_fpga, f"{proj}_int32_ref.npy")
        if os.path.exists(src):
            ref = np.load(src).astype(np.int32)
            name = f"{proj}ref.bin"
            out = save_bin(case, name, ref)
            add_manifest_entry(manifest, name, ref, out)
            print(f"  Generado {name} {ref.shape}")
        else:
            print(f"  Aviso: {proj}_int32_ref.npy no encontrado")

    # 4) Extra opcional: sx desde fpga_io/<case>
    sx_path = os.path.join(case_fpga, "sx.npy")
    if os.path.exists(sx_path):
        sx = np.load(sx_path)
        out = save_bin(case, "sx.bin", sx)
        add_manifest_entry(manifest, "sx.bin", sx, out)
        print(f"  Generado sx.bin {sx.shape}")

    # 5) Extras opcionales desde frozen_weights: escalas y bias
    optional_frozen = [
        "sw_q.npy", "sw_k.npy", "sw_v.npy",
        "bq.npy", "bk.npy", "bv.npy",
    ]

    for extra in optional_frozen:
        src = os.path.join(FROZEN_DIR, extra)
        if os.path.exists(src):
            arr = np.load(src)
            name = extra.replace(".npy", ".bin")
            out = save_bin(case, name, arr)
            add_manifest_entry(manifest, name, arr, out)
            print(f"  Generado {name} {arr.shape}")

    # 6) Guardar manifest
    manifest_path = os.path.join(HLS_BINS_DIR, case, "manifest.json")
    with open(manifest_path, "w", encoding="utf-8") as f:
        json.dump(manifest, f, indent=2, ensure_ascii=False)

    print(f"  Manifest guardado: {manifest_path}")


def main():
    if not os.path.isdir(FPGA_IO_DIR):
        raise FileNotFoundError(f"No existe: {FPGA_IO_DIR}")

    cases = sorted(
        d for d in os.listdir(FPGA_IO_DIR)
        if os.path.isdir(os.path.join(FPGA_IO_DIR, d))
    )

    if not cases:
        raise RuntimeError(f"No se encontraron casos en: {FPGA_IO_DIR}")

    print("Casos detectados:")
    for case in cases:
        print(f"  - {case}")

    for case in cases:
        try:
            export_case(case)
        except Exception as e:
            print(f"Error en {case}: {e}")

    print(f"\nExportación completada. Bins en: {HLS_BINS_DIR}")


if __name__ == "__main__":
    main()
