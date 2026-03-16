#!/usr/bin/env python3
import struct
from pathlib import Path

M = 64
K = 768
N = 768
X_ELEMS = M * K
W_ELEMS = K * N
Y_ELEMS = M * N

BASE_DIR = Path("/home/dolv07/gemm-beto-kv260/data/hls_bins")
OUT_DIR = Path("/home/dolv07/gemm-beto-kv260/data/arraysC")

CASES = [
    ("golden_00_seq64", "embedded_golden_00"),
    ("golden_01_seq64", "embedded_golden_01"),
    ("golden_02_seq64", "embedded_golden_02"),
]


def read_i8(path: Path, expected_count: int):
    data = path.read_bytes()
    if len(data) != expected_count:
        raise ValueError(f"{path}: size {len(data)} bytes, expected {expected_count}")
    return [struct.unpack('b', bytes([b]))[0] for b in data]


def read_i32_le(path: Path, expected_count: int):
    data = path.read_bytes()
    expected_bytes = expected_count * 4
    if len(data) != expected_bytes:
        raise ValueError(f"{path}: size {len(data)} bytes, expected {expected_bytes}")
    return list(struct.unpack('<' + 'i' * expected_count, data))


def format_c_array(values, ctype: str, name: str, per_line: int = 16) -> str:
    lines = [f"const {ctype} {name}[{len(values)}] = {{"]
    for i in range(0, len(values), per_line):
        chunk = values[i:i + per_line]
        lines.append("    " + ", ".join(str(v) for v in chunk) + ",")
    lines.append("};")
    return "\n".join(lines)


def write_header(out_h: Path, prefix: str):
    guard = f"{prefix.upper()}_H"
    txt = f"""#ifndef {guard}
#define {guard}

#include <stdint.h>

#define EMBED_CASE_M {M}
#define EMBED_CASE_K {K}
#define EMBED_CASE_N {N}
#define EMBED_CASE_X_ELEMS {X_ELEMS}
#define EMBED_CASE_W_ELEMS {W_ELEMS}
#define EMBED_CASE_Y_ELEMS {Y_ELEMS}

extern const int8_t {prefix}_Xq[{X_ELEMS}];
extern const int8_t {prefix}_Wq[{W_ELEMS}];
extern const int8_t {prefix}_Wk[{W_ELEMS}];
extern const int8_t {prefix}_Wv[{W_ELEMS}];

extern const int32_t {prefix}_Qref[{Y_ELEMS}];
extern const int32_t {prefix}_Kref[{Y_ELEMS}];
extern const int32_t {prefix}_Vref[{Y_ELEMS}];

#endif
"""
    out_h.write_text(txt)


def generate_case(case_name: str, prefix: str):
    case_dir = BASE_DIR / case_name
    if not case_dir.exists():
        raise FileNotFoundError(f"No existe el caso: {case_dir}")

    files = {
        "Xq": read_i8(case_dir / "Xq.bin", X_ELEMS),
        "Wq": read_i8(case_dir / "Wq.bin", W_ELEMS),
        "Wk": read_i8(case_dir / "Wk.bin", W_ELEMS),
        "Wv": read_i8(case_dir / "Wv.bin", W_ELEMS),
        "Qref": read_i32_le(case_dir / "Qref.bin", Y_ELEMS),
        "Kref": read_i32_le(case_dir / "Kref.bin", Y_ELEMS),
        "Vref": read_i32_le(case_dir / "Vref.bin", Y_ELEMS),
    }

    out_h = OUT_DIR / f"{prefix}.h"
    out_c = OUT_DIR / f"{prefix}.c"

    write_header(out_h, prefix)

    parts = [
        "#include <stdint.h>",
        f'#include "{prefix}.h"',
        "",
        format_c_array(files["Xq"], "int8_t", f"{prefix}_Xq"),
        "",
        format_c_array(files["Wq"], "int8_t", f"{prefix}_Wq"),
        "",
        format_c_array(files["Wk"], "int8_t", f"{prefix}_Wk"),
        "",
        format_c_array(files["Wv"], "int8_t", f"{prefix}_Wv"),
        "",
        format_c_array(files["Qref"], "int32_t", f"{prefix}_Qref", per_line=8),
        "",
        format_c_array(files["Kref"], "int32_t", f"{prefix}_Kref", per_line=8),
        "",
        format_c_array(files["Vref"], "int32_t", f"{prefix}_Vref", per_line=8),
        "",
    ]

    out_c.write_text("\n".join(parts))

    print(f"[OK] generated {out_h}")
    print(f"[OK] generated {out_c}")


def main():
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    for case_name, prefix in CASES:
        print(f"[INFO] Procesando {case_name} -> {prefix}")
        generate_case(case_name, prefix)

    print(f"[OK] Todo generado en {OUT_DIR}")


if __name__ == "__main__":
    main()
