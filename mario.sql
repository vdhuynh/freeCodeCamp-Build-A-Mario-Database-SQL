echo hello PostgreSQL
psql --username=freecodecamp --dbname=postgres
\l
CREATE DATABASE first_database;
\l
CREATE DATABASE second_database;
\l
\c second_database;
\d
CREATE TABLE first_table();
\d 
CREATE TABLE second_table();
\d
\d second_table
ALTER TABLE second_table ADD COLUMN first_column INT;
\d second_table
ALTER TABLE second_table ADD COLUMN id INT;
\d second_table
ALTER TABLE second_table ADD COLUMN age INT;
\d second_table
ALTER TABLE second_table DROP COLUMN age;
\d second_table
ALTER TABLE second_table DROP COLUMN first_column;
ALTER TABLE second_table ADD COLUMN name VARCHAR(30);
\d second_table
ALTER TABLE second_table RENAME COLUMN name TO username;
\d second_table
INSERT INTO second_table(id, username) VALUES(1, 'Samus');
SELECT * FROM second_table;
INSERT INTO second_table(id, username) VALUES(2, 'Mario');
SELECT * FROM second_table;
INSERT INTO second_table(id, username) VALUES(3, 'Luigi');
SELECT * FROM second_table;
DELETE FROM second_table WHERE username='Luigi';
SELECT * FROM second_table;
DELETE FROM second_table WHERE username='Mario';
DELETE FROM second_table WHERE username='Samus';
SELECT * FROM second_table;
\d second_table
ALTER TABLE second_table DROP COLUMN username;
ALTER TABLE second_table DROP COLUMN id;
\d
DROP TABLE second_table;
DROP TABLE first_table;
\l
ALTER DATABASE first_database RENAME TO mario_database;
\l
\c mario_database
DROP DATABASE second_database;
\l
\d
CREATE TABLE characters();
ALTER TABLE characters ADD column character_id SERIAL;
\d characters
ALTER TABLE characters ADD COLUMN name VARCHAR(30) NOT NULL;
ALTER TABLE characters ADD COLUMN homeland VARCHAR(60);
ALTER TABLE characters ADD COLUMN favorite_color VARCHAR(30);
\d characters
INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red');
SELECT * FROM characters;
INSERT INTO characters(name, homeland, favorite_color) VALUES('Luigi', 'Mushroom Kingdom', 'Green');
SELECT * FROM characters;
INSERT INTO characters(name, homeland, favorite_color) VALUES('Peach', 'Mushroom Kingdom', 'Pink');
INSERT INTO characters(name, homeland, favorite_color) VALUES('Toadstool', 'Mushroom Kingdom', 'Red'), ('Bowser', 'Mushroom Kingdom', 'Green');
INSERT INTO characters(name, homeland, favorite_color) VALUES('Daisy', 'Sarasaland', 'Yellow'), ('Yoshi', 'Dinosaur Land', 'Green');
SELECT * FROM characters;
UPDATE characters SET favorite_color='Orange' WHERE name='Daisy';
SELECT * FROM characters;
UPDATE characters SET name='Toad' WHERE favorite_color='Red';
SELECT * FROM characters;
UPDATE characters SET name='Mario' WHERE character_id=1;
SELECT * FROM characters;
UPDATE characters SET favorite_color='Blue' WHERE character_id=4;
UPDATE characters SET favorite_color='Yellow' WHERE character_id=7;
UPDATE characters SET homeland='Koopa Kingdom' WHERE character_id=7;
ALTER TABLE characters ADD PRIMARY KEY(name);
SELECT * FROM characters;
SELECT * FROM characters ORDER BY character_id;
ALTER TABLE characters ADD PRIMARY KEY(name);
\d characters
ALTER TABLE characters DROP CONSTRAINT characters_pkey;
\d characters
ALTER TABLE characters ADD PRIMARY KEY(character_id);
\d characters
CREATE TABLE more_info();
\d
\d characters
ALTER TABLE more_info ADD COLUMN more_info_id SERIAL;
ALTER TABLE more_info ADD PRIMARY KEY(more_info_id);
\d
ALTER TABLE more_info ADD COLUMN birthday DATE;
ALTER TABLE more_info ADD COLUMN height INT;
ALTER TABLE more_info ADD COLUMN weight NUMERIC(4, 1);
\d more_info
ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id);
\d more_info
ALTER TABLE more_info ADD UNIQUE(character_id);
ALTER TABLE more_info ALTER COLUMN character_id SET NOT NULL;
\d more_info
SELECT character_id FROM characters;
SELECT character_id, name FROM characters;

