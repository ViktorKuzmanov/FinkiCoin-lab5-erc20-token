## Lab 5

### Deploy
Deploy na FinkiCoin contractot
```
forge script script/FinkiCoinScript.s.sol:FinkiCoinScript --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key <INPUT_PRIVATE_KEY> --broadcast --verify --etherscan-api-key FQFVHWRK2PFGHCR296BENZQYW88N39REHE
```

Kreiranje na uniswap v2 pair liquidity pool contractot
```
forge script script/CreatePool.s.sol:CreatePool --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key c2ad80bee2376402360067830ea0446720c73b67b45b19ddcda56c1da278199f —broadcast
```
Stavi liqudity vo uniswap v2 pair liquidity pool contractot
```
forge script script/AddLiquidity.s.sol:AddLiquidity --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key <INPUT_PRIVATE_KEY> —broadcast
```

Napravi swap so vtoriot account
```
forge script script/PerformSwap.s.sol:PerformSwap --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key <INPUT_PRIVATE_KEY> --broadcast
```