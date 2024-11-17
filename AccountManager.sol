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

    // Function demonstrating `assert` to check for a valid account state
    function validateBalance() public view {
        // Assert that the balance is always non-negative (state invariant)
        assert(balance >= 0);
    }
}
