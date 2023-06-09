/*join two table in one table to show in Select Query*/
SELECT food.id , food.name, food.price, food.star, food.user_id, food.status, user.name AS username , user.last_name
FROM food
INNER JOIN user ON users.id = food.user_id
WHERE username LIKE "%علی%"
ORDER BY star ASC;