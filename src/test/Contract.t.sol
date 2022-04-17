// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../Contract.sol";
import {console} from "forge-std/console.sol";
import "../while.sol";


contract ContractTest is DSTest {

    getter public  hello;
    whileloop While;


        function setUp() public {
        console.log("Hello");
        hello = new getter();
        While = new whileloop();

        uint size;
        uint code;
        uint ss;
        assembly{
            size:= extcodesize(0x18669eb6c7dfc21dcdb787feb4b3f1ebb3172400)

            code:= mload(64)


        }
        console.log(size);
        console.log(code);
       

        

        
    }

    function testExample( ) public {
        // hello.get(address(hello));


        

        
    }

     
}
