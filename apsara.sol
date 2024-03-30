// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";


contract Apsara is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Apsara", "APS")
        Ownable(initialOwner)
      
    {}

    function mint(address to_address, uint256 mint_amount) public onlyOwner {
        _mint(to_address, mint_amount);
    }

    function burn(uint256 burn_amount) public returns(bool) {
        _burn(msg.sender,burn_amount);
        return true;
    }   
    function transfer(uint256 transfer_amount, address to_address) public returns(bool){
        _transfer(msg.sender, to_address, transfer_amount);
        return true;
    }    
}
