//problem 1

INSERT INTO artist (artist_id, name)
VALUES (276, 'Heart of a Coward');
INSERT INTO artist (artist_id, name)
VALUES (277, 'Aurora');
INSERT INTO artist (artist_id, name)
VALUES (278, 'Nicki Minaj');

//problem 2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

//problem 3
SELECT * FROM artist ORDER BY name LIMIT 5;

//problem 4
SELECT * FROM artist WHERE name LIKE 'Black%';

//problem 5
SELECT * FROM artist WHERE name LIKE '%Black%';