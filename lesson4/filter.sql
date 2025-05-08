-- Фильтр
SELECT 
* 
FROM posts
WHERE user_id in (1, 4);
-- Поиск
SELECT 
* 
FROM users
WHERE fname LIKE '%усла%';
-- Сортировка
SELECT 
*
FROM posts
ORDER BY content ASC;
-- Фильтр и Сортировка
SELECT
* 
FROM users
WHERE id in (1,3)
ORDER BY birth_date ASC;
-- Обьединение двух таблиц
SELECT
p.id AS "ИД", 
p.content AS "Контент",
p.created_at AS "Дата Создания",
p.user_id AS "ИД Пользователя",
u.fname || ' ' || u.lname AS "ФИО",
u.username AS "Имя Пользователя"
FROM posts p
INNER JOIN users u ON u.id = p.user_id -- Обьединение
WHERE p.user_id in (1, 2, 4) AND p.id > 5 -- Фильтрация
ORDER BY p.created_at ASC; -- Сортировка

-- Практическая Работа
-- Создать 2 таблицы
-- authors(id, fname, lname, birth_date)
-- books(id, name, year, description, rating,author_id )
-- Добавить 5 авторов и 20 книг
-- Обьеденение Таблиц (id книги, название книги, полное имя автора, год книги, рейтинг книги)
-- Фильтр по ИД автора и Рейтинг(от 1 до 10)>5
-- Поиск по Название Книги
-- Сортировку


