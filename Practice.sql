create table course1(c_id int Primary Key, c_name varchar(20));
select * from course1;
create table student1(
  s_id int primary key,
  s_name varchar(20),
  c_id int,
  foreign key (c_id) references course1(c_id)
);
insert into course1 values
(101, 'python'),
(102, 'java'),
(103, 'sql');

insert into student1 values
(1, 'rahul', 101),
(2, 'priya', 102),
(3, 'aman', 103);

select s.s_id,s.s_name,c.c_name
from student1 s inner join course1 c on s.c_id = c.c_id;

select s.s_id, s.s_name, c.c_name
from student1 s left join course1 c on s.c_id = c.c_id;

select s.s_id, s.s_name,c_name
from student1 s right join course1 c on s.c_id=c.c_id;

select  s.s_name,c_name
from student1 s cross join course1 c;

select s.s_id, s.s_name,c_name
from student1 s inner join course1 c on s.c_id=c.c_id;

select s.s_id, s.s_name,c.c_name
from student1 s outer join course1 c on s.c_id=c.c_id;

select s_name as details from student1 union
select c_name from course1;

select s.s_name, c.c_name from student1 s
inner join course1 c on s.c_id = c.c_id;





select * from student1 s
inner join course1 c on s.c_id = c.c_id;
select s.s_id, s.s_name, c.c_name
from student1 s inner join course1 c
on s.c_id = c.c_id;
select s.s_name, c.c_name from student1 s
inner join course1 c on s.c_id = c.c_id;
select * from student1 s
inner join course1 c on s.c_id = c.c_id;
select s.s_name, c.c_name from student1 s
left join course1 c on s.c_id = c.c_id;
select * from student1 s left join course1 c
on s.c_id = c.c_id;
select s.s_name, c.c_name from student1 s
left join course1 c on s.c_id = c.c_id;
select * from student1 s
left join course1 c on s.c_id = c.c_id;
select * from student1 s left join course1 c
on s.c_id = c.c_id where c.c_id is null;
select c.c_name, s.s_name from student1 s
right join course1 c on s.c_id = c.c_id;

select * from student1 s
right join course1 c on s.c_id = c.c_id;
select c.c_name, s.s_name from student1 s
right join course1 c on s.c_id = c.c_id;
select * from student1 s right join course1 c
on s.c_id = c.c_id where s.s_id is null;
select * from student1 s right join course1 c on s.c_id = c.c_id;





