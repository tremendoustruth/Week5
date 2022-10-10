CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(50),
    product_price INT,
    quantity INT
)

INSERT 