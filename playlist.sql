DROP DATABASE playlist_db;
CREATE DATABASE playlist_db;
USE playlist_db;

CREATE TABLE songs (
    id INTEGER PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255),
    genre VARCHAR(255)
)

INSERT INTO songs 
VALUES (1,'With Out You', 'Halsey', 'Pop');

INSERT INTO songs 
VALUES (2,'Say Something', 'Adam', 'Rock');

INSERT INTO songs 
VALUES (3,'saba', 'Mona', 'Pop');

SELECT * FROM songs;

SELECT * FROM songs Where (genre = 'Pop');