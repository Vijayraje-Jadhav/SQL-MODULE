#Q 1)Write a a sql statement to create a simple table of countries including columns country_id, country_name and region_id.

create database assignment1;
use assignment1;

create table countries (country_id int, country_name varchar(20), region_id varchar(20));
desc countries;

#Q 2) Write a sql statement to create a simple table of countries including columns country_id, country_name and region_id which already exits.
 
 create table  if not exists countries  (country_id int, country_name varchar(20), region_id varchar(20));
 desc countries;
 
 #Q 3) Write a sql statement to create the structure of a table dup_countries similar to countries .
 
 create table dup_countries select * from countries;
 desc dup_countries;
 
 #Q 4) Write a sql statement to create a duplicate copy of countries table including structre and data by name dup_countries.
create table dup_country select * from dup_countries;
desc dup_country;

#Q 5) Write a sql statement to create a table where countries set a constraint null.
alter table countries modify  region_id varchar(20) not null;
desc countries;

#Q 6) Write a sql statement to create a table named jobs including columns job_id, job_title, min_salary, max_salary and check wheather the max salary amount exceeds the maximum limits 25000.alter
create table jobs(job_id int , job_title varchar(20), min_salary float, max_salary int check (max_salary <25000));
desc jobs;

insert into jobs values (2, 'analyst', 15000, 50000);
insert into jobs values (2, 'analyst', 15000, 24000);

select * from jobs;

#Q 7) Write a sql statement to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except italy , india , china will be enter in the table.
create table countries_1 (country_id int, country_name varchar(20), check  (country_name in ('India', 'Italy', 'China')),region_id varchar(20)
);

insert countries_1 values (44, 'Vidharbh', 'Maharashtra');
insert countries_1 values (44, 'India', 'Maharashtra');

#Q 8) Write a sql statement to create a table named job_histry insluding columns employee_id, start_date, end_date , job_id, and department_id, and make sure that the value against column end_date will be entred at the time of insertion to the format like dd-mm-yyyy

create table job_histry (employee_id int,  start_date date, end_date date, check (end_date in ('dd/mm/yyyy' )), job_id int, department_id int);
select end_date from employees where date_format(end_date,'dd/mm/yyyy');

#Q 9) Write a sql statement to create a table named countries including columns country_id, country_name and region_id and make sure that no duplicate data against column country_id will be allowed at the time of insertion.
create table countries_3 (country_id int unique, country_name varchar(20), region_id varchar(20));
desc countries_3;

#Q 10) Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.
create table jobs2(job_id int , job_title varchar(20) default (''), min_salary float default (8000), max_salary int default null);

insert into jobs2 (job_id)values(2);
select * from jobs2;

################################## Alter ########################

#Q 1) Write a SQL statement to rename the table countries to country_new.
desc countries;
alter table countries rename to country_new ;
desc country_new;

#Q 2) Write a SQL statement to add a column region_id to the table locations.
create table location (location_id int, location_name varchar (20));
desc location;

alter table location add column region_id varchar(20);
desc location;

#Q 3) Write a SQL statement to add a column ID as the first column of the table locations.
create table location_new (id int);
alter table location_new add column (location_id int, location_name varchar (20));
drop table location;
alter table location_new rename to location;
desc location;

#Q 4) Write a SQL statement to add a column region_id after state_province to the table locations.
alter table location add column (state_province varchar(20),region_id varchar(20));
desc location;

#Q 5) Write a SQL statement to change the data type of the column region_id to integer in the table locations
alter table location change region_id  region_id int;
desc location;

#Q 6) Write a SQL statement to drop the column state_province from the table locations.

alter table location drop column state_province;
desc location;

#Q 7) Write a SQL statement to change the name of the column region_id to region, keeping the data type and size same.
alter table location change region_id region int;
desc location;

#Q 8) Write a SQL statement to add a primary key for the columns location_id in the locations table.
alter table location add primary key  (location_id );
desc location;

#Q 9) Write a SQL statement to add a primary key for a combination of columns location_id and id.
alter table location drop primary key ;
desc location;
alter table location add primary key (id, location_id);

# Q 10) Write a SQL statement to drop the existing primary from the table locations on a combination of columns location_id and id.
alter table location drop primary key;
desc location;

# Q 11) Write a SQL statement to add a foreign key on the job_id column of the job_history table referencing the primary key job_id of the jobs table.
desc jobs2;
create table job_history (employee_id int,  start_date date, end_date date, dep_id int);
desc job_history;
alter table jobs2 add primary key (job_id);
alter table job_history add primary key (employee_id);
alter table job_history add foreign key (dep_id) references jobs2(job_id);

# Q 12)  Write a SQL statement to add a foreign key constraint named fk_job_id on the job_id column of the job_history table referencing the primary key job_id of jobs table.
# same as shown above

# Q 13) Write a SQL statement to drop the existing foreign key fk_job_id from the job_history table on the job_id column which is referencing the job_id of jobs table.


alter table job_history drop foreign key dep_id  ;# It will require the cascading and has to remove the dependancy from the other table..

# Q 14)Write a SQL statement to add an index named indx_job_id on job_id column in the table job_history.
create index  index_job_id on job_history(job_id);
show index from job_history;

# Q 15)  Write a SQL statement to drop the index indx_job_id from job_history table.
drop index index_job_id on job_history;

############################### Assignment on Insert ################################

# Q 1) Write a SQL statement to insert a record with your own value into the table countries against each columns.
create table countries3 (country_id varchar(20), country_name varchar(50), region_id decimal(10,0));
desc countries3;


INSERT INTO countries3 (country_id, country_name, region_id) VALUES 
    (1, 'India', 2),
    (2, 'Pakistan', 0),
    (3, 'Afghanistan', 1);
    select * from countries3;
    
# Q 2) Write a SQL statement to insert one row into the table countries against the column country_id and country_name.
insert into countries3 (country_id, country_name)values (4, 'Bangladesh');
    select * from countries3;
    
#Q 3) Write a SQL statement to create a duplicate of countries table named country_new with all structure and data.
create table country_new4 as select * from countries3;
select * from country_new4;

#Q 4) Write a SQL statement to insert NULL values against the region_id column for a row of countries table.
insert into countries3 values (5,'nepal', null);
select * from countries3;

#Q 5) Write a SQL statement to insert 3 rows by a single insert statement.

#shown in above

#Q 6) Write a SQL statement insert rows from country_new table to countries table. Here are the rows for the country_new table. Assume that the country's table is empty.

insert into countries3 select * from country_new4;
select * from countries3;

#Q 7) Write a SQL statement to insert one row in the jobs table to ensure that no duplicate value will be entered in the job_id column.
create table jobs5 (job_id int unique, job_name varchar(10));

insert into jobs5 values (1,'aug');
insert into jobs5 values (1,'aug');

# Q 9) Write a SQL statement to insert a record into the table countries to ensure that a country_id and region_id combination will be entered once in the table.
select * from country_new4;
update country_new4 set region_id = 7 where country_id=4;

alter table country_new4 add primary KEY (country_id, region_id);
desc country_new4;

