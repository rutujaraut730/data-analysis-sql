-- Basic SELECT queries
SELECT name FROM employees WHERE city = 'Bangalore';
SELECT name FROM employees WHERE salary > 60000;

-- GROUP BY queries
SELECT dept, AVG(salary) FROM employees GROUP BY dept;
SELECT city, MAX(salary), MIN(salary) FROM employees GROUP BY city;
SELECT dept, COUNT(id) FROM employees GROUP BY dept;

-- HAVING query
SELECT dept, AVG(salary) FROM employees GROUP BY dept HAVING AVG(salary) > 50000;


-- JOIN Queries
-- INNER JOIN: only matching rows
SELECT employees.name, employees.dept, departments.manager
FROM employees
INNER JOIN departments ON employees.dept = departments.dept;

-- LEFT JOIN: all employees even without department info
SELECT employees.name, employees.dept, departments.manager
FROM employees
LEFT JOIN departments ON employees.dept = departments.dept;

---LEFT INNER JOIN PRACTICE
select emp.name,emp.dp, dps.flo from emp inner join dps on emp.dp=dps.dp;
select dps.dp,emp.name from dps left join emp on dps.dp=emp.dp;
select emp.name, dps.manager from emp inner join dps on emp.dp=dps.dp;
