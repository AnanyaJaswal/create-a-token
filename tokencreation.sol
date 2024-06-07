// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract My_Token {

  // public variables here
  string public Token_Name ="HallyuWaveCoin";
  string public Token_Abbrevation="HWC";
  uint public totalSupply = 0;

  // mapping variable here
  mapping(address => uint) public balances;

  // mint function
  function mint(address _addr, uint _val) public {
    totalSupply += _val;
    balances[_addr] += _val;
  }

  // burn function with error handling
  function burn(address _addr, uint _val) public {
    if(balances[_addr] >= _val){
      totalSupply -= _val;
      balances[_addr] -= _val;
  }
}
}