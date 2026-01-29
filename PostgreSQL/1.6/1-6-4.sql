SELECT
  city,
  COUNT(city) AS amount
FROM
  trip
GROUP BY
  city
ORDER BY
  amount DESC
LIMIT
  2;
