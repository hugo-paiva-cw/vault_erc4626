// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
// import "https://github.com/Rari-Capital/solmate/blob/main/src/tokens/ERC20.sol";

contract Vault is ERC4626Upgradeable {

    function initialize(ERC20BurnableUpgradeable asset_, string memory name_, string memory symbol_) public initializer {
        // __ERC20_init_unchained(name_, symbol_);
        __ERC4626_init(asset_);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    // function depositAsMerchant(
    //     ERC20BurnableUpgradeable _asset,
    //     address caller,
    //     uint256 assets
    // ) internal virtual {
    //     SafeERC20Upgradeable.safeTransferFrom(_asset, caller, address(this), assets);
    // }
}