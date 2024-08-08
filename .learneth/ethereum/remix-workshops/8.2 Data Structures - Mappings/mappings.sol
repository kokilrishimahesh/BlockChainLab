// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    // Assignment
    mapping(address => uint) public balances;

    function get(address _addr) public view returns (uint) {
        return balances[_addr];
    }

    function remove(address _addr) public {
        delete balances[_addr];
    }

    function set(address _addr, uint _i) public {
        balances[_addr] = _i;
    }

    // addresses used are taken from deployed blocks
    // 0x5e17b14ADd6c386305A32928F985b29bbA34Eff5
    // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

}

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}