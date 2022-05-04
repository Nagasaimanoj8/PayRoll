-----------UC1---------
create database PayRoll;
use PayRoll;
-----------UC2----------
create table employeee_payroll(
id int identity(1,1) primary key,
Name varchar(200),
Salary float,
StartDate datetime
);
----------UC3----------
insert into employeee_payroll(Name,Salary)
values('Nagasaimanoj',40000),('Jonamiasagan',50000);
--passing data to akk columns so nin need t specify column names--
insert into employeee_payroll
values('NM',4561,'2022-02-01'),('MN',4561,'2022-02-01');

