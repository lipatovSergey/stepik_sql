UPDATE fine f
SET
  sum_fine = tv.sum_fine
FROM
  traffic_violation tv
WHERE
  f.violation = tv.violation
  AND f.sum_fine IS NULL;
