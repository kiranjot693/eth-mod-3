// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KiranjotToken is ERC20, Ownable(msg.sender) {
    constructor() ERC20("Kiran jot", "KJT") {
       
    }

    // Override the OpenZeppelin mint function to restrict it to the owner
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens from the caller's balance
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Additional function to get the balance of a specific address
    function getBalance(address account) external view returns (uint256) {
        return balanceOf(account);
    }
}
