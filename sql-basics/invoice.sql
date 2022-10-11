-- //problem 1
SELECT COUNT(billing_country) FROM invoice WHERE billing_country='USA';

-- //problem 2
SELECT MAX(total) FROM invoice;

-- //problem 3
SELECT MIN(total) FROM invoice;

-- //problem 4
SELECT * FROM invoice WHERE total>5;

-- //problem 5
SELECT COUNT(total) FROM invoice WHERE total<5;

-- //problem 6
SELECT COUNT(billing_state) FROM invoice WHERE billing_state IN ('TX', 'CA', 'AZ');

-- //problem 7
SELECT AVG(total) FROM invoice WHERE billing_state IN ('TX', 'CA', 'AZ');

-- //problem 8
SELECT SUM(total) FROM invoice WHERE billing_state IN ('TX', 'CA', 'AZ');

-- //problem 9
UPDATE invoice 
SET total=24
WHERE invoice_id=5;

-- //problem 10 (foreign key constraint error; first have to remove invoices with invoice_id=1 in invoice_line to successfully run the next query )
DELETE FROM invoice_line WHERE invoice_id=1;
DELETE FROM invoice WHERE invoice_id=1;