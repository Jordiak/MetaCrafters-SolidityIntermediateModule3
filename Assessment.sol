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
