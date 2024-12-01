pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {RequireRevert} from "../src/RequireRevert.sol";

contract RequireRevertTest is Test {
    RequireRevert public requireRevertInstance;

    function setUp() public {
        requireRevertInstance = new RequireRevert();
    }

    // function test_setValue() public {
    //     vm.expectRevert("value should greater than 10");
    //     requireRevertInstance.setValue(12);
    // }

    function testFail_setValue() public {
        vm.expectRevert("value should greater than 10");
        requireRevertInstance.setValue(1);
    }
}
