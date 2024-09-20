// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // version 

// giving version range >=0.8.18 < 0.9.0 , not above => ~0.8.18


contract SimpleStorage { // just like classes

    //basic data types

    bool flag = true;
    int public num = 10;
    uint num2 = 20;
    string str = "hello";
    address add = 0xfc3DA0cCF9374Ec30759CcCF9c8f503F8D686f59;
    int num3 = 123; //int with bytes
    

    // Functions

    function store(int number) public {
        num = number;
    }    

    function retrive() public view returns(int){

        return num;
    }

    // struct and Arrays 

    struct Name {
        string firstName;
        string secondName;
    }

    Name public sumit = Name({firstName: "Sumit", secondName: "Shandillya"});

    Name[] public listOfName;

    mapping(string => int) public mpp;

    function addName(string memory fName, string memory sName) public {
        listOfName.push(Name(fName,sName));
        mpp[fName] = 21;
    }

}



