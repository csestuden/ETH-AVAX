# ErrorHandling Contract

This is a Solidity smart contract that demonstrates different error handling techniques using `assert`, `revert`, and `require` functions.

## License

This contract is using the MIT License.

## Prerequisites

- Solidity ^0.8.17

## Contract Details

The `ErrorHandling` contract provides the following functions:

### `setValue(uint value)`

- This function demonstrates the usage of the `assert` function.
- It takes a `value` parameter and checks if it is not equal to zero using the `assert` statement.
- If the condition fails, it triggers an "Internal error" and aborts the execution.

### `incrementValue(uint _increament)`

- This function demonstrates the usage of the `revert` function.
- If the condition is met, it returns the result of the increament.

### `decrementValue(uint _decrement)`

- This function demonstrates the usage of the `require` function.
- It takes an `a` parameter and performs decrement.
- It first checks if `value` is greater than zero using the `require` statement.


## Usage

1. Make sure you have Solidity ^0.8.7 installed.
2. Compile and deploy the `ErrorHandling` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.
