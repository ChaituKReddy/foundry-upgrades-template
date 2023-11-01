// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @custom:oz-upgrades-from Counter
contract CounterV2 is Initializable {
    uint256 public number;

    error Underflow();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
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

    function resetNumber() public {
        delete number;
    }
}
