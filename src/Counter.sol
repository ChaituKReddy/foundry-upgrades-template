// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract Counter is Initializable {
    uint256 public number;

    error Underflow();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(uint256 newNumber) external initializer {
        number = newNumber;
    }

    function increment() public {
        ++number;
    }

    function decrement() public {
        if (number == 0) {
            revert Underflow();
        }
        --number;
    }
}
