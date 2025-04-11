// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {StableCoin} from "../StableCoin.sol";

contract CryptocurrencyFactory{

    struct CurrencyData{
        string  Code;//BTC
        string  FullName;//Bitcoin
        address Token;// address (Token)
    }
    ///////////////////////////////////////////////////======Error Declarations======///////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    error DeploymentFailed();

    mapping (string => CurrencyData) deployedData;

    mapping (string => bool)public  listed;
    mapping (string => bool)public deployed;
    //Crypto is not expected to be ISO-4217 compliant
    //uint public constant CODELENGTH = 3;

    //An asset / CryptoCurrency is enlisted 1st before being deployed. Hence this is always the entrypoint of all assets.
    function enlist(string memory _code, address _currency) public {}

    function deploy(string memory _name, string memory _symbol, bytes32 _salt) public /**onlyOwner */returns(bool){
        //**Checks */

        address newCurrency = _deploy(_name, _symbol, _salt);
        return true;
    }
    

    function _deploy(string memory _name, string memory _symbol, bytes32 _salt) private returns(address stable){
        bytes memory creationCode = abi.encodePacked(
            type(StableCoin).creationCode, 
            abi.encode(_name, _symbol)
        );
        assembly{
            stable := create2(0, add(creationCode,0x20),creationCode,_salt)
            if iszero(extcodesize(stable)){
                revert(0,0)
            }
        }
    }
    ///////////////////////////////////////////////////======Getter Functions======///////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    function verifyCryptoCurrencyAddress(string memory _code, address  _currency) public view returns(bool){}
    function getCryptoCurrencyFromCode(string memory _code) public view returns(address){}
    function getCodeFromCurrency(address _currency) public view returns(address){}

    function predictAddress() public view returns(address){}
}