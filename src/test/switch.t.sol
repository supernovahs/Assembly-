pragma solidity ^0.8.10;


import "ds-test/test.sol";
import  {console} from "forge-std/console.sol";
import "../switch.sol";

contract switchtest is DSTest{

    Switch switchcontract;
    function setUp() public {
        switchcontract = new Switch();
        uint a = switchcontract.switchfunc();
        console.log(a);
    }

    function testExample() public {

    }

}