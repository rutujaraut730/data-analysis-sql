-- Basic SELECT queries
SELECT name FROM employees WHERE city = 'Bangalore';
SELECT name FROM employees WHERE salary > 60000;

-- GROUP BY queries
SELECT dept, AVG(salary) FROM employees GROUP BY dept;
SELECT city, MAX(salary), MIN(salary) FROM employees GROUP BY city;
SELECT dept, COUNT(id) FROM employees GROUP BY dept;

-- HAVING query
SELECT dept, AVG(salary) FROM employees GROUP BY dept HAVING AVG(salary) > 50000;
