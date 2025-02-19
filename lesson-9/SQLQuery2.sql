--select YEAR(hire_date)as year, max(salary)as max, MIN(salary)as min, job_id from employees
--group by YEAR(hire_date) ,job_id
--select salesman_id, MONTH(ord_date)as month, SUM(purch_amt)as sum from Orders
--group by salesman_id, MONTH(ord_date)
--order by salesman_id, MONTH(ord_date)

----sum-- max, min avg
----counnt
--create table testtable (numbers int)
--insert into testtable values(1),(2),(null),(3),(4),(null)


----count
--select count(*) from testtable
--select count(numbers) as count from testtable
--select count(1) as caunt from testtable

--select customer_id, COUNT(ord_no) from Orders
--group by customer_id

------build in function ---
---string functions
---math functions---
---date functions---

---func(args)==value qaytariladi

select ASCII(first_name) from employees

select ASCII('A')
 
 select CHARINDEX('John','Hello John, my name is John', 10)