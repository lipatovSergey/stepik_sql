SELECT
  supply.title AS Название,
  name_author AS Автор,
  (supply.amount + book.amount) AS Количество
FROM
  book
  INNER JOIN author USING (author_id)
  INNER JOIN supply ON supply.title = book.title
  AND supply.price = book.price;
