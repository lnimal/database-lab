/*Get Some new Filter on Filed(price)*/
SELECT id,name,description,price,status,star
FROM food
WHERE price BETWEEN 25000 AND 450000;