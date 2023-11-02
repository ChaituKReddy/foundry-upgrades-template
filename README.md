# Foundry Upgradeable Contracts Boilerplate

## Description

This boilerplate is designed to jump-start development with Foundry for creating Ethereum smart contracts with a focus on upgradeability. Foundry is a fast, portable, and modular toolkit for Ethereum application development written in Rust. This template includes the necessary components and a standard structure to build, test, and deploy upgradeable smart contracts efficiently.

## Features

- Pre-configured Foundry setup with Forge and Cast.
- Sample upgradeable smart contract templates.
- Scripts for testing, deploying, and managing contract upgrades.
- Guidelines for best practices in upgradeable contract development.

## Prerequisites

Make sure you have installed:

- Foundry toolchain (latest version recommended).
- An Ethereum wallet with testnet/mainnet ETH for contract deployment.

## Installation

Clone the repository and install Foundry:

```bash
git clone https://github.com/ChaituKReddy/foundry-upgrades-template
cd foundry-upgrades-template
forge install
```

## Configuration

Set up your environment variables in a `.env` file or export them directly into your shell:

```bash
export RPC_URL="your-rpc-url"
export PRIVATE_KEY="your-private-key"
```

## Usage

**Disclaimer:** Before running the deployment scripts or tests, it is currently necessary to perform a `forge clean`. This will ensure that your environment is clear of any previous build artifacts that could interfere with the compilation or deployment processes.

To clean the build artifacts:

```bash
forge clean
```

Compile the smart contracts with:

```bash
forge build
```

Run tests to ensure contracts work as expected:

```bash
forge test
```

To deploy and upgrade your contracts using the Counter.s.sol script:

```bash
forge script script/Counter.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast -vv
```

#### This script will handle the initial deployment and can also be used for subsequent upgrades. Ensure you review and understand the script's operations before executing.

## Upgrading Contracts

The `Counter.s.sol` script includes functionality for both deploying the initial contract and upgrading it. When you have changes to your contract:

1. Update your contract's code.
2. Rebuild the contract with forge build.
3. Re-run the Counter.s.sol script to deploy the new version:

```bash
forge script script/Counter.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast -vv
```

#### Remember to thoroughly test any contract upgrades on a test network before executing them on the mainnet.

## Contributing

Contributions are what make the open-source community an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

## License

This project is licensed under the MIT - see the License for details.
