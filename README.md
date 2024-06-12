# LuckyNumber Smart Contract

The LuckyNumber smart contract allows users to set and get their preferred number. It includes functions to validate the number using different error-handling mechanisms (require(), assert(), and revert()).

## Description

The LuckyNumber smart contract is a Solidity-based Ethereum smart contract designed to provide users with a simple and secure way to set and retrieve their preferred number. By leveraging the Ethereum blockchain, users can interact with the contract using their Ethereum wallets or through other smart contracts.

This contract introduces several key features:

**Setting Preferred Number:** Users can use the setPreferredNumber() function to specify their favorite number. The contract ensures that the number provided is greater than zero, utilizing the require() statement for input validation.

**Retrieving Preferred Number:** The getPreferredNumber() function allows users to retrieve their previously set preferred number. This function is a read-only operation, ensuring that users can view their preferred number without modifying the contract's state.

**Error-Handling Mechanisms:** To demonstrate various error-handling mechanisms in Solidity, the contract includes additional functions such as testAssert(), testRequire(), and testRevert(). These functions showcase the use of assert(), require(), and revert() statements, respectively, to handle different error conditions within the contract.

By exploring these features, developers can gain insights into best practices for implementing error handling and state management in Ethereum smart contracts. Additionally, users can benefit from a transparent and secure platform for managing their preferred numbers on the blockchain.



## Getting Started

### Installing

To download the code, you can visit the following file path:-[        https://github.com/Sagarthakur18/ETH-AVAX_assesmnet_1/blob/main/AVAX_assesment_1.sol  ]

### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at (https://remix.ethereum.org/.)

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Meta.sol). Copy and paste the following code into the file: contract MyToken {

```

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
```




## Authors

Sagar Thakur @sagar_thakur_0613(IG)


## License

This smart contract is licensed under the MIT License. See the LICENSE file for details.
