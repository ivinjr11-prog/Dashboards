/*Creating database in MySQL*/
create database jun_25;
use jun_25;

/*Creating table in MySQL*/
create table EMP ( ID int(15) unique not null , E_NAME varchar(30) not null, PROFESSION varchar(30) not null , SALARY int(10) not null, primary key (ID));
select *from EMP;

insert into EMP values(0121,"Alex","Plumber",25000),(0122,"Morris","Driver",30000),(0123,"Sony","Gatekeeper",15000);
select *from EMP;

////*Modifying Tables*////

/* Adding new coloumn*/
alter table EMP add AGE int(5) not null;
select *from EMP;


/*Modifying coloumns(changing datatypes)*/
alter table EMP modify column SALARY float(10);
select *from EMP;


/*Rename coloumn*/
alter table EMP rename column PROFESSION to JOB;
select *from EMP;

/*Deleting a column*/
alter table EMP drop column AGE;
select *from EMP;

/*Rename Table*/
alter table EMP rename to EMPL;
select * from EMPL;

