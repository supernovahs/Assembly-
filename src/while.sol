pragma solidity ^0.8.10;

contract whileloop{

    function whileloopfunc() public view returns (uint){
        uint i;
        uint x;
        assembly {
        for {} lt(i,0x100) {}{
            x:= add(x,mload(i))
            i:= add(i,0x20)
        }   
    
    }
        return x ;
}
}