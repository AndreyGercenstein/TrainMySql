---Таблицы
CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) NOT NULL,
  `district_district_id` int(11) NOT NULL,
  `city_city_id` int(11) NOT NULL,
  `street_street_id` int(11) NOT NULL,
  `house` varchar(100) DEFAULT NULL,
  `block` varchar(100) DEFAULT NULL COMMENT 'Корпус',
  `flat` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  KEY `addresses_FK` (`district_district_id`),
  KEY `addresses_FK_1` (`city_city_id`),
  KEY `addresses_FK_2` (`street_street_id`),
  KEY `addresses_house_IDX` (`house`) USING BTREE,
  CONSTRAINT `addresses_FK` FOREIGN KEY (`district_district_id`) REFERENCES `districts` (`district_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `addresses_FK_1` FOREIGN KEY (`city_city_id`) REFERENCES `cities` (`city_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `addresses_FK_2` FOREIGN KEY (`street_street_id`) REFERENCES `streets` (`street_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB COMMENT='Адрес доставки'

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(20) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `cities_UN` (`def`)
) ENGINE=InnoDB COMMENT='справочник городов'

CREATE TABLE `cust_categories` (
  `custcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(50) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `discount_discount_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`custcat_id`),
  UNIQUE KEY `defcustcategories_UN` (`def`),
  KEY `cust_categories_FK` (`discount_discount_id`),
  CONSTRAINT `cust_categories_FK` FOREIGN KEY (`discount_discount_id`) REFERENCES `discounts` (`discount_id`)
) ENGINE=InnoDB  COMMENT='Таблица типов клиентов'

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `custcat_custcat_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `customers_FK` (`custcat_custcat_id`),
  CONSTRAINT `customers_FK` FOREIGN KEY (`custcat_custcat_id`) REFERENCES `cust_categories` (`custcat_id`)
) ENGINE=InnoDB  COMMENT='Клиент-Категория'

CREATE TABLE `customers_info` (
  `cust_hist_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_cust_id` int(11) NOT NULL,
  `user_user_id` int(11) NOT NULL,
  `contact_first_name` varchar(100) NOT NULL,
  `contact_last_name` varchar(100) DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address_address_id` int(11) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cust_hist_id`),
  UNIQUE KEY `customers_info_UN` (`email`),
  KEY `customers_info_FK` (`cust_cust_id`),
  KEY `customers_info_FK_1` (`user_user_id`),
  KEY `customers_info_FK_2` (`address_address_id`),
  KEY `customers_info_email_IDX` (`email`) USING BTREE,
  FULLTEXT KEY `customers_info_phone_number_IDX` (`phone_number`),
  CONSTRAINT `customers_info_FK` FOREIGN KEY (`cust_cust_id`) REFERENCES `customers` (`cust_id`),
  CONSTRAINT `customers_info_FK_1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `customers_info_FK_2` FOREIGN KEY (`address_address_id`) REFERENCES `addresses` (`address_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB  COMMENT='Информация по клиенту'

CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `val` decimal(10,0) NOT NULL,
  PRIMARY KEY (`discount_id`),
  UNIQUE KEY `discounts_UN` (`val`)
) ENGINE=InnoDB COMMENT='Скидки'

CREATE TABLE `districts` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(20) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`district_id`),
  UNIQUE KEY `districts_UN` (`def`),
  KEY `districts_district_id_IDX` (`district_id`) USING BTREE
) ENGINE=InnoDB COMMENT='Cправочник районов'

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `Net` float DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `items_item_name_IDX` (`item_name`) USING BTREE,
  KEY `items_price_IDX` (`price`) USING BTREE,
  KEY `items_Net_IDX` (`Net`) USING BTREE
) ENGINE=InnoDB  COMMENT='Позиции для меню'

CREATE TABLE `logs` (
  `created_row` datetime DEFAULT CURRENT_TIMESTAMP,
  `name_table` varchar(40) NOT NULL,
  `name` varchar(400) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=ARCHIVE COMMENT='Логирование работы работников'

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype_menutype_id` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_id`),
  KEY `menu_FK` (`menutype_menutype_id`),
  CONSTRAINT `menu_FK` FOREIGN KEY (`menutype_menutype_id`) REFERENCES `menu_types` (`menu_type_id`) ON DELETE RESTRICT
) ENGINE=InnoDB COMMENT='Меню справочник конструктор'

