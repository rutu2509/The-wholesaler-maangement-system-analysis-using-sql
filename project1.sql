create database project;
use project;
create table product1(p_no int primary key,p_name varchar(50));
insert into product1(p_no,p_name)
values(101,"ball"),(102,"bat"),(103,"badminton"),(104,"book");
create table wholesaler1(w_no int primary key,w_name varchar(50),address varchar(50),city varchar(50),f_no int,
foreign key(f_no) references product1(p_no));
insert into wholesaler1(w_no,w_name,address,city,f_no)
values(1,"ram","pune","pune",101),(2,"shyam","mumbai","mumbai",103),(3,"lakshman","nagpur","nagpur",102)
,(4,"seeta","nashik","nashik",104);
select * from wholesaler1 where f_no=104;
select city,count(w_no) as no_of_wholesaler from wholesaler where city="nagar";
insert into wholesaler1 values(5,"neeta","baramati","baramati",104);
select f_no as product_id,count(w_no) as no_of_wholesaler from wholesaler1 group by f_no;
