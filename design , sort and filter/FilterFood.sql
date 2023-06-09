/*Filter on Name */
SELECT * FROM food WHERE name = "پیتزا پپرونی";
/*Filter on Status */
SELECT * FROM food WHERE status = "true";
/*Filter on Price */
SELECT * FROM food WHERE price >= 250000;
/*Filter on Star */
SELECT * FROM food WHERE star > 4;
/*Filter on chef_id */
SELECT * FROM food WHERE chef_id = 2;
/*Filter on Category */
SELECT * FROM food WHERE category LIKE "%فست فود%";