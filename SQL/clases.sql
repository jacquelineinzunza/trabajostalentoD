 select * from users;
 select id,first_name from users;
 select * from users where id = 1;
select * from faves where user_id = 1;
select * from tweets where id = 9 or id = 10 or id = 11; 
select * from users where id = 3 or id = 4;
select * from users where id in (3,4);
-- alias
select * from faves fv, users us, tweets tw
where fv.user_id = us.id and fv.tweet_id = tw.id -- relaciones
;-- con JOIN
-- solo datos especificos
select us.first_name, us.last_name, tw.id, tw.tweet 
from faves fv
INNER JOIN users us ON fv.user_id = us.id
INNER JOIN tweets tw ON fv.tweet_id = tw.id
where  us.id = 1 -- solo los datos del usuario con id 1
;-- INSERT
INSERT INTO users  (first_name, last_name, handle,birthday,created_at, updated_at) 
VALUES('Michael', 'Jordan','airjordan','1974-05-01','2021-07-05 16:20:00','2021-07-05 16:20:00');
-- UPDATE
UPDATE users SET birthday = '1963-02-17', updated_at='2021-07-05 16:24:00' 
WHERE ID = 6;
-- DELETE
DELETE FROM users
WHERE id = 7;
select concat('mr.', '', 'first_name', '', 'last_name') from users;


