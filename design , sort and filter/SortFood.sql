/*Sort on Price*/
SELECT id,name,price FROM food 
WHERE price > 25000
ORDER BY price ASC;

/*Sort on Star*/
SELECT id,name,star FROM food
WHERE star > 2
ORDER BY star DESC;