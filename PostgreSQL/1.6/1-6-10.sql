SELECT
  name,
  city,
  date_first,
  (date_last - date_first + 1) * per_diem AS Сумма
FROM
  trip
WHERE
  EXTRACT(
    MONTH
    FROM
      date_first
  ) IN (2, 3)
  AND EXTRACT(
    YEAR
    FROM
      date_first
  ) = 2020
ORDER BY
  name,
  Сумма DESC;
