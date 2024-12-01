// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract HelloWorld {
    string public hello = "Hello, World!";

    function div() public pure returns (uint256) {
        uint256 numerator = 1 * 10 ** 18;
        uint256 denominator = 2;
        uint256 result = numerator / denominator;
        return result;
    }

    function getArr() public pure returns (uint256[] memory) {
        /**
         * when you create a memory array in Solidity, it's initially uninitialized, which means you can't directly assign values to its elements without first allocating the correct size.
         */
        uint256[] memory arr = new uint256[](10);
        for (uint256 i = 0; i < 10; ) {
            arr[i] = i;

            unchecked {
                ++i;
            }
        }
        return arr;
    }
}
