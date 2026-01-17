-- DISTINCT: removes duplicate values from the result set
-- Returns only unique values of the specified column
SELECT DISTINCT amount
FROM book;

-- GROUP BY: groups rows by the specified column
-- Without aggregate functions, works similarly to DISTINCT
-- Primary use case: with aggregate functions (COUNT, SUM, AVG, MIN, MAX)
SELECT amount
FROM book
GROUP BY amount;
