// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract StableCoin is ERC20{
    uint8 private decimal = 2;//USD 100.00

    constructor(string memory name_, string memory symbol_)ERC20(name_,symbol_){}

    function decimals() public view virtual override returns (uint8) {
        return decimal;
    }

}