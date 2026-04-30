-- Bookstore Practice Dataset

CREATE TABLE books (
    book_id INTEGER,
    title TEXT,
    genre TEXT,
    price INTEGER,
    copies_sold INTEGER,
    author TEXT
);

INSERT INTO books VALUES (1, 'The Alchemist', 'Fiction', 299, 1500, 'Paulo Coelho');
INSERT INTO books VALUES (2, 'Atomic Habits', 'Self Help', 399, 2300, 'James Clear');
INSERT INTO books VALUES (3, 'Ikigai', 'Self Help', 250, 1800, 'Francesc Miralles');
INSERT INTO books VALUES (4, 'Dune', 'Fiction', 499, 900, 'Frank Herbert');
INSERT INTO books VALUES (5, 'Deep Work', 'Self Help', 350, 1200, 'Cal Newport');
INSERT INTO books VALUES (6, 'Foundation', 'Fiction', 450, 750, 'Isaac Asimov');
INSERT INTO books VALUES (7, 'Rich Dad Poor Dad', 'Finance', 299, 3100, 'Robert Kiyosaki');
INSERT INTO books VALUES (8, 'The Psychology of Money', 'Finance', 399, 2700, 'Morgan Housel');
INSERT INTO books VALUES (9, 'Sapiens', 'History', 599, 1100, 'Yuval Noah Harari');
INSERT INTO books VALUES (10, 'Thinking Fast and Slow', 'History', 499, 850, 'Daniel Kahneman');


-- Bookstore Practice Queries

-- Q1: All Fiction books
SELECT title FROM books WHERE genre = 'Fiction';

-- Q2: Books priced above 350
SELECT title, price FROM books WHERE price > 350;

-- Q3: Total copies sold per genre
SELECT genre, SUM(copies_sold) AS total_copies FROM books GROUP BY genre;

-- Q4: Average price per genre
SELECT genre, AVG(price) AS average_price FROM books GROUP BY genre;

-- Q5: Most expensive book per genre
SELECT genre, MAX(price) AS max_price FROM books GROUP BY genre;
