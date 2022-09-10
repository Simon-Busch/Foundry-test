// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/StakeContract.sol";
import "../src/mocks/MockERC20.sol";
import "forge-std/Vm.sol";

contract StakeContractTest is Test {
  StakeContract public stakeContract;
  MockERC20 public mockERC20;
  function setUp() public {
    // create new contract instance
    stakeContract = new StakeContract();
    mockERC20 = new MockERC20();
    // setup the contract
  }

  // NB: if we have paramters in a test, foundry will chaotically pass random values
  // output  (runs: 256 => ran 256 different values here
  function testExample(uint8 amount) public {
    // uint256 amount = 10e18;
    mockERC20.approve(address(stakeContract), amount);
    bool stakePassed = stakeContract.stake(amount, address(mockERC20));
    assertTrue(stakePassed);
  }


}
