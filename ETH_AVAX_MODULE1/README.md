

# ErrorHandling Smart Contract

The `ErrorHandling` is a simple Solidity smart contract that demonstrates various error handling techniques in Solidity - `require()`, `revert()`, and `assert()`.

## Description

 This smart contract is a basic Ethereum contract that allows users to store and retrieve their favorite numbers. Each user can set their favorite number, view it, and delete it if needed. However, only the contract owner has the privilege to delete a user's favorite number.
## How to Use

1. Install Solidity Compiler: Ensure you have the Solidity compiler installed on your machine. You can find the installation instructions on the official Solidity documentation.

2. Compile the Smart Contract: Compile the `ErrorHandling.sol` smart contract using the Solidity compiler. You can use Remix, Truffle, or any other Solidity development environment to compile the contract.

3. Deploy the Smart Contract: Deploy the compiled smart contract to your desired Ethereum network. You can use Remix or other Ethereum development tools to deploy the contract.

4.The contract has these fnctions-
  `setFavoriteNumber(uint256 number)`
Allows a user to set or update their favorite number. The number provided must be non-zero.

`getFavoriteNumber(address user) returns (uint256)`
Allows anyone to view the favorite number of a specific user by providing the user's address.

`deleteFavoriteNumber(address user)`
Allows the contract owner to delete a user's favorite number. The function will revert if the user does not have a favorite number set.

5. Note: Error handling is crucial in smart contracts to ensure proper execution and prevent vulnerabilities. By using `require()`, `revert()`, and `assert()` statements appropriately, you can handle exceptional situations and ensure the safety and reliability of your smart contract.



