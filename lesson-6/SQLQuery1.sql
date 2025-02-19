--create database Class_6
--offsett fetch pejination uchun hisoblanadi, pejination- bu mo'lum miqdordagi ROWlarni tashlab
--kryingi ma'lum miqdordagi	ROWLARNI olishga mo'ljallangan. buning uchun ORDER BY  key wortidan foydalanamiz
--isnull , len, coalesce
--aliases, unions
--case
--select *from employees
--ORDER BY salary	OFFSET 10	rows FETCH next 5 rows only  

--CREATE TABLE users(id int, name varchar(20))
--insert into users values(1, 'John'),(2, 'Ali'),(3, null),(4,'Jack'),(5, null)

--select  *, len(name) as har from users

--select *, isnull(name ,'no mame') from  users
--select id user_id, isnull(name, 'no name ') as f_name from users

--coalesce() funcsiya

--select coalesce(null, null, 1,'John','Bob',null)

--UNIONS 
--unions
--union all-combine all rows
--union
--intersect
--except

----------------------------


--CREATE table tbl_1(num int)
--insert into tbl_1 values(1),(2),(3),(4)

--CREATE table tbl_2(num int)
--insert into tbl_2 values(3),(4),(5),(6)

--select num as n from tbl_1
--union all
--select num from tbl_2

--select num as n from tbl_1
--union 
--select num from tbl_2

--select num as n from tbl_1
--intersect
--select num from 

--select num as n from tbl_1
--union 
--select num from tbl_2

--select num as n from tbl_1
--intersect --ikkala columda bir xillarini oladi 
--select num from tbl_2

select num as n from tbl_1
except-- birinchi tablisada bulgan, ikkinchi tablisada bulmagan rowlarni chiqaradi
select num from tbl_2

--CASE  conditional column

--select first_name, last_name, salary,
--	case
--		when salary<9000 then 'lov salary'
--		else 'higt salary'
--	end
--from employees
--order by salary
	

select first_name, last_name, hire_date,  
	case
		when MONTH(hire_date) in (12,1,2) then 'Winter' 
		when MONTH(hire_date) in (3,4,5) then 'Spring' 
		when MONTH(hire_date) in (6,7,8) then 'Summer'
		else 'Autumn'
	end as season
from employees

select *from employees
