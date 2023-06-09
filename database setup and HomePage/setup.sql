/*Check DB : */
DROP SCHEMA IF EXISTS 'fooddb' ;
/*Create DB : */
CREATE SCHEMA IF NOT EXISTS 'fooddb' DEFAULT CHARACTER SET utf8mb4-general_ci ;
/*Use DB : */
USE 'fooddb';

/*Create all Tables*/

/*contact*/
CREATE TABLE IF NOT EXISTS 'fooddb'.'contact' (
  'id' INT(11) NOT NULL AUTO_INCREMENT,
  'name' VARCHAR(10),
  'last_name' VARCHAR(20),
  'email' VARCHAR(50),
  'message' INT(100),
  'phone_number' INT(11),
  PRIMARY KEY('id')
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8md4_general_ci;

/*user*/
CREATE TABLE IF NOT EXISTS 'fooddb'.'user' (
  'id' INT(11) NOT NULL AUTO_INCREMENT,
  'name' VARCHAR(10),
  'last_name' VARCHAR(20),
  'password' VARCHAR(8),
  'user_name' INT(10),
  PRIMARY KEY('id')
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8md4_general_ci;

/*food*/
CREATE TABLE IF NOT EXISTS 'fooddb'.'food' (
  'id' INT(11) NOT NULL AUTO_INCREMENT,
  'name' VARCHAR(10),
  'description' VARCHAR(20),
  'price' VARCHAR(50),
  'status' INT(100),
  'star' INT(6),
  'chef_id' INT(2), 
  'category' VARCHAR(20),
  PRIMARY KEY('id')
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8md4_general_ci;