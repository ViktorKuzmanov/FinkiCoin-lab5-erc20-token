// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

interface IUniswapV2Pair {
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
}

interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract PerformSwap is Script {

    address mySecondAccountPublicAddress = 0xF78BB925914c8fCd4E4CAE09Bd80D0D24f686B45;
    address public linkToken = 0x779877A7B0D9E8603169DdbD7836e478b4624789;
    address public finkiCoinToken = 0x1260e3CbC8542AE540eE19009E3B7f195fcB4E11;
    address public uniswapV2LiqudityPool = 0xEed14EF9801E92f5a4aEC637DF17cdB0A67b7EA4;
    uint256 public amountOfTokens = 20000000000000000000; // 10 tokens

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        IERC20(linkToken).approve(uniswapV2LiqudityPool, amountOfTokens); 
        IERC20(linkToken).transfer(uniswapV2LiqudityPool, amountOfTokens); 

        IUniswapV2Pair(uniswapV2LiqudityPool).swap(10000000000000000000, 0, mySecondAccountPublicAddress, "");
        vm.stopBroadcast();
    }
}