CREATE TABLE `menu_items` (
  `menu_menu_id` int(11) NOT NULL,
  `item_item_id` int(11) NOT NULL,
  KEY `menu_items_FK` (`menu_menu_id`),
  KEY `menu_items_FK_1` (`item_item_id`),
  CONSTRAINT `menu_items_FK` FOREIGN KEY (`menu_menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `menu_items_FK_1` FOREIGN KEY (`item_item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  COMMENT='Позиции в меню'

CREATE TABLE `menu_types` (
  `menu_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(100) NOT NULL,
  PRIMARY KEY (`menu_type_id`)
) ENGINE=InnoDB COMMENT='Типы меню'

CREATE TABLE `order_details` (
  `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderstatus_orderstatus_id` int(11) DEFAULT NULL,
  `cust_cust_id` int(11) DEFAULT NULL,
  `staff_staff_id` int(11) DEFAULT NULL,
  `ordersystem_ordersystem_id` int(11) DEFAULT NULL,
  `menu_menu_id` int(11) NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `discount_discount_id` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL COMMENT 'Цена у учетом скидки',
  `order_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delivery_time` datetime DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orderdetail_id`),
  KEY `order_details_FK` (`orderstatus_orderstatus_id`),
  KEY `order_details_FK_1` (`cust_cust_id`),
  KEY `order_details_FK_2` (`staff_staff_id`),
  KEY `order_details_FK_3` (`ordersystem_ordersystem_id`),
  KEY `order_details_FK_4` (`menu_menu_id`),
  KEY `order_details_FK_5` (`discount_discount_id`),
  KEY `order_details_delivery_time_IDX` (`delivery_time`) USING BTREE,
  KEY `order_details_order_time_IDX` (`order_time`) USING BTREE,
  CONSTRAINT `order_details_FK` FOREIGN KEY (`orderstatus_orderstatus_id`) REFERENCES `order_statuses` (`order_status_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `order_details_FK_1` FOREIGN KEY (`cust_cust_id`) REFERENCES `customers` (`cust_id`),
  CONSTRAINT `order_details_FK_2` FOREIGN KEY (`staff_staff_id`) REFERENCES `stafs` (`staff_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `order_details_FK_3` FOREIGN KEY (`ordersystem_ordersystem_id`) REFERENCES `order_systems` (`ordersystem_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `order_details_FK_4` FOREIGN KEY (`menu_menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_details_FK_5` FOREIGN KEY (`discount_discount_id`) REFERENCES `discounts` (`discount_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB COMMENT='Детали заказов'

CREATE TABLE `order_statuses` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(100) NOT NULL,
  PRIMARY KEY (`order_status_id`),
  UNIQUE KEY `order_statuses_UN` (`def`)
) ENGINE=InnoDB  COMMENT='Статусы заказов'

CREATE TABLE `order_systems` (
  `ordersystem_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(100) NOT NULL,
  PRIMARY KEY (`ordersystem_id`),
  UNIQUE KEY `order_systems_UN` (`def`)
) ENGINE=InnoDB COMMENT='Система заказов'

CREATE TABLE `stafs` (
  `staff_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address_address_id` int(11) DEFAULT NULL,
  `picture` blob,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `status_status_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `count_orders` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `stafs_FK` (`address_address_id`),
  KEY `stafs_FK_1` (`status_status_id`),
  KEY `stafs_last_name_IDX` (`last_name`,`first_name`) USING BTREE,
  KEY `stafs_phone_IDX` (`phone`) USING BTREE,
  KEY `stafs_email_IDX` (`email`) USING BTREE,
  CONSTRAINT `stafs_FK` FOREIGN KEY (`address_address_id`) REFERENCES `addresses` (`address_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `stafs_FK_1` FOREIGN KEY (`status_status_id`) REFERENCES `statuses` (`status_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB  COMMENT='Персонал'

CREATE TABLE `statuses` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(100) NOT NULL COMMENT 'Описание статусов',
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `defstatus_UN` (`def`)
) ENGINE=InnoDB COMMENT='Статусы пользователей'

CREATE TABLE `streets` (
  `street_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_district_id` int(11) NOT NULL,
  `def` varchar(100) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `city_city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`street_id`),
  UNIQUE KEY `streets_UN` (`district_district_id`,`def`),
  KEY `streets_FK_1` (`city_city_id`),
  CONSTRAINT `streets_FK` FOREIGN KEY (`district_district_id`) REFERENCES `districts` (`district_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `streets_FK_1` FOREIGN KEY (`city_city_id`) REFERENCES `cities` (`city_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB  COMMENT='Cправочник улиц'

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `password` binary(40) NOT NULL COMMENT 'Пароль заполняется автоматически при создании пользователя',
  `status_status_id` int(11) NOT NULL COMMENT 'Ссылка на справочник статусов',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `users_status_FK` (`status_status_id`),
  KEY `users_login_IDX` (`login`) USING BTREE,
  CONSTRAINT `users_status_FK` FOREIGN KEY (`status_status_id`) REFERENCES `statuses` (`status_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB COMMENT='Пользователи'

-- View
--Что входит в меню
CREATE OR REPLACE
VIEW `consist_menu` AS
select
    `m`.`menu_id` AS `menu_id`,
    `mt`.`def` AS `menu_type`,
    group_concat(`i`.`item_name` separator ', ') AS `items_list`
from
    (((`menu` `m`
join `menu_types` `mt` on
    ((`mt`.`menu_type_id` = `m`.`menu_id`)))
join `menu_items` `mi` on
    ((`m`.`menu_id` = `mi`.`menu_menu_id`)))
join `items` `i` on
    (((`i`.`item_id` = `mi`.`item_item_id`)
    and (`i`.`active` = 1))))
group by
    `m`.`menu_id`

---Топ заказ по суммарной цене позиций меню 
CREATE OR REPLACE
VIEW `max_order_for_price` AS
select
    `od`.`orderdetail_id` AS `orderdetail_id`,
    `od`.`menu_menu_id` AS `menu_menu_id`,
    `a`.`all_price` AS `all_price`
from
    ((
    select
        sum(`i`.`price`) AS `all_price`,
        `mi`.`menu_menu_id` AS `menu_menu_id`
    from
        (`menu_items` `mi`
    join `items` `i` on
        ((`mi`.`item_item_id` = `i`.`item_id`)))
    group by
        `mi`.`menu_menu_id`
    order by
        `all_price` desc
    limit 1) `a`
join `order_details` `od`)
where
    (`od`.`menu_menu_id` = `a`.`menu_menu_id`)	

--- Процедуры
 
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeliveryMenu`.`add_address`(
IN in_street_id INT,
IN in_house VARCHAR(20),
IN in_block VARCHAR(20),
IN in_flat VARCHAR(20))
BEGIN
	DECLARE v_address varchar(200);
	DECLARE i_city_id INT;
	DECLARE i_district_id INT;

	select CONCAT(c.def,', ', d.def, ', ', s.def, ', ', in_house, ', ', in_block, ', ', in_flat), c.city_id, d.district_id into v_address, i_city_id,  i_district_id  from streets s
		LEFT JOIN districts d ON s.district_district_id = d.district_id
		LEFT JOIN cities c ON s.city_city_id = c.city_id
			where s.street_id = in_street_id;

INSERT INTO addresses (address, district_district_id, city_city_id, street_street_id, house, block, flat, created_date) 
	VALUES(v_address, i_city_id, i_district_id, in_street_id, in_house, in_block, in_flat, CURRENT_TIMESTAMP);

END

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeliveryMenu`.`add_order`(IN in_staf_id INT ,             
   IN in_menu_id INT ,
   IN in_cust_id INT ,
   IN in_ordersystem_id INT, 
   IN in_discount_id INT,
   IN in_comment varchar(200),
   IN in_paid bool)
BEGIN
	DECLARE i_amount DECIMAL;
	DECLARE i_price DECIMAL;
	DECLARE i_discount_val DECIMAL;
	DECLARE i_discount_id INT;

IF in_discount_id is null THEN		
		select d.val, d.discount_id into i_discount_val, i_discount_id from customers c 
			JOIN cust_categories cc on cc.custcat_id = c.custcat_custcat_id
			JOIN discounts d on d.discount_id = cc.discount_discount_id
				where c.cust_id = in_cust_id;	
ELSE
		select d.val into i_discount_val FROM discounts d where d.discount_id = in_discount_id;
		SET i_discount_id = in_discount_id;
	end if;

select sum(i.price), sum(i.price) -  sum(i.price)*i_discount_val/100 into i_price, i_amount from menu m
	join menu_items mi on mi.menu_menu_id = m.menu_id
	join items i ON i.item_id = mi.item_item_id
	where m.menu_id = in_menu_id;

INSERT INTO order_details (orderstatus_orderstatus_id,cust_cust_id,staff_staff_id,ordersystem_ordersystem_id,menu_menu_id,price,discount_discount_id,amount,paid)
	VALUES (1,in_cust_id,in_staf_id,in_ordersystem_id,in_menu_id,i_price,i_discount_id,i_amount,in_paid);

END

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeliveryMenu`.`ins_logs`(ip_name_table varchar(40), ip_name varchar(400), ip_text varchar(400), ip_order_id INT)
begin
	insert into logs (name_table, name, text, order_id) values (ip_name_table, ip_name, ip_text, ip_order_id);
end

----Триггеры

CREATE DEFINER=`root`@`localhost` TRIGGER `upd_staf_count` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN  
      UPDATE stafs s
      SET s.count_orders=IFNULL(s.count_orders,0)+1
      WHERE s.staff_id=new.staff_staff_id;

END

CREATE DEFINER=`root`@`localhost` TRIGGER `order_details_on_insert` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
	DECLARE v_order_desc VARCHAR(400);
	DECLARE v_name VARCHAR(400);
	
select m.items_list, CONCAT(s.first_name, ' ', s.last_name) name  into v_order_desc, v_name from order_details od
	JOIN consist_menu m on m.menu_id = od.menu_menu_id
	JOIN stafs s on s.staff_id = od.staff_staff_id
where od.orderdetail_id = NEW.orderdetail_id;

  CALL ins_logs('order_details', v_name, v_order_desc, NEW.orderdetail_id);
END

