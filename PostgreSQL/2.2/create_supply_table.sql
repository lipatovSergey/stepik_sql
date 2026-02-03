CREATE TABLE supply (
  supply_id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  author VARCHAR(30),
  price DECIMAL(8, 2),
  amount INT
);

INSERT INTO
  supply (title, author, price, amount)
VALUES
  ('Доктор Живаго', 'Пастернак Б.Л.', 618.99, 3),
  ('Черный человек', 'Есенин С.А.', 570.20, 6),
  ('Евгений Онегин', 'Пушкин А.С.', 440.80, 5),
  ('Идиот', 'Достоевский Ф.М.', 360.80, 3);
