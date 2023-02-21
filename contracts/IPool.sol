// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.6.0;



/**
 * @title IPool
 * @author Aave
 * @notice Defines the basic interface for an Aave Pool.
 */

interface IPool {
    
    function supply(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode
    ) external;

     function borrow(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        uint16 referralCode,
        address onBehalfOf
    ) external;

    function repay(
    address asset,
    uint256 amount,
    uint256 interestRateMode,
    address onBehalfOf
  ) external returns (uint256);

  function withdraw(
    address asset,
    uint256 amount,
    address to
  ) external returns (uint256);

}