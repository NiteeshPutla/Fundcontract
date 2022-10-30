

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract Facuet{
    event Transfer(
        address indexed to,
        uint amount
    );
    function sendEther(address payable to, uint amount)external payable{
        require(address(this).balance>=amount,"Insufficient amount");
        to.transfer(amount);
        emit Transfer(to,amount);

    }

}
