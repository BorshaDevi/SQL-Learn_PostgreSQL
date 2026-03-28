CREATE TABLE customer(
customer_id SERIAL PRIMARY KEY,
customer_name VARCHAR (50),
customer_email VARCHAR (50)
)
INSERT INTO customer (customer_id, customer_name, customer_email) VALUES
(1, 'Rahim Uddin', 'rahim@gmail.com'),
(2, 'Karim Hasan', 'karim@gmail.com'),
(3, 'Ayesha Akter', 'ayesha@gmail.com'),
(4, 'Tanvir Ahmed', 'tanvir@gmail.com'),
(5, 'Nusrat Jahan', 'nusrat@gmail.com');

CREATE TABLE forder (
order_id SERIAL PRIMARY KEY,
order_date DATE NOT NULL,
price NUMERIC NOT NULL,
customer_id INTEGER NOT NULL,
FOREIGN KEY (customer_id)REFERENCES
customer (customer_id)
);

INSERT INTO forder (order_date, price, customer_id) VALUES
('2026-03-01', 1500.50, 1),
('2026-03-02', 2300.00, 2),
('2026-03-03', 999.99, 3),
('2026-03-04', 4500.75, 1),
('2026-03-05', 1200.00, 4);
