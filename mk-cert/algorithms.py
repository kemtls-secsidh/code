"""The algorithms in use"""
import itertools

from typing import Tuple

# for legacy reasons, these are tuples,
# but both sides should be equal up to case.

signs: list[Tuple[str, str]] = [
    ("dilithium2", "Dilithium2"),
    ("dilithium3", "Dilithium3"),
    ("dilithium5", "Dilithium5"),
    ("falcon512", "Falcon512"),
    ("falcon1024", "Falcon1024"),
    *[
        (sphincs.lower(), sphincs)
        for sphincs in (
            f"Sphincs{hash}{size}{fs}{kind}"
            for hash in ("Haraka", "Sha2", "Shake")
            for size in ("128", "192", "256")
            for fs in ("f", "s")
            for kind in ("Simple", "Robust")
        )
    ],
    *[
        (f"pqov{size}{variant}".lower(), f"Pqov{size}{variant}")
        for size in ("1616064", "25611244", "25618472", "25624496")
        for variant in ["Classic"]
    ],
    ("xmss1", "XMSS1"),
    ("xmss3", "XMSS3"),
    ("xmss5", "XMSS5"),
]

kems: list[Tuple[str, str]] = [
    ("kyber512", "Kyber512"),
    ("kyber768", "Kyber768"),
    ("kyber1024", "Kyber1024"),
    *[
        (f"classicmceliece{size}{variant}", f"ClassicMcEliece{size}{variant}")
        for size in (
            "348864",
            "460896",
            "6688128",
            "6960119",
            "8192128",
        )
        for variant in ["", "f"]
    ],
    ("ntruprimesntrup761", "NtruPrimeSntrup761"),
    *[
        (f"frodokem{size}{alg}", f"FrodoKem{size.title()}{alg.title()}")
        for size in ("640", "976", "1344")
        for alg in ("aes", "shake")
    ],
    *[
        (f"sikep{size}{compressed}", f"SikeP{size}{compressed.title()}")
        for size in ("434", "503", "610", "751")
        for compressed in ("", "compressed")
    ],
    ("bikel1", "BikeL1"),
    ("bikel3", "BikeL3"),
    *[(f"hqc{size}", f"Hqc{size}") for size in ["128", "192", "256"]],
]

nikes: list[str] = [
    "ctidh512",
    "ctidh1024",
    "CSIDH2047m1l226",
    "CSIDH4095m27l262",
    "CSIDH5119m46l244",
    "CSIDH6143m59l262",
    "CSIDH8191m78l338",
    "CSIDH9215m85l389",
    "CTIDH2047m1l226",
    "CTIDH4095m27l262",
    "CTIDH5119m46l244",
    "CTIDH6143m59l262",
    "CTIDH8191m78l338",
    "CTIDH9215m85l389",
]


oids: dict[str, int] = {
    var: i
    for (i, (var, _)) in enumerate(
        itertools.chain(signs, kems, zip(map(lambda x: x.lower(), nikes), nikes)),
        start=1,
    )
}


def get_oid(algorithm: str) -> str:
    oid = oids[algorithm]
    return f"1.3.6.1.4.1.44363.46.{oid}"


def get_oqs_id(algorithm: str) -> str:
    return dict(signs + kems)[algorithm]


def is_sigalg(algorithm: str) -> bool:
    return algorithm.lower() in dict(signs).keys()


def is_kem(algorithm: str) -> bool:
    return algorithm.lower() in dict(kems).keys()
