// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import './libraries/Maths.sol';
import './libraries/ExternalMaths.sol';

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function doSomethingInternal(uint256 a) external pure returns (uint256 x) {
        x = Maths.calculate(a, 2);
    }

    function doSomethingExternal(uint256 a, uint256 b) external pure returns (uint256 x) {
        x = ExternalMaths.calculate(a, b);
    }
}
