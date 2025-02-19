--create database Class_13

create table orders (id int identity, product_id int, units int, order_date date)
insert into orders values (1, 10, '2024-10-10')
insert into orders values (1, 5, '2024-10-13')
insert into orders values (2, 10, '2024-10-10')
insert into orders values (2, 15, '2024-10-12')
insert into orders values (3, 10, '2024-10-11')
insert into orders values (4, 10, '2024-10-12')
insert into orders values (5, 10, '2024-10-13')


create table products (id int, product_name varchar(20), price int, price_s_date date, price_e_date date)
insert into products values (1, 'Headphones', 10, '2024-10-09', '2024-10-11')
insert into products values (1, 'Headphones', 9, '2024-10-12', '2024-10-14')
insert into products values (2, 'Phone', 500, '2024-10-12', '2024-10-14')
insert into products values (2, 'Phone', 600, '2024-10-15', '2024-10-24')
insert into products values (3, 'TV', 500, '2024-10-12', '2024-10-14')
insert into products values (4, 'Laptop', 1000, '2024-10-11', '2024-10-14')
insert into products values (5, 'PC', 800, '2024-10-15', '2024-10-20')

select * from products
select * from orders