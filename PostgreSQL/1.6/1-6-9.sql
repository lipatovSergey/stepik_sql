SELECT
  TO_CHAR (date_first, 'Month') AS month,
  COUNT(*) AS amount
FROM
  trip
GROUP BY
  TO_CHAR (date_first, 'Month')
ORDER BY
  amount DESC,
  month;
