// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract LuckyNumber {
    uint private preferredNumber;

    // Function to set the preferred number
    function setPreferredNumber(uint _number) public {
        // Using require to check the number is greater than zero
        require(_number > 0, "Preferred number must be greater than zero");
        preferredNumber = _number;
    }

    // Function to get the preferred number
    function getPreferredNumber() public view returns (uint) {
        return preferredNumber;
    }

    // Function using assert to check a condition
    function testAssert() public view {
        // Using assert to ensure the preferred number is always greater than zero
        assert(preferredNumber > 0);
    }

    // Function using require to check a condition
    function testRequire() public view {
        // Using require to ensure the preferred number is greater than zero
        require(preferredNumber > 0, "Preferred number should be greater than zero");
    }

    // Function using revert to check a condition
    function testRevert() public view {
        // Using revert to check if the preferred number is zero
        if (preferredNumber == 0) {
            revert("Preferred number should be greater than zero");
        }
    }
}
