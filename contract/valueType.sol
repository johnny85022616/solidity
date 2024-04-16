// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract varibleType{
    //布林
    bool public isOpen = true; 
    
    //數字
    int public num1 = -1; //整数，包括负数
    uint public num2 = 2; //正整數
    uint256 public num3 = 2; //256位正整数
    bool public e = num2 == num3; 
    int public total = num1 + int(num2); //相加

    // 地址
    address public ad = 0x17F6AD8Ef982297579C203069C1DbfFE4348c372;
    address payable public ad1 = payable (ad); // payable address，可以转账、查余额
    // 地址类型的成员
    uint256 public balance = ad1.balance; // balance of address

    // 固定长度的字节数组
    bytes32 public _byte32 = "MiniSolidity"; 
    bytes1 public b1 = _byte32[2];
    //1byte = 8bits = 1111 1111 = 0xff
    //所以1byte = 2個16進位
    //0x4d696e69536f6c69646974790000000000000000000000000000000000000000 (0x後方有2*32=64位)
    //_byte1從上方數字中從0x之後開始取第3個字節(1個字節2個16進位)
    //回傳0x6e
    bytes12 public _byte12 = "MiniSolidity"; 
    bytes1 public b2 = _byte32[2];

    //列舉
    // 用enum将uint 0， 1， 2表示为Buy, Hold, Sell
    enum ActionSet { Buy, Hold, Sell }
    // 创建enum变量 action
    ActionSet action = ActionSet.Buy;

    // enum可以和uint显式的转换
    function enumToUint() external view returns(uint){
        return uint(action);
    }
} 

