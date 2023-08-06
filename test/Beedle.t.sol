// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Beedle} from "../src/Beedle.sol";
import "forge-std/Test.sol";

contract BeedleTest is Test {
    Beedle beedle;

    function setUp() public {
        beedle = new Beedle();
    }

    function test_shouldNotRevertOnAmountMintZero() public {
        beedle.mint(address(this), 0);
    }

    function test_shouldNotRevertOnAmountBurnZero() public {
        beedle.burn(0);
    }
}
