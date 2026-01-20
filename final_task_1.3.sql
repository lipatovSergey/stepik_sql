SELECT
    author,
    COUNT(title) AS title_amount
FROM book
WHERE price > 500 AND amount > 1
GROUP BY author
HAVING COUNT(title) >= 2;
