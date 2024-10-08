// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Gas {
    uint public i = 0;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    function forever() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }
    }

    // Assignment
    uint public cost = 170367; //The value of cost = 170367 in the Gas contract 
    // represents the amount of gas required to deploy the contract on the Ethereum 
    // blockchain. 
}