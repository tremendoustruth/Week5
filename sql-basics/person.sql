//problem 1
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50),
  age INT,
  height INT,
  favecolor VARCHAR(50))

  //problem 2

INSERT INTO person (name, city, age, height, favecolor) VALUES ('Allen', 'Dallas', 50, 180, 'red');
INSERT INTO person (name, city, age, height, favecolor) VALUES ('Barbara', 'San Fransisco', 30, 160, 'blue');
INSERT INTO person (name, city, age, height, favecolor) VALUES ('Candace', 'Los Angeles', 45, 155, 'green');
INSERT INTO person (name, city, age, height, favecolor) VALUES ('David', 'New York', 82, 190, 'yellow');
INSERT INTO person (name, city, age, height, favecolor) VALUES ('Eileen', 'Houston', 17, 170, 'red');

//problem 3
SELECT * FROM person ORDER BY height DESC;

//problem 4
SELECT * FROM person ORDER BY height;

//problem 5
SELECT * FROM person ORDER BY age DESC;

//problem 6
SELECT * FROM person WHERE age>20;

//problem 7
SELECT * FROM person WHERE age=18;

//problem 8 
SELECT * FROM person WHERE age <20 OR age>30;

//problem 9
SELECT * FROM person WHERE age<>27;

//problem 10
SELECT * FROM person WHERE favecolor<>'redd';

//problem 11
SELECT * FROM person WHERE favecolor<>'red' AND favecolor<>'blue';

//problem 12
SELECT * FROM person WHERE favecolor='green' OR favecolor='orange';

//problem 13
SELECT * FROM person WHERE favecolor IN ('orange', 'green', 'blue');

//problem 14
SELECT * FROM person WHERE favecolor IN ('yellow', 'purple');



