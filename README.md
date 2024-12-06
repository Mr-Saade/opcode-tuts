# Huff Storage Contract: Solidity vs Huff

This project compares a simple storage contract implemented in **Solidity** and **Huff** (EVM low-level language). The goal is to explore the gas efficiency and low-level mechanics of Huff while ensuring the functionality matches that of the Solidity contract through a **differential test**.

## Key Insights

- **Gas Efficiency**: Huff provides more control over memory and storage. In contrast, Solidity handles these operations and does some extra prechecks automatically like checking if some eth was sent along with the contract deployment, initializing the free memory pointer, amongst others, leading to additional overhead but improved security.
- **Function Dispatch**: In Huff, you must manually implement function dispatch, while Solidity handles this behind the scenes, offering greater abstraction and security at the cost of lower control.

## Differential Test

The test verifies that both Solidity and Huff contracts behave identically by:

Deploying both contracts.
Updating the stored number in both.
Verifying that both return the same value.
