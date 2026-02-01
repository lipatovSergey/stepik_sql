UPDATE fine
SET
  sum_fine = CASE
    WHEN payment.date_payment - payment.date_violation <= 20 THEN sum_fine / 2
    ELSE sum_fine
  END,
  date_payment = payment.date_payment
FROM
  payment
WHERE
  fine.name = payment.name
  AND fine.number_plate = payment.number_plate
  AND fine.date_violation = payment.date_violation
  AND fine.date_payment IS NULL;
