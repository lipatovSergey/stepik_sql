CREATE TABLE author (
  author_id SERIAL PRIMARY KEY,
  name_author VARCHAR(50)
);

INSERT INTO
  author (name_author)
VALUES
  ('Булгаков М.А.'),
  ('Достоевский Ф.М.'),
  ('Есенин С.А.'),
  ('Пастернак Б.Л.'),
  ('Лермонтов М.Ю.');
