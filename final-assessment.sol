// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract MyToken {

    string public tokenName = "LUBEOARD";
    string public tokenAbbrv = "LUBE";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint (address mintAddress, uint mintValue) public{
        totalSupply += mintValue;
        balances[mintAddress] += mintValue;
    }

    function burn (address mintAddress, uint mintValue) public{
        if (balances[mintAddress] >= mintValue){
            totalSupply -= mintValue;
            balances[mintAddress] -= mintValue;
        } 
    }
}