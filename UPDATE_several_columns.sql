CREATE TABLE book (
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30),
  author VARCHAR(30),
  price DECIMAL(8, 2),
  amount INT,
  buy INT
);

INSERT INTO
  book (title, author, price, amount, buy)
VALUES
  (
    'Мастер и Маргарита',
    'Булгаков М.А.',
    670.99,
    3,
    0
  ),
  ('Белая гвардия', 'Булгаков М.А.', 540.50, 5, 3),
  ('Идиот', 'Достоевский Ф.М.', 460.00, 10, 8),
  (
    'Братья Карамазовы',
    'Достоевский Ф.М.',
    799.01,
    3,
    0
  ),
  (
    'Стихотворения и поэмы',
    'Есенин С.А.',
    650.00,
    15,
    18
  );

SELECT
  *
FROM
  book;

UPDATE book
SET
  buy = IF (buy > amount, amount, buy),
  price = IF (buy = 0, price * 0.9, price);

SELECT
  *
FROM
  book;
