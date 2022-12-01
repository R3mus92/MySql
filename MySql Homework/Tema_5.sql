-- DDL, DML and DQL combined
-- working on "cinema" database

create database cinema;

create table movies (
Movie varchar (30),
Director varchar (30),
Year int,
Price float
);

alter table movies add column movieId int primary key auto_increment;
alter table movies modify column movieId int auto_increment first;

insert into movies (Movie, Director, Year, Price) values ("Black Adam", "Jaume Collet-Serra",2022,20);
insert into movies (Movie, Director, Year, Price) values ("Mirciulica", "Cristian Ilișuan",2022,15);
insert into movies (Movie, Director, Year, Price) values ("Sonic the Hedgehog", "Jeff Fowler",2020,18);
insert into movies (Movie, Director, Year, Price) values ("Insula", "Anca Damian",2021,21);
insert into movies (Movie, Director, Year, Price) values ("Joker", "Todd Phillips",2019,25);



create table clients(
clientId int not null auto_increment,
FirstName varchar(30),
LastName varchar(30),
dateOfBirth date,
movieId int not null,
email varchar(30),
primary key (clientId),
constraint fk_clients_movies foreign key (movieId) references movies(movieId)
);

insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Robert", "De Niro","1956-03-07",5,"robert_deniro@gmail.com");
insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Martin", "Freeman","1965-04-06",3,"martin_freeman@gmail.com");
insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Angela", "Bassett","1987-09-22",1,"angela_bassett@gmail.com");
insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Lake", "Bell","1989-11-02",3,"lake_bell@gmail.com");
insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Michael", "B. Jordan","1984-05-13",2,"michael_jordan@gmail.com");
insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Sandra", "Bullock","1977-10-23",4,"sandra_bullock@gmail.com");
insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Alicia", "Vikander","1975-02-17",2,"alicia_vikander@gmail.com");
insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Florin", "Piersic","1960-09-11",5,"florin_piersic@gmail.com");
insert into clients(FirstName, LastName, dateOfBirth, movieId, email) values ("Jason", "Robards","1951-12-21",3,"jason_robards@gmail.com");



select * from movies;
select * from clients;
desc movies;
desc clients;

select * from clients where movieId = 5;
select * from clients where movieId = 3;

select * from clients where year(dateOfBirth) > 1980;
select * from clients where FirstName like "J%"; 
select * from clients where FirstName like "%b%"; 
select * from clients where FirstName like "%a"; 

select * from clients where LastName like "F%"; 
select * from clients where LastName like "%c%"; 
select * from clients where LastName like "%t"; 

select * from clients order by dateOfBirth;
select * from clients where dateOfBirth like "198%";
select * from clients where dateOfBirth like "%02";
select * from clients where dateOfBirth like "%04%";
select * from clients where dateOfBirth like "%-09-%";

select * from clients where movieId like "5";

select * from clients cross join movies;

select * from clients inner join movies on clients.clientId = movies.movieId;
select * from movies inner join clients on movies.movieId = clients.clientId;

select * from clients right join movies on clients.clientId = movies.movieId;
select * from clients left join movies on clients.clientId = movies.movieId;

select * from clients left join movies on clients.clientId = movies.movieId where movies.movieId is not null;
select * from clients left join movies on clients.clientId = movies.movieId where movies.movieId is null;

select c.clientId, FirstName, LastName, email, count(Movie) from clients c inner join movies m on c.movieId = m.movieId group by c.clientId, FirstName, LastName; 






