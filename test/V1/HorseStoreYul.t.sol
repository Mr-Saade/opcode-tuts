// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {BaseTest, IHorseStore} from "./Base_test.t.sol";
import {HorseStoreYul} from "../../src/HorseStoreV1/HorseStoreYul.sol";

contract HorseStoreYulTest is BaseTest {
    function setUp() external override {
        horseStore = IHorseStore(address(new HorseStoreYul()));
    }
}
