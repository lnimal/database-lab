/*Find by Name :*/
SELECT id, name,description, price,status
FROM food
WHERE name LIKE "%پیتزا%";

/*Find by Category :*/
SELECT id, name , description, price , category
FROM food
WHERE category LIKE "%سنتی%"