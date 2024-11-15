//SPDX-License-Identifier: BSL
pragma solidity ^0.7.6;
pragma abicoder v2;

import "../interfaces/IOneInch.sol";
import "../interfaces/ISwapProxy.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

library OneInchHelper {
  /**
   * @dev Function decodeds srcToken, dstToken and source swap amount from the given data
   * @param swapProxy swapProxy address
   * @param token0 token0 address of strategy
   * @param token1 token1 address of strategy
   * @param data bytes data to decode
   */
  function decodeData(
    address swapProxy,
    IERC20 token0,
    IERC20 token1,
    bytes calldata data
  )
    internal
    view
    returns (
      IERC20 srcToken,
      IERC20 dstToken,
      uint256 amount
    )
  {
    IOneInch.SwapDescription memory description;

    bytes memory _data = data;

    bytes4 selector;
    assembly {
      selector := mload(add(_data, 0x20))
    }

    if (selector == 0x07ed2379) {
      address caller;
      // call swap() method
      (caller, description, ) = abi.decode(data[4:], (address, IOneInch.SwapDescription, bytes));

      require(ISwapProxy(swapProxy).isAllowedOneInchCaller(caller), "IC");

      srcToken = description.srcToken;
      dstToken = description.dstToken;
      amount = description.amount;
    } else if (selector == 0x83800a8e) {
      // call unoswap() method
      uint256 tokenIn;
      (tokenIn, amount, , ) = abi.decode(data[4:], (uint256, uint256, uint256, uint256));

      srcToken = IERC20(address(tokenIn));
      dstToken = srcToken == token0 ? token1 : token0;
    } else if (selector == 0x8770ba91) {
      // call unoswap2() method
      uint256 tokenIn;
      (tokenIn, amount, , , ) = abi.decode(data[4:], (uint256, uint256, uint256, uint256, uint256));

      srcToken = IERC20(address(tokenIn));
      dstToken = srcToken == token0 ? token1 : token0;
    } else if (selector == 0x19367472) {
      // call unoswap3() method
      uint256 tokenIn;
      (tokenIn, amount, , , , ) = abi.decode(data[4:], (uint256, uint256, uint256, uint256, uint256, uint256));

      srcToken = IERC20(address(tokenIn));
      dstToken = srcToken == token0 ? token1 : token0;
    } else {
      revert("IM");
    }
  }
}
