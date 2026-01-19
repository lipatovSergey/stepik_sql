SELECT author, SUM(amount * price) AS Стоимость
FROM book
WHERE title <> "Идиот" AND title <> "Белая гвардия"
GROUP BY author
HAVING SUM(amount * price) > 5000
ORDER BY Стоимость DESC;
