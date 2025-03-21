// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Library {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }

    Book public book;

    function setBook(string memory _title, string memory _author, uint256 _id) public {
        book = Book(_title, _author, _id);
    }

    function getBook() public view returns (string memory, string memory, uint256) {
        return (book.title, book.author, book.book_id);
    }
}
