// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SmartContract_Nik {

    uint Nik_gravity = 10;

    function my_handler(uint _mass, uint _gravity) public view returns (uint) {
        require(_mass > 0,"Mass of the object Can't be 0.");

        assert(_gravity == Nik_gravity);

        if ((_mass * _gravity) < 0){
            revert("Weight of the object can't be zero");
        }

        return _mass * _gravity;
    }
}