# Q 10) Write a SQL statement to insert rows into the table countries in which the value of the country_id column will be unique and auto incremented.
alter table country_new4 drop PRIMARY KEY;
alter table country_new4   add primary key (country_id);

alter table country_new4  modify country_id int   ;
alter table country_new4  modify country_id int AUTO_INCREMENT ;

insert into country_new4 (country_name , region_id) values (
('afrika', 9),
('antar',1));

# Q 11) Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain any duplicate data and this will be automatically incremented and the column country_name will be filled up by 'N/A' if no value assigned for that column.
alter table country_new4 alter column country_name set default 'N/A';
desc country_new4;

#Q 12) Write a SQL statement to insert rows in the job_history table in which one column job_id is containing those values which exist in the job_id column of the jobs table.
CREATE TABLE job_history2 (
    employee_id INT,
    job_id VARCHAR(10),
    department_id INT,
    start_date DATE,
    end_date DATE
);


#################################### alias ###############################


CREATE TABLE IF NOT EXISTS `employees` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`),
  UNIQUE KEY `EMP_EMAIL_UK` (`EMAIL`),
  KEY `EMP_DEPARTMENT_IX` (`DEPARTMENT_ID`),
  KEY `EMP_JOB_IX` (`JOB_ID`),
  KEY `EMP_MANAGER_IX` (`MANAGER_ID`),
  KEY `EMP_NAME_IX` (`LAST_NAME`,`FIRST_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('100', 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000.00', '0.00', '0', '90'),
('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', '17000.00', '0.00', '100', '90'),
('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', '17000.00', '0.00', '100', '90'),
('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', '9000.00', '0.00', '102', '60'),
('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', '6000.00', '0.00', '103', '60'),
('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', '4200.00', '0.00', '103', '60'),
('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', '12000.00', '0.00', '101', '100'),
('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', '9000.00', '0.00', '108', '100'),
('110', 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', '8200.00', '0.00', '108', '100'),
('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', '7700.00', '0.00', '108', '100'),
('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1987-06-29', 'FI_ACCOUNT', '7800.00', '0.00', '108', '100'),
('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', '6900.00', '0.00', '108', '100'),
('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', 'PU_MAN', '11000.00', '0.00', '100', '30'),
('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1987-07-02', 'PU_CLERK', '3100.00', '0.00', '114', '30'),
('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1987-07-03', 'PU_CLERK', '2900.00', '0.00', '114', '30'),
('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1987-07-04', 'PU_CLERK', '2800.00', '0.00', '114', '30'),
('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1987-07-05', 'PU_CLERK', '2600.00', '0.00', '114', '30'),
('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1987-07-06', 'PU_CLERK', '2500.00', '0.00', '114', '30'),
('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1987-07-07', 'ST_MAN', '8000.00', '0.00', '100', '50'),
('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '1987-07-08', 'ST_MAN', '8200.00', '0.00', '100', '50'),
('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '1987-07-09', 'ST_MAN', '7900.00', '0.00', '100', '50'),
('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '1987-07-10', 'ST_MAN', '6500.00', '0.00', '100', '50'),
('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1987-07-11', 'ST_MAN', '5800.00', '0.00', '100', '50'),
('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '1987-07-12', 'ST_CLERK', '3200.00', '0.00', '120', '50'),
('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '1987-07-13', 'ST_CLERK', '2700.00', '0.00', '120', '50'),
('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', '1987-07-14', 'ST_CLERK', '2400.00', '0.00', '120', '50'),
('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '1987-07-15', 'ST_CLERK', '2200.00', '0.00', '120', '50'),
('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '1987-07-16', 'ST_CLERK', '3300.00', '0.00', '121', '50'),
('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '1987-07-17', 'ST_CLERK', '2800.00', '0.00', '121', '50'),
('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '1987-07-18', 'ST_CLERK', '2500.00', '0.00', '121', '50'),
('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '1987-07-19', 'ST_CLERK', '2100.00', '0.00', '121', '50'),
('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1987-07-20', 'ST_CLERK', '3300.00', '0.00', '122', '50'),
('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '1987-07-21', 'ST_CLERK', '2900.00', '0.00', '122', '50'),
('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', '1987-07-22', 'ST_CLERK', '2400.00', '0.00', '122', '50'),
('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '1987-07-23', 'ST_CLERK', '2200.00', '0.00', '122', '50'),
('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '1987-07-24', 'ST_CLERK', '3600.00', '0.00', '123', '50'),
('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '1987-07-25', 'ST_CLERK', '3200.00', '0.00', '123', '50'),
('139', 'John', 'Seo', 'JSEO', '650.121.2019', '1987-07-26', 'ST_CLERK', '2700.00', '0.00', '123', '50'),
('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '1987-07-27', 'ST_CLERK', '2500.00', '0.00', '123', '50'),
('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1987-07-28', 'ST_CLERK', '3500.00', '0.00', '124', '50'),
('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1987-07-29', 'ST_CLERK', '3100.00', '0.00', '124', '50'),
('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1987-07-30', 'ST_CLERK', '2600.00', '0.00', '124', '50'),
('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1987-07-31', 'ST_CLERK', '2500.00', '0.00', '124', '50'),
('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1987-08-01', 'SA_MAN', '14000.00', '0.40', '100', '80'),
('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '1987-08-02', 'SA_MAN', '13500.00', '0.30', '100', '80'),
('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '1987-08-03', 'SA_MAN', '12000.00', '0.30', '100', '80'),
('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '1987-08-04', 'SA_MAN', '11000.00', '0.30', '100', '80'),
('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '1987-08-05', 'SA_MAN', '10500.00', '0.20', '100', '80'),
('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '1987-08-06', 'SA_REP', '10000.00', '0.30', '145', '80'),
('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '1987-08-07', 'SA_REP', '9500.00', '0.25', '145', '80'),
('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '1987-08-08', 'SA_REP', '9000.00', '0.25', '145', '80'),
('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '1987-08-09', 'SA_REP', '8000.00', '0.20', '145', '80'),
('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '1987-08-10', 'SA_REP', '7500.00', '0.20', '145', '80'),
('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '1987-08-11', 'SA_REP', '7000.00', '0.15', '145', '80'),
('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', '1987-08-12', 'SA_REP', '10000.00', '0.35', '146', '80'),
('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '1987-08-13', 'SA_REP', '9500.00', '0.35', '146', '80'),
('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '1987-08-14', 'SA_REP', '9000.00', '0.35', '146', '80'),
('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '1987-08-15', 'SA_REP', '8000.00', '0.30', '146', '80'),
('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '1987-08-16', 'SA_REP', '7500.00', '0.30', '146', '80'),
('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '1987-08-17', 'SA_REP', '7000.00', '0.25', '146', '80'),
('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '1987-08-18', 'SA_REP', '10500.00', '0.25', '147', '80'),
('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '1987-08-19', 'SA_REP', '9500.00', '0.15', '147', '80'),
('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '1987-08-20', 'SA_REP', '7200.00', '0.10', '147', '80'),
('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', '1987-08-21', 'SA_REP', '6800.00', '0.10', '147', '80'),
('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '1987-08-22', 'SA_REP', '6400.00', '0.10', '147', '80'),
('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '1987-08-23', 'SA_REP', '6200.00', '0.10', '147', '80'),
('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '1987-08-24', 'SA_REP', '11500.00', '0.25', '148', '80'),
('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '1987-08-25', 'SA_REP', '10000.00', '0.20', '148', '80'),
('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '1987-08-26', 'SA_REP', '9600.00', '0.20', '148', '80'),
('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '1987-08-27', 'SA_REP', '7400.00', '0.15', '148', '80'),
('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '1987-08-28', 'SA_REP', '7300.00', '0.15', '148', '80'),
('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '1987-08-29', 'SA_REP', '6100.00', '0.10', '148', '80'),
('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1987-08-30', 'SA_REP', '11000.00', '0.30', '149', '80'),
('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '1987-08-31', 'SA_REP', '8800.00', '0.25', '149', '80'),
('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1987-09-01', 'SA_REP', '8600.00', '0.20', '149', '80'),
('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '1987-09-02', 'SA_REP', '8400.00', '0.20', '149', '80'),
('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1987-09-03', 'SA_REP', '7000.00', '0.15', '149', '0'),
('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '1987-09-04', 'SA_REP', '6200.00', '0.10', '149', '80'),
('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '1987-09-05', 'SH_CLERK', '3200.00', '0.00', '120', '50'),
('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '1987-09-06', 'SH_CLERK', '3100.00', '0.00', '120', '50'),
('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '1987-09-07', 'SH_CLERK', '2500.00', '0.00', '120', '50'),
('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '1987-09-08', 'SH_CLERK', '2800.00', '0.00', '120', '50'),
('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '1987-09-09', 'SH_CLERK', '4200.00', '0.00', '121', '50'),
('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', '1987-09-10', 'SH_CLERK', '4100.00', '0.00', '121', '50'),
('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '1987-09-11', 'SH_CLERK', '3400.00', '0.00', '121', '50'),
('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '1987-09-12', 'SH_CLERK', '3000.00', '0.00', '121', '50'),
('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '1987-09-13', 'SH_CLERK', '3800.00', '0.00', '122', '50'),
('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '1987-09-14', 'SH_CLERK', '3600.00', '0.00', '122', '50'),
('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', '1987-09-15', 'SH_CLERK', '2900.00', '0.00', '122', '50'),
('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '1987-09-16', 'SH_CLERK', '2500.00', '0.00', '122', '50'),
('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', '1987-09-17', 'SH_CLERK', '4000.00', '0.00', '123', '50'),
('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '1987-09-18', 'SH_CLERK', '3900.00', '0.00', '123', '50'),
('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '1987-09-19', 'SH_CLERK', '3200.00', '0.00', '123', '50'),
('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', '1987-09-20', 'SH_CLERK', '2800.00', '0.00', '123', '50'),
('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '1987-09-21', 'SH_CLERK', '3100.00', '0.00', '124', '50'),
('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '1987-09-22', 'SH_CLERK', '3000.00', '0.00', '124', '50'),
('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '1987-09-23', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '1987-09-24', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-25', 'AD_ASST', '4400.00', '0.00', '101', '10'),
('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1987-09-26', 'MK_MAN', '13000.00', '0.00', '100', '20'),
('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', '1987-09-27', 'MK_REP', '6000.00', '0.00', '201', '20'),
('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1987-09-28', 'HR_REP', '6500.00', '0.00', '101', '40'),
('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', '1987-09-29', 'PR_REP', '10000.00', '0.00', '101', '70'),
('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1987-09-30', 'AC_MGR', '12000.00', '0.00', '101', '110'),
('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1987-10-01', 'AC_ACCOUNT', '8300.00', '0.00', '205', '110');

CREATE TABLE IF NOT EXISTS `jobs9` (
  `JOB_ID` varchar(10) NOT NULL DEFAULT '',
  `JOB_TITLE` varchar(35) NOT NULL,
  `MIN_SALARY` decimal(6,0) DEFAULT NULL,
  `MAX_SALARY` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs9` (`JOB_ID`, `JOB_TITLE`, `MIN_SALARY`, `MAX_SALARY`) VALUES
('AD_PRES', 'President', '20000', '40000'),
('AD_VP', 'Administration Vice President', '15000', '30000'),
('AD_ASST', 'Administration Assistant', '3000', '6000'),
('FI_MGR', 'Finance Manager', '8200', '16000'),
('FI_ACCOUNT', 'Accountant', '4200', '9000'),
('AC_MGR', 'Accounting Manager', '8200', '16000'),
('AC_ACCOUNT', 'Public Accountant', '4200', '9000'),
('SA_MAN', 'Sales Manager', '10000', '20000'),
('SA_REP', 'Sales Representative', '6000', '12000'),
('PU_MAN', 'Purchasing Manager', '8000', '15000'),
('PU_CLERK', 'Purchasing Clerk', '2500', '5500'),
('ST_MAN', 'Stock Manager', '5500', '8500'),
('ST_CLERK', 'Stock Clerk', '2000', '5000'),
('SH_CLERK', 'Shipping Clerk', '2500', '5500'),
('IT_PROG', 'Programmer', '4000', '10000'),
('MK_MAN', 'Marketing Manager', '9000', '15000'),
('MK_REP', 'Marketing Representative', '4000', '9000'),
('HR_REP', 'Human Resources Representative', '4000', '9000'),
('PR_REP', 'Public Relations Representative', '4500', '10500');
desc employees;
select * from employees;

# Q 1) Write a query to display EMPLOYEE_ID as ID, FIRST_NAME as First, and LAST_NAME as Last from the employees table.
select EMPLOYEE_ID as id,FIRST_NAME as first_,LAST_NAME as last_ from employees; 

# Q 2) Write a query to display JOB_ID as JobCode, JOB_TITLE as Title, and MIN_SALARY as MinimumSalary from the jobs table.
select * from jobs9;
select JOB_ID as jobCode, JOB_TITLE as title,MIN_SALARY as minimumsalary from jobs9;

# Q 3) Write a query to display the FIRST_NAME and LAST_NAME of employees from the employees table by using an alias e for the table.
select concat(FIRST_NAME,' ',LAST_NAME) as full_name from employees;

# Q 4) Write a query to display the EMPLOYEE_ID and the full name (FIRST_NAME + ' ' + LAST_NAME as FullName) of employees, and sort the result by FullName in descending order.
select * from employees;
select EMPLOYEE_ID as id, concat(FIRST_NAME,' ',LAST_NAME) as full_name  from employees ORDER BY full_name desc;

# Q 5) Write a query to display EMPLOYEE_ID as ID, FIRST_NAME as Name, and SALARY as Income from the employees table for employees with a salary greater than 5000, using aliases for the columns.
select EMPLOYEE_ID as id, FIRST_NAME as name, SALARY as income  from employees where (salary>5000);

drop table employees;
#################################### update  ###############################
use hr;
#Q 1) Write a SQL statement to change the email column of the employees table with 'not available' for all employees.
select * from employees;
DESC employees;
show index from employees; 
alter table employees drop index emp_email_uk; #used for droping unique key just kopy the key value and paste

update employees set email = 'not_available';

#Q 2)Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for all employees.
select * from employees;
update employees set  COMMISSION_PCT = 0.10;

#Q 3) Write a SQL statement to change the email and commission_pct column of employees table with 'not available_for' and 0.20 for those 
#     employees whose department_id is 110.

update employees set EMAIL = 'everyone',  COMMISSION_PCT = 0.20 where DEPARTMENT_ID =110;

# Q 4) Write a SQL statement to change the email column of employees table with 'not available' for those employees whose department_id is 80 
#      and gets a commission_pct is less than .20
update employees set EMAIL='noone'  where DEPARTMENT_ID =80 and COMMISSION_PCT>0.20;

# Q 5)  Write a SQL statement to change the email column of the employees table with 'not available' for those employees who belong to the 
#.      'Accounting' department.

update employees set email = 'not_accounting' where JOB_ID = 'fi_account';
select * from employees;

#Q 6) Write a SQL statement to change the salary of an employee to 8000 whose ID is 105, if the existing salary is less than 5000.
update employees set salary = 8000 where EMPLOYEE_ID=105 and salary < 5000;

# 7) Write a SQL statement to change the job ID of the employee whose ID is 118, to SH_CLERK if the employee belongs to the department, whose ID is 30 and the existing job ID does not start with SH.
update employees set JOB_ID = 'SH_CLERK' where EMPLOYEE_ID = 118 and if (DEPARTMENT_ID = 30,  job_id not like 'sh%',null);
select * from employees;

# 8) Write a SQL statement to increase the salary of employees under the department 40, 90 and 110 according to the company rules that salary will be increased by 25% for department 40, 15% for department 90 and 10% for department 110 and the rest of the departments will remain the same.
update employees set salary= salary+(salary*.25) where DEPARTMENT_ID=40;
update employees set salary= salary+(salary*.15) where DEPARTMENT_ID=90;
update employees set salary= salary+(salary*.10) where DEPARTMENT_ID=100;

# 9) Write a SQL statement to increase the minimum and maximum salary of PU_CLERK by 2000 as well as the salary for those employees by 20% and commission percent by .10.

update employees 
set salary = case
	when JOB_ID='pu_clerk'  then salary= salary+2000
    when COMMISSION_PCT<.10 then salary = salary+ (salary*.20)
end;
    
#set salary= salary+2000 where JOB_ID='pu_clerk' and  update employees set salary = salary+ (salary*.20) where COMMISSION_PCT<.10;


#################################### wildcards  ###############################

CREATE TABLE IF NOT EXISTS `countries7` (
  `COUNTRY_ID` varchar(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) DEFAULT NULL,
  `REGION_ID` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  KEY `COUNTR_REG_FK` (`REGION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries7` (`COUNTRY_ID`, `COUNTRY_NAME`, `REGION_ID`) VALUES
('AR', 'Argentina', '2'),
('AU', 'Australia', '3'),
('BE', 'Belgium', '1'),
('BR', 'Brazil', '2'),
('CA', 'Canada', '2'),
('CH', 'Switzerland', '1'),
('CN', 'China', '3'),
('DE', 'Germany', '1'),
('DK', 'Denmark', '1'),
('EG', 'Egypt', '4'),
('FR', 'France', '1'),
('HK', 'HongKong', '3'),
('IL', 'Israel', '4'),
('IN', 'India', '3'),
('IT', 'Italy', '1'),
('JP', 'Japan', '3'),
('KW', 'Kuwait', '4'),
('MX', 'Mexico', '2'),
('NG', 'Nigeria', '4'),
('NL', 'Netherlands', '1'),
('SG', 'Singapore', '3'),
('UK', 'United Kingdom', '1'),
('US', 'United States of America', '2'),
('ZM', 'Zambia', '4'),
('ZW', 'Zimbabwe', '4');

CREATE TABLE salespeople (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(5, 2)
);
INSERT INTO salespeople (salesman_id, name, city, commission) 
VALUES 
(1, 'John Doe', 'Paris', 0.15),
(2, 'Jane Smith', 'Rome', 0.12),
(3, 'Alex Brown', 'London', 0.10),
(4, 'Emily Davis', 'Paris', 0.14),
(5, 'Michael Wilson', 'Berlin', 0.11),
(6, 'Sophia Taylor', 'Rome', 0.13),
(7, 'James Johnson', 'Madrid', 0.09);

CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(101, 1500.50, '2023-01-15', 1001, 5001),
(102, 2400.00, '2023-02-10', 1002, 5002),
(103, 3200.75, '2023-03-05', 1003, 5001),
(104, 980.00, '2023-04-18', 1004, 5003),
(105, 1500.00, '2023-05-09', 1005, 5004),
(106, 2200.10, '2023-05-10', 1006, 5005),
(107, 1350.25, '2023-06-20', 1007, 5002),
(108, 4100.60, '2023-06-21', 1008, 5003),
(109, 750.50, '2023-07-14', 1009, 5004),
(110, 2400.00, '2023-07-30', 1010, 5005),
(111, 900.00, '2023-08-10', 1011, 5006),
(112, 1150.75, '2023-08-11', 1012, 5002),
(113, 1500.50, '2023-08-20', 1013, 5001),
(114, 2500.00, '2023-09-12', 1014, 5003),
(115, 3400.75, '2023-09-14', 1015, 5002),
(116, 1200.00, '2023-09-15', 1016, 5004),
(117, 2150.25, '2023-09-20', 1017, 5005),
(118, 1900.50, '2023-10-05', 1018, 5006),
(119, 1300.00, '2023-10-10', 1019, 5001),
(120, 3500.80, '2023-10-12', 1020, 5003),
(121, 975.25, '2023-10-18', 1021, 5002),
(122, 1600.00, '2023-11-01', 1022, 5004),
(123, 2200.50, '2023-11-03', 1023, 5005),
(124, 2100.00, '2023-11-07', 1024, 5001),
(125, 2900.50, '2023-11-10', 1025, 5003),
(126, 1800.00, '2023-11-11', 1026, 5002),
(127, 1600.25, '2023-11-12', 1027, 5004),
(128, 1350.50, '2023-11-13', 1028, 5001),
(129, 900.75, '2023-11-14', 1029, 5006),
(130, 2500.00, '2023-11-15', 1030, 5003),
(131, 1700.50, '2023-11-20', 1031, 5005),
(132, 3200.75, '2023-11-21', 1032, 5004),
(133, 1400.00, '2023-11-23', 1033, 5001),
(134, 2300.25, '2023-11-24', 1034, 5002),
(135, 1100.50, '2023-11-25', 1035, 5003),
(136, 3400.00, '2023-11-26', 1036, 5001),
(137, 2700.75, '2023-11-27', 1037, 5002),
(138, 1900.00, '2023-11-28', 1038, 5004),
(139, 1250.50, '2023-11-29', 1039, 5005),
(140, 1450.75, '2023-11-30', 1040, 5006),
(141, 2100.00, '2023-12-01', 1041, 5001),
(142, 2200.75, '2023-12-02', 1042, 5003),
(143, 1900.25, '2023-12-03', 1043, 5004),
(144, 1400.50, '2023-12-04', 1044, 5002),
(145, 1650.00, '2023-12-05', 1045, 5005),
(146, 2100.75, '2023-12-06', 1046, 5006),
(147, 1750.25, '2023-12-07', 1047, 5001),
(148, 1600.00, '2023-12-08', 1048, 5002),
(149, 1850.75, '2023-12-09', 1049, 5003),
(150, 2000.50, '2023-12-10', 1050, 5005);



#Q 1) Write a SQL query to find the details of those salespeople who come from the 'Paris' City or 'Rome' City. Return salesman_id, name, city, commission.
select * from salespeople;
select salesman_id,name,city,commission from salespeople where city='paris' or city ='rome';

#Q 2) write a SQL query to find the details of the salespeople who come from either 'Paris' or 'Rome'. Return salesman_id, name, city, commission.
select * from salespeople where city='paris' or city='rome';

#Q 3) write a SQL query to find the details of those salespeople who live in cities other than Paris and Rome. Return salesman_id, name, city, commission.  
select * from salespeople where city!='paris' and city!='rome';

#Q 4)  write a SQL query to retrieve the details of all customers whose ID belongs to any of the values 3007, 3008 or 3009. Return customer_id, cust_name, city, grade, and salesman_id.  
alter table salespeople add column grade varchar(20);
select * from  salespeople where salesman_id like  '3007,3008,3009';

#Q 5) write a SQL query to find salespeople who receive commissions between 0.12 and 0.14 (begin and end values are included). Return salesman_id, name, city, and commission.  
select * from salespeople;
select salesman_id,name,city,commission from salespeople where COMMISSION between 0.12 and 0.14;

#Q 6) write a SQL query to select orders between 500 and 4000 (begin and end values are included). Exclude orders amount 948.50 and 1983.43. Return ord_no, purch_amt, ord_date, customer_id, and salesman_id. 
select * from orders; 

select * from orders where purch_amt between 500 and 4000 and  purch_amt not in (948.50,1983.43) ;

#Q 7)write a SQL query to retrieve the details of the salespeople whose names begin with any letter between 'A' and 'L' (not inclusive). Return salesman_id, name, city, commission. 
select salesman_id, name, city, commission from salespeople where name between 'a%' and 'k%';





################################################################## sub queries  #################################################################


##Q 1)Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose 
#.    last_name='Bull'.

select FIRST_NAME,LAST_NAME,SALARY from employees where SALARY >
(select SALARY from employees where LAST_NAME='bull');


##Q 2) Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
select * from employees;
select FIRST_NAME,LAST_NAME from employees where JOB_ID in
(select JOB_ID from employees group by JOB_ID having JOB_ID='It_prog');

##Q 4) Write a query to find the name (first_name, last_name) of the employees who are managers. 
select FIRST_NAME,LAST_NAME from employees where employee_id in
(select MANAGER_ID from employees);

##Q 3)  Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a it prog jobid

select * from employees;

select FIRST_NAME,LAST_NAME from employees where employee_id in
(select MANAGER_ID from employees where JOB_ID in
(select job_id from employees group by job_id having job_id ='it_prog' ));

##Q 5)  Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary.


select FIRST_NAME,LAST_NAME,SALARY from employees where salary >
(select avg(salary) from employees);

##Q 6) Write a query to find the name (first_name, last_name), and salary of the employees whose salary is equal to the minimum salary for their job_id.
 select FIRST_NAME,LAST_NAME,SALARY,job_id from employees where salary in 
(select min(salary) from employees where job_id in
(select JOB_ID from employees group by job_id ) ) ;
use hr;
##Q 7)  Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary and works in any of the it department.
select * from employees;
select * from departments;


select FIRST_NAME,LAST_NAME,SALARY from employees where salary >
(select avg(salary) from employees ) AND
DEPARTMENT_ID = (select DEPARTMENT_ID from departments  where DEPARTMENT_NAME  ='it');

##Q 8) Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the earning of Mr. Bell.

select FIRST_NAME,LAST_NAME,SALARY from employees where SALARY >
(SELECT salary from employees where LAST_NAME ='bell');


# Q 9) Write a query to find the name (first_name, last_name), and salary of the employees who earn the same salary as the minimum salary 
#      for all departments.

select FIRST_NAME,LAST_NAME,SALARY from employees where department_id in
(select department_id from employees group by department_id having salary=
(select min(salary) from employees ));

# Q 10) Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary of 
#      all departments.

select FIRST_NAME,LAST_NAME,SALARY from employees where department_id in
(select department_id from employees group by department_id having salary>
(select avg(salary) from employees ));

# Q 11) Write a query to find the name (first_name, last_name) and salary of the employees who earn a salary that is higher than the salary 
#       of all the Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of the lowest to highest.

select FIRST_NAME,LAST_NAME,SALARY from employees where employee_id in
(select employee_id from employees where salary >
(select sum(salary )from employees where JOB_ID = 'sh_clerk')) order by salary;


# Q 12) Write a query to find the name (first_name, last_name) of the employees who are not supervisors.

select * from jobs;
select FIRST_NAME,LAST_NAME from employees where job_id in
(select job_id from jobs where JOB_TITLE != 'Marketing Manager');
 
# 13) Write a query to display the employee ID, first name, last name, and department names of all employees.

select EMPLOYEE_ID,FIRST_NAME,LAST_NAME from employees where department_id in
(select DEPARTMENT_ID from departments where department_name in
(select DEPARTMENT_name from departments));

SELECT employee_id, first_name, last_name, 
(SELECT department_name FROM departments WHERE departments.department_id = employees.department_id) AS department_name FROM employees;

select e.EMPLOYEE_ID,e.FIRST_NAME,e.LAST_NAME, d.DEPARTMENT_NAME from employees e join DEPARTMENTs d on e.DEPARTMENT_ID = d.DEPARTMENT_ID ;

## 14) Write a query to display the employee ID, first name, last name, salary of all employees whose salary is above average for their departments.
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY from employees where department_id IN
(select department_id , count(*) from employees where  count(*)>avg(salary) group by DEPARTMENT_ID );#wrong

## 15)    Write a query to fetch even numbered records from employees table.
select * from employees where employee_id % 2 =0;

## 16)    Write a query to find the 5th maximum salary in the employees table.
select DISTINCT(salary) from employees order by salary desc limit 1 offset 4 ; # offset is n-1

## 17)  Write a query to find the 4th minimum salary in the employees table
select DISTINCT(salary) from employees order by salary  limit 1 offset 3 ; # offset is n-1
 
## 18)  Write a query to select last 10 records from a table.
select * from employees order by employee_id desc limit 10;

## 19)   Write a query to list the department ID and name of all the departments where no employee is working.
 select d.department_id , d.DEPARTMENT_NAME from departments d left join employees e on d.DEPARTMENT_ID=e.DEPARTMENT_ID where e.DEPARTMENT_id is null;#here left join is used because it takes the data from the departments
 
##20)    Write a query to get 3 maximum salaries.
 select distinct(salary) from employees order by salary desc limit 3 ;
 
 ## 21)     Write a query to get 3 minimum salaries.
select DISTINCT(salary) from employees where salary order by salary limit 3;

## 22)   Write a query to get nth maximum salaries of employees.
select max(salary) from employees;


#################################### JOINS  ###############################

## 1)  Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
select * from employees ;
select * from departments;
select * from locations;
SELECT * from countries;
select * from regions;
select * from jobs;
select * from job_history;

select l.LOCATION_ID,l.STREET_ADDRESS,l.CITY,l.STATE_PROVINCE,c.COUNTRY_NAME from locations l
join countries c on c.COUNTRY_ID = l.COUNTRY_ID;

## 2) Write a query to find the name (first_name, last name), department ID and name of all the employees.
select e.first_name,e.LAST_NAME,e.DEPARTMENT_ID , d.DEPARTMENT_NAME from employees e
join DEPARTMENTs d on d.DEPARTMENT_ID=e.DEPARTMENT_ID;

## 3) Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
select e.first_name,e.LAST_NAME,e.JOB_ID,e.DEPARTMENT_ID ,l.city from employees e
join DEPARTMENTs d on e.DEPARTMENT_ID=d.DEPARTMENT_ID 
join locations l on d.LOCATION_ID=l.LOCATION_ID
where l.city ='london';

## 4)  Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
select e.EMPLOYEE_ID,e.LAST_NAME,m.EMPLOYEE_ID , m.LAST_NAME from employees e
left join employees m on e.MANAGER_ID = m.EMPLOYEE_ID;

## 5)  Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones.
select first_name,LAST_NAME,HIRE_DATE from employees where HIRE_DATE >
(select HIRE_DATE from employees where last_NAME='Jones');

select HIRE_DATE from employees where last_NAME='Jones';

select e.EMPLOYEE_ID,e.LAST_NAME,h.HIRE_DATE from employees e
join employees h on e.hire_date < h.hire_date
where e.LAST_NAME = 'jones';## wrong answer

## 6) Write a query to get the department name and number of employees in the department.
select d.DEPARTMENT_NAME,count(*) as dept_count from employees e
join departments d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
group by d.DEPARTMENT_id;

## 7) Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.
select k.EMPLOYEE_ID,j.JOB_TITLE,k.START_DATE,k.END_DATE , datediff(k.end_DATE,k.START_DATE ) as date_difference from job_history k
join jobs j on k.job_ID = j.job_ID;

## 8)  Write a query to display the department ID and name and first name of manager. 
select d.DEPARTMENT_ID,d.DEPARTMENT_NAME,e.FIRST_NAME as manager_name from employees e
 join departments d on d.MANAGER_ID = e.EMPLOYEE_ID;

## 9) Write a query to display the department name, manager name, and city.
select e.FIRST_NAME as managername,d.DEPARTMENT_NAME,l.CITY from employees e

join departments d on d.MANAGER_ID = e.EMPLOYEE_ID
join locations l on  d.LOCATION_ID =l.LOCATION_ID;

## 10)   Write a query to display the job title and average salary of employees.
select avg(e.salary), j.JOB_TITLE from employees e 
join jobs j on e.JOB_ID=j.JOB_ID 
group by j.job_title;

## 11)  Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
select j.JOB_TITLE, e.FIRST_NAME, (e.salary - j.min_salary) as difference from employees e
join jobs j on e.JOB_ID = j.JOB_ID ;

## 12)  Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.
select j.* , e.salary from  employees e
join job_history j on e.EMPLOYEE_ID = j.EMPLOYEE_ID where e.salary > 10000;

## 13)   Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.



#################################### stored Function and procedure  ###############################

## 1) Write a stored procedure to retrieve all employees from the Employees table for a given department ID.
delimiter $$
create procedure all_emp_given_dep (in dep int)
begin
		select * from employees where dep= department_id;
end;;

$$ delimiter ;
call all_emp_given_dep(50);


## 2) Create a function that calculates the total salary expenditure for a given department ID.
delimiter $$

create function calculate_total_salary (dep_id int) 
returns decimal(10,3)
deterministic
begin
		declare xyz decimal(10,3);
        select sum(salary) into xyz
        from employees where dep_id = department_id;
        return xyz;
end;;
$$ delimiter ;
select calculate_total_salary (80);


## 3) Develop a stored procedure that accepts an employee ID as an input parameter and increases the salary of that employee by a specified percentage.

delimiter $$
create procedure increment_sal(in emp int, out sal decimal(10,3),out incre_sal  decimal(10,3) )
begin
		select salary,salary+(salary*0.10) into sal,incre_sal
        from  employees where employee_id= emp;
end;;
$$ delimiter ;

drop procedure increment_sal;

call increment_sal(101,@sal,@incre_sal);
select @sal,@incre_sal;


## 4) Write a function to determine the average salary for employees in a specific job title category.

 delimiter $$
  create function avg_sal_emp (job_tits varchar (50))
  returns decimal(10,3)
  deterministic 
  begin
		declare xyz decimal(10,3);
        select avg(e.salary) into xyz
        from employees e 
        join jobs j on e.JOB_ID = j.JOB_ID where j.JOB_TITLE = job_tits;
        return xyz;
  
  
  end;;
 $$ delimiter ;
 
 select avg_sal_emp ('President');
 
 ## 5) Create a stored procedure that takes an employee's first name and last name as input parameters and returns the full name in uppercase letters.
drop procedure returning_full_name_in_uppercase;
delimiter $$ 
create procedure returning_full_name_in_uppercase1(in f_name varchar(20), in l_name varchar(20), out full_name varchar(50))
begin
		-- select FIRST_NAME,LAST_NAME into f_name,l_name
		-- from employees full_name = ucase(concat(FIRST_NAME,' ',LAST_NAME)) ;
        select upper(concat(FIRST_NAME,' ',LAST_NAME)) into full_name from employees where FIRST_name= f_name and last_name=l_name;
       
end;;

$$ delimiter ;
call returning_full_name_in_uppercase1('steven','king',@full_name);
select @full_name;
show triggers;
select * from employees;

## 6) Write a stored procedure to insert a new employee into the Employees table with the provided first name, last name, and department ID.
create table viju(name_stu varchar(20), surname varchar(20), department_id int);
delimiter $$
create procedure inserting_viju_in_table(in f_name varchar(22),in l_name varchar(22), in dep_id int)
begin
        insert into viju values (f_name,l_name,dep_id);
end;;
$$ delimiter ;

call inserting_viju_in_table('Vijay','Jadhav',130);
select * from viju;

## 7) Create a function to calculate the total number of employees in a specific department.
delimiter $$
create function total_no_emp (dep_id int)
returns int
deterministic
begin
		declare xyz int;
        select count(*) into xyz
        from employees where department_id = dep_id;
        return xyz;
end;;
$$ delimiter ;
select total_no_emp(80);

# Create a function to calculate the total number of employees in a specific department.
delimiter $$
CREATE FUNCTION total_number_of_emp_in_dep2(dep_id int)
returns INT
deterministic
begin
		declare dep_name int;
		select count(department_id) into dep_name from employees
        where DEPARTMENT_ID = dep_id;
        return dep_name;
end;;
$$ delimeter ;

select total_number_of_emp_in_dep2(90);


## 8) Develop a stored procedure that accepts an employee ID as input and deletes that employee's record from the Employees table.
delimiter $$
create procedure deleting_record(in emp_id int)
begin
		delete  from employees where EMPLOYEE_ID = emp_id;
end;;
$$ delimiter ;

call deleting_record (206);
select * from employees;
## 9) Write a function to determine the highest salary in the Employees table.
select max(salary) from employees;

delimiter $$
create FUNCTION highest_sal ()
returns decimal(10,3)
deterministic
begin
		declare xyz int;
        select max(salary) into xyz
        from employees ;
        return xyz;

end;;
$$ delimiter ;
select highest_sal ();

delimiter $$ 
create function highest_salary ()
returns decimal (10,3)
deterministic
begin
		declare maxsal decimal(10,3);
		select max(salary) into maxsal from employees;
        return maxsal;
end;;
$$ delimiter ;

select highest_salary();


## 10)Create a stored procedure that takes a department ID as an input parameter and returns the list of employees sorted by their salary in descending order within that department.
delimiter $$
create procedure list_emp_desc_sort_by_sal2(in dep int)
begin
		select * from employees where DEPARTMENT_ID = dep order by salary desc;
end;;
$$ delimiter ;

call list_emp_desc_sort_by_sal2(80);

## 11) Write a stored procedure to update the job title of an employee based on their employee ID.
delimiter $$
create procedure update_job_title_using_emp_id(in emp_id int)
begin
		update  jobs9 j
        join employees e on e.JOB_ID = j.JOB_ID
        set j.JOB_TITLE = 'accountant ca'
        where EMPLOYEE_ID = emp_id;
end ;;
$$ delimiter ;
select * from jobs9;
call update_job_title_using_emp_id (105);
 

## 12) Create a function that returns the number of employees hired in a specific year.
 delimiter $$
 create function no_emp_hired_year (years int)
 returns int
 deterministic
 begin
		declare xyz int;
        select count(*) into xyz
        from employees where years =year( hire_date); # aftewr 
        return xyz;
 end;;
 $$ delimiter ;
select no_emp_hired_year (1987);

drop function no_emp_hired_year ;

## 13) Develop a stored procedure that accepts an employee ID as input and retrieves the employee's details, including their name, department, and salary.
delimiter $$ 
create procedure emp_details_using_emp_id(in emp_id int, out f_name varchar(20),out lname varchar(20), out d_name varchar(50), out sal decimal(10,3))
begin
		select e.FIRST_NAME,e.LAST_NAME,e.salary,d.DEPARTMENT_NAME into f_name,lname,sal,d_name
        from employees e 
        join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
        where EMPLOYEE_ID = emp_id;
end;;
$$ delimiter ;
use hr;
call emp_details_using_emp_id(100,@f_name,@l_name,@d_name,@sal);
select @f_name,@l_name,@d_name,@sal;
## 14) Write a function to calculate the average tenure (in years) of employees in the company.
delimiter $$
create function average_tenure_years ()
returns INT
deterministic
begin
		declare avg_ten int;
        select floor(avg(timestampdiff(year,hire_date, curdate()))) into avg_ten
        from employees ;
        return avg_ten;
end ;;
$$ delimiter ;

select average_tenure_years ();

## 15) Create a stored procedure that takes a department ID as an input parameter and returns the department name along with the count of employees in that department.
delimiter $$
create PROCEDURE dep_name_count_using_dep_id(in dep_id int, out dep_name varchar(50), out emp_count int)
begin
		select DEPARTMENT_NAME,count(DEPARTMENT_NAME) into dep_name,emp_count
        from departments where DEPARTMENT_id = dep_id
        group by DEPARTMENT_NAME;
end;;
$$ delimiter ;
call dep_name_count_using_dep_id(20,@dep_id,@emp_count);
select @dep_id,@emp_count;


## 16) Write a stored procedure to retrieve the top N highest-paid employees in the company, where N is an input parameter.
drop procedure find_top_paid_emp;
delimiter $$
create procedure find_top_paid_emp(in numbers int)
begin 
		select * from employees order by salary desc limit numbers  ; # important questions here we have placed the input parameter"numbers" in limit
end;;
$$ delimiter ;
call find_top_paid_emp(5);

## 17) Create a function that calculates the total bonus amount for all employees based on their performance ratings.
-- select * ,(MAX_SALARY-MIN_SALARY) from jobs;

## 18) Develop a stored procedure that accepts a salary threshold as an input parameter and retrieves all employees with salaries above that threshold.
delimiter $$
create procedure salary_above_threshold(in thr decimal(10,3))
begin
		select * from employees where salary > thr; # here we have used the input value for comparison
end;;
$$ delimiter ;

call salary_above_threshold(10000);

## 19) Write a function to determine the average age of employees in the company based on their birthdates.

## 20) Create a stored procedure that takes an employee's last name as an input parameter and returns all employees with a similar last name.
delimiter $$
create procedure emp_having_same_l_name(in l_name varchar(20))
begin
		select * from employees where LAST_NAME=l_name;
end;;
$$ delimiter ;
call emp_having_same_l_name('king');

## 21) Write a stored procedure to update the email address of an employee based on their employee ID.
delimiter $$
create procedure update_email_add_using_emp_id(in emp_id int)
begin
		update employees set email = 'newwmail@gamil.com' where EMPLOYEE_ID = emp_id;
end;;
$$ delimiter ;
call update_email_add_using_emp_id(202);
select * from employees;


## 22) Create a function that calculates the total experience (in years) of all employees combined in the company.
 delimiter $$
 CREATE FUNCTION total_exper ()
 returns int
 DETERMINISTIC
 begin
		declare years_exp int;
        select sum(timestampdiff(year, hire_date ,curdate())) into years_exp
        from employees;
        return years_exp;
 end;;
 $$ delimiter ;

select total_exper ();

delimiter $$
create function sum_of_ex_of_all_emp()
RETURNS INT
deterministic 
begin
		declare sum_emp int;
        select sum(timestampdiff(year,hire_date,curdate())) into sum_emp
        from employees;
        return sum_emp;
end;;
$$ delimiter ;

select sum_of_ex_of_all_emp();


## 23) Develop a stored procedure that accepts a department ID as input and returns the department name along with the average salary of employees in that department
use hr;
drop procedure find_dep_name_avg_sal_using_dep;
delimiter $$
create procedure find_dep_name_avg_sal_using_dep(in dep int, out dep_name varchar(50), out avg_sal decimal(10,3))
begin
		select d.DEPARTMENT_NAME,avg(e.salary) into dep_name,avg_sal from employees e 
        join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID where e.DEPARTMENT_ID = dep group by d.DEPARTMENT_NAME ;
end;;
$$ delimiter ;

call find_dep_name_avg_sal_using_dep(50,@dep_name,@avg_sal);
select @dep_name,@avg_sal;

## 24) Write a function to determine the number of employees who have been with the company for more than a specified number of years.
delimiter $$
create function no_of_emp8 (sp_years int)
returns int
deterministic
begin
		declare no_of_emp int;
        select count(*) into no_of_emp
        from employees where sp_years <  timestampdiff(year, Hire_date, curdate());
        return no_of_emp;

end;;
$$ delimiter ;

select no_of_emp8 (10);

## 25) Create a stored procedure that takes a job title as an input parameter and returns the count of employees holding that job title.
drop procedure find_count_using_job_title;
delimiter $$
create procedure find_count_using_job_title(in job_tits VARCHAR(50), out counting int)
begin
		#select count(*) into counting from employees e
        #join jobs j on e.JOB_ID = j.JOB_ID 
        #where j.JOB_TITLE = job_tits;
        SELECT COUNT(*) INTO counting FROM employees e
		JOIN jobs j ON e.JOB_ID = j.JOB_ID 
		WHERE j.JOB_TITLE = job_tits;
end;;
$$ delimiter ;
use hr;
call find_count_using_job_title('Administration Vice President ',@counting);
select @counting as counting;

## 26) Write a stored procedure to retrieve the details of employees who have a salary within a specified range.
delimiter $$
create procedure having_sal_in_range(in from_sal decimal(10,3), in to_sal decimal(10,3))
begin
		select * from employees where salary between from_sal and to_sal;
end;;
$$ delimiter ;

call having_sal_in_range(15000,20000);


## 27) Create a function that calculates the total number of working hours for an employee in a given month.

delimiter $$
create FUNCTION tot_no_work_hours1(emp int)
returns int 
deterministic
begin 
		DECLARE work_hr int;
        select floor(timestampdiff(hour, hire_date, curdate())) into work_hr
        from employees where emp = month(hire_date);
        return work_hr;
end;;
$$ delimiter ;

select tot_no_work_hours1(117);



delimiter $$
create function working_hours2(mon int)
returns INT
deterministic
begin
		declare hours int;
        select sum(hour(hire_date)) into hours from employees
        where month(hire_date) = mon;
        return hours;
end;
$$ delimiter ;
select working_hours2(6);



## 28) Develop a stored procedure that accepts an employee ID as input and retrieves the employee's department name and manager's name.
drop procedure dep_name_manager_name_using_emp_id;
delimiter $$
create procedure dep_name_manager_name_using_emp_id(in emp int , out dep varchar(50), out manager_name varchar(50))
begin
		select d.DEPARTMENT_NAME , m.FIRST_NAME into dep ,  manager_name from employees e
        join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID 
		left join employees m on e.EMPLOYEE_ID = m.MANAGER_ID
        where e.EMPLOYEE_ID=emp;
end;;
$$ delimiter ;

call dep_name_manager_name_using_emp_id(102 , @dep,@manager_name);
select @dep,@manager_name;

## 29) Write a function to determine the total number of employees hired in each year, grouped by the year of hire.
delimiter $$
create FUNCTION tot_no_emp_hired_in_each_year4 ( h_year int)
returns INT
deterministic
begin
		declare emp int;
        select  count(*) into emp
        from employees where h_year = year(hire_date) group by year(hire_date);
        return emp;
end;;
$$ delimiter ;

select tot_no_emp_hired_in_each_year4(1987);

select count(EMPLOYEE_ID) from employees where hire_date IN
(select year(hire_date ) from employees) group by EMPLOYEE_ID;

## 30) Create a stored procedure that takes a city name as an input parameter and returns the list of employees residing in that city.
drop procedure find_details_from_city;
delimiter $$
create procedure find_details_from_city(in city_name varchar(50))
begin
		select * from employees e
        join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID 
        join locations l on d.LOCATION_ID = l.LOCATION_ID
        where l.city = city_name;
end;;
$$ delimiter ;

call find_details_from_city ('seattle');

## 31)Write a stored procedure that calculates the average salary increase percentage for employees who have been with the company for more than five years.


#################################### GROUP BY ORDER BY  ###############################

## Q 1) Write a SQL query to find the number of employees hired in each year.
select year(hire_date),count(*) as counting  from employees GROUP BY year(hire_date) ;

## Q 2) Write a SQL query to find the number of employees in each department.
select department_id, count(*) as no_of_emp from employees GROUP BY DEPARTMENT_ID;

## Q 3) Write a SQL query to find the department with the highest total salary.
select department_id,sum(SALARY) from employees GROUP BY department_id ;

## Q 4)  Write a query to list the number of jobs available in the employees table.
select JOB_ID,count(job_id)as jobs_available  from employees group by JOB_ID ;

## Q 5) Write a query to get the total salaries payable to employees.
select count(salary),salary as total_salary from employees group by salary;

## Q 6) Write a query to get the minimum salary from the employees table.
select min(salary) from employees group by salary order by salary;

## Q 7) Write a query to get the maximum salary of an employee working as a Programmer. 
select job_id , max(salary) from employees group by job_id having job_id ='IT_PROG';

## Q 8) Write a query to get the average salary and number of employees working the department 90. 
select DEPARTMENT_ID,avg(salary),count(*) from employees group by DEPARTMENT_ID having DEPARTMENT_ID=90;

## Q 9) Write a query to get the highest, lowest, sum, and average salary of all employees. 
select max(SALARY),min(SALARY), sum(SALARY),avg(SALARY) , count(SALARY) from employees GROUP BY SALARY;

## Q 10) Write a query to get the number of employees with the same job
select count(JOB_ID), JOB_ID from employees GROUP BY JOB_ID;

## Q 11) Write a query to get the difference between the highest and lowest salaries. 
select max(salary),min(salary),(max(salary)-min(salary)) as difference from employees ;

## Q 12) Write a query to find the manager ID and the salary of the lowest-paid employee for that manager. 
select MANAGER_ID,min(salary) from employees GROUP BY MANAGER_ID ORDER BY MANAGER_ID;

## Q 13) Write a query to get the department ID and the total salary payable in each department.
select DEPARTMENT_ID, sum(salary) as payable_salary from employees GROUP BY DEPARTMENT_ID;

## Q 14) Write a query to get the average salary for each job ID excluding programmer. 
select JOB_ID, avg(salary) from employees group by JOB_ID  having JOB_ID<>'IT_PROG';

## Q 15) Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only. 
select job_id ,SUM(salary), max(salary) ,min(salary), avg(salary) from employees where DEPARTMENT_ID = 90 GROUP BY job_id ;

## Q 16) Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
select JOB_ID,(MAX_SALARY>=4000) as max_salary from jobs GROUP BY JOB_ID;

## Q 17) Write a query to get the average salary for all departments employing more than 10 employees. 
select DEPARTMENT_ID, avg(salary) from employees GROUP BY DEPARTMENT_ID having count(EMPLOYEE_ID)>10;
select DEPARTMENT_ID, avg(salary) from employees GROUP BY DEPARTMENT_ID having count(DEPARTMENT_ID)>10;




