pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IExerciceSolution.sol";
import "./IPool.sol";
import "./ERC20TD.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ExerciceSolution is IExerciceSolution
{
    function depositSomeTokens() external override
    {
        address poolAddress = 0x7b5C526B7F8dfdff278b4a3e045083FBA4028790;
        address daiAddress = 0xBa8DCeD3512925e52FE67b1b5329187589072A55;
        ERC20TD(daiAddress).approve(poolAddress, 1000*10**18);
        IPool(poolAddress).supply(daiAddress, 10*10**18, address(this), 0);
    
    }

    function withdrawSomeTokens() external override
    {
        address poolAddress = 0x7b5C526B7F8dfdff278b4a3e045083FBA4028790;
        address daiAddress = 0xBa8DCeD3512925e52FE67b1b5329187589072A55;

        IPool(poolAddress).withdraw(daiAddress, 1*10**18, msg.sender);
    }

    function borrowSomeTokens() external override
    {
        address poolAddress = 0x7b5C526B7F8dfdff278b4a3e045083FBA4028790;
        address USDCAddress = 0x65aFADD39029741B3b8f0756952C74678c9cEC93;

        IPool(poolAddress).borrow(USDCAddress, 1*10**6, 2, 0, address(this));
    }

    function repaySomeTokens() external override
    {
        address poolAddress = 0x7b5C526B7F8dfdff278b4a3e045083FBA4028790;
        address USDCAddress = 0x65aFADD39029741B3b8f0756952C74678c9cEC93;
        ERC20TD(USDCAddress).approve(poolAddress, 1000*10**6);
        IPool(poolAddress).repay(USDCAddress, 0.5*10**6, 2, address(this));
    }

    function doAFlashLoan() external override
    {

    }

    function repayFlashLoan() external override
    {
        
    }
  

    function moneyyyyyyyyyyyyy(uint amount) external
    {
       ERC20(0x65aFADD39029741B3b8f0756952C74678c9cEC93).transfer(msg.sender, amount);
    }

}