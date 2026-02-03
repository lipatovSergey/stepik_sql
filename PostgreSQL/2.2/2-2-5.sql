SELECT
  name_genre,
  title,
  name_author
FROM
  book
  INNER JOIN genre ON book.genre_id = genre.genre_id
  INNER JOIN author ON book.author_id = author.author_id
WHERE
  name_genre LIKE '%Роман%'
ORDER BY
  title;
