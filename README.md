# Types of Functions

Solidity assessment that tries to incorporate ERC20 to create a custom token that can be minted and burned.

## Description

This program was created for the purposes of accomplishing the "ETH PROOF: Intermediate EVM Course" Module: Types of Functions project on Metacrafters. This program has functions for minting and burning a custom token called "JOR".

## Getting Started

### Executing program

To run this program, you can use Remix in conjunction with a Hardhat Network to host a local blockchain.

Hardhat can be started in a terminal using the "npx hardhat node" command.

The smart contract can be deployed using Remix, while using Remix, the "Dev - Hardhat Provider" environment can be selected from the DEPLOY & RUN TRANSACTIONS tab.

```javascript

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract JORToken is ERC20("JORToken", "JOR"), Ownable {

    function mintJOR(address receiver, uint value) public onlyOwner{
        _mint(receiver, value);
    }

    function burnJOR(address sender, uint value) public {
        _burn(sender, value);
    }
}

```

## Authors

Jordan
