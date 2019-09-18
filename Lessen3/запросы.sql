SELECT (SELECT Count(1) 
        FROM   photos)              AS COUNT_ROW_photos, 
       (SELECT Count(1) 
        FROM   users)               AS COUNT_ROW_users, 
       (SELECT Count(1) 
        FROM   profiles)            AS COUNT_ROW_profiles, 
       (SELECT Count(1) 
        FROM   messages)            AS COUNT_ROW_messages, 
       (SELECT Count(1) 
        FROM   friendship)          AS COUNT_ROW_friendship, 
       (SELECT Count(1) 
        FROM   friendship_statuses) AS COUNT_ROW_friendship_statuses, 
       (SELECT Count(1) 
        FROM   communities)         AS COUNT_ROW_communities, 
       (SELECT Count(1) 
        FROM   communities_users)   AS COUNT_ROW_communities_users, 
       (SELECT Count(1) 
        FROM   media)               AS COUNT_ROW_communities_media, 
       (SELECT Count(1) 
        FROM   media_types)         AS COUNT_ROW_media_types, 
       (SELECT Count(1) 
        FROM   emoji)               AS COUNT_ROW_emoji, 
       (SELECT Count(1) 
        FROM   posts)               AS COUNT_ROW_posts, 
       (SELECT Count(1) 
        FROM   likes)               AS COUNT_ROW_likes, 
       (SELECT Count(1) 
        FROM   target_types)        AS COUNT_ROW_target_types 
FROM   dual \G;

insert into users VALUES (DEFAULT,'Andrey','Gercenstein','aaa@aaa.org','+7609-6754',DEFAULT,DEFAULT)
SELECT * from users where last_name = "Gercenstein"

update users set last_name="Ivanov" where last_name="Gercenstein";
SELECT * from users where last_name = "Gercenstein"
SELECT * from users where last_name = "Ivanov"

delete from users where last_name="Ivanov"
SELECT * from users where last_name = "Ivanov"

SELECT ALL * from users limit 10
