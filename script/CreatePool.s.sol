// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
// TODO: neli za dzabe go import via finkicoin contract?
import {FinkiCoin} from "../src/FinkiCoin.sol";

interface IUniswapV2Factory {
    function createPair(address tokenA, address tokenB) external returns (address pair);
}

contract CreatePool is Script {

    FinkiCoin public finkiCoin;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        IUniswapV2Factory(0x7E0987E5b3a30e3f2828572Bb659A548460a3003).createPair(
            0x1260e3CbC8542AE540eE19009E3B7f195fcB4E11, 
            0x779877A7B0D9E8603169DdbD7836e478b4624789
        );        
        vm.stopBroadcast();
    }
}
