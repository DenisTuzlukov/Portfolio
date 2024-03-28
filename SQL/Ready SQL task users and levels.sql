Исходные данные: есть 2 таблицы user и level с соответствующим набором полей. Структура таблиц и значения полей указаны ниже																
Таблица - user																
id	user_name	level_id	skill													
1	Anton	1	900000													
2	Denis	3	4000													
3	Petr	2	50000													
4	Andrey	4	20													
5	Olga	1	600000													
6	Anna	1	1600000													
																
Таблица - level																
id	level_name															
1	admin															
2	power_user															
3	user															
4	guest															
																
CREATE TABLE users (
  id BIGINT NOT NULL PRIMARY KEY, 
  user_name VARCHAR(64) NOT NULL,
  level_id VARCHAR(64) NOT NULL,
  skill VARCHAR(64) NOT NULL
  );

CREATE TABLE level (
  id BIGINT NOT NULL PRIMARY KEY, 
  level_name VARCHAR(64) NOT NULL
 );

INSERT INTO users (id, user_name, level_id, skill)
VALUES (1, 'Anton', 1, 900000);
INSERT INTO users (id, user_name, level_id, skill)
VALUES (2, 'Denis', 3, 4000);
INSERT INTO users (id, user_name, level_id, skill)
VALUES (3, 'Petr', 2, 50000);
INSERT INTO users (id, user_name, level_id, skill)
VALUES (4, 'Andrey', 4, 20);
INSERT INTO users (id, user_name, level_id, skill)
VALUES (5, 'Olga', 1, 600000);
INSERT INTO users (id, user_name, level_id, skill)
VALUES (6, 'Anna', 1, 1600000);

INSERT INTO level (id, level_name)
VALUES (1, 'admin');
INSERT INTO level (id, level_name)
VALUES (2, 'power_user');
INSERT INTO level (id, level_name)
VALUES (3, 'user');
INSERT INTO level (id, level_name)
VALUES (4, 'guest');


Задания на написание запросов к БД:																
1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква 'а'	
SELECT *
FROM users
WHERE level_id = 1 
    AND skill > 799000
 AND user_name LIKE '%a%';															
2. Удалить всех пользователей, у которых skill меньше 100000
DELETE FROM user
WHERE skill < 100000;																
3. Вывести все данные из таблицы user в порядке убывания по полю skill
SELECT * FROM user
ORDER BY skill DESC; 																
4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10
INSERT INTO users (id, user_name, level_id, skill)
VALUES (7, 'Oleg', 4, 10);																
5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000
UPDATE user
SET skill = 2000000
WHERE level_id < 2;																
6. Выбрать user_name всех пользователей уровня admin используя подзапрос
SELECT user_name
FROM users
WHERE level_id IN (SELECT id FROM level WHERE level_name = 'admin');																
7. Выбрать user_name всех пользователей уровня admin используя join	
SELECT u.user_name
FROM users u
JOIN level l ON u.level_id = l.id
WHERE l.level_name = 'admin';
															
																
																
																
