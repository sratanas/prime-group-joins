-- Get all customers and their addresses.
SELECT * FROM customers
JOIN addresses ON customers.id = addresses.customer_id;


-- Get all orders and their line items.

SELECT * FROM orders
JOIN line_items ON orders.id = line_items.order_id;

-- Which warehouses have cheetos?
warehouse delta

SELECT warehouse FROM products
JOIN warehouse_product ON products.id = warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.id = 5;


-- Which warehouses have diet pepsi?
alpha, delta and gamma

SELECT warehouse FROM products
JOIN warehouse_product ON products.id = warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.id = 6;

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

Charles	Darwin	1
Lisa	Bonet	3
Lucy	Liu	3


SELECT customers.first_name, customers.last_name, COUNT (orders.id) FROM orders
JOIN addresses ON orders.address_id = addresses.id
JOIN customers ON customers.id = addresses.customer_id
GROUP BY customers.id;

-- How many customers do we have?
4

SELECT COUNT(customers.id) FROM customers;

-- How many products do we carry?
7
SELECT COUNT(products.id) FROM products;

-- What is the total available on-hand quantity of diet pepsi?
92

SELECT SUM(on_hand) FROM products 
JOIN warehouse_product ON products.id = warehouse_product.product_id
WHERE products.id = 6;