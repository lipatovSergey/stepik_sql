SELECT
  name,
  SUM((date_last - date_first + 1) * per_diem) AS trip_amount
FROM
  trip
GROUP BY
  name
HAVING
  COUNT(name) > 3
ORDER BY
  trip_amount DESC;
