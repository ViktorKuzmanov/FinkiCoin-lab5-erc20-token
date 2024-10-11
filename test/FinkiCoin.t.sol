// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {FinkiCoin} from "../src/FinkiCoin.sol";

contract FinkiCoinTest is Test {
    FinkiCoin public finkiCoin;

    function setUp() public {
        finkiCoin = new FinkiCoin(msg.sender);
    }
}
