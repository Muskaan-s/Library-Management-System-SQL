--1. View All Books
SELECT * FROM Books;
/* Insight
Displays all books in the library
Shows title, author ID, and quantity*/


--2.View All Members
SELECT * FROM Members;
/*Insight
Shows all registered library members
Includes name, email, and phone number*/


--3. View All Authors
SELECT * FROM Authors;
/*?? Insight
Displays all authors in the database
Helps understand book collection source*/




--4. Books with Author Name (Important Join)
SELECT b.Title, a.AuthorName
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID;
/*?? Insight
Shows which book belongs to which author
Combines two tables using JOIN*/



--5. Borrowed Books Details
SELECT m.MemberName, b.Title, br.BorrowDate
FROM BorrowRecords br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID;
/*Insight
Shows which member borrowed which book
Includes borrow date
This query gives details of borrowed books with member information.*/



--6. Borrow Records Table
SELECT * FROM BorrowRecords;
/*Insight
Shows all borrowing transactions
Includes borrow and return dates*/


--7. Count of Books
SELECT COUNT(*) AS TotalBooks FROM Books;
/*?? Insight
Shows total number of books in library
In your case ? 30 books
This query gives total number of books available in the library,*/


--8. Books by Specific Author 
SELECT Title
FROM Books
WHERE AuthorID = 1;
/* Insight
Shows books written by a specific author
This query filters books written by a particular author*/



--9.Simple Borrow Count
SELECT COUNT(*) AS TotalBorrowedBooks
FROM BorrowRecords;
/* Insight
Shows total number of borrow transactions
In your case ? 30 records*/


--10.Show First 5 Members
SELECT TOP 5 * FROM Members;
/* Insight
Shows first 5 members only*/


--11.Show Books with Quantity > 10
SELECT * FROM Books
WHERE Quantity > 10;
/*his query filters books having quantity greater than 10.*/


--11.Sort Data using ORDER BY using SORTING
SELECT * FROM Books
ORDER BY Quantity DESC;
/*Insight:
Shows books from highest to lowest quantity.
Used to sort data.*/


--12.LIKE (Pattern Matching) Using SEARCHING
SELECT * FROM Books
WHERE Title LIKE 'The%';
/* Insight:
Shows books whose title starts with “The”.*/


--13. IN Operator using MULTIPLE CONDITION MATCHING
SELECT * FROM Books
WHERE AuthorID IN (1, 2, 3);
/* Insight:
Shows books written by author 1, 2, or 3.
Used to check multiple values at once.*/


--14.RIGHT JOIN
SELECT b.Title, br.MemberID
FROM Books b
RIGHT JOIN BorrowRecords br ON b.BookID = br.BookID;
/*Insight:
Shows all borrow records even if book data is missing.*/


--15. Books with high borrowing activity
SELECT BookID, COUNT(*) AS BorrowCount
FROM BorrowRecords
GROUP BY BookID
HAVING COUNT(*) >= 5;
/*Insight:
Shows highly popular books*/


--16.Window Function (ROW_NUMBER) using Concept: Ranking without grouping
SELECT 
    MemberID,
    BookID,
    BorrowDate,
    ROW_NUMBER() OVER (PARTITION BY MemberID ORDER BY BorrowDate) AS BorrowRank
FROM BorrowRecords;
/* Insight:
Gives rank to each borrow per member
Shows first, second, third borrow order*/



--17. Window Function using the concept (RANK)
SELECT 
    MemberID,
    RANK() OVER (ORDER BY MemberID ASC) AS RankPosition
FROM BorrowRecords
GROUP BY MemberID;
/* Insight:
Ranks members based on borrowing activity*/


--18.Aggregation (COUNT + GROUP BY)
SELECT BookID, COUNT(*) AS TotalBorrowed
FROM BorrowRecords
GROUP BY BookID;
/*Insight:
Counts how many times each book was borrowed*/



--19. Aggregation (AVG)
SELECT SUM(Quantity) AS AverageBooks
FROM Books;
/* Insight:
Shows average stock of books in library*/


--20.Basic CTE – Borrow count per member & Find total books borrowed by each member.
WITH BorrowCount AS (
    SELECT MemberID, COUNT(*) AS TotalBorrows
    FROM BorrowRecords
    GROUP BY MemberID
)
SELECT * FROM BorrowCount;
/*Insight:
Creates a temporary table called BorrowCount
Stores borrow count for each member
Then displays the result */



--21.Find books whose quantity is greater than the average quantity.
SELECT Title, Quantity
FROM Books
WHERE Quantity > (
    SELECT AVG(Quantity)
    FROM Books
);
/*Insight:
Inner query calculates average quantity*/



--22.Show the current date for the library system.
SELECT GETDATE() AS CurrentDateTime;
/*Displays today's system date and time
Helps in tracking real-time operations.*/