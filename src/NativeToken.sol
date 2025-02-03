// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

//Actual Native token is implemented in L1 or Chain. This is just a sketch of its properties in *.sol
contract BANK is ERC20{
    uint public constant EARLYINCENTIVEEXPIRYTIME = 365 days;

    constructor(string memory name_, string memory symbol_)ERC20(name_,symbol_){}

    function incentiviseEarlyUser() public {}

  
}
