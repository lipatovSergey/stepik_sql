SELECT
  city.name_city,
  author.name_author,
  ('2020-01-01'::date + (FLOOR(RANDOM() * 365))::int) AS "Дата"
FROM
  city,
  author
ORDER BY name_city, Дата DESC; 
