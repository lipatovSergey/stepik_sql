SELECT
  name,
  city,
  date_first,
  date_last
FROM
  trip
WHERE
  (date_last - date_first) = (
    SELECT
      MIN(date_last - date_first)
    FROM
      trip
  );
