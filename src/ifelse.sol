pragma solidity ^0.8.13;

    
contract ifelse{
    function looper() public view returns (uint ){
        uint i =0;
        uint result;
        assembly{

        for{i:=0} lt(i,10) {i:= add(i,1)}{

           result:= mul(i,2)

            //check if it exceeds a certain value say 10
        }

        mstore(0x0,result)
        return(0x0,32)
        
        
        
        
    }
}
}
