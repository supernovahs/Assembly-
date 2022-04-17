pragma solidity ^0.8.10;

import "ds-test/test.sol";
import  {console} from "forge-std/console.sol";  
import "../while.sol";


contract Whiletest is DSTest {

    whileloop WhileLoop;

    function setUp() public {
        WhileLoop = new whileloop();

       uint a =  WhileLoop.whileloopfunc();
       console.log(a);
    }

    function testExample() public {
        
    }
}