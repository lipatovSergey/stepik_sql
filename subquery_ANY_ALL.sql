SELECT
  title,
  author,
  (price * amount) AS total_cost
FROM
  book
WHERE
  (price * amount) < ALL (
    SELECT
      (price * amount) AS total_cost
    FROM
      book
    WHERE
      author = "Достоевский Ф.М."
  );
