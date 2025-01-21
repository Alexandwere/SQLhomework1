--Часть 2. Заполнение данными

insert into facultet values (1, 'Инженерный', 30_000);
insert into facultet values (2, 'Экономический', 49_000);
insert into course values ('Инж-1', 1, 1);
insert into course values ('Эк-1', 1, 2);
insert into course values ('Эк-4', 4, 2);
insert into student values (1, 'Петр', 'Петров', 'Петрович', true, 'Инж-1');
insert into student values (2, 'Иван', 'Иванов', 'Иваныч', false, 'Инж-1');
insert into student values (3, 'Сергей', 'Михно', 'Иваныч', true, 'Эк-4');
insert into student values (4, 'Ирина', 'Стоцкая', 'Юрьевна', false, 'Эк-4');
insert into student values (5, 'Настасья', 'Младич', null, false, 'Эк-1');
