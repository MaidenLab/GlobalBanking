// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract GlobalFactory {
    struct CurrencyData{
        string  Code;//KWD | USD
        string  FullName;//Kuwaiti Dinar | United States dollar
        address Token;// address (Token)
    }

    
    mapping (string => CurrencyData)public currencyData;
    mapping (string => bool)public  isListedCurrency;
    //In accordance with ISO-4217
    uint public constant CODELENGTH = 3;

    function deployCurrency(string memory _code) public returns(bool){
        require(isListedCurrency[_code]);
        require(!isDeployedCurrency(_code));
    }

    //is a privilaged function
    //Also there is no symetrically opposite function in contract(delist()), given that it doesnt intend to delist at anytime in future
    //as this can DOS an entire Nation. It is not intended.
    // @dev All _code is written in capital letters
    function enlist(string memory _code) /**onlyOwner */ public returns(bool){
        assert(bytes(_code).length == CODELENGTH);
        isListedCurrency[_code] = true;
    }

    function batchEnlist(string[] memory _code) /**onlyOwner */ public returns(bool){
        for (uint i; i< _code.length; i++){
            enlist(_code[i]);
        }
    }

    function verifyCurrencyAddress(string memory _code, address _currency) public view returns(bool){}
    function getCurrencyFromCode(string memory _code) public view returns(address){}
    function getCodeFromCurrency(address _currency) public view returns(address){}
    function isDeployedCurrency(string memory _code) public view returns(bool){
        return currencyData[_code].Token > address(0);
    }

    

}