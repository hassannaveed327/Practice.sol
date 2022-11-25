// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MappingContract{

            mapping(uint => string) public theNames;
            mapping(uint => Book) public Books;
            mapping(address => mapping(uint => Book)) public myBooks;

            constructor(){
                theNames[1] = "Naveed";
                theNames[2] = "Ardil";
                theNames[3] = "Hassan";
                theNames[4] = "Ali";

            }

            struct Book{
                string title;
                string author;
            }

            function addBooks( uint _id, 
            string memory _title, 
            string memory _author ) 
            public {
                Books[_id] = Book(_title,_author);
            }

            
            function addMyBooks( uint _id, 
            string memory _title, 
            string memory _author ) 
            public {
                myBooks[msg.sender][_id] = Book(_title,_author);
            }




}
