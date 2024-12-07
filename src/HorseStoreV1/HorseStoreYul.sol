// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

contract HorseStoreYul {
    uint256 numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        //sstore
        assembly {
            sstore(numberOfHorses.slot, newNumberOfHorses)
        }
    }

    function readNumberOfHorses() external view returns (uint256) {
        //load storage value into memory

        //return value from memory

        assembly {
            let num := sload(numberOfHorses.slot)
            mstore(0x00, num)
            return(0x00, 0x20)
        }
    }
}
