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
