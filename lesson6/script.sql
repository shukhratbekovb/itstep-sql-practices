SELECT * FROM users;
SELECT * FROM profiles;

SELECT 
u.first_name  || ' ' || u.last_name AS Fullname,
u.username AS Username,
u.id AS "ID",
p.bio AS "BIO",
p.avatar AS "Photo",
p.is_verified AS "Verified"
FROM users u
INNER JOIN profiles p
ON u.id = p.user_id;

SELECT * FROM categories;
SELECT * FROM products;

SELECT 
* 
FROM products p
INNER JOIN categories c
ON p.category_id = c.id;


-- Показать orders и order_products вместе\
-- user_id, product_id, quantity

-- ID заказ, Название Продукта, Кол-во, Полное ФИО
SELECT 
o.id AS "ID Заказа",
p.name AS "Название Продукта",
op.quantity AS "Кол-во",
u.first_name || ' ' || u.last_name AS "ФИО"
FROM orders o
INNER JOIN order_products op ON o.id = op.order_id
INNER JOIN products p ON op.product_id=p.id
INNER JOIN users u ON o.user_id = u.id;




