SELECT * FROM users;
SELECT * FROM posts;

-- Добавляем лишь одну запись
INSERT INTO users(fname, lname, username, birth_date)
VALUES ('Акбар', 'Хасанов', 'akhasanov', '2008-12-17')


-- Добавляем сразу несколько записей
INSERT INTO users(fname, lname, username, birth_date)
VALUES 
('Руслан', 'Кан', 'kan', '2008-11-25'),
('Джахангир', 'Нуратдинов', 'jmlbb', '2009-10-06'),
('Тимур', 'Аббасов', 'abbasovtoolate', '2009-02-12')


-- Добавляем Посты

-- Акбар 
INSERT INTO posts(content, user_id) 
VALUES 
('LAAAAAAAAKEEEERSSSS', 1),
('BAAAAASSSSSKEEEEETTTT', 1),
('Я не делаю ДЗЗЗЗЗЗЗ', 1);
-- Руслан
INSERT INTO posts(content, user_id) 
VALUES 
('IELTS 8.5', 2),
('SAT хочу 1600', 2),
('Поменяю фамилию на Ли', 2),
('Я не интересуюсь футболом', 2);
-- Джахангир
INSERT INTO posts(content, user_id) 
VALUES 
('Маблааааа ТОООППП', 3),
('Роблокс Ван Лав', 3);
-- Тимур
INSERT INTO posts(content, user_id) 
VALUES 
('Я не буду ОПАЗДЫВАТЬ но это не точно', 4);


