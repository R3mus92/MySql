-- DDL exercise
-- working on "humanresources" database

CREATE database humanresources;

CREATE TABLE employees (
employeeId int,
firstName varchar (100),
lastName varchar (100),
dateOfBirth date,
postalAddress varchar(200)
);

alter table employees add column phoneNumber varchar (100); 
alter table employees add column email varchar (100);
alter table employees add column salary int;

desc employees;

alter table employees drop column postalAddress;

CREATE TABLE employeeAddresses (
country varchar (30)
);

drop table employeeAddresses;


select * from employees;
select * from employeeAddresses
