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

