-- Aggregate functions can compute values across the entire table
-- Without GROUP BY, the whole table is treated as a single group
-- Result is always a single row
-- Only aggregate functions allowed in SELECT (no regular columns)
SELECT
  MIN(price) AS Минимальная_цена,
  MAX(price) AS Максимальная_цена,
  ROUND(AVG(price), 2) AS Средняя_цена
FROM book;
