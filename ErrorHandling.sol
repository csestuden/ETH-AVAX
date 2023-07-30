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

contract ErrorHandlingDemo {
    ErrorHandling public errorHandling;

    constructor(address _errorHandlingAddress) {
        errorHandling = ErrorHandling(_errorHandlingAddress);
    }

    function testErrorHandlers() public {
        // Testing require
        errorHandling.setValue(0); // This will trigger the require error
        // The transaction will be reverted with the error message "Value must be greater than zero"

        // Testing assert
        errorHandling.incrementValue(uint(-1)); // This will trigger the assert error
        // The transaction will be reverted due to the failing assert statement

        // Testing revert
        errorHandling.decrementValue(100); // This will trigger the revert error
        // The transaction will be reverted with the error message "Decrement value exceeds current value"
    }
}
