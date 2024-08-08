// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Loop {

    // Assignment  getting value of count equal to 9
    uint public count = 0;

    function loop() public {
        // for loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }

            count++;
        }

        // while loop
        uint j;
        while (j < 10) {
            if(j >= 5)
                count++;
            j++;
        }
    }
}
