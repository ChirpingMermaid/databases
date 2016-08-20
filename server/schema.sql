CREATE DATABASE chat;

USE chat;


/* Create other tables and define schemas for them here! */
CREATE TABLE rooms (
  id INTEGER PRIMARY KEY AUTO_INCREMENT DEFAULT NULL,
  name CHAR(31) NULL DEFAULT NULL
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTO_INCREMENT DEFAULT NULL,
  name CHAR(31) NULL DEFAULT NULL
);

CREATE TABLE messages (
  id INTEGER PRIMARY KEY AUTO_INCREMENT DEFAULT NULL,
  user_ID INTEGER(127) NULL DEFAULT NULL,
  room_ID INTEGER(127) NULL DEFAULT NULL,
  message CHAR(255) NULL DEFAULT NULL,
  FOREIGN KEY(user_ID) REFERENCES users(id),
  FOREIGN KEY(room_ID) REFERENCES rooms(id)
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

