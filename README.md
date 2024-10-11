## Foundry

Po kreiranjeto na uniswap v2 pair liqudity poolot ako otidese na read contrat na sepolia etherscan i da a povikas
getReserves func kje dobiese 0 za reserve0 i reserve1 a posle AddLiqudity imat i dvata po 100 tokens


### Deploy
Vaka go deploy-nav FinkiCoin contractot
```
forge script script/FinkiCoinScript.s.sol:FinkiCoinScript --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key <INPUT_PRIVATE_KEY> --broadcast --verify --etherscan-api-key FQFVHWRK2PFGHCR296BENZQYW88N39REHE
```

Vaka go kreirav uniswap v2 pair liquidity pool contractot
```
forge script script/CreatePool.s.sol:CreatePool --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key c2ad80bee2376402360067830ea0446720c73b67b45b19ddcda56c1da278199f —broadcast
```
Vaka staviv liqudity u uniswap v2 pair liquidity pool contractot
```
forge script script/AddLiquidity.s.sol:AddLiquidity --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key <INPUT_PRIVATE_KEY> —broadcast
```

VAZNO: VAA TX SO DRGIOT PRIVATE KEY / ACCOUNT PRAVI A, so vtoriot
```
forge script script/PerformSwap.s.sol:PerformSwap --rpc-url https://eth-sepolia.g.alchemy.com/v2/POoY-w-ynjcqIa7yD4H13LtOo870vGeF --private-key <INPUT_PRIVATE_KEY> --broadcast
```