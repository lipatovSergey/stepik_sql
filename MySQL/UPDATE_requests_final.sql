CREATE TABLE book (
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30),
  author VARCHAR(30),
  price DECIMAL(8, 2),
  amount INT
);

INSERT INTO
  book (title, author, price, amount)
VALUES
  ('Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3),
  ('Белая гвардия', 'Булгаков М.А.', 540.50, 5),
  ('Идиот', 'Достоевский Ф.М.', 460.00, 10),
  (
    'Братья Карамазовы',
    'Достоевский Ф.М.',
    799.01,
    2
  ),
  (
    'Стихотворения и поэмы',
    'Есенин С.А.',
    650.00,
    15
  );

SELECT
  *
FROM
  book;

CREATE TABLE discount_books AS
SELECT
  author,
  title,
  price,
  FLOOR(
    (
      (
        SELECT
          AVG(price)
        FROM
          book
      ) - price
    ) / (
      SELECT
        AVG(price)
      FROM
        book
    ) * 100
  ) AS discount
FROM
  book
WHERE
  price < (
    SELECT
      AVG(price)
    FROM
      book
  );

SELECT
  *
FROM
  discount_books;

DROP TABLE book;

DROP TABLE discount_books;
