# COMP842 Assessment Portfolio

This repository contains my Python implementations and experiment results for the COMP842 Applied Blockchains assessment.

## Notebook Guide

| Exercise | Focus | Notebook |
| --- | --- | --- |
| 1 | Blockchain structure, Merkle Roots, and tamper detection | [COMP842_Exercise1_Blockchain_Tamper.ipynb](COMP842_Exercise1_Blockchain_Tamper.ipynb) |
| 2 | Proof of Work, mining difficulty, and probability | [COMP842_Exercise2_PoW_Experiment.ipynb](COMP842_Exercise2_PoW_Experiment.ipynb) |
| 3 | ECDSA keys, public-key compression, and signatures | [COMP842_Exercise3_ECDSA_Compression.ipynb](COMP842_Exercise3_ECDSA_Compression.ipynb) |

## Running the Notebooks

Create a virtual environment, install the required libraries, and open the `.ipynb` files in VS Code:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install pandas cryptography
```

- `pandas`: creates the Proof-of-Work results tables.
- `cryptography`: generates keys and verifies ECDSA signatures.

The notebooks also use built-in modules such as `hashlib`, `json`, and `time`.

## Notes

- Exercise 2 performs 30 mining runs at each difficulty level, so timings may vary between computers.
- Exercise 3 creates a new ECDSA key pair for testing. It has never been used for a real wallet or real funds.
- Run each notebook cell in order so that the required variables are available.
