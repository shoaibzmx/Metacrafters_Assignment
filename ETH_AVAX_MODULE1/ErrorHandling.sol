// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
   
 
    function testAssert(uint num) public pure{
        assert(num!=0);
    }

    function testrevert_divide(uint _numerator, uint _denomenator) public pure returns (uint){
        if(_numerator<_denomenator){
           
            revert("please provide numerator greater than denomenator");
            
        }
        return _numerator/_denomenator;
       

    }
    function testrequire_mult(uint a,uint b) public pure returns (uint){
        require(a>0,"Value of a can't be zero");
        return a*b;

    }

}
