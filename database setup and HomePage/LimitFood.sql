/*Show the food that star is 5 limit 5 is OK*/
SELECT id, name, star, description,  price
FROM food 
WHERE star = 5
LIMIT 5;