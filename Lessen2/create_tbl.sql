-- Таблица постов 
CREATE TABLE post (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  post_type_id INT UNSIGNED NOT NULL,
  status_type_id INT UNSIGNED NOT NULL, 
  content BLOB, 
  privacy TINYINT(1) NOT NULL DEFAULT 0, -- Приватность отключена
  commenting TINYINT(1) NOT NULL DEFAULT 1, --Комментирование включено
  notification TINYINT(1) NOT NULL DEFAULT 1, -- Уведомление включено
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at DATETIME --дата удаления
);

-- Таблица типов постов
CREATE TABLE post_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

-- Таблица типов статусов: активна, удалена, архивирована, сохранена в закладках
CREATE TABLE status_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

--Таблица лайков
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  like_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--Таблица типов лайков медиафайлов, постов и пользователей.
CREATE TABLE like_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

-- Таблица действий пользователей: лайк, пост, медиафайл и т.д.
CREATE TABLE user_action (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  action_type_id INT UNSIGNED NOT NULL,
  entity_id INT UNSIGNED NOT NULL, -- ссылка на id медиафайлов, постов, лайков
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица типов действий пользователя
CREATE TABLE action_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);
