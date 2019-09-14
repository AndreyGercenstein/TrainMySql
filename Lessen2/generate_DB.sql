#
# TABLE STRUCTURE FOR: action_types
#

DROP TABLE IF EXISTS `action_types`;

CREATE TABLE `action_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (26, 'accusamus');
INSERT INTO `communities` (`id`, `name`) VALUES (44, 'accusantium');
INSERT INTO `communities` (`id`, `name`) VALUES (86, 'alias');
INSERT INTO `communities` (`id`, `name`) VALUES (41, 'aliquam');
INSERT INTO `communities` (`id`, `name`) VALUES (82, 'aliquid');
INSERT INTO `communities` (`id`, `name`) VALUES (47, 'amet');
INSERT INTO `communities` (`id`, `name`) VALUES (93, 'aspernatur');
INSERT INTO `communities` (`id`, `name`) VALUES (96, 'assumenda');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'atque');
INSERT INTO `communities` (`id`, `name`) VALUES (32, 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'autem');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'consectetur');
INSERT INTO `communities` (`id`, `name`) VALUES (76, 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'corrupti');
INSERT INTO `communities` (`id`, `name`) VALUES (85, 'cumque');
INSERT INTO `communities` (`id`, `name`) VALUES (67, 'cupiditate');
INSERT INTO `communities` (`id`, `name`) VALUES (95, 'delectus');
INSERT INTO `communities` (`id`, `name`) VALUES (78, 'deleniti');
INSERT INTO `communities` (`id`, `name`) VALUES (84, 'dicta');
INSERT INTO `communities` (`id`, `name`) VALUES (38, 'distinctio');
INSERT INTO `communities` (`id`, `name`) VALUES (16, 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES (55, 'doloremque');
INSERT INTO `communities` (`id`, `name`) VALUES (12, 'dolores');
INSERT INTO `communities` (`id`, `name`) VALUES (39, 'doloribus');
INSERT INTO `communities` (`id`, `name`) VALUES (54, 'dolorum');
INSERT INTO `communities` (`id`, `name`) VALUES (79, 'ea');
INSERT INTO `communities` (`id`, `name`) VALUES (80, 'eaque');
INSERT INTO `communities` (`id`, `name`) VALUES (35, 'earum');
INSERT INTO `communities` (`id`, `name`) VALUES (58, 'eligendi');
INSERT INTO `communities` (`id`, `name`) VALUES (69, 'enim');
INSERT INTO `communities` (`id`, `name`) VALUES (57, 'eos');
INSERT INTO `communities` (`id`, `name`) VALUES (97, 'esse');
INSERT INTO `communities` (`id`, `name`) VALUES (29, 'est');
INSERT INTO `communities` (`id`, `name`) VALUES (23, 'et');
INSERT INTO `communities` (`id`, `name`) VALUES (63, 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES (42, 'ex');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'expedita');
INSERT INTO `communities` (`id`, `name`) VALUES (64, 'explicabo');
INSERT INTO `communities` (`id`, `name`) VALUES (21, 'facere');
INSERT INTO `communities` (`id`, `name`) VALUES (36, 'facilis');
INSERT INTO `communities` (`id`, `name`) VALUES (33, 'fuga');
INSERT INTO `communities` (`id`, `name`) VALUES (72, 'fugiat');
INSERT INTO `communities` (`id`, `name`) VALUES (99, 'fugit');
INSERT INTO `communities` (`id`, `name`) VALUES (73, 'harum');
INSERT INTO `communities` (`id`, `name`) VALUES (46, 'id');
INSERT INTO `communities` (`id`, `name`) VALUES (56, 'illo');
INSERT INTO `communities` (`id`, `name`) VALUES (53, 'illum');
INSERT INTO `communities` (`id`, `name`) VALUES (59, 'in');
INSERT INTO `communities` (`id`, `name`) VALUES (87, 'inventore');
INSERT INTO `communities` (`id`, `name`) VALUES (40, 'ipsam');
INSERT INTO `communities` (`id`, `name`) VALUES (74, 'ipsum');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'iste');
INSERT INTO `communities` (`id`, `name`) VALUES (71, 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES (83, 'libero');
INSERT INTO `communities` (`id`, `name`) VALUES (49, 'modi');
INSERT INTO `communities` (`id`, `name`) VALUES (50, 'molestiae');
INSERT INTO `communities` (`id`, `name`) VALUES (66, 'molestias');
INSERT INTO `communities` (`id`, `name`) VALUES (61, 'mollitia');
INSERT INTO `communities` (`id`, `name`) VALUES (34, 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'nesciunt');
INSERT INTO `communities` (`id`, `name`) VALUES (20, 'nihil');
INSERT INTO `communities` (`id`, `name`) VALUES (68, 'nisi');
INSERT INTO `communities` (`id`, `name`) VALUES (98, 'nobis');
INSERT INTO `communities` (`id`, `name`) VALUES (22, 'non');
INSERT INTO `communities` (`id`, `name`) VALUES (90, 'nostrum');
INSERT INTO `communities` (`id`, `name`) VALUES (92, 'nulla');
INSERT INTO `communities` (`id`, `name`) VALUES (24, 'numquam');
INSERT INTO `communities` (`id`, `name`) VALUES (43, 'odio');
INSERT INTO `communities` (`id`, `name`) VALUES (89, 'officia');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'officiis');
INSERT INTO `communities` (`id`, `name`) VALUES (77, 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES (62, 'optio');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'pariatur');
INSERT INTO `communities` (`id`, `name`) VALUES (75, 'perferendis');
INSERT INTO `communities` (`id`, `name`) VALUES (65, 'porro');
INSERT INTO `communities` (`id`, `name`) VALUES (60, 'possimus');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES (81, 'quibusdam');
INSERT INTO `communities` (`id`, `name`) VALUES (19, 'quidem');
INSERT INTO `communities` (`id`, `name`) VALUES (11, 'quis');
INSERT INTO `communities` (`id`, `name`) VALUES (100, 'quisquam');
INSERT INTO `communities` (`id`, `name`) VALUES (52, 'quod');
INSERT INTO `communities` (`id`, `name`) VALUES (91, 'recusandae');
INSERT INTO `communities` (`id`, `name`) VALUES (27, 'repellat');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES (18, 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES (31, 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES (45, 'soluta');
INSERT INTO `communities` (`id`, `name`) VALUES (30, 'suscipit');
INSERT INTO `communities` (`id`, `name`) VALUES (28, 'tempora');
INSERT INTO `communities` (`id`, `name`) VALUES (70, 'tempore');
INSERT INTO `communities` (`id`, `name`) VALUES (17, 'temporibus');
INSERT INTO `communities` (`id`, `name`) VALUES (48, 'tenetur');
INSERT INTO `communities` (`id`, `name`) VALUES (25, 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES (88, 'vel');
INSERT INTO `communities` (`id`, `name`) VALUES (51, 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES (94, 'voluptate');
INSERT INTO `communities` (`id`, `name`) VALUES (37, 'voluptatem');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (30, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (31, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (32, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (33, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (34, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (35, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (36, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (37, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (38, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (39, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (40, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (41, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (42, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (43, 43);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (44, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (45, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (46, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (48, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (49, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (50, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (51, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (52, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (53, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (54, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (55, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (56, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (57, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (58, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (59, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (60, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (61, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (62, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (63, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (64, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (65, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (66, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (67, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (68, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (69, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (70, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (71, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (72, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (73, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (74, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (75, 75);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (76, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (77, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (78, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (79, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (80, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (81, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (82, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (83, 83);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (84, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (85, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (86, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (88, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (89, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (90, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (91, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (92, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (93, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (94, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (95, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (96, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (97, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (98, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (99, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (100, 100);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: like_types
#

DROP TABLE IF EXISTS `like_types`;

CREATE TABLE `like_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `like_type_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `important` tinyint(1) DEFAULT NULL,
  `delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (1, 1, 1, 'Voluptatibus omnis delectus sapiente et ut minus et quod. Neque possimus eum totam omnis rerum animi repellat. Maxime quia doloremque nihil a maiores occaecati. Debitis numquam ipsa earum ea.', NULL, NULL, '1988-01-24 17:12:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (2, 2, 2, 'Dicta atque qui repudiandae a. Et nostrum sed labore repellendus repellendus. Itaque sunt molestiae dolor omnis ea et. Aut accusamus accusantium ut neque expedita modi assumenda.', NULL, NULL, '1982-05-02 17:13:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (3, 3, 3, 'Illum voluptatibus qui ipsa quia vel debitis in. Vel sed voluptate dolores aperiam nesciunt dolorum. Est rem odit eaque rem numquam enim rerum.', NULL, NULL, '1976-08-25 00:40:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (4, 4, 4, 'Id sit quae autem quia rerum. Molestias quasi expedita debitis molestiae. Qui quidem esse voluptatum maxime.', NULL, NULL, '1999-01-09 22:06:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (5, 5, 5, 'Iste fugit illo aut sit officiis. Ipsa sapiente voluptatem hic provident possimus dolorem temporibus.', NULL, NULL, '2007-09-29 18:50:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (6, 6, 6, 'Fugiat nisi voluptatem aspernatur rerum fugit. Nesciunt qui nulla libero ducimus quos cumque aut. In porro vitae odit laborum distinctio. Excepturi est similique dicta maiores optio optio atque.', NULL, NULL, '2006-02-28 08:58:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (7, 7, 7, 'Ipsa ut et eaque eligendi quo ad rem consectetur. Quod voluptas enim ut amet est. Ut architecto tenetur atque sint. Quis qui quidem voluptatum id temporibus in. Magni sapiente ut ut dolor et error ex.', NULL, NULL, '2002-04-18 20:23:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (8, 8, 8, 'Deserunt nesciunt et at quo dolore incidunt. Repudiandae voluptas quam voluptatum necessitatibus et. Totam quis dolores odit nesciunt unde qui autem aut. Quia debitis et eligendi suscipit. Accusantium est dolorem provident occaecati.', NULL, NULL, '2008-02-16 19:03:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (9, 9, 9, 'Veritatis rem perferendis praesentium rerum in. Illum voluptatibus non placeat qui. Deleniti consequatur et deleniti.', NULL, NULL, '2012-11-11 23:44:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (10, 10, 10, 'Et dolorem repellat aut. Tempora fugiat dicta est corporis animi deleniti. Aliquid nisi aspernatur voluptatum. Nostrum molestias omnis eius et.', NULL, NULL, '2004-09-17 02:50:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (11, 11, 11, 'Ea voluptas harum aspernatur autem et aut asperiores aut. Sit quidem aliquam voluptas. Repellendus corporis accusantium eos itaque voluptatem. Nisi at temporibus est ut occaecati expedita ipsam porro.', NULL, NULL, '1977-07-29 10:35:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (12, 12, 12, 'Cumque mollitia perspiciatis repellendus. Ut minima numquam esse sint neque. Vel incidunt inventore architecto nemo beatae consequatur. Et enim dolore minus est et accusamus ut.', NULL, NULL, '1972-07-08 05:04:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (13, 13, 13, 'Eius aliquid mollitia rerum corrupti facere et placeat. Ipsum porro voluptate dolorem a asperiores rerum. Rerum quibusdam qui perspiciatis modi quis exercitationem.', NULL, NULL, '1983-10-29 22:30:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (14, 14, 14, 'Eius sequi eveniet eos nulla rerum. Ullam beatae vel saepe. Aut sed libero mollitia accusamus sed voluptatum corrupti.', NULL, NULL, '1994-03-11 11:51:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (15, 15, 15, 'Debitis ex cumque sit enim. Tempore et quo incidunt exercitationem. Laborum alias eaque consequatur suscipit corrupti dolores voluptatem. Temporibus ea ut harum aut laudantium qui aut.', NULL, NULL, '1974-11-07 19:43:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (16, 16, 16, 'Eos atque voluptatem neque et repellendus. Vel voluptatem maiores aut vel accusantium deleniti quam. Modi suscipit vel deserunt debitis illum inventore iusto a.', NULL, NULL, '1970-11-12 05:31:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (17, 17, 17, 'Incidunt distinctio sapiente dolor quae aut reprehenderit omnis. Autem velit consequatur aspernatur quaerat facere et sed ut. Dicta ut consequatur rerum quia. Modi optio aliquid illo nulla quidem ea. Dolore quidem est dignissimos ea deleniti id.', NULL, NULL, '1988-03-04 11:23:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (18, 18, 18, 'Repellat atque eligendi ducimus ea et consectetur. Odio possimus exercitationem quis necessitatibus suscipit distinctio et facere.', NULL, NULL, '2001-03-02 20:28:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (19, 19, 19, 'Recusandae et sint fuga voluptates. Molestiae quia laborum voluptatem vitae. Dolor reprehenderit modi voluptatum id.', NULL, NULL, '2016-08-09 09:30:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (20, 20, 20, 'Ducimus recusandae veniam optio sequi. Ipsam quasi ex sed deleniti. Qui reiciendis autem et nemo.', NULL, NULL, '2018-06-23 11:06:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (21, 21, 21, 'Rem tenetur ut numquam eveniet quo ut aperiam id. Reprehenderit id et alias est optio distinctio. Iusto dolor et aspernatur laborum asperiores dolorum rem. Eum eligendi eveniet maxime sit.', NULL, NULL, '2001-04-29 06:14:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (22, 22, 22, 'Ut quaerat voluptatibus eveniet autem. Sed ut eum vero asperiores. Aut animi repellendus nesciunt ab. Repudiandae non non dicta aliquam quibusdam delectus maiores.', NULL, NULL, '1985-01-30 03:26:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (23, 23, 23, 'Quibusdam dolorem error nobis et voluptatem. In sit rem aut autem.', NULL, NULL, '2001-10-14 06:16:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (24, 24, 24, 'Saepe porro totam iste accusantium. Molestiae vel beatae aspernatur facilis labore. Dolore doloremque adipisci atque non delectus et. Libero in sunt sit animi nesciunt in numquam minus.', NULL, NULL, '1976-06-26 20:31:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (25, 25, 25, 'A incidunt sunt sunt facilis ullam. Qui vel dolorem praesentium commodi fugit consequatur. Quia veritatis voluptate officia impedit aut aliquid.', NULL, NULL, '1981-06-01 03:59:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (26, 26, 26, 'Itaque quidem est pariatur rerum. Dolor occaecati exercitationem inventore officia velit. Accusantium deserunt nesciunt error sit et laborum. Quo vero quam repudiandae dolores et.', NULL, NULL, '2007-07-08 14:42:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (27, 27, 27, 'Aperiam sit ipsa error sequi occaecati temporibus quia ut. Beatae perspiciatis ipsum recusandae. Non fugiat tenetur sed ut qui quia. Recusandae inventore amet aut nesciunt et.', NULL, NULL, '2000-02-19 10:16:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (28, 28, 28, 'Quia omnis et quibusdam et cum error omnis. Est ad facere expedita ea cumque. Necessitatibus recusandae consequatur veniam sint ea alias.', NULL, NULL, '2004-02-27 21:56:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (29, 29, 29, 'Temporibus est repellat illo repellendus fugiat. Rerum ea accusantium ea nesciunt et architecto. Accusantium et laboriosam cupiditate repellendus non non. Cumque assumenda repellendus excepturi dolorem.', NULL, NULL, '2001-11-10 02:26:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (30, 30, 30, 'Maiores ratione illum odit. Voluptatem sequi rerum eaque rerum dignissimos in saepe. Quo est accusantium et est. Ea error qui sequi.', NULL, NULL, '2002-02-27 01:39:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (31, 31, 31, 'Repudiandae illo voluptas beatae et. Odit qui et ducimus porro ut sapiente. Dolore modi vero ea voluptas accusantium.', NULL, NULL, '2001-11-28 19:02:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (32, 32, 32, 'Fugiat nostrum non blanditiis veniam exercitationem. Sequi veniam nulla et nemo. Repudiandae dolorem sunt nihil illum.', NULL, NULL, '2015-11-23 15:30:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (33, 33, 33, 'Dolorem autem commodi est vel repellendus qui. Aspernatur magni aliquid sunt quo eligendi est. Molestias voluptatem natus consectetur aspernatur ducimus voluptatem temporibus.', NULL, NULL, '1997-03-23 15:56:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (34, 34, 34, 'Consectetur voluptatem tenetur et voluptatem non quia. Qui veniam est et at. Consequatur qui corporis sed tempore quisquam nesciunt aperiam. Aut aut accusantium quae assumenda sequi alias eaque.', NULL, NULL, '1979-11-24 20:37:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (35, 35, 35, 'Nobis in aut odit nisi sed. Quod excepturi magnam rerum quibusdam deserunt non. Vitae earum animi id aspernatur omnis atque dolore.', NULL, NULL, '1984-07-22 10:05:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (36, 36, 36, 'Distinctio veniam vero et est. Harum beatae nostrum dolore omnis necessitatibus. Officia ab et commodi praesentium deleniti est omnis.', NULL, NULL, '1980-02-19 12:19:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (37, 37, 37, 'Cumque eaque provident aut. Tempore soluta odio voluptas sequi est magnam doloremque. Cumque id ad id nam temporibus quas.', NULL, NULL, '1996-07-29 22:44:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (38, 38, 38, 'Quod accusantium id et ipsum. Ut nulla repellat aut animi animi. Dolores quisquam ea quidem non autem non voluptas. Saepe mollitia unde sapiente adipisci. Sit excepturi esse corrupti consectetur consequatur.', NULL, NULL, '1981-12-21 15:25:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (39, 39, 39, 'Rem ad pariatur et nihil facere consectetur voluptas. Totam vel dolores maiores sit natus. Ut ut aut ipsa iure.', NULL, NULL, '1982-08-17 20:01:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (40, 40, 40, 'Animi ab corporis et et exercitationem velit. Aut unde commodi iste ullam. Amet architecto occaecati error molestias quidem.', NULL, NULL, '2010-06-04 18:23:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (41, 41, 41, 'Eos voluptatum quo qui non. Voluptas id cumque quam consequuntur ea in. Similique sit at corporis voluptas harum sit unde.', NULL, NULL, '2005-04-10 05:17:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (42, 42, 42, 'Et unde reiciendis architecto ut dolor nihil quos nulla. Vel molestias quia velit quidem illo sit qui. Voluptatem sint natus velit sint qui expedita. Aperiam dolor pariatur laboriosam ut culpa.', NULL, NULL, '2008-01-29 23:20:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (43, 43, 43, 'Consequatur saepe delectus perferendis sint facilis. Ullam reprehenderit sint aliquam dolorem id totam quo. Quas perferendis architecto accusantium et. Voluptas corrupti ullam sint et ut omnis.', NULL, NULL, '1984-04-23 01:47:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (44, 44, 44, 'Laborum in veritatis et consequuntur laudantium doloremque deserunt. Sed qui quidem eum fugit quo ut omnis impedit. Eius aut temporibus incidunt ipsa.', NULL, NULL, '1975-02-18 22:45:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (45, 45, 45, 'Dolorem pariatur porro omnis aut sunt sit. Provident voluptatem aut aut et totam.', NULL, NULL, '1995-04-12 15:05:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (46, 46, 46, 'Sunt sit vel ut quia quas. Doloremque perferendis vitae numquam. Accusantium et voluptas quia et numquam ipsam et aut. Vitae quis sed hic earum velit est provident.', NULL, NULL, '1984-04-27 19:23:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (47, 47, 47, 'Eaque commodi eveniet dolores ab nisi quibusdam aut. Id et maiores voluptatem aut iure ad mollitia. Numquam vitae in et maxime beatae corporis.', NULL, NULL, '1985-05-06 19:28:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (48, 48, 48, 'Dolore eos quas sunt voluptatum omnis. Vel nisi recusandae iste laborum eum. Enim voluptatem eius perspiciatis a minima quo beatae. Molestiae et quo autem enim consequatur exercitationem occaecati. Assumenda omnis sequi et corporis ratione ut vel.', NULL, NULL, '1994-07-25 21:57:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (49, 49, 49, 'Ab ducimus voluptas est odio ut fugit exercitationem ut. Deleniti quia laborum aut. Illo nisi iste enim non cupiditate aperiam necessitatibus.', NULL, NULL, '1973-07-18 20:59:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (50, 50, 50, 'Ullam quibusdam maxime voluptatem saepe officiis. Dolore ipsa in debitis vel. Laboriosam iure iure cupiditate aut dicta. Quos distinctio sint culpa perferendis. Doloribus dolor voluptatem est libero recusandae quia aspernatur possimus.', NULL, NULL, '1999-03-05 16:59:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (51, 51, 51, 'Possimus velit eos est omnis quos. Aliquid inventore eos similique enim. Consequatur repellat voluptas doloremque hic asperiores. Sit quia soluta vel occaecati. Nobis omnis facilis voluptates magni.', NULL, NULL, '2007-03-03 00:16:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (52, 52, 52, 'Dolores ea impedit mollitia modi dolores. Amet voluptate ullam fugit deserunt voluptatibus inventore unde. Sit quibusdam labore amet amet.', NULL, NULL, '1979-03-23 10:45:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (53, 53, 53, 'Distinctio quas facere deleniti. Veniam saepe vitae sed itaque aut. A libero voluptatibus vero perferendis atque itaque culpa.', NULL, NULL, '1974-05-02 23:45:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (54, 54, 54, 'Est quisquam itaque vel et ipsa dolorem. Voluptatem qui in possimus minima amet. Et explicabo asperiores mollitia iusto amet voluptates molestiae. Maiores et consectetur dolorem. Vel corporis quisquam consequuntur possimus.', NULL, NULL, '1971-10-11 04:32:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (55, 55, 55, 'Ullam in ut temporibus porro. Quis odio rerum cumque deserunt.', NULL, NULL, '2004-12-31 08:42:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (56, 56, 56, 'Earum molestiae sed voluptatem quis ut. Sed id molestiae deleniti placeat eos. Aut molestias ea voluptas necessitatibus architecto.', NULL, NULL, '1974-02-28 13:24:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (57, 57, 57, 'Sunt nobis ipsum quas et officiis saepe praesentium. Facere rerum dignissimos consequatur est voluptatem cumque est aperiam. Quasi maiores quae inventore consequuntur illo et. Dolorem cumque et cum eos laborum et aut magni.', NULL, NULL, '2017-01-13 10:44:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (58, 58, 58, 'Provident iusto et odit asperiores id. Aut quibusdam optio adipisci occaecati omnis. Magni minus adipisci voluptas neque vero in non illo.', NULL, NULL, '1970-07-12 20:07:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (59, 59, 59, 'Et quos consequatur sit. Corrupti cupiditate velit voluptas rem optio vel omnis. Quo consequuntur omnis nam ipsum maiores. Culpa mollitia qui reprehenderit ad.', NULL, NULL, '1991-12-02 21:48:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (60, 60, 60, 'Quia sequi corrupti quis qui ratione. Quos harum accusamus aut accusantium nemo. Totam soluta atque accusamus consectetur tenetur. Totam illo autem numquam quae voluptas.', NULL, NULL, '1977-02-06 14:37:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (61, 61, 61, 'Neque exercitationem nulla quasi quia aspernatur. In nobis debitis beatae dolorum adipisci soluta. Quisquam vero reprehenderit quam quod doloremque.', NULL, NULL, '1976-11-15 09:10:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (62, 62, 62, 'Earum ab ab maxime. Architecto est sint aut quas architecto. Iure ea eaque dignissimos dolor et. Voluptas tempore praesentium optio eveniet rerum delectus.', NULL, NULL, '1993-01-18 15:54:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (63, 63, 63, 'Ut odit enim doloribus repudiandae. Voluptas reiciendis sequi rerum velit delectus. Voluptatem ut exercitationem provident natus dolorum sunt delectus quidem. Dolorem necessitatibus ipsa dolore velit et non impedit sit.', NULL, NULL, '1991-09-06 09:11:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (64, 64, 64, 'Autem esse iure et libero non ex est qui. Impedit deserunt ut culpa eum aspernatur quo tenetur. Qui labore unde natus eveniet dolor. Consequatur laborum rerum est corporis.', NULL, NULL, '1997-11-22 02:53:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (65, 65, 65, 'Temporibus quidem nulla ad minima exercitationem occaecati ut. Maxime tenetur consectetur voluptas provident ea fugiat quaerat. Dolores rerum repellat est esse eum deserunt sit.', NULL, NULL, '1999-03-11 05:52:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (66, 66, 66, 'Molestias quasi ipsum asperiores. A corporis provident qui corrupti eum illum. Odio eaque magni fugit saepe sunt quibusdam. Pariatur quod quaerat dolores autem reprehenderit.', NULL, NULL, '2010-08-04 09:45:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (67, 67, 67, 'Itaque laudantium est libero qui a esse. In nihil quae ea aperiam quis commodi quibusdam. Dolorem quas occaecati est rem ad molestiae.', NULL, NULL, '2011-04-16 00:04:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (68, 68, 68, 'Et omnis ut autem quia harum magni. Qui necessitatibus repellendus accusamus recusandae iste autem corrupti.', NULL, NULL, '2012-05-03 04:57:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (69, 69, 69, 'Quod blanditiis quis animi soluta nisi modi est. Non doloremque dolorem fugiat. Quo quia et omnis consequatur.', NULL, NULL, '1971-12-09 09:00:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (70, 70, 70, 'Doloremque dolores similique earum aperiam illum assumenda. Necessitatibus rerum tenetur eos illo voluptates odit. Quas sed non voluptatum dolor quia. Voluptate molestiae consequatur laudantium nihil facilis neque. Eum quia dolorum asperiores iusto ipsum optio itaque.', NULL, NULL, '2013-10-05 16:10:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (71, 71, 71, 'Cum est eveniet adipisci modi qui totam. Numquam voluptatum expedita eligendi voluptatem libero ipsum. Et ut ipsa harum culpa rerum rerum. Ad odit fuga repellat.', NULL, NULL, '2003-08-11 11:18:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (72, 72, 72, 'Velit doloremque sit odit voluptas ea voluptatibus aut. Eveniet qui laboriosam eos eos. Quibusdam modi porro reprehenderit saepe non non. Vel molestias quas tenetur aut laudantium natus expedita.', NULL, NULL, '1971-10-22 23:36:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (73, 73, 73, 'Doloribus qui quos enim nesciunt eum occaecati consequatur. Illum rerum culpa laudantium. Vel assumenda accusamus porro occaecati.', NULL, NULL, '1978-01-28 18:33:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (74, 74, 74, 'Dolorem sint velit ea. Nesciunt et rerum asperiores ut. Tempora fugit consectetur vel magni ea deleniti et blanditiis.', NULL, NULL, '2014-08-16 12:38:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (75, 75, 75, 'Distinctio eum porro natus consequuntur in. Illum debitis inventore fugit eligendi. Natus dolorem et mollitia itaque saepe velit autem. Sequi beatae dolores enim deleniti iusto in.', NULL, NULL, '2007-07-30 15:14:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (76, 76, 76, 'Ut optio blanditiis illum quia ut. Magni iusto eaque accusantium eum amet nisi et. Ratione et eos dolore cupiditate placeat aspernatur ut. Eligendi rerum deserunt voluptas veritatis magnam explicabo.', NULL, NULL, '2016-12-19 20:19:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (77, 77, 77, 'Id omnis harum consectetur quis veniam non et. Aspernatur eaque magni nemo. Fuga dolores est sit aperiam. Ut dolores et nihil.', NULL, NULL, '1990-08-13 05:33:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (78, 78, 78, 'Laborum molestias aut incidunt velit. Deleniti velit ipsum soluta sequi nihil. Eius sed provident corrupti nemo doloremque excepturi earum. Fugiat minima rerum quod ut. Ipsum nihil placeat voluptate quasi.', NULL, NULL, '1998-04-27 22:35:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (79, 79, 79, 'Voluptatem mollitia suscipit porro incidunt hic voluptatibus. Aperiam illo qui ullam eum. Consequatur vero aut odio perferendis commodi alias enim. Omnis earum est quia ut quaerat velit. Modi ullam facilis quam quis non.', NULL, NULL, '2019-07-29 19:10:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (80, 80, 80, 'Ut quaerat voluptas quibusdam quo deserunt. In est numquam facere consequatur in aliquid. Consequuntur deserunt reprehenderit odio animi. Voluptatem quis consequuntur temporibus voluptatum doloribus reprehenderit unde voluptas.', NULL, NULL, '2011-05-30 08:42:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (81, 81, 81, 'Voluptas sequi modi amet voluptas similique. Iure reprehenderit deleniti sapiente vel. Sit veniam aperiam minus quo ut. Iure id asperiores placeat quibusdam. Eius rerum eum libero nulla.', NULL, NULL, '2018-08-23 09:17:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (82, 82, 82, 'Laboriosam saepe sed tempore velit eum. Asperiores voluptatem vel eius unde et qui molestiae. Et voluptatem modi et explicabo. Eius similique soluta cupiditate quae architecto. Repellat voluptates et et officiis doloribus ea ducimus nihil.', NULL, NULL, '2004-01-29 14:19:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (83, 83, 83, 'Cupiditate ad quidem repellendus consequuntur. Sit modi quia similique modi laudantium sed. Rerum deleniti est voluptatem quisquam et incidunt. Debitis corporis amet totam amet in.', NULL, NULL, '2009-04-24 22:56:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (84, 84, 84, 'Consequatur laudantium eveniet quis. Deserunt tempora quam est illo non soluta. Sit officiis qui maxime enim. Provident dolore ipsum dolorem debitis accusantium.', NULL, NULL, '2004-01-20 19:18:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (85, 85, 85, 'Dolores numquam enim omnis. Quas consequatur explicabo rerum sapiente magni quasi. Facilis et magni omnis ex et molestiae.', NULL, NULL, '1970-04-03 20:49:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (86, 86, 86, 'Voluptate dolorem sit fugit. Neque nobis eaque quia. Veritatis aut doloremque fugiat.', NULL, NULL, '1991-11-03 21:01:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (87, 87, 87, 'Doloremque ut est voluptas iusto architecto sit sequi. Ut ea cumque et. Vel perferendis et possimus et eum. Rerum iste voluptates nesciunt dolor est. Deleniti voluptas hic eos saepe.', NULL, NULL, '1989-05-09 15:20:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (88, 88, 88, 'Temporibus rerum illum explicabo delectus est officiis id. Ipsum quod excepturi consequatur libero. Sint assumenda molestias exercitationem facere unde adipisci in.', NULL, NULL, '1983-06-25 21:55:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (89, 89, 89, 'Sapiente cupiditate labore occaecati et ut omnis debitis. Error atque eum voluptate tenetur. Id omnis eum aspernatur minus adipisci mollitia qui et. Soluta maiores eum voluptatem ipsam dolor.', NULL, NULL, '2010-08-23 06:01:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (90, 90, 90, 'Quibusdam et earum iure molestiae. Et aut animi aliquid facere. Accusamus recusandae et qui odit non suscipit. Consequatur sit eos earum ratione adipisci quasi.', NULL, NULL, '2006-10-28 17:46:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (91, 91, 91, 'Nobis quia omnis neque. Quia nemo ut ut et et. Qui fugiat culpa ea consequatur. Consectetur et quas sit dolor qui aliquam corporis.', NULL, NULL, '2015-04-22 13:22:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (92, 92, 92, 'Assumenda fuga adipisci possimus quis temporibus dicta praesentium et. Enim earum sed esse explicabo ipsam. Qui ut ipsam sed reprehenderit.', NULL, NULL, '2019-05-15 11:16:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (93, 93, 93, 'Saepe est nulla nemo possimus et. Non deleniti nobis et dolorem. Itaque commodi fugit labore et est ratione optio. Quaerat soluta assumenda mollitia nobis autem molestias provident a. Nesciunt qui inventore consequatur illo.', NULL, NULL, '1973-02-10 05:48:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (94, 94, 94, 'Dicta mollitia dolorum ducimus perferendis. Amet reiciendis accusantium maiores. Sit nostrum est omnis et.', NULL, NULL, '1995-01-06 00:58:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (95, 95, 95, 'Expedita et aut nobis cumque neque aliquam quo consequatur. Harum pariatur pariatur vitae quibusdam similique velit a voluptatem. Vitae autem et mollitia sit ut quis.', NULL, NULL, '1973-06-22 01:25:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (96, 96, 96, 'Earum quod assumenda voluptatem ea ad quo reiciendis occaecati. Tempora consequatur et consequatur accusantium corporis. Inventore enim est eveniet aut qui nobis autem. Et voluptas harum modi alias consequatur quia. Sunt non vel ipsam.', NULL, NULL, '1973-09-09 04:26:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (97, 97, 97, 'Quis minima necessitatibus magnam voluptas cum ut. Ullam voluptas sed similique quisquam totam accusamus mollitia esse. Libero molestiae quo expedita ut.', NULL, NULL, '1976-07-08 03:33:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (98, 98, 98, 'Sunt quas non iusto suscipit molestiae. Voluptatibus corrupti temporibus cum sit quam. Blanditiis occaecati aut dolore perferendis molestiae. Laboriosam voluptatem quisquam ut aliquam.', NULL, NULL, '1992-10-25 11:40:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (99, 99, 99, 'Rerum occaecati dolor et enim. Officia molestiae quos qui est sit rerum. Id inventore aliquid qui corrupti atque dignissimos.', NULL, NULL, '1989-03-26 04:59:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `important`, `delivered`, `created_at`) VALUES (100, 100, 100, 'Adipisci dicta quia itaque repellendus. Asperiores quos aut molestiae omnis aspernatur voluptatem. Ad libero cumque magni sapiente.', NULL, NULL, '1994-01-05 10:59:03');


#
# TABLE STRUCTURE FOR: post
#

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_type_id` int(10) unsigned NOT NULL,
  `status_type_id` int(10) unsigned NOT NULL,
  `content` blob DEFAULT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 0,
  `commenting` tinyint(1) NOT NULL DEFAULT 1,
  `notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: post_types
#

DROP TABLE IF EXISTS `post_types`;

CREATE TABLE `post_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: status_types
#

DROP TABLE IF EXISTS `status_types`;

CREATE TABLE `status_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: user_action
#

DROP TABLE IF EXISTS `user_action`;

CREATE TABLE `user_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `action_type_id` int(10) unsigned NOT NULL,
  `entity_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Alize', 'Blanda', 'mschoen@example.com', '(601)186-7812x46957', '1971-01-13 18:47:24', '1971-01-17 12:42:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Verner', 'Borer', 'igoldner@example.net', '274-807-1446', '1973-05-17 23:30:50', '2015-11-11 05:12:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Dianna', 'Block', 'kayden53@example.org', '467.411.4259x2750', '1984-03-14 14:36:53', '2014-12-29 06:23:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Nicolette', 'Conroy', 'emelia65@example.com', '372.463.1065', '1981-07-29 06:03:06', '1990-03-26 05:45:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Roselyn', 'Breitenberg', 'lennie14@example.org', '576-110-5219x31088', '2002-07-13 04:49:30', '2017-01-01 06:17:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Garnet', 'Marks', 'kaleb48@example.com', '1-430-895-9672x455', '1988-02-07 04:40:28', '2005-01-17 01:34:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Delphia', 'Sporer', 'welch.noble@example.net', '158-110-9130x98112', '1991-03-22 13:23:58', '2011-04-21 20:18:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Leonora', 'Lemke', 'wconn@example.org', '906.131.1886x5028', '1993-06-27 06:06:00', '2008-01-13 13:35:29');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Maynard', 'Hudson', 'cordelia65@example.net', '1-444-882-1064', '1983-05-24 04:16:40', '1996-06-13 15:27:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Wilford', 'Heidenreich', 'vincenza12@example.net', '1-867-577-5768x46230', '1972-05-06 12:48:23', '2010-08-04 15:00:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Itzel', 'Will', 'alfonzo.price@example.net', '1-775-141-2422x05279', '1980-05-11 11:09:17', '1986-08-22 03:43:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Lloyd', 'Cummerata', 'isobel.frami@example.org', '197.939.9707', '1976-09-17 01:14:40', '2018-05-15 12:58:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Florence', 'Bins', 'kuphal.shany@example.org', '152-182-8579', '1976-01-30 22:47:44', '2016-02-15 07:17:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Noemi', 'Koch', 'hansen.foster@example.com', '+39(5)2543221250', '2000-10-16 14:05:21', '1979-08-13 13:56:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Christ', 'Hayes', 'kgrant@example.com', '936-704-4541x16674', '1980-08-24 23:26:22', '1983-08-01 05:47:58');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Micheal', 'Fadel', 'denesik.kolby@example.com', '1-736-933-9340x6046', '1975-11-27 17:34:32', '1994-03-08 16:03:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Yesenia', 'Kulas', 'bernita.mclaughlin@example.net', '1-717-686-8690x4317', '2018-04-10 18:03:05', '2008-09-04 06:47:21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Efren', 'Ebert', 'vicente.stracke@example.com', '177.199.4597', '1990-09-23 15:57:12', '1991-12-30 21:07:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Malvina', 'Halvorson', 'cfeeney@example.org', '03433964802', '2018-06-24 04:51:16', '2010-05-23 22:39:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Sydni', 'Lesch', 'kwilliamson@example.com', '05120263891', '1976-09-16 13:25:17', '1989-10-15 15:57:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Lenora', 'Hodkiewicz', 'langosh.benedict@example.net', '874.664.5295x18568', '2005-09-20 20:36:39', '2000-08-17 17:27:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Pinkie', 'Johnston', 'schroeder.gianni@example.com', '04721865905', '2005-10-18 18:40:18', '2008-10-17 20:36:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Modesto', 'Schmidt', 'nziemann@example.com', '08389710273', '2004-02-04 14:38:40', '1977-09-10 16:53:27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Alda', 'Zieme', 'connelly.dereck@example.net', '776-337-7171', '1982-07-07 08:06:34', '1988-06-27 09:32:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Jerald', 'Hilpert', 'bailey.dana@example.org', '(707)452-9755x4176', '1982-10-18 07:39:58', '1974-05-31 11:36:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Halle', 'Volkman', 'ckoch@example.com', '1-979-981-8206x391', '1995-11-09 19:17:22', '2016-11-06 08:13:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Boyd', 'Ratke', 'ola70@example.com', '(637)463-1829', '1970-09-09 09:34:03', '2009-09-12 22:18:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Alivia', 'Abshire', 'sharris@example.net', '201.876.0354x35785', '1982-12-24 08:01:11', '1977-12-06 16:36:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Elizabeth', 'Bins', 'rippin.teresa@example.org', '(045)398-5250', '1990-03-14 20:17:38', '2011-08-31 15:28:31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Fabian', 'Robel', 'ebert.patrick@example.com', '137-176-5676', '2011-04-08 05:34:44', '1986-07-20 16:17:52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Ezequiel', 'Lowe', 'gianni.reynolds@example.org', '(495)112-7899x864', '1978-01-04 00:43:08', '2004-09-21 03:43:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Austyn', 'Larkin', 'otto.willms@example.net', '523.899.6615x6289', '1973-01-16 05:24:55', '1991-11-29 10:34:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Delaney', 'Grant', 'hwunsch@example.com', '454-187-5686x27815', '2008-12-09 14:36:05', '1972-01-26 14:13:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Roma', 'Gottlieb', 'darby20@example.org', '1-821-474-3854x31374', '2009-03-11 08:47:57', '2016-04-13 15:48:13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Janice', 'Kling', 'tquitzon@example.com', '(052)315-4025x4131', '1998-01-10 22:17:47', '1990-07-14 13:05:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Zane', 'Ritchie', 'lmayert@example.com', '1-423-900-8311', '1989-07-27 10:08:01', '2003-03-18 08:23:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Aimee', 'Schowalter', 'wintheiser.vanessa@example.net', '192.808.8680', '2005-05-19 02:01:40', '2018-07-14 14:07:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Flossie', 'Stehr', 'kswaniawski@example.org', '1-309-145-9173', '1989-10-15 13:08:22', '1996-09-09 01:19:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Viviane', 'Hane', 'pemmerich@example.net', '(869)321-7813', '1974-10-02 22:15:45', '2014-01-12 19:37:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Waino', 'Gulgowski', 'pollich.elva@example.net', '03804246976', '2015-10-15 01:25:38', '1990-03-02 12:28:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Otha', 'Altenwerth', 'mjacobson@example.org', '(125)816-9288x05876', '2007-07-16 04:10:52', '1997-06-04 20:07:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Liliane', 'Wiza', 'cristopher.bayer@example.net', '+89(9)4391171897', '1991-03-30 15:53:32', '1978-04-01 19:10:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Timothy', 'Ebert', 'rosa60@example.com', '833-140-4409x657', '1999-06-15 14:47:44', '2000-08-22 00:55:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Flavio', 'Stoltenberg', 'itremblay@example.org', '913.551.8527', '2011-09-23 09:39:15', '1982-06-01 03:34:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Taya', 'Kshlerin', 'theodore.altenwerth@example.net', '121-146-1050', '1977-04-13 20:06:03', '2009-08-01 08:36:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Maximillia', 'Rosenbaum', 'oo\'connell@example.org', '1-929-821-1661x50769', '1985-05-27 10:25:32', '1993-08-21 11:32:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Kenton', 'Leuschke', 'toy96@example.net', '550-194-1575x137', '2009-02-24 18:05:37', '2012-02-12 15:20:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Ari', 'Berge', 'rwehner@example.net', '406.170.1301x570', '2015-11-07 03:08:01', '1998-12-27 00:33:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Tito', 'Hegmann', 'hharris@example.com', '1-904-028-5049x4987', '1975-08-25 14:12:45', '1983-04-30 08:32:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Kaylin', 'Dooley', 'phickle@example.net', '(078)630-0543', '1995-03-05 08:40:24', '1995-07-17 19:26:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Eloy', 'Cruickshank', 'sterling.johnston@example.com', '+38(1)7649179429', '1987-01-14 01:37:04', '2008-02-04 06:50:59');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Missouri', 'Jacobson', 'kuhn.adelle@example.org', '507.042.3446x613', '1980-11-04 23:28:14', '1981-06-11 09:13:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Karen', 'Renner', 'raleigh.dickens@example.com', '148-425-7272', '1993-04-04 17:21:27', '1987-09-02 06:44:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Merlin', 'Hoppe', 'green00@example.com', '1-305-414-8225x2924', '1998-01-25 02:18:55', '2009-12-29 06:02:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Idell', 'Kuvalis', 'hessel.sonya@example.com', '031.601.6680', '1982-06-13 22:16:42', '2001-01-04 05:11:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Melody', 'Gottlieb', 'wboyle@example.net', '1-978-564-3587', '2003-09-19 12:06:55', '2009-06-20 23:45:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Brenden', 'Kemmer', 'shanon.wiza@example.com', '1-369-557-8610x888', '1999-11-06 01:47:48', '2007-08-11 15:33:10');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Norberto', 'Jast', 'hnicolas@example.com', '1-760-065-3858x728', '2019-07-13 09:54:49', '1992-03-22 21:28:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Ryleigh', 'Little', 'kylie48@example.com', '05106951942', '1973-08-27 12:32:21', '2004-05-19 08:37:49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Osvaldo', 'Aufderhar', 'dkeebler@example.com', '+30(0)1428228253', '2011-04-30 21:07:14', '1995-06-07 03:31:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Katlynn', 'Luettgen', 'hubert.hartmann@example.com', '665-286-3585x252', '2010-12-17 06:13:49', '1998-07-13 18:59:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Bell', 'Russel', 'colten60@example.com', '359-007-8119x34639', '2019-08-18 00:44:54', '2017-03-09 11:04:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Kavon', 'Swaniawski', 'kwilkinson@example.com', '+39(9)3570185634', '1992-01-22 04:23:47', '1986-04-13 05:49:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Gregorio', 'Goldner', 'vherzog@example.net', '1-236-981-5164x42127', '1979-07-07 09:12:07', '1980-02-20 09:09:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Blair', 'Dickinson', 'lockman.nathaniel@example.com', '973.348.2489', '2005-12-04 10:59:13', '1982-06-12 21:25:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Dario', 'Morissette', 'jwolff@example.net', '02084787273', '1990-01-05 05:21:44', '2005-06-05 17:46:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Carter', 'Gottlieb', 'cindy.altenwerth@example.net', '252.658.7629x9871', '1988-10-17 19:23:23', '2016-12-02 01:58:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Jamison', 'Mraz', 'mrobel@example.org', '993.616.6329x58081', '1982-08-26 11:03:35', '2013-11-09 21:32:48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Branson', 'Ullrich', 'wrutherford@example.net', '271.639.3557x776', '2012-05-24 17:26:40', '1974-11-05 17:02:07');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Charlie', 'Kohler', 'mccullough.napoleon@example.com', '(426)989-6788x55702', '1972-07-19 14:39:33', '2000-08-13 05:56:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Sydni', 'O\'Conner', 'zboncak.damion@example.com', '342.383.9272x46777', '2004-12-07 06:42:17', '2019-01-25 10:21:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Norene', 'Mayert', 'zemlak.stefanie@example.org', '1-667-473-1026x839', '1998-07-13 21:00:06', '1984-05-09 21:15:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Camylle', 'Powlowski', 'kellen.parker@example.com', '(261)496-0130x90881', '2000-06-16 06:06:13', '1996-09-16 14:39:04');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Guillermo', 'Legros', 'mcglynn.dorris@example.net', '398-056-3740x870', '2000-11-19 11:37:44', '1976-09-15 06:41:11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Rosemary', 'Tillman', 'cynthia.armstrong@example.com', '645.367.4651x88487', '2005-06-15 18:39:50', '1979-07-11 23:49:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Hilda', 'Breitenberg', 'fleannon@example.org', '983.230.8034', '1983-01-28 16:07:20', '2019-07-02 14:38:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Maida', 'Dicki', 'torp.madelyn@example.com', '255-471-2232x3413', '1977-08-30 10:22:38', '1974-05-12 17:24:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Melany', 'Toy', 'laury78@example.com', '323-892-1178', '1999-01-29 09:13:00', '1994-09-30 17:23:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Theo', 'Grimes', 'jeramy15@example.net', '709.567.5474x30966', '1979-10-13 01:28:37', '2016-04-11 10:05:07');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Clemens', 'Simonis', 'donald.abernathy@example.com', '732.166.3118x78477', '1991-02-03 20:06:19', '2016-04-18 19:14:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Grayson', 'Pouros', 'beatty.derek@example.com', '+76(5)9218608165', '1976-08-30 03:49:31', '1991-11-08 13:54:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Deontae', 'Nikolaus', 'kelsi36@example.org', '266.047.0521', '2010-12-19 09:57:33', '1992-04-19 02:08:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Martine', 'Carter', 'tromp.stacey@example.com', '721.659.9768x03733', '2007-06-16 18:55:49', '2016-04-28 21:01:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Mae', 'Upton', 'wmclaughlin@example.net', '208-406-4671x94466', '1990-02-18 11:10:12', '1977-06-13 15:06:03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Morton', 'Smith', 'eugene42@example.net', '863-412-3998', '1972-09-12 13:00:28', '1986-02-22 18:41:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Ressie', 'Schultz', 'imccullough@example.com', '253.270.4711x40894', '1988-08-16 08:18:46', '1989-07-11 11:59:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Carole', 'Koch', 'ljacobson@example.com', '(425)415-9065', '2006-08-17 07:59:42', '1981-05-08 04:32:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Ed', 'Stroman', 'jmcclure@example.org', '871-325-0971x89673', '2005-07-25 23:46:39', '2000-12-23 10:00:50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Wilfrid', 'O\'Kon', 'llindgren@example.org', '071.521.0080x70910', '2010-04-10 10:16:20', '1977-03-04 23:57:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Titus', 'Armstrong', 'denesik.mustafa@example.org', '+16(2)5314637281', '2008-02-22 17:21:14', '1989-08-23 22:05:51');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Lavon', 'Torp', 'lincoln75@example.org', '916.732.2036x402', '2006-03-11 09:18:54', '2016-09-01 01:10:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Aletha', 'Vandervort', 'aidan.larkin@example.com', '(858)997-5188x9034', '1996-11-14 12:26:09', '1980-03-20 21:40:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Stanley', 'Will', 'hilll.willy@example.net', '925.229.2161', '1984-06-06 05:59:44', '1980-02-15 14:25:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Dedrick', 'Goodwin', 'francesco12@example.net', '(256)997-0054x2101', '2001-03-24 03:17:57', '2005-01-23 11:52:31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Milford', 'Carter', 'deffertz@example.net', '(138)664-4411x222', '1971-07-22 08:59:47', '1993-07-08 15:31:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Rickie', 'Walsh', 'schiller.kailey@example.org', '883-451-5726', '1980-02-03 23:36:43', '1991-07-02 00:02:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Destinee', 'Grady', 'ggoldner@example.com', '788-335-3631', '1982-03-16 16:56:09', '1991-07-28 14:09:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Otis', 'Renner', 'zkshlerin@example.net', '+70(7)9974292353', '1970-07-01 05:06:30', '1998-10-13 23:44:19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Elnora', 'Feest', 'bkutch@example.com', '(981)033-9754x23873', '2016-01-18 00:12:12', '2014-05-24 13:15:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Thea', 'Jacobson', 'dexter04@example.net', '+34(7)8726712896', '2007-04-19 10:30:10', '1996-12-16 21:39:15');


