DROP DATABASE chat;

CREATE DATABASE chat;

USE chat;


/* Create other tables and define schemas for them here! */
CREATE TABLE rooms (
  id INTEGER PRIMARY KEY AUTO_INCREMENT DEFAULT NULL,
  roomname CHAR(31) NULL DEFAULT NULL
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTO_INCREMENT DEFAULT NULL,
  username CHAR(31) NULL DEFAULT NULL
);

CREATE TABLE messages (
  id INTEGER PRIMARY KEY AUTO_INCREMENT DEFAULT NULL,
  user_ID INTEGER(127) NULL DEFAULT NULL,
  room_ID INTEGER(127) NULL DEFAULT NULL,
  text CHAR(255) NULL DEFAULT NULL,
  FOREIGN KEY(user_ID) REFERENCES users(id),
  FOREIGN KEY(room_ID) REFERENCES rooms(id)
);

/*populate tables with data*/
insert into users value(1, "Josephine");
insert into users value(2, "Yu-An"); 
insert into users value(3, "Allen");
insert into users value(4, "Beth"); 

insert into rooms value(1, "Lobby");
insert into rooms value(2, "8th Floor"); 

insert into messages value(1, 1, 1, "Hello!");
insert into messages value(2, 2, 1, "Good Morning!"); 
insert into messages value(3, 3, 1, "Come to lecture!"); 
insert into messages value(4, 4, 2, "Office hours today!"); 
insert into messages value(5, 4, 2, "Happy friday!"); 
/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

