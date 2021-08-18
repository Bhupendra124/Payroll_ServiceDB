create database payroll_service;
use payroll_service;
create table employee_payroll(Id INT NOT NULL auto_increment,
Name varchar(15) NOT NULL,
Gender CHAR(1),
salary decimal(10,2) null,
start date Not	null,
primary key(Id));

select * from employee_payroll;
insert into payroll_service.employee_payroll (name, salary, gender , start) values ('Bhupendra', 10000.00, 'M', '2021-8-19');
insert into payroll_service.employee_payroll (name, salary, gender , start) values ('Ayushi', 20000.00, 'F', '2021-8-17');
insert into payroll_service.employee_payroll (name, salary, gender , start) values ('Bhupendra', 30000.00, 'M', '2021-8-11');
select `salary` from employee_payroll where `name`='Bhupendra';
describe payroll_service.employee_payroll;
select * from payroll_service.employee_payroll where start between cast('2021-08-19' As date) and date(now());
UPDATE employee_payroll
SET Gender = 'M', Name= 'Ayush'
WHERE Id = 2;

UPDATE employee_payroll
SET salary=15000.00
WHERE Name = 'Bhupendra';

describe employee_payroll;
select*from employee_payroll;

select sum(salary) from employee_payroll where Gender ='M' group by Gender;
select sum(salary) from employee_payroll where Gender ='F' group by Gender;

describe employee_payroll;

alter table employee_payroll ADD Phone_Number varchar(250) after name;
alter table employee_payroll add Address varchar(250) after Phone_Number;
alter table employee_payroll add Department varchar(250) after Address;
alter table employee_payroll change Phone_Number Phone_Number varchar(10);
alter table employee_payroll change Department Department  varchar(240);
describe employee_payroll;
 