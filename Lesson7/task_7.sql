
---Добавить необходимые внешние ключи для всех таблиц базы данных vk (приложить команды).

--1. Подготовлю таблицы profiles к созданию FK, мусорные записи
delete from profiles p where not exists(select 1 from media m where  p.photo_id = m.id);
delete from friendship p where not exists(select 1 from friendship_statuses m where  p.status_id = m.id);


-- Добавляем внешние ключи в БД vk
-- Для таблицы профилей
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES photos(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_region_id_fk
    FOREIGN KEY (region_id) REFERENCES regions(id)
      ON DELETE CASCADE;

-- Для таблицы сообщений
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

--Для таблицы медиа
ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT media_media_types_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);

--Для таблицы сообщества пользователей
ALTER TABLE communities_users
  ADD CONSTRAINT community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT communities_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

--Для постов
ALTER TABLE posts
   ADD CONSTRAINT posts_user_id_fk 
     FOREIGN KEY (user_id) REFERENCES users(id),
   ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (communitie_id) REFERENCES communities(id);
 
-- Для таблицы дружбы
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friend_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id);
  ADD CONSTRAINT friendship_status_fk 
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id); 
	
--Для таблицы лайков
ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT likes_target_type_fk 
    FOREIGN KEY (target_id) REFERENCES target_types(id); 	

--2. По созданным связям создать ER диаграмму, используя Dbeaver (приложить графический файл к ДЗ).
--Файл ER_VK.jpg приложен



--3.Переписать запросы, заданые к ДЗ урока 6 с использованием JOIN (четыре запроса).
--3.1 Пусть задан некоторый пользователь.
--Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим
--пользоваетелем.

SELECT  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = m.from_user_id) as FULL_NAME,
	COUNT(*) AS total_messages 
  FROM messages m
	JOIN friendship f
      ON (m.from_user_id = f.user_id OR
	  m.to_user_id = f.user_id)
	  AND f.confirmed_at IS NOT NULL 
  WHERE	m.to_user_id = 56
    GROUP BY FULL_NAME order by 1 desc
    LIMIT 1;
	
	
--3.2 Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT count(1) AS counted_likes 
    FROM likes l
		JOIN profiles p
			ON l.target_id = p.user_id	
	WHERE l.target_type_id = 3
	GROUP BY target_id ORDER BY birthday DESC LIMIT 10
	
--3.3 Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT CASE(p.sex)
		WHEN 'm' THEN 'male'
		WHEN 'f' THEN 'female'
	END AS sex, COUNT(1) as likes_count  
	FROM likes l
		JOIN profiles p ON l.user_id = p.user_id
GROUP BY sex;		

--3.4 Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.


SELECT count(1) cnt_likes, CONCAT(first_name, ' ', last_name) AS user
	FROM users 
		LEFT JOIN likes ON likes.user_id = users.id
		LEFT JOIN media ON media.user_id = users.id
		LEFT JOIN messages ON messages.from_user_id = users.id
	GROUP BY user 
		ORDER BY cnt_likes
		LIMIT 10
		
	  