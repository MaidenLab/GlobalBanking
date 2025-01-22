// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract GlobalFactory {

    mapping (string => bool)public  listedCurrency;
    mapping (string => bool)public deployedCurrency;
    //In accordance with ISO-4217
    uint public constant CODELENGTH = 3;

    function deployCurrency(string memory _code) public returns(bool){
        require(listedCurrency[_code]);
        require(!deployedCurrency[_code]);
    }

    //is a privilaged function
    //Also there is no symetrically opposite function in contract(delist()), given that it doent intend to delist at anytime in future
    //as this can DOS an entire Nation. It is not intended.
    function enlist(string memory _code) /**onlyOwner */ public returns(bool){
        assert(_code.length = CODELENGTH);
        listedCurrency[_code] = true;
    }

    function batchEnlist(string[] memory _code) /**onlyOwner */ public returns(bool){
        for (uint i; i< _code.length; i++){
            enlist(_code[i]);
        }
    }

    

}