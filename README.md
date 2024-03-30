# Token Apsara

I have created an ERC20 token with Ethereum blockchain,with the name apsara and the 3 function 
## Description


The ERC20 token is named Apsara and given the sybmol as 'APS'
Functions used in this program are:
 function mint
 function burn
 function burn


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., apsara.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";


contract Apsara is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Apsara", "APS")
        Ownable(initialOwner)
      
    {}

    function mint(address to_address, uint256 mint_amount) public onlyOwner {
        _mint(to_address, mint_amount);
    }

    function burn(uint256 burn_amount) public returns(bool) {
        _burn(msg.sender,burn_amount);
        return true;
    }   
    function transfer(uint256 transfer_amount, address to_address) public returns(bool){
        _transfer(msg.sender, to_address, transfer_amount);
        return true;
    }    
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile apsara.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "apsara" contract from the dropdown menu, and then click on the "Deploy" button.


## Authors

Joel Sebastian 
j0els3bstian@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE file for details.

