// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./ERC20.sol";
import "./ERC20Burnable.sol";

contract Contract is ERC20, ERC20Burnable{

    constructor(string memory name, string memory symbol, uint8 _decimal, uint256 _totalSupply, address multiSigVault) ERC20(name, symbol, _decimal) {
        _mint(multiSigVault, _totalSupply);
    }
}