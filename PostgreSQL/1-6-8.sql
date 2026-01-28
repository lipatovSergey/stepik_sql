SELECT
  name,
  city,
  date_first,
  date_last
FROM
  trip
WHERE
  (
    EXTRACT(
      MONTH
      FROM
        date_first
    )
  ) = (
    EXTRACT(
      MONTH
      FROM
        date_last
    )
  )
ORDER BY
  city,
  name;
