SELECT
  book.title,
  genre.name_genre,
  book.price
FROM
  book
  INNER JOIN genre ON book.genre_id = genre.genre_id
WHERE
  book.amount > 8
ORDER BY
  price DESC;
