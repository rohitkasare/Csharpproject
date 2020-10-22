create database vbds

create table CompanyMaster(Id int primary key, Name varchar(20), data DECIMAL (4, 2))

create table FileMaster(Id int primary key, FileName varchar(20), CompanyId int,foreign key (CompanyId) references CompanyMaster(Id)ON DELETE SET null)

select * from CompanyMaster

select * from FileMaster