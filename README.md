# COMP842 Assessment Portfolio

This repository contains my Python implementations, experimental results, and Solidity smart contract for the COMP842 Applied Blockchains and Cryptocurrencies individual assessment. The written report includes the calculations, screenshots, analysis, and reflections for all six exercises.

## Notebook Guide

| Exercise | Focus | Notebook |
| --- | --- | --- |
| 1 | Blockchain structure, Merkle Roots, and tamper detection | [COMP842_Exercise1_Blockchain_Tamper.ipynb](COMP842_Exercise1_Blockchain_Tamper.ipynb) |
| 2 | Proof of Work, mining difficulty, and probability | [COMP842_Exercise2_PoW_Experiment.ipynb](COMP842_Exercise2_PoW_Experiment.ipynb) |
| 3 | ECDSA keys, public-key compression, and signatures | [COMP842_Exercise3_ECDSA_Compression.ipynb](COMP842_Exercise3_ECDSA_Compression.ipynb) |
| 4 | Bitcoin throughput, the scalability trilemma, and Layer-2 solutions | Written assessment report (Exercise 4) |
| 5 | MetaMask wallet and Sepolia testnet transaction | Written assessment report (Exercise 5) |
| 6 | Solidity Storage contract: course code, access control, and Sepolia deployment | [COMP842_Exercise6_Solidity/Storage.sol](COMP842_Exercise6_Solidity/Storage.sol) and written assessment report (Exercise 6) |

**Report:** Exercises 4 and 5 are documented in the submitted assessment PDF rather than separate notebooks. Exercise 6's source code is in this repository; its deployment evidence, transaction screenshots, gas measurements, and reflections are in the report.

## Running the Python Notebooks (Exercises 1–3)

Create a virtual environment, install the required libraries, and open the `.ipynb` files in VS Code:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install pandas cryptography
```

- `pandas` creates the Proof-of-Work results tables.
- `cryptography` generates keys and verifies ECDSA signatures.
- The notebooks also use built-in modules such as `hashlib`, `json`, and `time`.

## Notes

- Exercise 2 performs 30 mining runs at each difficulty level, so timings may vary between computers. 
- Exercise 3 generates a test ECDSA key pair; it has not been used for a real wallet or real funds.
- Run each notebook cell in order so that the required variables are available. 

## Solidity Contract (Exercise 6)

Open [Storage.sol](COMP842_Exercise6_Solidity/Storage.sol) in [Remix](https://remix.ethereum.org/) to review, compile, or deploy the contract. The assessment report records the Sepolia deployment and interactions.
