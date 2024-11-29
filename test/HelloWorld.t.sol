// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorldInstance;

    function setUp() public {
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
 
}
