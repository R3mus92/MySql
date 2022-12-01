-- DQL exercise
-- working on "humanresources" database

select * from employees;
select firstName, lastName from employees;
select * from employees where lastName = "Johnson";

select * from employees where lastName like "J%";
select * from employees where left(lastName,1) = 'J';

select * from employees where lastName like "%so%";

select * from employees where year(dateOfBirth) > 1980;
select * from employees where year(dateOfBirth) > 1980 and firstName = "John";
select * from employees where year(dateOfBirth) > 1980 or firstName = "John";
select * from employees where lastName not like "Jameson"; 

select max(salary) from employees;
select min(salary) from employees;
select avg(salary) from employees;

