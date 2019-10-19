-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: DeliveryMenu
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Адрес доставки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cities`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(20) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `cities_UN` (`def`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='справочник городов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `consist_menu`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `consist_menu` (
  `menu_id` tinyint NOT NULL,
  `menu_type` tinyint NOT NULL,
  `items_list` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cust_categories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_categories` (
  `custcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(50) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `discount_discount_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`custcat_id`),
  UNIQUE KEY `defcustcategories_UN` (`def`),
  KEY `cust_categories_FK` (`discount_discount_id`),
  CONSTRAINT `cust_categories_FK` FOREIGN KEY (`discount_discount_id`) REFERENCES `discounts` (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Таблица типов клиентов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customers`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `custcat_custcat_id` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `customers_FK` (`custcat_custcat_id`),
  CONSTRAINT `customers_FK` FOREIGN KEY (`custcat_custcat_id`) REFERENCES `cust_categories` (`custcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Клиент-Категория';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customers_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Информация по клиенту';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discounts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `val` decimal(10,0) NOT NULL,
  PRIMARY KEY (`discount_id`),
  UNIQUE KEY `discounts_UN` (`val`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Скидки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `districts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(20) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`district_id`),
  UNIQUE KEY `districts_UN` (`def`),
  KEY `districts_district_id_IDX` (`district_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='справочник районов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `items`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Позиции для меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `created_row` datetime DEFAULT CURRENT_TIMESTAMP,
  `name_table` varchar(40) NOT NULL,
  `name` varchar(400) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `max_order_for_price`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `max_order_for_price` (
  `orderdetail_id` tinyint NOT NULL,
  `menu_menu_id` tinyint NOT NULL,
  `all_price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `menu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype_menutype_id` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_id`),
  KEY `menu_FK` (`menutype_menutype_id`),
  CONSTRAINT `menu_FK` FOREIGN KEY (`menutype_menutype_id`) REFERENCES `menu_types` (`menu_type_id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Меню справочник конструктор';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_items`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `menu_menu_id` int(11) NOT NULL,
  `item_item_id` int(11) NOT NULL,
  KEY `menu_items_FK` (`menu_menu_id`),
  KEY `menu_items_FK_1` (`item_item_id`),
  CONSTRAINT `menu_items_FK` FOREIGN KEY (`menu_menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `menu_items_FK_1` FOREIGN KEY (`item_item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Аозиции в меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_types`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_types` (
  `menu_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(100) NOT NULL,
  PRIMARY KEY (`menu_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Типы меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_details`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Детали заказов';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_staf_count` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN  
      UPDATE stafs s
      SET s.count_orders=IFNULL(s.count_orders,0)+1
      WHERE s.staff_id=new.staff_staff_id;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_details_on_insert` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
	DECLARE v_order_desc VARCHAR(400);
	DECLARE v_name VARCHAR(400);
	
select m.items_list, CONCAT(s.first_name, ' ', s.last_name) name  into v_order_desc, v_name from order_details od
	JOIN consist_menu m on m.menu_id = od.menu_menu_id
	JOIN stafs s on s.staff_id = od.staff_staff_id
where od.orderdetail_id = NEW.orderdetail_id;

  CALL ins_logs('order_details', v_name, v_order_desc, NEW.orderdetail_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `order_statuses`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_statuses` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(100) NOT NULL,
  PRIMARY KEY (`order_status_id`),
  UNIQUE KEY `order_statuses_UN` (`def`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статусы заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_systems`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_systems` (
  `ordersystem_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(100) NOT NULL,
  PRIMARY KEY (`ordersystem_id`),
  UNIQUE KEY `order_systems_UN` (`def`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Система заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stafs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Персонал';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `statuses`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `def` varchar(100) NOT NULL COMMENT 'Описание статусов',
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `defstatus_UN` (`def`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Статусы пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `streets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Cправочник улиц';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'DeliveryMenu'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_address`(
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

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_order`(IN in_staf_id INT ,             
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

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_logs`(ip_name_table varchar(40), ip_name varchar(400), ip_text varchar(400), ip_order_id INT)
begin
	insert into logs (name_table, name, text, order_id) values (ip_name_table, ip_name, ip_text, ip_order_id);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `consist_menu`
--

/*!50001 DROP TABLE IF EXISTS `consist_menu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consist_menu` AS select `m`.`menu_id` AS `menu_id`,`mt`.`def` AS `menu_type`,group_concat(`i`.`item_name` separator ', ') AS `items_list` from (((`menu` `m` join `menu_types` `mt` on((`mt`.`menu_type_id` = `m`.`menu_id`))) join `menu_items` `mi` on((`m`.`menu_id` = `mi`.`menu_menu_id`))) join `items` `i` on(((`i`.`item_id` = `mi`.`item_item_id`) and (`i`.`active` = 1)))) group by `m`.`menu_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `max_order_for_price`
--

/*!50001 DROP TABLE IF EXISTS `max_order_for_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `max_order_for_price` AS select `od`.`orderdetail_id` AS `orderdetail_id`,`od`.`menu_menu_id` AS `menu_menu_id`,`a`.`all_price` AS `all_price` from ((select sum(`i`.`price`) AS `all_price`,`mi`.`menu_menu_id` AS `menu_menu_id` from (`menu_items` `mi` join `items` `i` on((`mi`.`item_item_id` = `i`.`item_id`))) group by `mi`.`menu_menu_id` order by `all_price` desc limit 1) `a` join `order_details` `od`) where (`od`.`menu_menu_id` = `a`.`menu_menu_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-20  2:17:21
