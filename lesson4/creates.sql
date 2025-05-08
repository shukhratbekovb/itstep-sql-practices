-- Создание Таблицы если ее нету 
CREATE TABLE IF NOT EXISTS users (
	id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, -- Автоматически будет генерировать ID
	fname VARCHAR(255) NOT NULL,
	lname VARCHAR(255) NOT NULL,
	username VARCHAR(512) UNIQUE NOT NULL, -- Нужно давать уникальное значение
	birth_date DATE NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- TIMESTAMP тот же самый DATETIME
);

CREATE TABLE IF NOT EXISTS posts (
	id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, -- Автоматически будет генерировать ID
	content VARCHAR(2048) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- TIMESTAMP тот же самый DATETIME,
	user_id BIGINT REFERENCES users(id) -- Связываем Users и Posts
)

