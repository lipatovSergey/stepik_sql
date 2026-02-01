CREATE TABLE traffic_violation (
  violation_id SERIAL PRIMARY KEY,
  violation VARCHAR(50),
  sum_fine DECIMAL(8, 2)
);

INSERT INTO
  traffic_violation (violation, sum_fine)
VALUES
  ('Превышение скорости(от 20 до 40)', 500.00),
  ('Превышение скорости(от 40 до 60)', 1000.00),
  ('Проезд на запрещающий сигнал', 1000.00);
