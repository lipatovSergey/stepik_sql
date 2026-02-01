UPDATE fine
SET
  sum_fine = sum_fine * 2
WHERE
  name IN (
    SELECT
      name
    FROM
      name
    GROUP BY
      name,
      number_plate,
      violation
    HAVING
      COUNT(*) > 1
  )
  AND date_payment IS NULL;
