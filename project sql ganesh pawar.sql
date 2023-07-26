Create database basics;
show databases;

use basics;

create table product(p_code int,p_name varchar(100),price int,stocks int,catagory varchar(100));

desc product;

insert into product values (1,'tulip',100,5,'perfume'),
(2,'cornoto',150,4,'icecream'),
(3,'pen',10,52,'stationary'),
(4,'lays',10,20,'snacks');
select*from product;

create table customer (c_id int,c_name varchar(100),c_loc varchar(100),c_no bigint);
desc customer;


insert into customer values(111,'nisha','kerala',9988776655),
(112,'nila','delhi',8877443398),
(113,'mohan','mumbai',7766332123),
(114,'raj','banglore',9876543210),
(115,'max','kerala',8877659085);

select*from customer;

create table sales(o_date date,o_no int,c_id int,c_name varchar(100),p_code int,p_name varchar(100), quantity int,price int);
desc sales;
drop table sales;
insert into sales values ('2014-10-05',1,111,'nisha',1,'tulip',5,100),
('2015-04-11',2,112,'nila',2,'cornato',4,150),
('2017-08-20',3,113,'mohan',3,'pen',52,10),
('2016-11-21',4,114,'raj',4,'lays',20,10);
select*from sales;

Alter table sales 
Add s_no int,
add catagory varchar(100);

Select*from sales;

alter table product
modify stocks varchar(100);



rename table customer to customer_details;

alter table sales 
drop s_no,drop catagory;
select*from sales;


 select o_no,c_id,o_date,price,quantity 
  from sales;
  select*from sales;
  
select* from product
where catagory=('stationary');

select*from product;

Select distinct catagory
From product;

select*from sales;

select quantity,price
from sales
where quantity >=2 and price<=500;

select*from customer
where name like '%A';

select* from product
 order by price  desc;
 
 Select p_code, catagory
from product
where p_code>=2;


