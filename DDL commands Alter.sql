create database ddl_aug24;
use ddl_aug24;

############################# Create Table ##########################
create table employee(emp_id int, emp_name varchar(20), department varchar(20), salary float);

insert into employee values(22, 'vijay', 'aids', 1000);
insert into employee values(21, 'aijay', 'aids', 1007);

############################ If not clause ###########################
create table if not exists employee(emp_id int, emp_name varchar(20), department varchar(20), salary float);
show tables;

################## Way 3 to create a table ##############
create table emp_new_using_select as select * from employee;
desc emp_new_using_select;
show tables;

create table emp2 as select * from employee where emp_id=22;
select * from emp2;

create table emp3 as select emp_name from employee;
select * from emp3;

######################## Alter cammand #############

#1) Add new column
alter table employee add column department_id int;
desc employee;

alter table employee add column project varchar(20);
desc employee;

#2) modify the datatype 
alter table employee modify column salary decimal;
desc employee;

alter table employee modify column project varchar (50);
desc employee;

#imp:-3) rename a column
alter table employee change emp_name  employee_name varchar(40);
select * from employee;

#4) drop a column
alter table employee drop age;
desc employee;

#5)add constraints 
alter table employee add constraint unique (employee_name);
desc employee;

#6) not null
#alter table employee add constraint not null ();

#7) set default
alter table employee alter column project set default "New Project";
desc employee;

#8) check constraint
alter table employee add constraint check (salary>0);
desc employee;

insert into employee values (24, "Abhay", 'DBDA', -3, default);#error check constraint is voilated 
insert into employee values (24, "Abhay", 'DBDA', 3000, default);
select * from employee;

#9) Primary key 
alter table employee add primary key (emp_id);
desc employee;

#10) not null
alter table employee modify employee_name varchar(80) not null;
desc employee;

#11)  adding Foreign key constraint
create table department(dep_id int primary key, dep_name varchar(30), location varchar (30));
desc employee;

alter table employee add constraint foreign key (department_id) references department (dep_id);
desc employee;

# imp:- 12)  Rename a table
alter table employee rename to new_emp;
show tables;

#13) drop Primary key
alter table new_emp drop primary key;
desc new_emp;

#14) truncate
create table employee(emp_id int, emp_name varchar(20), department varchar(20), salary float);

insert into employee values(22, 'vijay', 'aids', 1000);
insert into employee values(21, 'aijay', 'aids', 1007);

select * from employee;

truncate table employee;
select * from employee;
desc employee;

#truncate will only delete the values in database but the table do exist.

#15) drop
drop table employee;
show tables;

#drop will delete the table from the database.
