// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {HorseStore} from "../../src/HorseStoreV1/HorseStore.sol";
import {Test} from "forge-std/Test.sol";

abstract contract BaseTest is Test {
    HorseStore horseStore;

    function setUp() external virtual {
        horseStore = new HorseStore();
    }

    function testReadHorseNumber() external {
        assertEq(horseStore.readNumberOfHorses(), 0);
    }

    function testUpdateHorseNumber() external {
        uint256 updatedHorseNumber = 1;
        horseStore.updateHorseNumber(updatedHorseNumber);
        assertEq(horseStore.readNumberOfHorses(), updatedHorseNumber);
    }
}
