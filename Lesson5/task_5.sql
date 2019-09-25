--2. Пусть задан некоторый пользователь.
--Из всех друзей этого этого пользователя найдите человека, который больше всех общался с нашим
--пользоваетелем.

select 
  (
    select 
      count(1) 
    from 
      messages 
    where 
      to_user_id = f.friend_id 
    group by 
      to_user_id
  ) as cnt, friend_id, user_id
from 
  friendship f 
where 
  f.user_id = 1 
  and confirmed_at IS NOT NULL 
  AND status_id = (
    SELECT 
      id 
    FROM 
      friendship_statuses 
    WHERE 
      name = 'active'
  ) order by 1 desc



--3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT 
  count(1) cnt, 
  (
    select 
      date(birthday) 
    FROM 
      profiles p 
    WHERE 
      p.user_id = l.user_id
  ) birthday,
  (SELECT CONCAT(first_name, ' ', last_name) 
      FROM users 
      WHERE id = user_id) as fullname
FROM 
  likes l 
group by 
  l.user_id, fullname 
order by 
  birthday desc, 
  cnt 
limit 
  10


--4. Определить кто больше поставил лайков (всего) - мужчины или женщины?

select 
  CASE (sex) WHEN 'm' THEN 'man' WHEN 'f' THEN 'women' END AS sex, 
  max(cnt) count_max 
from 
  (
    SELECT 
      count(1) cnt, 
      (
        select 
          sex 
        FROM 
          profiles p 
        WHERE 
          p.user_id = l.user_id
      ) sex 
    FROM 
      likes l 
    group by 
      l.user_id, 
      sex
  ) data 
group by 
  sex 
order by 
  count_max desc 
limit 
  1

--5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной
сети.


select 
  sum(all_act.cnt) sum_activity, 
  (
    select 
      CONCAT(first_name, ' ', last_name) 
    FROM 
      users 
    WHERE 
      id = user_id
  ) as fullname 
from 
  (
    select 
      count(1) cnt, 
      user_id 
    from 
      communities_users 
    group by 
      user_id 
    union all 
    select 
      count(1) cnt, 
      user_id 
    from 
      likes 
    group by 
      user_id 
    union all 
    select 
      count(1) cnt, 
      user_id 
    from 
      friendship 
    group by 
      user_id 
    union all 
    select 
      count(1) cnt, 
      user_id 
    from 
      posts 
    group by 
      user_id 
    union all 
    select 
      count(1) cnt, 
      user_id 
    from 
      media 
    group by 
      user_id 
    union all 
    select 
      count(1) cnt, 
      from_user_id as user_id 
    from 
      messages 
    group by 
      from_user_id
  ) all_act 
group by 
  fullname 
order by 
  1 desc 
limit 
  10