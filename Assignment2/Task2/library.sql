/*Task 2: SQL (Library Database)
- Create a database named library with a books table containing: id, title, author, year and price.
- Insert 8 book records.
- Write SQL queries to:
- Display books priced above 500.
- Display all books sorted by price (highest first).
- Count the total number of books.
- Update the price of one book using WHERE
- Save all SQL queries in library.sql */

CREATE DATABASE library;

USE library;

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    year INT,
    price DECIMAL(10,2)
);

INSERT INTO books (id, title, author, year, price)
VALUES
(1, 'Python Basics', 'John Smith', 2022, 600),
(2, 'Java Programming', 'James Gosling', 2020, 750),
(3, 'Web Development', 'Mark Lee', 2021, 450),
(4, 'Data Science', 'David Smith', 2023, 900),
(5, 'Machine Learning', 'Tom Brown', 2022, 800),
(6, 'Database Systems', 'Robert Martin', 2019, 500),
(7, 'Clean Code', 'Robert Martin', 2008, 650),
(8, 'AI Fundamentals', 'Sarah Khan', 2024, 1000);

-- Books priced above 500
SELECT * FROM books
WHERE price > 500;

-- Sort books by highest price first
SELECT * FROM books
ORDER BY price DESC;

-- Count total books
SELECT COUNT(*) FROM books;

-- Update one book price
UPDATE books
SET price = 700
WHERE id = 1;

