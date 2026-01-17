-- SUM sums all the values from the specified column within the group
-- COUNT(column_name) counts not null values in the specified column within the group
-- COUNT(*) count all raws in the group (including NULL)
SELECT author as Автор, COUNT(DISTINCT title) as Различных_книг, SUM(amount) as Количество_экземпляров
FROM book
GROUP by author;

