SELECT
  name,
  city,
  DATEDIFF (date_last, date_first) AS duration
FROM
  trip;
