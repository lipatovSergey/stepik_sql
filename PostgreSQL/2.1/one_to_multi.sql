CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  birth_year INT
);

INSERT INTO
  authors (name)
VALUES
  ('Булгаков М.А.'),
  ('Достоевский Ф.М.'),
  ('Есенин С.А.'),
  ('Пастернак Б.Л.');

CREATE TABLE books (
  book_id SERIAL PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  author_id INT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES authors (id)
);

INSERT INTO
  books (title, author_id)
VALUES
  ('Мастер и Маргарита', 1),
  ('Белая гвардия', 1),
  ('Идиот', 2),
  ('Братья Карамазовы', 2),
  ('Стихотворения и поэмы', 3);
