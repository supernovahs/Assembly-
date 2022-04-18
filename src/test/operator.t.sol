pragma solidity ^0.8.10;


import "ds-test/test.sol";
import  {console} from "forge-std/console.sol";
import "../Operators.sol";

contract operators is DSTest{

    Operator public operator;
    function setUp() public {

        operator = new Operator();
        uint a = operator.opp(3);
        console.log(a);
    }

    function testExample() public {
        
    }

}