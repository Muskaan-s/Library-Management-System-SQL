# 📚 Library Management System using SQL

## Project Overview
This project is a Library Management System developed using SQL.  
It is designed to manage library data such as authors, books, members, and
borrowing records efficiently using relational database concepts.

The system allows storing, retrieving, and managing data using SQL queries.

---

## Database Name
LIBRARYMANAGEMENT

---

## Tables Used

### 1. Authors
Stores information about authors such as name and country.

### 2. Books
Stores book details and links each book to an author.

### 3. Members
Stores details of library members such as name, email, and phone number.

### 4. BorrowRecords
Stores information about book borrowing and return details, linking members and books.

---

 ## 5.Relationships
- One author can have multiple books  
- One member can borrow multiple books  
- Each borrow record connects a member and a book  

---

 ## 6.Features of the Project
- Create and manage database using SQL  
- Create relational tables with primary and foreign keys  
- Insert sample data into tables  
- Perform data retrieval using SQL SELECT queries  
- Track borrowing and returning of books  
- Maintain structured library records  

---

 ## Files Included in This Project

- database_schema.sql → Contains database creation and table structures  
- sample_data.sql → Contains INSERT statements for all tables  
- queries.sql → Contains SELECT queries for data retrieval  
- screenshots/ → Contains output screenshots of tables and queries  
- README.md → Project documentation  

---

## 📌 Sample SQL Queries

-- View all authors
SELECT * FROM Authors;

-- View all books
SELECT * FROM Books;

-- View all members
SELECT * FROM Members;

-- View all borrow records
SELECT * FROM BorrowRecords;
