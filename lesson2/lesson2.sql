-- Создание Таблицы Категории 
-- CREATE TABLE название_таблицы(
-- название_столбца ТИП АТРИБУТЫ(PRIMARY KEY, AUTOINCREMENT, NOT NULL)
--)
CREATE TABLE categories(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255) NOT NULL
);
CREATE TABLE products(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255) NOT NULL,
	price NUMERIC(10, 2) NOT NULL,
	description TEXT,
	rating REAL DEFAULT 10,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	is_active BLOB DEFAULT 1,
	category_id INTEGER NOT NULL,
	FOREIGN KEY (category_id) REFERENCES categories(id)
);
-- Измение Таблицы (Добавление столбца)
-- ALTER TABLE название таблицы ADD COLUMN название столбцы ТИП АТРИБУТЫ
ALTER TABLE products ADD COLUMN category_id INTEGER;

-- Удаление Таблицы 
-- DROP TABLE название таблицы
DROP TABLE categories;
DROP TABLE products;

-- Добавление данных(строки)
-- INSERT INTO название_таблицы(столбец1, столбец2) VALUES (значение для столбца1)
INSERT INTO categories(name) VALUES(
	'Хоз-Товары'
);
INSERT INTO categories(name) VALUES(
	'Электроника'
);
INSERT INTO categories(name) VALUES(
	'Хлебо-булочное'
);

-- Получение Данных Таблицы
-- SELECT столбцы(* получает все столбцы) FROM название таблицы
SELECT * FROM categories;
SELECT * FROM products;
INSERT INTO products(name, description, price, rating, category_id)
VALUES ('Веник', 'Веник Обыкновенный', 999.99, 10, 1);
DELETE FROM products;
INSERT INTO products(name, description, price, rating, category_id)
VALUES ('кондер', 'GREE', 399.99, 10, 2);
INSERT INTO products(name, description, price, rating, category_id)
VALUES ('булочка', '350гр', 399.99, 10, 3);
-- Получение продуктов и категорий
-- Получение Данных Таблицы с Условием
-- SELECT столбцы FROM название таблицы WHERE условие
SELECT * FROM products WHERE products.category_id == 1;
SELECT 
	p.name AS 'Название Продукта',
	c.name AS 'Название Категорий'
FROM products p
INNER JOIN categories c ON c.id == p.category_id
WHERE p.category_id == 2;