-- //problem 1

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(50),
    product_price INT,
    quantity INT
);

-- //problem 2
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (1, 'face mask', 10, 2);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (1, 'body wash', 8, 1);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (2, 'lotion', 5, 1);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (2, 'scrunchy', 2, 3);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (3, 'blanket', 15, 1);

-- //problem 3
SELECT * FROM orders;

-- //problem 4
SELECT SUM(quantity) FROM orders;

-- //problem 5
SELECT product_price*quantity  AS total_price FROM orders;

-- //problem 6
SELECT SUM(product_price*quantity) FROM orders WHERE person_id=2;



