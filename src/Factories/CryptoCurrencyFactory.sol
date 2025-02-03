// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {StableCoin} from "../StableCoin.sol";

contract CryptocurrencyFactory{

    struct CurrencyData{
        string  Code;//BTC
        string  FullName;//Bitcoin
        address Token;// address (Token)
    }

    mapping (string => CurrencyData) deployedData;

    mapping (string => bool)public  listed;
    mapping (string => bool)public deployed;
    //Crypto is not expected to be ISO-4217 compliant
    //uint public constant CODELENGTH = 3;

    //An asset / CryptoCurrency is enlisted 1st before being deployed. Hence this is always the entrypoint of all assets.
    function enlist(string memory _code, address _currency) public {}

    function deploy() public /**onlyOwner */returns(bool){}

    function verifyCryptoCurrencyAddress(string memory _code, address  _currency) public view returns(bool){}
    function getCryptoCurrencyFromCode(string memory _code) public view returns(address){}
    function getCodeFromCurrency(address _currency) public view returns(address){}
}