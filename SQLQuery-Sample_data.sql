CREATE DATABASE LIBRARYMANAGEMENT;

CREATE TABLE Authors (
    AuthorID INT IDENTITY(1,1) PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
);

INSERT INTO Authors (AuthorName, Country)
VALUES
('J.K. Rowling','UK'),
('George Orwell','UK'),
('Paulo Coelho','Brazil'),
('Agatha Christie','UK'),
('Dan Brown','USA'),
('Chetan Bhagat','India'),
('Ruskin Bond','India'),
('R.K. Narayan','India'),
('Jane Austen','UK'),
('Mark Twain','USA'),
('Charles Dickens','UK'),
('Leo Tolstoy','Russia'),
('Stephen King','USA'),
('J.R.R. Tolkien','UK'),
('Arthur Conan Doyle','UK'),
('Ernest Hemingway','USA'),
('F. Scott Fitzgerald','USA'),
('Victor Hugo','France'),
('H.G. Wells','UK'),
('Oscar Wilde','Ireland'),
('Khaled Hosseini','Afghanistan'),
('Arundhati Roy','India'),
('Premchand','India'),
('Rabindranath Tagore','India'),
('Harper Lee','USA'),
('John Green','USA'),
('Suzanne Collins','USA'),
('Rick Riordan','USA'),
('E.L. James','UK'),
('Yuval Noah Harari','Israel');

SELECT * FROM Authors;



CREATE TABLE Books (
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    AuthorID INT,
    Quantity INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Books (Title, AuthorID, Quantity)
VALUES
('Harry Potter',1,10),
('1984',2,8),
('The Alchemist',3,12),
('Murder on the Orient Express',4,6),
('The Da Vinci Code',5,9),
('Five Point Someone',6,15),
('The Blue Umbrella',7,7),
('Malgudi Days',8,10),
('Pride and Prejudice',9,11),
('Tom Sawyer',10,5),
('Oliver Twist',11,8),
('War and Peace',12,4),
('The Shining',13,6),
('The Hobbit',14,10),
('Sherlock Holmes',15,13),
('The Old Man and the Sea',16,7),
('The Great Gatsby',17,8),
('Les Miserables',18,5),
('The Time Machine',19,6),
('The Picture of Dorian Gray',20,9),
('The Kite Runner',21,11),
('The God of Small Things',22,5),
('Godaan',23,7),
('Gitanjali',24,6),
('To Kill a Mockingbird',25,12),
('The Fault in Our Stars',26,9),
('The Hunger Games',27,8),
('Percy Jackson',28,10),
('Fifty Shades of Grey',29,4),
('Sapiens',30,14);

SELECT * FROM Books;


CREATE TABLE Members (
    MemberID INT IDENTITY(1,1) PRIMARY KEY,
    MemberName VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

INSERT INTO Members (MemberName, Email, Phone)
VALUES
('Aarav Sharma','aarav@gmail.com','9876543201'),
('Priya Patel','priya@gmail.com','9876543202'),
('Rahul Kumar','rahul@gmail.com','9876543203'),
('Ananya Singh','ananya@gmail.com','9876543204'),
('Vikram Rao','vikram@gmail.com','9876543205'),
('Sneha Gupta','sneha@gmail.com','9876543206'),
('Arjun Mehta','arjun@gmail.com','9876543207'),
('Neha Verma','neha@gmail.com','9876543208'),
('Rohan Das','rohan@gmail.com','9876543209'),
('Kavya Reddy','kavya@gmail.com','9876543210'),
('Aditya Jain','aditya@gmail.com','9876543211'),
('Pooja Nair','pooja@gmail.com','9876543212'),
('Karan Shah','karan@gmail.com','9876543213'),
('Meera Iyer','meera@gmail.com','9876543214'),
('Siddharth Roy','siddharth@gmail.com','9876543215'),
('Aisha Khan','aisha@gmail.com','9876543216'),
('Ritik Verma','ritik@gmail.com','9876543217'),
('Diya Sharma','diya@gmail.com','9876543218'),
('Nikhil Rao','nikhil@gmail.com','9876543219'),
('Ishita Patel','ishita@gmail.com','9876543220'),
('Aman Gupta','aman@gmail.com','9876543221'),
('Riya Kapoor','riya@gmail.com','9876543222'),
('Manav Joshi','manav@gmail.com','9876543223'),
('Simran Kaur','simran@gmail.com','9876543224'),
('Yash Malhotra','yash@gmail.com','9876543225'),
('Tanvi Shah','tanvi@gmail.com','9876543226'),
('Dev Mehta','dev@gmail.com','9876543227'),
('Muskan Jain','muskan@gmail.com','9876543228'),
('Krishna Patel','krishna@gmail.com','9876543229'),
('Aryan Singh','aryan@gmail.com','9876543230');

SELECT * FROM Members;



CREATE TABLE BorrowRecords (
    BorrowID INT IDENTITY(1,1) PRIMARY KEY,
    MemberID INT NOT NULL,
    BookID INT NOT NULL,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO BorrowRecords
(MemberID, BookID, BorrowDate, ReturnDate)
VALUES
(1,1,'2025-01-01','2025-01-10'),
(2,2,'2025-01-02','2025-01-11'),
(3,3,'2025-01-03','2025-01-12'),
(4,4,'2025-01-04','2025-01-13'),
(5,5,'2025-01-05','2025-01-14'),
(6,6,'2025-01-06','2025-01-15'),
(7,7,'2025-01-07','2025-01-16'),
(8,8,'2025-01-08','2025-01-17'),
(9,9,'2025-01-09','2025-01-18'),
(10,10,'2025-01-10','2025-01-19'),
(11,11,'2025-01-11','2025-01-20'),
(12,12,'2025-01-12','2025-01-21'),
(13,13,'2025-01-13','2025-01-22'),
(14,14,'2025-01-14','2025-01-23'),
(15,15,'2025-01-15','2025-01-24'),
(16,16,'2025-01-16','2025-01-25'),
(17,17,'2025-01-17','2025-01-26'),
(18,18,'2025-01-18','2025-01-27'),
(19,19,'2025-01-19','2025-01-28'),
(20,20,'2025-01-20','2025-01-29'),
(21,21,'2025-01-21','2025-01-30'),
(22,22,'2025-01-22','2025-01-31'),
(23,23,'2025-01-23','2025-02-01'),
(24,24,'2025-01-24','2025-02-02'),
(25,25,'2025-01-25','2025-02-03'),
(26,26,'2025-01-26','2025-02-04'),
(27,27,'2025-01-27','2025-02-05'),
(28,28,'2025-01-28','2025-02-06'),
(29,29,'2025-01-29','2025-02-07'),
(30,30,'2025-01-30','2025-02-08');

SELECT * FROM BorrowRecords;


SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE='BASE TABLE';

SELECT * FROM Authors;

SELECT * FROM Books;

SELECT * FROM Members;

