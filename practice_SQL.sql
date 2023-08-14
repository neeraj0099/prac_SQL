-- Creating the database
CREATE DATABASE LibraryDB;

-- Using the LibraryDB database
USE LibraryDB;

-- Creating the Authors table
CREATE TABLE Authors (
    AuthorID INT primary key,
    AuthorName VARCHAR(100)
);

-- Creating the Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    PublicationYear INT,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Inserting data into the Authors table
INSERT INTO Authors (AuthorID, AuthorName) VALUES (1, 'neeraj nirmal');
INSERT INTO Authors (AuthorID, AuthorName) VALUES (2, 'neeraj nirmal2');

-- Inserting data into the Books table
INSERT INTO Books (BookID, Title, PublicationYear, AuthorID) VALUES (101, 'Harry Potter and the Sorcerer Stone', 1997, 1);
INSERT INTO Books (BookID, Title, PublicationYear, AuthorID) VALUES (102, '1984', 1949, 2);

-- Retrieving all authors
SELECT * FROM Authors;

-- Retrieving all books with their authors
SELECT Books.Title, Authors.AuthorName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- Retrieving books published after 2000
SELECT * FROM Books WHERE PublicationYear > 2000;





