// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    function addNumbers(uint256 a, uint256 b) external pure returns (uint256) {
        uint256 result = a + b;
        require(a >= 5, "a should be greater than 5");
        return result;
    }

    function subtractNumbers(uint256 a, uint256 b) external pure returns (uint256) {
        if (b > a) {
            revert("a should greater than b ");
        }
        return a - b;
    }

    
    function multiplyNumbers(uint256 a, uint256 b) external pure returns (uint256) {
        uint256 result = a * b;
        assert(b > 0 ); 
        return result;
    }
}
