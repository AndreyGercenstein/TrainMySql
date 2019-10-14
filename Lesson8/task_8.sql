--Практическое задание по теме “Транзакции, переменные, представления”

--1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

--1.1 Создать таблицу sample.users
DROP TABLE IF EXISTS sample.users;
CREATE TABLE sample.users (
  id SERIAL PRIMARY KEY,
  name varchar(255),
  birthday_at date,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)

---1.2 Перенос записи в одной транзакции
START TRANSACTION;
INSERT INTO sample.users (id, name, birthday_at, created_at, updated_at) SELECT id, name, birthday_at, created_at, updated_at FROM shop.users WHERE ID = 1;
DELETE FROM shop.users WHERE ID = 1;
commit;

--2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
create view items_name as select p.name product_name, c.name catalog_name  from products p join catalogs c on c.id = p.catalog_id;


--4.(по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

CREATE TABLE IF NOT EXISTS posts (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  created_at date NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO posts VALUES
(1, 'первая запись', '2012-11-01'),
(2, 'вторая запись', '2012-11-02'),
(3, 'третья запись', '2012-11-03'),
(4, 'четвертая запись', '2012-11-04'),
(5, 'пятая запись', '2012-11-05'),
(6, 'шестая запись', '2012-11-06'),
(7, 'седьмая запись', '2012-11-07'),
(8, 'восьмая запись', '2012-11-08'),
(9, 'девятая запись', '2012-11-09'),
(10, 'десятая запись', '2012-11-10'),
(11, 'одинадцатая запись', '2012-11-11'),
(12, 'двенадцатая запись', '2012-11-12'),
(13, 'тринадцатая запись', '2012-11-13'),
(14, 'четырнадцатая запись', '2012-11-14'),
(15, 'пятнадцатая запись', '2012-11-15'),
(16, 'шестнадцатая запись', '2012-11-16'),
(17, 'семнадцатая запись', '2012-11-17'),
(18, 'восемнадцатая запись', '2012-11-18'),
(19, 'девятнадцатая запись', '2012-11-19'),
(20, 'двадцатая запись', '2012-11-20');

create view old_post_view as SELECT created_at FROM posts ORDER BY created_at DESC LIMIT 5, 1;

DELETE posts FROM posts JOIN old_post_view ON posts.created_at <= old_post_view.created_at;
  
  
--Практическое задание по теме “Хранимые процедуры и функции, триггеры"

--1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

CREATE FUNCTION `shop`.`hello`() RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	IF CURTIME() >= DATE_FORMAT('0-0-0 06:00:01', '%H:%i:%s') AND CURTIME()  <= DATE_FORMAT('0-0-0 12:00:00', '%H:%i:%s') THEN
		RETURN "Доброе утро";
	ELSEIF CURTIME() >= DATE_FORMAT('0-0-0 12:00:01', '%H:%i:%s') AND CURTIME()  <= DATE_FORMAT('0-0-0 18:00:00', '%H:%i:%s') THEN
		RETURN "Добрый день";
	ELSEIF CURTIME() >= DATE_FORMAT('0-0-0 18:00:01', '%H:%i:%s') AND CURTIME()  <= DATE_FORMAT('0-0-0 00:00:00', '%H:%i:%s') THEN
		RETURN "Добрый вечер";
	ELSE RETURN "Доброй ночи";	
	END IF;
END

--2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

CREATE TRIGGER check_prod_on_insert BEFORE INSERT ON products FOR EACH ROW 
BEGIN
  IF (NEW.name is null AND NEW.desription is null) THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Вставка NULL для description и name';
	ELSEIF NEW.name is null THEN
		SET NEW.name = NEW.desription;
	ELSE 
		SET NEW.desription = NEW.name;
  END IF;	
END


CREATE  TRIGGER check_prod_on_update BEFORE UPDATE ON products FOR EACH ROW BEGIN 
	DECLARE v_name, v_desription VARCHAR(255);
	Select name, desription into v_name, v_desription  from products where (NEW.name = name OR NEW.desription = desription);
		IF v_name is null AND v_desription is null THEN 
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Обновление NULL для description и name';
		ELSEIF v_name is null AND v_desription is not null THEN 	
			SET NEW.name = v_desription;
		ELSE SET NEW.desription = v_name;	
		END IF;	
END

--3.(по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55.

create procedure fibonacci(n int)
begin
        declare n1 int default not null;
        declare n2 int default not null;
        declare n3 int default 0;
        declare seq text;
        declare count int default 0;
 
        set count=0;
        set n1=1;
        set n2=0;
        set n3=null;
        set seq='';
 
        while count<n do
                set count=count+1;
                set n3 = n1 + n2; 
                set n1=n2;
                set n2 = n3;
                set seq = (select CONCAT(seq,n3,', ') from dual);
        end while;
     
        SELECT seq AS fibonacci_numbers;
         
end
