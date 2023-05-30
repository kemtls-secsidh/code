from algorithms import signs, kems, nikes
import subprocess
import sys
import json
from pathlib import Path

subprocess.run("docker build -t mkcert-benchmarker .".split(), check=True, stdout=sys.stderr)

resultfilename = Path("result.json")


CLASSIC_DATA = {
    "X25519": {"keypair": 26.886, "encapsulate": 102.922, "decapsulate": 75.444},
    "RSA2048": {"keypair": "", "sign": 526, "verify": 16},
}

def update_results(algorithm, result):
    if resultfilename.exists():
        with open(resultfilename, "r") as fh:
            data = json.load(fh)
    else:
        data = {}
    data[algorithm] = result

    with open(resultfilename, "w") as fh:
        json.dump(data, fh, indent=2)

def do_bench(type, algorithm):
    print(f"Running benchmark for {algorithm}")
    result = subprocess.run(f"docker run --rm -e ITERATIONS=1 mkcert-benchmarker {type} {algorithm}".split(), capture_output=True, check=True)
    result = json.loads(result.stdout)
    update_results(algorithm, result)
    print(f"{result!r}")

if __name__ == "__main__":
    existing_results = {}
    if resultfilename.exists():
        existing_results = json.loads(resultfilename.read_text())

    for alg, results in CLASSIC_DATA.items():
        update_results(alg, results)

    for _, algorithm in kems:
        if algorithm not in existing_results:
            do_bench("kem", algorithm)

    for _, algorithm in signs:
        if algorithm.startswith("XMSS") and algorithm not in existing_results:
            do_bench("xmss", algorithm)
        elif algorithm.startswith("Pqov"):
            continue
        elif algorithm not in existing_results:
            do_bench("sign", algorithm)

    for algorithm in nikes:
        if algorithm not in existing_results:
            do_bench("csidh", algorithm)

    existing_results = json.loads(resultfilename.read_text())
    with open("primitive_timings.lua", "w") as fh:
        fh.write("-- Benchmarks of KEMs and Sigs\n")
        fh.write("primitive_timings = {}\n")
        for key, data in existing_results.items():
            fh.write(f"primitive_timings[\"{key}\"] = {{}}\n")
            for measurement, value in data.items():
                if measurement == "name":
                    continue
                fh.write(f"primitive_timings[\"{key}\"][\"{measurement}\"] = {value!r}\n")


