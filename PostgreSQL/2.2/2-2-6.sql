SELECT
  name_author,
  SUM(amount) AS Количество
FROM
  book
  RIGHT JOIN author on book.author_id = author.author_id
GROUP BY
  name_author
HAVING
  SUM(amount) < 10
  OR SUM(amount) IS NULL
ORDER BY
  SUM(amount) NULLS FIRST;
