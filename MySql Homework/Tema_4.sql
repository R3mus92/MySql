-- Joins exercises
-- working on "humanresources" database

create table smoke_tests(id int, name varchar(100), steps varchar(300));
create table regression_tests(id int, name varchar(100), steps varchar(300));

insert into smoke_tests(id, name, steps) values (1,'tc1','3 steps'),(2,'tc2',' 2 steps');
insert into regression_tests(id, name, steps) values (1, 'tc1','3 steps'),(3,'tc3','4 steps');

select * from smoke_tests join regression_tests;
select * from smoke_tests inner join regression_tests on smoke_tests.name = regression_tests.name;
select * from smoke_tests left join regression_tests on smoke_tests.name = regression_tests.name;
select * from smoke_tests right join regression_tests on smoke_tests.name = regression_tests.name;

select * from smoke_tests order by steps;
select id, name from smoke_tests group by name;
select id, name, steps from smoke_tests group by id having id<2;

select id as Indentifier, name, steps from regression_tests;

select * from regression_tests limit 1;
