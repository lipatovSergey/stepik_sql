CREATE TABLE genre (
  genre_id SERIAL PRIMARY KEY,
  name_genre VARCHAR(50)
);

INSERT INTO
  genre (name_genre)
VALUES
  ('Роман'),
  ('Поэзия'),
  ('Приключения');
