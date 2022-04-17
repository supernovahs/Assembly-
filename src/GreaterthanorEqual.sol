pragma solidity ^0.8.10;

contract greaterorEqual{

    function nova(uint num1, uint num2) public view returns (uint){
        uint result;

    assembly{

        if gt(num1,num2){
            result:= num1
        }
        if eq(num1,num2){
            result:=0
        }

        result:= num2
    }
    }

}
