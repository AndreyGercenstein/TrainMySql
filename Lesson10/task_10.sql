 --Практическое задание по теме “Оптимизация запросов”
 --1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
 CREATE TABLE IF NOT EXISTS logs (
   `created_row` DATETIME DEFAULT NOW(),
   `name_table` varchar(40) NOT NULL,
   `primary_id` int NOT NULL,
   `text` varchar(255)
 ) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;
 

CREATE PROCEDURE ins_logs(ip_name_table varchar(40), ip_primary_id int, ip_text varchar(255))
begin
	insert into logs (name_table, primary_id, text) values (ip_name_table, ip_primary_id, ip_text);
end;

 
CREATE TRIGGER users_on_insert AFTER INSERT ON users FOR EACH ROW 
BEGIN
  CALL ins_logs('users', NEW.id, NEW.name);
END;

CREATE TRIGGER products_on_insert AFTER INSERT ON products FOR EACH ROW 
BEGIN
  CALL ins_logs('products', NEW.id, NEW.name);
END;

CREATE TRIGGER catalogs_on_insert AFTER INSERT ON catalogs FOR EACH ROW 
BEGIN
  CALL ins_logs('catalogs', NEW.id, NEW.name);
END;

--2.(по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

CREATE PROCEDURE ins_users()
BEGIN
  DECLARE v INT DEFAULT 0;
  WHILE v < 100000 DO
    INSERT users (name, birthday_at) VALUES 
	(CONCAT('Имя',v+1), now()),
	(CONCAT('Имя',v+2), now()),
	(CONCAT('Имя',v+3), now()),
	(CONCAT('Имя',v+4), now()),
	(CONCAT('Имя',v+5), now());
	(CONCAT('Имя',v+6), now()),
	(CONCAT('Имя',v+7), now()),
	(CONCAT('Имя',v+8), now()),
	(CONCAT('Имя',v+9), now()),
	(CONCAT('Имя',v+10), now());
    SET v = v + 1;
  END WHILE;
END;

--Практическое задание по теме “NoSQL”
--1.В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
HMSET visit ip "localhost" date_visit "2019-10-14"

--2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.

HGETALL 'name:имя'
HGETALL 'email:email'

--3.Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

db.shop.insert({
    catalog: 'Процессоры',
    product: 'Intel Core i3-8100',
    desription: 'Intel Core i3-8100',
    price: '7890',
    created_at: Date.now
});
db.shop.insert({
    catalog: 'Процессоры',
    product: 'Intel Core i3-8101',
    desription: 'Intel Core i3-8101',
    price: '7891',
    created_at: Date.now
});
db.shop.insert({
    catalog: 'Видеокарты',
    product: 'Видеокарта X1',
    desription: 'Geforce',
    price: '9001',
    created_at: Date.now
});

