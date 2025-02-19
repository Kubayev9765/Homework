--create database Class_5
--check constraint, default constrainr
--whele,coalesce


--column name operator qandaydir value
--True & Folse
--Solishtirish operatorlari
--mantiqiy operator and, or, not
----maxsusoperatorlar
--in- multiple chose, between- range operator' is null, not null, like-poternlarga ishlatiladi

--select employee_id,first_name from employees
--where employee_id=105

--select *from employees
--where salary>1000

--select *from employees
--where salary<1000

--select *from employees
--where employee_id>=105

--select *from employees
--where employee_id!=105


--IT_PROG, ST_MAN, SA_REP

--IN OPERATORI
----select *from employees
----where job_id IN('IT_PROG','ST_MAN','SA_PER')

------BETWEEN
----SELECT * from employees
----where hire_date between '2004-01-01' and '2006-12-31' --cast (value as data_type) cast(12 as bigint)
 
 --select *from employees
 --where employee_id between 120 and 150  -->=,<=

 --create table students(id int,name varchar(20), email varchar(20))
 --insert into  students values(1, 'Ali', 'Ali@gmail.com'),(2,'Bob','Bob@gmail.com'),(3, 'Brain','Brain@gmail.com'),(4, 'Alex','NULL')
 --insert into students values(5, 'Felex','null')
  insert into students values(6, 'Relex',null)

 --select *from students
 --where email is  not null


 --select *from employees
 --where job_id='SA_REP'AND SALARY>10000

 -- select *from employees
 --where job_id='SA_REP'OR SALARY>10000

 --SELECT *FROM employees
 --WHERE (job_id = 'SA-MAN' AND salary>10000) OR job_id='IT_PROG'

 -- SELECT *FROM employees
 --WHERE (job_id = 'SA-MAN' OR job_id = 'IT_PROG' OR job_id = 'SA_REP')AND  salary>10000

 --LIKE operatori
 --wildcards: %- qandaydir string, _ bitta xarakter o'rni,
 ----[]- range uchun range or multiple , [^] -not operatori
 --select *from employees
 --where first_name like'S%'

 -- select *from employees
 --where first_name like'S%n%'

 -- select *from employees
 --where first_name like'_n%'

 -- select *from employees
 --where first_name like'_a%e_'

 -- select *from employees
 --where first_name like'_____'

 ---- select *from employees
 ----where first_name like'[abc]%'--1- harfi uchun ishlaydi

 ---- select *from employees
 ----where first_name not like'[abc]%'

 ---- select *from employees
 ----where first_name like'[^abc]%'

 -- select *from employees
 --where first_name like'[a-j]%'

 --select *from Customers
 --where Email like'%z@%'

 
 --select *from Customers
 --where Email like'%e_@%'

 --update employees
 --set first_name=REPLACE(first_name,' ' ,'')

 --select * from job_history
 --where  cast(start_date as date) like'2007%'

 -- select * from job_history
 --where  cast(start_date as date) like'____-01-__'

 ----chech constraint

 --create table users(id int, name varchar(50), email varchar(20) check(email like'%@%.%'), age int check(age>16))
 insert into users values(1,'Ali', 'ali@gmai.com',17)

  --alter table users
  --drop constraint CK__users__email__412EB0B6

  --alter table users
  --drop constraint CK__users__age__4222D4EF


  --alter table users
  --add constraint CH_age check (age>16)

  --alter table users
  --add constraint CH_email  check (email like'%@%.%')

  --alter table users
  --drop constraint CH_age

  --alter table users
  --drop constraint CH_email

  ----defoult constraint


  create table logs(id int identity,log_type varchar(20), log_owner varchar(20) default'Tulqin', log_time datetime default getdate())

 select *from logs
 insert into logs(log_type) values('insert data')

 