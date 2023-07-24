// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FavoriteNumbers {
    address public owner;
    mapping(address => uint256) public favoriteNumbers;
    
    constructor() {
        owner = msg.sender;
    }
    
    function setFavoriteNumber(uint256 number) public {
        assert(number != 0);
        favoriteNumbers[msg.sender] = number;
    }
    
    function getFavoriteNumber(address user) public view returns (uint256) {
        return favoriteNumbers[user];
    }

    function deleteFavoriteNumber(address user) public {
        require(msg.sender == owner, "Only the contract owner can delete a favorite number.");
        if (favoriteNumbers[user] == 0) {
            revert("User does not have a favorite number set.");
        }
        delete favoriteNumbers[user];
       }
}
