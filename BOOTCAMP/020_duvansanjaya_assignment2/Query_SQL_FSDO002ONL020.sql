#Assignment 2 - buat database bank
create database Bank

use Bank

#1
#buat table Customers 
create table Customers(
	customerNumber int primary key,
	customerName varchar(50) not null,
	contactLastName varchar(20) not null,
	contactFirstName varchar(20) not null,
	phone varchar(20) not null,
	addressLine1 varchar(50) not null,
	addressLine2 varchar(50) not null,
	city varchar(20) not null,
	state varchar(20) not null,
	postalCode int not null,
	country varchar(20) not null,
	salesRepEmployeeNumber int not null,
	creditLimit int not null
)

#stores data ke table Customers 
insert into Customers(customerNumber,customerName,contactLastName,contactFirstName,phone,addressLine1,addressLine2,city,state,postalCode,country,salesRepEmployeeNumber,creditLimit)
values('1','Duvan Sanjaya','Sanjaya','Duvan','081268503339','Jl.Durian','Jl.Mangga','Pekanbaru','Riau','28292','Indonesia','101','1000000')

insert into Customers(customerNumber,customerName,contactLastName,contactFirstName,phone,addressLine1,addressLine2,city,state,postalCode,country,salesRepEmployeeNumber,creditLimit)
values('2','Muhammad Rizky','Rizky','Muhammad','081268584000','Jl.Kapas','Jl.Besi','Medan','Sumatera Utara','28234','Indonesia','102','4000000')

select * from Customers 

#2
#buat table Products
create table Products(
	productCode int primary key,
	productName varchar(50) not null,
	productLine varchar(50) not null,
	productScale int not null,
	productVendor varchar(50) not null,
	productDescription varchar(100) not null,
	qualityInStock int not null,
	buyPrice int not null,
	MSRP int not null
)

#Stores daftar ke table Products 
insert into Products(productCode, productName,productLine,productScale,productVendor,productDescription,qualityInStock,buyPrice,MSRP)
values('1001','CBR150R','Honda Motor','1','Honda','Hemat Energi','10','30000000','28000000')

insert into Products(productCode, productName,productLine,productScale,productVendor,productDescription,qualityInStock,buyPrice,MSRP)
values('1002','ZX10R','Kawasaki Ninja','2','Kawasaki','Super Cepat','20','100000000','99000000')

select * from Products 

#3
#buat table Productlines
create table Productlines(
	productLine varchar(50) primary key,
	textDescription varchar(100) not null,
	htmlDescription varchar(100) not null,
	image blob not null
)

#Stores daftar ke table Productlines 
insert into Productlines(productLine,textDescription,htmlDescription,image)
values('Honda Motor','Honda Motor terhemat','hondamotor.html','hondamotor.blob')

insert into Productlines(productLine,textDescription,htmlDescription,image)
values('Kawasaki Ninja','Kawasaki Ninja tercepat','kawasakininja.html','kawasakininja.blob')

select * from Productlines 

#4
#buat table Orders
create table Orders(
	orderNumber int primary key,
	orderDate date not null,
	requiredDate date not null,
	shippedDate date not null,
	status varchar(20) not null,
	comments varchar(100) not null,
	customerNumber int not null
)

#stores status ke table Orders 
insert into Orders(orderNumber,orderDate,requiredDate,shippedDate,status,comments,customerNumber)
values('1','2021-11-24','2021-11-25','2021-11-26','Dikemas','Menunggu Konfirmasi','1')

insert into Orders(orderNumber,orderDate,requiredDate,shippedDate,status,comments,customerNumber)
values('2','2021-11-27','2021-11-28','2021-11-29','Dikirim','Proses Selesai','2')

select * from Orders 

#5
#buat table OrderDetails
create table OrderDetails(
	orderNumber int primary key,
	productCode int not null,
	quantityOrdered int not null,
	priceEach int not null,
	orderLineNumber int not null
)

#store item order sales
insert into OrderDetails(orderNumber,productCode,quantityOrdered,priceEach,orderLineNumber)
values('1','1001','10','30000000','1')

insert into OrderDetails(orderNumber,productCode,quantityOrdered,priceEach,orderLineNumber)
values('2','1002','20','100000000','2')

select * from OrderDetails 

#6
#buat table Payments
create table Payments(
	customerNumber int primary key,
	checkNumber int not null,
	paymentDate date not null,
	amount int not null
)

#store pembayaran oleh customer
insert into Payments(customerNumber,checkNumber,paymentDate,amount)
values('1','10001','2021-11-26','10')

insert into Payments(customerNumber,checkNumber,paymentDate,amount)
values('2','10002','2021-11-28','20')

select * from Payments 

#7
#buat table Employee
create table Employee(
	employeeNumber int primary key,
	lastName varchar(20) not null,
	firstName varchar(20) not null,
	extension varchar(20) not null,
	email varchar(50) not null,
	officeCode varchar(50) not null,
	reportsTo varchar(50) not null,
	jobTitle varchar(50) not null
)

#store informasi karyawan
insert into Employee(employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle)
values('1','Juan','Pablo','January','juanpablo@gmail.com','1xx1','Che','Manager')

insert into Employee(employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle)
values('2','Manila','Pacquiao','February','pacquiaomanila@gmail.com','1xx2','Guevara','CEO')

select * from Employee 

#8
#buat table Offices
create table Offices(
	officeCode varchar(50) primary key,
	city varchar(20) not null,
	phone varchar(20) not null,
	addressLine1 varchar(50) not null,
	addressLine2 varchar(50) not null,
	state varchar(20) not null,
	country varchar(20) not null,
	postalCode int not null,
	territory varchar(20) not null
)

#store data sales office
insert into Offices(officeCode,city,phone,addressLine1,addressLine2,state,country,postalCode,territory)
values('11x11','Pekanbaru','081245455656','Jl.Nenas','Jl.Melon','Riau','Indonesia','28292','Payung Sekaki')

insert into Offices(officeCode,city,phone,addressLine1,addressLine2,state,country,postalCode,territory)
values('11x12','Medan','081294948383','Jl.Kapas','Jl.Besi','Sumatera Utara','Indonesia','28296','Kampung Lalang')

select * from Offices 
