pragma solidity ^0.8.10;

contract Operator{

    function opp(uint x) public view returns (uint ){

    assembly{

        x:= add(x,1)
        
        for {} gt(x,5) { }{
            stop()
        }
        x:=add(x,1)





    }
    return (x);
    
    }


    
}