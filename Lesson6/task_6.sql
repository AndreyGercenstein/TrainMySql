--1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
select u.name, u.id from users u where exists(select 1 from orders o where o.user_id = u.id)

--2. Выведите список товаров products и разделов catalogs, который соответствует товару.

select p.name as name_products, c.name as name_catalog from products p join catalogs c on p.catalog_id = c.id

--3.(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_flight VARCHAR(255),
  to_flight VARCHAR(255)
) COMMENT = 'Flights';

INSERT INTO flights (from_flight, to_flight) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan')

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  lebel VARCHAR(255) COMMENT 'Город анг название',
  name VARCHAR(255)  COMMENT 'Город рус название'
) COMMENT = 'Города';

INSERT INTO cities (lebel, name) VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск')

select 
  (
    select 
      c.name 
    from 
      cities c 
    where 
      f.to_flight = c.lebel
  ) as Flight_to, 
  (
    select 
      c.name 
    from 
      cities c 
    where 
      f.from_flight = c.lebel
  ) as Flight_from 
from 
  flights f