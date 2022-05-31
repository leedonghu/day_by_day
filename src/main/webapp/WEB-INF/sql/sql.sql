use dbd;
CREATE TABLE test
(
test VARCHAR(50)
);

SELECT * FROM test;

CREATE TABLE melondb
(ranking int PRIMARY KEY,
name LONGTEXT not NULL,
artist LONGTEXT not null,
album LONGTEXT not null
 );
 
 SELECT * from melondb;
DROP TABLE melondb;

INSERT INTO melondb
(ranking, name, artist, album)
VALUES
(1, "test", "test", "test");

UPDATE melondb
SET name = "test2",
	artist = "test2",
    album = "test2"
WHERE ranking = 1;
SELECT @@max_allowed_packet;

SHOW COLUMNS FROM melondb;
