// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorHandling {
    uint public value;

    function setValue(uint _value) public {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
    }

    function incrementValue(uint _increment) public {
        value += _increment;
        assert(value > 0);
    }

    function decrementValue(uint _decrement) public {
        if (_decrement > value) {
            revert("Decrement value exceeds current value");
        }
        value -= _decrement;
    }
}
