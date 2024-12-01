// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorldInstance;

    function setUp() public {
        console.log("setUp");
        helloWorldInstance = new HelloWorld();
    }

    function test_f1() public pure {
        console.log("f1");
    }

    function test_f2() public pure {
        console.log("f2");
    }

    function test_HelloWorld() public view {
        assertEq(helloWorldInstance.hello(), "Hello, World!");
    }

    function testFail_div() public view {
        assertEq(helloWorldInstance.div(), 0);
    }

    function testArr() public {
        uint[10] memory expected;
        for (uint i = 0; i < 10; ) {
            expected[i] = i;
            unchecked {
                ++i;
            }
        }
        uint256[] memory actual = helloWorldInstance.getArr();

        assertEq(actual.length, expected.length, "Array lengths do not match");

        for (uint256 i = 0; i < expected.length; i++) {
            assertEq(
                actual[i],
                expected[i],
                string(abi.encodePacked("Mismatch at index ", vm.toString(i)))
            );
        }
    }
}
