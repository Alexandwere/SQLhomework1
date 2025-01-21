-- Факультет (id, имя факультета, стоимость обучения)
create table facultet (
	id int primary key,
	faculty_name varchar(100),
	learning_price numeric(10,2)
);

-- Курс (id, номер курса, id факультета)
create table course (
	"id" varchar(10) primary key,
	course_number int,
	faculty_id int,
	foreign key (faculty_id) references facultet("id")
);

-- Студент (id, имя, фамилия, отчество, бюджетник/частник, id курса)
create table student (
	id int primary key,
	first_name varchar(50),
	last_name varchar(50),
	middle_name varchar(50),
	is_budget boolean,
	course_id varchar(10),
	foreign key (course_id) references course(id)
);
