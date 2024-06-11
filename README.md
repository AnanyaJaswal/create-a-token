# CREATE A TOKEN

## OVERVIEW

This project is a simple Solidity smart contract that implements basic token functionalities . It allows for the creation i.e minting and desrtuction i.e burning of tokens and tracks the total supply .

## DISCRIPTION

In this Project .a token is created named HallyuWaveCoin whose abbreviation is "HWC". This contract includes minting of tokens which increases the total supply and balance of a specified address and burning of tokens which decreases the total supply and balance of the specified address.


## Getting Started

### Executing Program

To run the program , make use of Remix which is an online Solidity IDE .

To start , go to the remix website at [Remix IDE](https://remix.ethereum.org/).

Once you are on Remix website , create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., tokencreation.sol). Write your code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract My_Token {

  // public variables here
  string public Token_Name = "HallyuWaveCoin";
  string public Token_Abbrevation = "HWC";
  uint public totalSupply = 0;

  // mapping variable here
  mapping(address => uint) public balances;

  // mint function 
  function mint(address _addr, uint _val) public {
    totalSupply += _val;
    balances[_addr] += _val;
  }

  // burn function 
  function burn(address _addr, uint _val) public {
    if (balances[_addr] >= _val) {
      totalSupply -= _val;
      balances[_addr] -= _val;
    }
  }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" , and then click on the "Compile tokencreation.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "My_Token -tokencreation.sol" contract from the dropdown menu, and then click on the "Deploy" button.

After deploying the contract, interact with it by using the mint and burn functions. Click on the "tokencreation" contract on the left-hand sidebar, then follow these steps:

To Mint Tokens :-

1.Click on the mint function.

2.Enter the address you want to mint token for in the _addr column.

3.Enter the amount of tokens to mint in the _val column .

4.Then Click on "transact".

To Burn Tokens :-

1.Click on the burn function.

2.Enter the address you want to burn token from in the _addr field.

3.Enter the amount of token to burn in the _val field.

4.Then Click on "transact".

Example

Mint Token Example:
Address: 0x1B4...456

Amount: 1000

Result: Total supply increases by 1000 .

Burn Token Example:
Address: 0x1b4...456

Amount: 200

Result: Total supply decreases by 200.
 

 ## Authors
Ananya Jaswal

[LinkedIn](www.linkedin.com/in/ananya-jaswal-8545b1275)
