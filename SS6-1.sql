CREATE TABLE categories (
    category_id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);
INSERT INTO categories (category_id, category_name)
VALUES
('C01', 'Laptop'),
('C02', 'Điện thoại'),
('C03', 'Phụ kiện');
INSERT INTO products (product_id, product_name, category, price)
VALUES
('P009', 'Laptop Dell', 'C01', 25000000),
('P010', 'iPhone 16', 'C02', 30000000),
('P011', 'Tai nghe Sony', 'C03', 3500000);
UPDATE products
SET price = 26000000
WHERE product_id = 'P006';
DELETE FROM products
WHERE product_id = 'P008';
SELECT *
FROM products
ORDER BY price ASC;
SELECT
    c.category_name,
    COUNT(p.product_id) AS total_products
FROM categories AS c
LEFT JOIN products AS p
ON c.category_id = p.category
GROUP BY c.category_id, c.category_name;