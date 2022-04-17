// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../Contract.sol";
import {console} from "forge-std/console.sol";

contract ContractTest is DSTest {

    getter public  hello; 
        function setUp() public {
        console.log("Hello");
        hello = new getter();
        // hello.get(address(hello));
        // console.log("hh");
    }

    // function testExample( ) public {

    // }
}
