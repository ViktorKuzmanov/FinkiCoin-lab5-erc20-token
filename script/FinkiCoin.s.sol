// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FinkiCoin} from "../src/FinkiCoin.sol";

contract FinkiCoinScript is Script {
    FinkiCoin public finkiCoin;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        finkiCoin = new FinkiCoin(msg.sender);

        vm.stopBroadcast();
    }
}
