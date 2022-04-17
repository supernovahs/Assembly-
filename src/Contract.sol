// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;
import {console} from "forge-std/console.sol";

library getCode{

    function at(address addr) public view returns (bytes memory code) {
        uint size;
        assembly {
            // retrieve the size of the code, this needs assembly
            size := extcodesize(addr)
            // allocate output byte array - this could also be done without assembly
            // by using code = new bytes(size)
            code := mload(0x40)
            // new "memory end" including padding
            mstore(0x40, add(code, and(add(add(size, 0x20), 0x1f), not(0x1f))))
            // store length in memory
            mstore(code, size)
            // actually retrieve the code, this needs assembly
            extcodecopy(addr, add(code, 0x20), 0, size)
        }
    }
   

}
contract getter{

    using getCode for address;

    function get (address arr) public view returns (bytes memory){
        return arr.at();    

    }


}
