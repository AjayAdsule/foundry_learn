pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TeamWallet} from "../src/TeamWallet.sol";

contract TeamWalletTest is Test {
    TeamWallet public teamWalletInstance;

    function setUp() public {
        teamWalletInstance = new TeamWallet();
    }

    // function test_owner() public view {
    //     address expectedOwner = address(this);

    //     assertEq(teamWalletInstance.owner(), expectedOwner);
    // }

    function test_setWallet() public {
        vm.startPrank(address(this));
        address[] memory testMembers = new address[](4);

        testMembers[0] = address(1);
        testMembers[1] = address(2);
        testMembers[2] = address(3);
        testMembers[3] = address(4);

        uint32 credits = 1000;

        teamWalletInstance.setWallet(testMembers, credits);

        uint256 _currentCredit = teamWalletInstance.credits();

        address[] memory _currentAddress = teamWalletInstance
            .getMemberAddresses();

        for (uint256 i = 0; i < _currentAddress.length; i++) {
            console.log("current address", _currentAddress[i]);
        }

        assertEq(_currentCredit, credits);
        assertEq(_currentAddress, testMembers);
    }
}
