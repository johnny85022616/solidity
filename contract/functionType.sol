// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract functionType {
    uint256 public number = 5;
    uint256 private count = 6; //private 外部看不到
   
    function add() public {
        number += 1;
    }
    //pure (不讀值也不改值)
    function addPure(uint originNum) external pure returns (uint256 newNum){
        newNum = originNum + 1;
    }
    //view (只讀變數的值，但不去修改他 ex:讀number變數值，利用該值做事情並返回一個新的值)
    function addView() external view returns (uint256 newNum){
        newNum = number +1;
    }
    
    //external (只可在合約內被呼叫)
    function minus() internal{
        number -=1;
    }
    // internal (利用external方法呼叫contract內internal方法)
    function minusCall() external {
        minus();
    }
    //在合約內存入eth
    function depositePayable() external payable returns(uint256 balance) {
        add();
        balance = address(this).balance;
    }
}