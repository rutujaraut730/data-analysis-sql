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
