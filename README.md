## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy
Vaka go deploy-nav FinkiCoin contractot
```
forge script script/FinkiCoinScript.s.sol:FinkiCoinScript --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key <INPUT_PRIVATE_KEY> --broadcast --verify --etherscan-api-key FQFVHWRK2PFGHCR296BENZQYW88N39REHE
```

Vaka go kreirav uniswap v2 pair liquidity pool contractot
```
forge script script/CreatePool.s.sol:CreatePool --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key c2ad80bee2376402360067830ea0446720c73b67b45b19ddcda56c1da278199f —broadcast
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
