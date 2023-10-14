SELECT distinct u.id, u.username
FROM users as u
INNER JOIN likes ON u.id = likes.user_id
WHERE MONTH(likes.created_at) = 10 AND YEAR(likes.created_at) = 2021;
