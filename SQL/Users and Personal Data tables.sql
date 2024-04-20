Есть 2 таблицы: users и personal_data
1. найти количество всех юзеров с почтой yandex
2. найти всех юзеров с датой рождения с 1995 по 2000 года с сортировкой по возрастанию (в выводе отобразить поля birthday_date, email, mobile_number)
3. вывести последнего добавленного в бд юзера, у которого нет даты рождения

Table: users		

ID	email	mobile_number	

1	qwerty@gmail.com	71234567890	
2			
3			
....			

Table: personal_data							

ID	users_id	birthday_date							
1	1	1990-01-01							
2	2								
3	3								
.....	.....		


1. SELECT COUNT(*) 
FROM users 
JOIN personal_data ON users.ID = personal_data.users_id 
WHERE users.email LIKE '%@yandex.%';

2. SELECT personal_data.birthday_date, users.email, users.mobile_number 
FROM users 
LEFT JOIN personal_data ON users_ID = users.id 
WHERE personal.birthday_date BETWEEN "1995-01-01" AND "2000-12-31" 
ORDER BY personal_data.birthday_date ASC;

3. SELECT * 
FROM personal_data
WHERE birthday_date IS NULL 
ORDER BY user.ID DESC 
LIMIT 1;			