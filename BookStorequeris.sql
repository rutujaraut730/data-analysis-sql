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
SELECT title FROM books WHERE title='Fiction';

-- Q2: Books priced above 350
SELECT title, price FROM books WHERE price > 350;

-- Q3: Total copies sold per genre
SELECT genre, SUM(copies_sold) AS total_copies FROM books GROUP BY genre;

-- Q4: Average price per genre
SELECT genre, AVG(price) AS average_price FROM books GROUP BY genre;

-- Q5: Most expensive book per genre
SELECT genre, MAX(price) AS max_price FROM books GROUP BY genre;

-- Q6: Genres where total copies sold > 3000
SELECT genre, SUM(copies_sold) FROM books GROUP BY genre HAVING SUM(copies_sold) > 3000;

-- Q7: All books sorted by copies sold descending
SELECT title FROM books ORDER BY copies_sold DESC;

-- Q8: Self Help books with more than 1500 copies sold
SELECT title, author FROM books WHERE genre = 'Self Help' AND copies_sold > 1500;

-- Q9: Count of books per genre
SELECT genre, COUNT(book_id) AS book_count FROM books GROUP BY genre;

-- Q10: Genres where average price > 350 AND total copies > 1500
SELECT genre FROM books GROUP BY genre HAVING AVG(price) > 350 AND SUM(copies_sold) > 1500;
