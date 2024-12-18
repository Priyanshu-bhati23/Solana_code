//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //statted our version

contract SimpleStorage{
    //Basic Types :boolean,uint,int,address,bytes
    
    uint256  public favourite;//0

    function store(uint256 _favourite) public {
        favourite=_favourite;
        favourite++;
        
    }
  
}

//0xd9145CCE52D386f254917e481eB44e9943F39138