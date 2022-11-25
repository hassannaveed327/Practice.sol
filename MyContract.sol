// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract counter  {

    uint count;

    function getCount() public view returns(uint)  {
        return count;
    }

    function incCount() public{
        count++;
    }

    function decCount() public{
        count--;
    }

}
