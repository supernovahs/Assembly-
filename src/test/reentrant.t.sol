pragma solidity ^0.8.10;

import {console} from "forge-std/console.sol";
import "ds-test/test.sol";
import "../reentrancy.sol";
import "forge-std/Vm.sol";

contract reentrantTest is DSTest{

    Reentrancy public reentrant;
    Vm public vm;
    address immutable depositorOne = address(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
    address immutable depositorTwo = address(0x110);

    function setUp() public {
        reentrant = new Reentrancy();   
        vm = Vm(HEVM_ADDRESS);
        vm.deal(depositorOne,10000000000000000000);
        vm.deal(depositorTwo,10000000000000000000);

    }

    function testExample() public {
        console.log(reentrant.s_balances(depositorOne));

        vm.prank(depositorOne);
        address(reentrant).call{value:1000000000000000000 }("");

        console.log(reentrant.s_balances(depositorOne));

        assertEq(reentrant.s_balances(depositorOne),1000000000000000000);

        vm.prank(depositorTwo);
        address(reentrant).call{value:1000000000000000000 }("");
        console.log(reentrant.s_balances(depositorTwo));
    }

    function testwithdraw() public {
        vm.prank(depositorOne);
        address(reentrant).call{value:1000000000000000000 }("");
        vm.prank(depositorTwo);
        address(reentrant).call{value:1000000000000000000 }("");
        console.log(reentrant.s_balances(depositorTwo));
        vm.prank(depositorTwo);
        reentrant.withdraw(1000000000000000000);
    }






}