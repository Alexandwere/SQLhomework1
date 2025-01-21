Часть 3. Выборка данных. Необходимо написать запросы, которые выведут на экран:
1. Вывести всех студентов, кто платит больше 30_000.
2. Перевести всех студентов Петровых на 1 курс экономического факультета.
3. Вывести всех студентов без отчества или фамилии.
4. Вывести всех студентов содержащих в фамилии или в имени или в отчестве "ван". (пример name like '%Петр%' - найдет всех Петров, Петровичей, Петровых)
5. Удалить все записи из всех таблиц.

--1. Вывести всех студентов, кто платит больше 30_000.
select student.*
from student join course on student.course_id = course.id 
	join facultet on course.faculty_id = facultet.id 
where is_budget = false and learning_price > 30_000;

--2. Перевести всех студентов Петровых на 1 курс экономического факультета.
update student set course_id = 'Эк-1'
where last_name = 'Петров' or first_name = 'Петрова';

--3. Вывести всех студентов без отчества или фамилии.
select *
from student
where last_name is null or middle_name is null;

--4. Вывести всех студентов содержащих в фамилии или в имени или в отчестве "ван".
select *
from student
where first_name like '%ван%' or last_name like '%ван%' or middle_name like '%ван%';

--5. Удалить все записи из всех таблиц.
drop table student, course, facultet;
