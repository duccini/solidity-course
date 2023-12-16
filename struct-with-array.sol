// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.6.6;

contract TestContract {
    struct Person {
        string name;
        uint age;
        bool working;
        address account;
    }

    Person[] public Persons;

    function createPerson(string memory _name, uint _age, bool _working) public {
        Person memory newPerson = Person(_name,
            _age,
            _working,
            0xf3Ae9792aE4F62219A1a292B4f6c59798AB6120D
        );

        Persons.push(newPerson);            
    }

    function getName(uint _index) public view returns (string memory) {
        return Persons[_index].name;
    }

    function getTotalPeole() public view returns (uint) {
        return Persons.length;
    }

}