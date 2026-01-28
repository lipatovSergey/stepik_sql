-- Group functions can be elements of expressions
SELECT 
    author,
    SUM(amount * price) as Стоимость,
    ROUND((SUM(amount * price) * (18 / 100)) / (1 + (18 / 100)), 2) as НДС,
    ROUND(SUM(amount * price) / (1 + (18 / 100)), 2) as Стоимость_без_НДС
FROM book
GROUP BY author;
