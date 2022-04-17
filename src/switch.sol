pragma solidity ^0.8.10;


contract Switch{
    function switchfunc() public view returns (uint ){

    uint x;
    assembly {

        switch eq(0,0)

        case true {
            x:= add(x,1)
        }

        case false {
            x:= mul(x,2)
        }

    }
    return x;
    }


}