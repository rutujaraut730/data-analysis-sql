-- LeetCode #1757 - Recyclable and Low Fat Products
-- Difficulty: Easy
-- Topics: SELECT, WHERE, AND

SELECT product_id 
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y';

-- LeetCode #584 - Find Customer Referee
-- Difficulty: Easy
-- Topics: WHERE, OR, IS NULL

SELECT name 
FROM Customer 
WHERE referee_id != 2 OR referee_id IS NULL;


-- LeetCode #595 - Big Countries
-- Difficulty: Easy
-- Topics: WHERE, OR, >=

SELECT name, population, area 
FROM World 
WHERE area >= 3000000 OR population >= 25000000;

-- LeetCode #1148 - Article Views I
-- Difficulty: Easy
-- Topics: SELECT DISTINCT, WHERE, ORDER BY, AS

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id ASC;

-- LeetCode #1683 - Invalid Tweets
-- Difficulty: Easy
-- Topics: WHERE, LENGTH()

SELECT tweet_id 
FROM Tweets 
WHERE LENGTH(content) > 15;

-- LeetCode #1693 - Daily Leads and Partners
-- Difficulty: Easy
-- Topics: GROUP BY multiple columns, COUNT DISTINCT, AS

SELECT date_id, make_name,
COUNT(DISTINCT lead_id) AS unique_leads,
COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name;

-- LeetCode #1729 - Find Followers Count
-- Difficulty: Easy
-- Topics: GROUP BY, COUNT, ORDER BY

SELECT user_id, 
COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;

-- LeetCode #175 - Combine Two Tables
-- Difficulty: Easy
-- Topics: LEFT JOIN

SELECT firstName, lastName, city, state
FROM Person
LEFT JOIN Address ON Person.personId = Address.personId;

-- LeetCode #1378 - Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
-- Topics: LEFT JOIN

SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id;

-- LeetCode #577 - Employee Bonus
-- Difficulty: Easy
-- Topics: LEFT JOIN, IS NULL, OR

SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus ON Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000 OR Bonus.bonus IS NULL;

-- LeetCode #183 - Customers Who Never Order Anything
-- Difficulty: Easy
-- Topics: LEFT JOIN, IS NULL

SELECT Customers.name AS customers
FROM Customers
LEFT JOIN Orders ON Customers.id = Orders.customersId
WHERE Orders.cutomersId is null;

-- LeetCode #193- Delete Duplicate Emails
-- Difficulty: Easy
-- Topics: DELETE, Join, AND

DELETE p1 
FROM Person p1, Person p2
WHERE p1.email = p2.email 
  AND p1.id > p2.id;

-- LeetCode #183- Deparment Highest Salary
-- Difficulty: Easy
-- Topics: Join, Max, Where

SELECT d.name AS Department, e.name AS Employee, e.salary
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE e.salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = e.departmentId
);

-- LeetCode #586- Customer Placing Highest number of orders
-- Difficulty: Easy
-- Topics: Group By, Order by, Limit

SELECT customer_number
FROM orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;

--- LeetCode #1251 — Average Selling Price
-- Difficulty: Easy
-- Topics: Group By, Join, Round, SUM, AND, BETWEEN, AS

SELECT 
    Prices.product_id,
    ROUND(SUM(Prices.price * UnitsSold.units) / SUM(UnitsSold.units), 2) AS average_price
FROM Prices
JOIN UnitsSold 
    ON Prices.product_id = UnitsSold.product_id
    AND UnitsSold.purchase_date BETWEEN Prices.start_date AND Prices.end_date
GROUP BY Prices.product_id;


-- LeetCode #1075 - Project Employees I
-- Difficulty: Easy
-- Topics: JOIN, AVG, ROUND, GROUP BY

SELECT Project.project_id,
ROUND(AVG(Employee.experience_years), 2) AS average_years
FROM Project
JOIN Employee ON Project.employee_id = Employee.employee_id
GROUP BY Project.project_id;

-- LeetCode #511 - Game Analysis I
-- Difficulty: Easy
-- Topics:MIN, GROUP BY

SELECT player_id,MIN(event_date) AS first_login
FROM Activity GROUP BY player_id;

-- LeetCode #596 - Classes with at least 5 students
-- Difficulty: Easy
-- Topics: Group by, Having, Count;
SELECT class FROM Courses GROUP BY class HAVING COUNT(student)>=5;





