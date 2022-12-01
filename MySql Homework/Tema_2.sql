-- DML exercise
-- working on "humanresources" database

insert into employees (employeeId, firstName, lastName, dateOfBirth, email, phonenumber, salary) 
values (1,"John", "Johnson","1975-01-01","john@johnson.com","0-800-800-314",1000);

select * from employees;

update employees set dateOfBirth = "1980-01-01" where firstName = "John";

delete from employees;

insert into employees (employeeId, firstName, lastName, dateOfBirth, email, phonenumber, salary) 
values (1,"John", "Johnson","1975-01-01","john@johnson.com","0-800-800-314",1000);

insert into employees (employeeId, firstName, lastName, dateOfBirth, email, phonenumber, salary) 
values (2,"James", "Jameson","1985-02-02","john@johnson.com","0-800-800-999",2000);

