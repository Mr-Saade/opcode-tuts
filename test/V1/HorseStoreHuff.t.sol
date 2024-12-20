// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {BaseTest, IHorseStore} from "./Base_test.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is BaseTest {
    string constant HUFF_PATH = "HorseStoreV1/HorseStore";

    function setUp() external override {
        horseStore = IHorseStore(HuffDeployer.config().deploy(HUFF_PATH));
    }
}
