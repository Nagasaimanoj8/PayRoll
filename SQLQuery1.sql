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
insert into employeee_payroll(Name,Salary )
values('Nagasaimanoj',40000),('Jonamiasagan',50000);
--passing data to akk columns so nin need t specify column names--
insert into employeee_payroll
values('NM',4561,'2022-02-01'),('MN',4561,'2022-02-01');
-----------UC4------------
select * from employeee_payroll;
select id,Name from employeee_payroll;
--------------UC5----------------
select * from employeee_payroll where name='NM';
select * from employeee_payroll where StartDate between cast('1999-08-09' as date) and getdate();
--------------UC6---------
update employeee_PayRoll set StartDate='1999-08-09'where id=1 ;
--------------adding gender column------
select * from employeee_payroll;
alter table employeee_payroll add Gender char(1);
update employeee_payroll set Gender='M';
-------INSERTING FEMALE----------
insert into employeee_payroll
values('Emily',79852,'2022-02-01','F'),('Lisbon',41547,'2022-02-06','F');
-------------------UC7 SUM,AVG,MIN,MAX,COUNT---------------
select * from employeee_payroll;
select sum(Salary) as Totalsalary from employeee_payroll;
select Min(Salary) as Minimum from employeee_payroll;
select Max(Salary) as Maximum from employeee_payroll;
select AVG(Salary) as Average from employeee_payroll;
select COUNT(Salary) as Count from employeee_payroll;
select * from employeee_payroll;
select Max(Salary),Gender from employeee_payroll group by gender;
---UC8store employee information like employee phone,addressand department--
Alter Table employeee_payroll add phone bigint;
alter table employeee_payroll add Department varchar(200) not null default 'IT';
alter table employeee_payroll add Address varchar(200) default 'ap';
----------------droping column----------------
alter table employeee_payroll alter column Department bigint;
---------------------UC9EXTENDEMPLOYEE_PAYROLL---------------	
exec sp_rename 'employeee_payroll.salary','BasicPay','COLUMN';
select * from employeee_payroll 
alter table employeee_payroll add deduction float ,TaxablePay float,IncomeTax float,NetPay float;
---------------------UC10Make Terissa as part ofSales and Marketing Department-----------
insert into employeee_payroll(Name,BasicPay,sales)
values('Terisa',400000,'yes')
select * from employeee_payroll where name= 'Terisa';
Alter Table employeee_payroll add Sales Varchar(100);




