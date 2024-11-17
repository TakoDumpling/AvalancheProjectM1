# AccountManager Contract

This Solidity program demonstrates a simple account management system. The contract allows users to deposit and withdraw funds, ensuring that only valid amounts are processed. It also validates the account balance to maintain a consistent and error-free state. The contract uses `require`, `revert`, and `assert` for handling different types of errors and ensuring the integrity of the contract’s state.

## Description

The `AccountManager` contract is a basic implementation of an account system on the Ethereum blockchain, written in Solidity. The contract allows users to:

- Deposit funds into their account.
- Withdraw funds with proper error checking.
- Validate that the account balance is always non-negative.

### Features
- **Deposit Function:** Allows users to deposit funds into their account, ensuring that the deposit amount is greater than zero using the `require` statement.
- **Withdraw Function:** Allows users to withdraw funds, but only if they have sufficient balance. If the withdrawal amount exceeds the balance, the transaction is reverted with a specific error message using `revert`.
- **Balance Validation:** The contract ensures that the balance is never negative by using `assert` to check the validity of the balance.

### Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccountManager {
    uint public balance;

    // Function demonstrating `require`
    function deposit(uint amount) public {
        require(amount > 0, "Deposit must be greater than 0");
        balance += amount;
    }

    // Function demonstrating `revert`
    function withdraw(uint amount) public {
        if (amount > balance) {
            revert("Insufficient balance");
        }
        balance -= amount;
    }

    // Function demonstrating `assert`
    function validateBalance() public view {
        assert(balance >= 0);
    }
}
```

### Executing Program
To run this program, you can use Remix, an online Solidity IDE. Here’s how you can interact with the contract:

Go to the Remix website: https://remix.ethereum.org/.
Create a new file by clicking the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., AccountManager.sol).
Copy and paste the code into the file.
Click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" version is set to 0.8.0 (or another compatible version).
Click "Compile AccountManager.sol" to compile the code.
After compiling, go to the "Deploy & Run Transactions" tab and click "Deploy" to deploy the contract to the Remix environment.
Once the contract is deployed, you can interact with it by calling the deposit, withdraw, and validateBalance functions from the deployed contract instance.

## Authors

Shawn Aaron Quirante
