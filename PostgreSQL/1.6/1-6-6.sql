SELECT
  name,
  city,
  (date_last - date_first + 1) AS duration
FROM
  trip
WHERE
  city NOT IN ('Москва', 'Санкт-Петербург')
ORDER BY
  duration DESC,
  city DESC;
