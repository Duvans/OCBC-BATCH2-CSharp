#a buat database
create database staff

#b buat table data_staff
CREATE TABLE data_staff(
nik INT NOT NULL,
nama VARCHAR(50) NOT NULL,
alamat VARCHAR(200) NOT NULL,
handphone VARCHAR(15) NOT NULL
)

select * from data_staff

#c masukkan data kedalam table data_staff
insert into data_staff(nik,nama,alamat,handphone)
values('101','Albert','Pekanbaru','081268503339')

select * from data_staff

#d masukkan lebih dari 1 data kedalam table
insert into data_staff(nik,nama,alamat,handphone)
values('102','Cangry','Medan','081268503340')

insert into data_staff(nik,nama,alamat,handphone)
values('103','Dony','Semarang','081268503341')

select * from data_staff

#e tambahkan kolom baru pada table data_staff ->joindate, masukkan 1 data ke table data_staff 
alter table data_staff add joindate date null

insert into data_staff(nik,nama,alamat,handphone,joindate)
values('104','Lampard','Jakarta','081268503342','2021-11-24')

select * from data_staff

#f tampilkan 2 data sql
select * from data_staff limit 2

#g tampilkan 3 data sql
select * from data_staff limit 3

#h buat table baru staffoutsource dengan isi yang sama seperti data_staff
create table staffoutsource(
nik int not null,
nama varchar(50) not null,
alamat varchar(200) not null,
handphone varchar(15) not null,
joindate date not null
)

select * from staffoutsource 

#i masukkan 10 data baru ke table staffoutsource 
insert into staffoutsource(nik,nama,alamat,handphone,joindate)
values
('105','Ivysaur','Bandung','081212349876','2021-11-21'),
('106','Venusaur','Surabaya','081212346543','2021-11-22'),
('107','Mega Venusaur','Makasar','081212349933','2021-11-23'),
('108','Charmander','Medan','081212349988','2021-11-24'),
('109','Charmeleon','Pekanbaru','081212346767','2021-11-25'),
('110','Charizard','Pontianak','081212344567','2021-11-26'),
('111','Mega Charizard','Gorontalo','081212348877','2021-11-27'),
('112','Squirtle','Jogja','081212342233','2021-11-28'),
('113','Wartortle','Solo','081212343434','2021-11-29'),
('114','Blastoise','Padang','081212348787','2021-11-30')

select * from staffoutsource 

#j tampilkan data pada 2 table yang sudah kalian buat dengan joindate yang sama
select * from data_staff inner join staffoutsource 
on data_staff.joindate = staffoutsource.joindate

#k tampilkan seluruh data sebelah kanan yang sama pada kedua table
select * from data_staff right join staffoutsource 
on data_staff.joindate  = staffoutsource.joindate

#l tampilkan seluruh data staff sebelah kiri yang punya nilai tidak sama akan bernilai null
select * from data_staff left join staffoutsource 
on data_staff.joindate = staffoutsource.joindate

#m tampilkan seluruh data antara 2 tabel baik itu tidak punya kesamaan dan bernilai null
create view dssos as select * from data_staff union all select * from staffoutsource

select * from dssos 







