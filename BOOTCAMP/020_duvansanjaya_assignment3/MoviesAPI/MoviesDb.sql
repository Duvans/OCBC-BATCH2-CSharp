create database Movie

use Movie

create table MoviesDb(
	Id int auto_increment primary key,
	Name varchar(50) not null,
	Genre varchar(25) not null,
	Durasion varchar(50) not null,
	ReleaseDate varchar(25) not null
)

alter table MoviesDb modify column Name varchar(50) not null

insert into MoviesDb (Name,Genre,Durasion,ReleaseDate)
values('Bad Boys for Life','Action/Comedy','2h 5 mins','2020-01-23 00:00:00'),
('John Wick','Action/Thriller','1h 41 mins','2014-10-24 00:00:00'),
('The Martian','Sci-fi/Drama','2h 31 mins','2015-10-02 00:00:00'),
('How to Train Your Dragon: The Hidden World','Animation/Family','1h 45 mins','2019-02-22 00:00:00')

select * from MoviesDb