// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FinkiCoin} from "../src/FinkiCoin.sol";

interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
}

interface IUniswapV2Pair {
    function mint(address to) external;
}

contract AddLiquidity is Script {

    address public linkToken = 0x779877A7B0D9E8603169DdbD7836e478b4624789;
    address public finkiCoinToken = 0x1260e3CbC8542AE540eE19009E3B7f195fcB4E11;
    address public uniswapV2LiqudityPool = 0xEed14EF9801E92f5a4aEC637DF17cdB0A67b7EA4;
    uint256 public amountOfTokens = 100000000000000000000; // 100 tokens

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        IERC20(finkiCoinToken).approve(address(uniswapV2LiqudityPool), amountOfTokens);
        IERC20(linkToken).approve(address(uniswapV2LiqudityPool), amountOfTokens);

        IERC20(finkiCoinToken).transfer(address(uniswapV2LiqudityPool), amountOfTokens);
        IERC20(linkToken).transfer(address(uniswapV2LiqudityPool), amountOfTokens);

        IUniswapV2Pair(uniswapV2LiqudityPool).mint(msg.sender);   

        vm.stopBroadcast();
    }
}
