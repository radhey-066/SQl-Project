SET SQL_SAFE_UPDATES = 0;
update students  set Email='rad24@gmail.com' where id=1;
select * from students;
update students  set age=12 where id=3;
create table Goel(id int,name varchar(20),course varchar(20),fee int,branch varchar(20));
select * from goel;
insert into goel(id,name,course,fee,branch)values(1,'Akou','B.Tech',56200,'AI');
insert into goel(id,name,course,fee,branch)values(2,'Radhey','B.Tech',86500,'DS');
insert into goel(id,name,course,fee,branch)values(3,'Krishna','B.Tech',58840,'Cvil');
insert into goel(id,name,course,fee,branch)values(4,'Shudanshu','B.Tech',96500,'ML');
alter table goel add age int;
update goel set age=12 where id=1;
update goel set age=21 where id=2;
update goel set age=34 where id=3;
update goel set age=64 where id=4;

# there we create a employee table and add id, name , age ,admission date,)
create table employee( id int PRIMARY KEY auto_increment,name varchar(20),age int); # auto incremet can increment the id or row one by one when insert 
insert into employee(id,name,age)values (1,'Radhey',21);
insert into employee(name,age)values ('shudanshu',65);
insert into emplloyee(name,age)values ('Anup',883);
select * from employee;
alter table employee add admission_date date;            # Add admission date in the employee table
alter table emp modify age varchar(10);             # modify data type int -> varchar(range)

 # Rename the table name--------
Rename table employee to emp;
alter table emp change student_age employee_age int;      # Change column name to another name
select * from emp;
Truncate table emp;
drop table emp;

# Faculty table
create table faculty(f_id int, f_name varchar(20), department varchar(20),age int , salary int, email varchar(40));
select * from faculty;
insert into faculty(f_id, f_name , department ,age, salary, email)values
(1,'Anita','CS',72,40230,'sjwk23@gmail.com'),
(2,'Rahul','IT',65,35213,'rahdj22@gmail.com'),
(3,'snajna','DS',28,34222,'sad22@gmail.com'),
(4,'delipe','CS',44,33233,'eswed22@gmail.com'),
(5,'Akhil','ML',26,55233,'wed22@gmail.com'),
(6,'Akshay','CVIL',54,76533,'eswe562@gmail.com');
select * from faculty where salary>=36000;       # condition where
select f_name ,age from faculty where age>=35;     
delete from faculty;     # delete the whole data sets but schema remain 
update faculty              # update the name with other name 
set f_name = 'Santi' 
where f_name = 'Anita';

alter table faculty add phone_no int;
alter table faculty modify f_name varchar(100);
alter table faculty modify	department varchar(40);
alter table faculty modify salary decimal(12,2);
alter table faculty add experence varchar(20) ;
SET SQL_SAFE_UPDATES = 0;
update faculty 
SET salary = 60000
WHERE f_id = 101;
UPDATE faculty
SET department = 'Information Technology'
WHERE f_name = 'John';
UPDATE faculty
SET salary = salary + 5000
WHERE f_id = 103;
UPDATE faculty
SET salary = 70000
WHERE department = 'Computer Science';
DELETE FROM faculty
WHERE f_id = 104;
DELETE FROM faculty
WHERE f_name = 'David';
INSERT INTO faculty
(f_id, f_name, department, age, salary, email, phone_no)
VALUES
(108, 'Sophia', 'Computer Science', 29, 52000.00, 'sophia@gmail.com', 987654328),
(109, 'Daniel', 'IT', 36, 61000.00, 'daniel@gmail.com', 987654329),
(110, 'Olivia', 'Civil', 40, 68000.00, 'olivia@gmail.com', 987654330);
UPDATE faculty
SET department = 'Computer Science'
WHERE department = 'IT';
UPDATE faculty
SET salary = salary * 1.10;

# GROUPBY , ORDERBY
select * from faculty;
#USE lIKE OPERATOR 
select * from faculty where f_name like 'A%';
select f_name from faculty where f_name like '%a';
select f_name from faculty where f_name like '%aj% ';

# LIMIT Clause
select * from faculty limit 2;
select * from faculty limit 4 offset 4;
select * from faculty where age between 20 and 55;
# DISTINIT unique values
select distinct age from faculty;
select distinct f_name,age from faculty;

