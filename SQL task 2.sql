


/*Create Relational Tables*/

use jun_25;

    create table Departments (
    department_id int(10) primary key auto_increment ,
    department_name varchar(100) not null,
    location varchar(100));
    
    create table Employees (
    employee_id int primary key auto_increment,
    emp_name varchar(50),
    email varchar(100) unique,
    job_title varchar(50),
    department_id int,
   foreign key (department_id) references Departments(department_id));
    
    
    
    /*Join Tables Using a Common Field*/
    
    select * from departments inner join employees on 
    departments.department_id=employees.department_id;
    
    
    /*Modify Existing Tables*/

    alter table employees add column hire_date date;
    
    
    /*Update Column Name*/
    
    alter table employees rename column  emp_name to employee_name;
    
    
	/*Remove an Unused Column*/
    
    alter table employees drop column email;