// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract FinkiCoin is Ownable, ERC20 {

    uint256 public number;

    constructor(address initialOwner) Ownable(initialOwner) ERC20("FinkiCoin", "FINKI") {
        _mint(msg.sender, 1_000 * 10 ** decimals());
    }
}
