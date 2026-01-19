SELECT author, COUNT(title) as title_amount
FROM book
WHERE price > 500 and amount > 1
GROUP BY author
HAVING COUNT(title) >= 2;
