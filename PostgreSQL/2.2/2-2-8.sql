SELECT
  title,
  name_author,
  name_genre,
  price,
  amount
FROM
  book
  INNER JOIN author ON book.author_id = author.author_id
  INNER JOIN genre ON book.genre_id = genre.genre_id
WHERE
  book.genre_id IN (
    SELECT
      genre_id
    FROM
      (
        SELECT
          genre_id,
          SUM(amount) as sum_amount
        FROM
          book
        GROUP BY
          genre_id
        ORDER BY
          SUM(amount) DESC
      ) query_1
      INNER JOIN (
        SELECT
          SUM(amount) as sum_amount
        FROM
          book
        GROUP BY
          genre_id
        ORDER BY
          SUM(amount) DESC
        LIMIT
          1
      ) query_2 ON query_1.sum_amount = query_2.sum_amount
  )
ORDER BY
  title;
