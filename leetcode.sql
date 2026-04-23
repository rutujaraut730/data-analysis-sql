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





