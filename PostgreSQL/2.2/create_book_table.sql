CREATE TABLE book (
  book_id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  author_id INT NOT NULL REFERENCES author (author_id),
  genre_id INT NOT NULL REFERENCES genre (genre_id),
  price DECIMAL(8, 2),
  amount INT
);

INSERT INTO
  book (title, author_id, genre_id, price, amount)
VALUES
  ('Мастер и Маргарита', 1, 1, 670.99, 3),
  ('Белая гвардия', 1, 1, 540.50, 5),
  ('Идиот', 2, 1, 460.00, 10),
  ('Братья Карамазовы', 2, 1, 799.01, 3),
  ('Игрок', 2, 1, 480.50, 10),
  ('Стихотворения и поэмы', 3, 2, 650.00, 15),
  ('Черный человек', 3, 2, 570.20, 6),
  ('Лирика', 4, 2, 518.99, 2);