# new table employee 

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    age INT,
    salary DECIMAL(12,2),
    email VARCHAR(100),
    phone_no VARCHAR(15),
    company_name VARCHAR(100)
);
INSERT INTO employee
(id,name,department,age,salary,email,phone_no,company_name)
VALUES
(1,'Arjun','HR',41,149238.00,'arjun1@example.com','9260181590','TCS'),
(2,'Aisha','Finance',53,53140.00,'aisha2@example.com','9016613186','Infosys'),
(3,'Rahul','IT',24,133377.00,'rahul3@example.com','9913909960','Wipro'),
(4,'Priya','Sales',35,31105.00,'priya4@example.com','9824628194','HCL'),
(5,'Vikram','Marketing',56,131971.00,'vikram5@example.com','9219935181','Tech Mahindra'),
(6,'Neha','Operations',57,32812.00,'neha6@example.com','9937865797','Accenture'),
(7,'Aman','Support',44,64291.00,'aman7@example.com','9323194875','Capgemini'),
(8,'Sneha','Admin',49,62740.00,'sneha8@example.com','9911862527','IBM'),
(9,'Rohan','R&D',47,30138.00,'rohan9@example.com','9189555979','Cognizant'),
(10,'Pooja','Data Analytics',50,34012.00,'pooja10@example.com','9147104974','Deloitte'),
(11,'Karan','HR',45,141266.00,'karan11@example.com','9507529170','TCS'),
(12,'Anjali','Finance',34,125693.00,'anjali12@example.com','9423667127','Infosys'),
(13,'Mohit','IT',46,97016.00,'mohit13@example.com','9426846563','Wipro'),
(14,'Kavya','Sales',30,35876.00,'kavya14@example.com','9223307924','HCL'),
(15,'Nikhil','Marketing',39,25536.00,'nikhil15@example.com','9268599528','Tech Mahindra'),
(16,'Simran','Operations',60,110847.00,'simran16@example.com','9078666617','Accenture'),
(17,'Ritika','Support',46,33158.00,'ritika17@example.com','9313721590','Capgemini'),
(18,'Yash','Admin',27,25030.00,'yash18@example.com','9928159013','IBM'),
(19,'Saurabh','R&D',60,74313.00,'saurabh19@example.com','9245957117','Cognizant'),
(20,'Meera','Data Analytics',50,87966.00,'meera20@example.com','9741215472','Deloitte'),
(21,'Riya','HR',54,28027.00,'riya21@example.com','9385280841','TCS'),
(22,'Aditya','Finance',37,92947.00,'aditya22@example.com','9525388853','Infosys'),
(23,'Ishita','IT',60,131366.00,'ishita23@example.com','9336338750','Wipro'),
(24,'Harsh','Sales',22,128561.00,'harsh24@example.com','9474395755','HCL'),
(25,'Tanvi','Marketing',26,53896.00,'tanvi25@example.com','9137353799','Tech Mahindra'),
(26,'Ayush','Operations',21,87845.00,'ayush26@example.com','9511637265','Accenture'),
(27,'Divya','Support',26,129965.00,'divya27@example.com','9676122202','Capgemini'),
(28,'Manish','Admin',58,143600.00,'manish28@example.com','9729975288','IBM'),
(29,'Komal','R&D',29,27804.00,'komal29@example.com','9018263304','Cognizant'),
(30,'Deepak','Data Analytics',34,63399.00,'deepak30@example.com','9839548620','Deloitte'),
(31,'Shreya','HR',43,142663.00,'shreya31@example.com','9798682828','TCS'),
(32,'Varun','Finance',53,27451.00,'varun32@example.com','9729022279','Infosys'),
(33,'Akash','IT',28,97938.00,'akash33@example.com','9058887180','Wipro'),
(34,'Naina','Sales',36,50074.00,'naina34@example.com','9401878017','HCL'),
(35,'Rakesh','Marketing',41,105285.00,'rakesh35@example.com','9898347887','Tech Mahindra'),
(36,'Payal','Operations',53,148404.00,'payal36@example.com','9384837261','Accenture'),
(37,'Ritu','Support',46,82949.00,'ritu37@example.com','9513613412','Capgemini'),
(38,'Abhishek','Admin',44,43740.00,'abhishek38@example.com','9427316723','IBM'),
(39,'Sakshi','R&D',31,117579.00,'sakshi39@example.com','9686563551','Cognizant'),
(40,'Rohit','Data Analytics',44,27553.00,'rohit40@example.com','9587706589','Deloitte'),
(41,'Ankit','HR',39,92143.00,'ankit41@example.com','9113114402','TCS'),
(42,'Muskan','Finance',38,124061.00,'muskan42@example.com','9264628897','Infosys'),
(43,'Aditi','IT',41,36725.00,'aditi43@example.com','9402614014','Wipro'),
(44,'Gaurav','Sales',26,104715.00,'gaurav44@example.com','9314170586','HCL'),
(45,'Nidhi','Marketing',38,106487.00,'nidhi45@example.com','9208312402','Tech Mahindra'),
(46,'Shivam','Operations',33,147191.00,'shivam46@example.com','9448347824','Accenture'),
(47,'Preeti','Support',43,130339.00,'preeti47@example.com','9040008838','Capgemini'),
(48,'Tanya','Admin',51,57201.00,'tanya48@example.com','9716786843','IBM'),
(49,'Kunal','R&D',35,69918.00,'kunal49@example.com','9326502014','Cognizant'),
(50,'Dev','Data Analytics',48,46397.00,'dev50@example.com','9016849340','Deloitte'),
(51,'Arjun','HR',50,49294.00,'arjun51@example.com','9247045585','TCS'),
(52,'Aisha','Finance',36,29515.00,'aisha52@example.com','9435205617','Infosys'),
(53,'Rahul','IT',38,90898.00,'rahul53@example.com','9338014126','Wipro'),
(54,'Priya','Sales',58,30461.00,'priya54@example.com','9604431982','HCL'),
(55,'Vikram','Marketing',59,76054.00,'vikram55@example.com','9572492086','Tech Mahindra'),
(56,'Neha','Operations',53,43259.00,'neha56@example.com','9889093100','Accenture'),
(57,'Aman','Support',29,108508.00,'aman57@example.com','9516780083','Capgemini'),
(58,'Sneha','Admin',52,59575.00,'sneha58@example.com','9071881817','IBM'),
(59,'Rohan','R&D',37,131065.00,'rohan59@example.com','9143337761','Cognizant'),
(60,'Pooja','Data Analytics',51,144336.00,'pooja60@example.com','9409319254','Deloitte'),
(61,'Karan','HR',40,106415.00,'karan61@example.com','9920707413','TCS'),
(62,'Anjali','Finance',52,63123.00,'anjali62@example.com','9847771834','Infosys'),
(63,'Mohit','IT',26,147716.00,'mohit63@example.com','9704718746','Wipro'),
(64,'Kavya','Sales',34,145134.00,'kavya64@example.com','9319128452','HCL'),
(65,'Nikhil','Marketing',59,132507.00,'nikhil65@example.com','9841537760','Tech Mahindra'),
(66,'Simran','Operations',31,25470.00,'simran66@example.com','9776426565','Accenture'),
(67,'Ritika','Support',28,135130.00,'ritika67@example.com','9505561304','Capgemini'),
(68,'Yash','Admin',37,73787.00,'yash68@example.com','9166915640','IBM'),
(69,'Saurabh','R&D',38,38331.00,'saurabh69@example.com','9042346853','Cognizant'),
(70,'Meera','Data Analytics',44,127910.00,'meera70@example.com','9606883106','Deloitte'),
(71,'Riya','HR',49,105598.00,'riya71@example.com','9247082276','TCS'),
(72,'Aditya','Finance',42,61929.00,'aditya72@example.com','9444634786','Infosys'),
(73,'Ishita','IT',28,46932.00,'ishita73@example.com','9213878375','Wipro'),
(74,'Harsh','Sales',49,81023.00,'harsh74@example.com','9283312581','HCL'),
(75,'Tanvi','Marketing',41,56342.00,'tanvi75@example.com','9549306668','Tech Mahindra'),
(76,'Ayush','Operations',34,74396.00,'ayush76@example.com','9450749528','Accenture'),
(77,'Divya','Support',54,107526.00,'divya77@example.com','9314366764','Capgemini'),
(78,'Manish','Admin',22,41678.00,'manish78@example.com','9067970168','IBM'),
(79,'Komal','R&D',50,83844.00,'komal79@example.com','9313228171','Cognizant'),
(80,'Deepak','Data Analytics',56,126824.00,'deepak80@example.com','9002390424','Deloitte'),
(81,'Shreya','HR',54,108399.00,'shreya81@example.com','9611148936','TCS'),
(82,'Varun','Finance',37,54305.00,'varun82@example.com','9900847453','Infosys'),
(83,'Akash','IT',51,93980.00,'akash83@example.com','9383064003','Wipro'),
(84,'Naina','Sales',52,140978.00,'naina84@example.com','9614365370','HCL'),
(85,'Rakesh','Marketing',42,119153.00,'rakesh85@example.com','9656304813','Tech Mahindra'),
(86,'Payal','Operations',52,51268.00,'payal86@example.com','9433734419','Accenture'),
(87,'Ritu','Support',52,104966.00,'ritu87@example.com','9237609260','Capgemini'),
(88,'Abhishek','Admin',34,28097.00,'abhishek88@example.com','9926002675','IBM'),
(89,'Sakshi','R&D',28,35402.00,'sakshi89@example.com','9253287046','Cognizant'),
(90,'Rohit','Data Analytics',44,68476.00,'rohit90@example.com','9721014156','Deloitte'),
(91,'Ankit','HR',28,98548.00,'ankit91@example.com','9365461073','TCS'),
(92,'Muskan','Finance',44,95979.00,'muskan92@example.com','9735570636','Infosys'),
(93,'Aditi','IT',23,74226.00,'aditi93@example.com','9071043195','Wipro'),
(94,'Gaurav','Sales',44,60692.00,'gaurav94@example.com','9590454409','HCL'),
(95,'Nidhi','Marketing',25,28179.00,'nidhi95@example.com','9317764672','Tech Mahindra'),
(96,'Shivam','Operations',52,48978.00,'shivam96@example.com','9042935575','Accenture'),
(97,'Preeti','Support',59,35356.00,'preeti97@example.com','9836236107','Capgemini'),
(98,'Tanya','Admin',56,96383.00,'tanya98@example.com','9526114913','IBM'),
(99,'Kunal','R&D',27,80189.00,'kunal99@example.com','9772326793','Cognizant'),
(100,'Dev','Data Analytics',55,136016.00,'dev100@example.com','9144494544','Deloitte'),
(101,'Arjun','HR',33,82592.00,'arjun101@example.com','9323324935','TCS'),
(102,'Aisha','Finance',25,76913.00,'aisha102@example.com','9438831701','Infosys'),
(103,'Rahul','IT',21,87228.00,'rahul103@example.com','9375043103','Wipro'),
(104,'Priya','Sales',59,133517.00,'priya104@example.com','9931582794','HCL'),
(105,'Vikram','Marketing',21,38864.00,'vikram105@example.com','9995305520','Tech Mahindra'),
(106,'Neha','Operations',34,58412.00,'neha106@example.com','9093056529','Accenture'),
(107,'Aman','Support',40,35215.00,'aman107@example.com','9307871616','Capgemini'),
(108,'Sneha','Admin',56,45257.00,'sneha108@example.com','9812646446','IBM'),
(109,'Rohan','R&D',24,65941.00,'rohan109@example.com','9956605366','Cognizant'),
(110,'Pooja','Data Analytics',34,148468.00,'pooja110@example.com','9062611695','Deloitte');

select * from employee;

SELECT id, name, salary
FROM employee;

SELECT *
FROM employee
WHERE salary > 50000;

SELECT *
FROM employee
WHERE age BETWEEN 25 AND 35;

SELECT *
FROM employee
WHERE department='IT'
AND salary>70000;

#USE lIKE OPERATOR 
select * from employee where name like 'A%';
select name from employee where name like '%a';
select name from employee where name like '%ma%';

update employee set age=12 where id=1;
update employee set age=21 where id=6;
update employee set age=34 where id=85;
update employee set age=64 where id=55;

alter table employee add marriage varchar(10);

update employee set marriage ='single'  where id=1;
update employee set marriage='married' where id=6;
update employee set marriage ='single' where id=85;
update employee set marriage ='married' where id=55;

SELECT *
FROM employee
ORDER BY salary;
SELECT *
FROM employee
ORDER BY salary DESC;

SELECT *
FROM employee
ORDER BY age;

SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 10;

SELECT department,COUNT(*)
FROM employee
GROUP BY department;
select * from employee;