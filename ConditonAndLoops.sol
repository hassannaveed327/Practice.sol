// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract ConditionAndLoops {

            uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];
            
            
            
            function ArrEvenCheck() public view returns(uint){
                uint  count = 0;

                for (uint i = 0;i < numbers.length; i++){

                    if(checkEven (numbers[i]) == true){
                     count++;
                    }
                }
                return count++;
            }
            
            
            
            function checkEven (uint _numbers) public  pure returns(bool){
                if (_numbers % 2 == 0){
                    return true;
                }
                else {
                    return false;
                }
            }






}
