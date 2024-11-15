show databases;
create database student;
use student;

create table unique_const(user_name varchar(20), pass_word varchar(20));

insert into unique_const values ("Vijaryaje", 'abc(hfj)');
insert into unique_const values ("Anand", 'cddrf');

select * from unique_const;

create table unique_using_const(user_name varchar(20) unique, pass_word varchar(20));

insert into unique_using_const values ("Vijaryaje", 'abc(hfj)');
insert into unique_using_const values ("Anand", 'cddrf');
insert into unique_using_const values ("Anand", 'cddrf');

select * from unique_using_const;

# The same value will not be added while using the unique constraint.

################################################################################

create table unique_stu (student_id int unique, student_name varchar(20), course_id varchar (20));

insert into unique_stu values (1, "Vijayraje", 'DBDA');
insert into unique_stu values (2, "Anand", 'DBDA');
insert into unique_stu values (3, "Karan", 'DBDA');

select * from unique_stu;

####################################################################################
create table unique_stu2 (student_id int , student_name varchar(20), course_id varchar (20), mobile_no int(10), unique(student_id, mobile_no));

insert into unique_stu2 values (1, "Vijayraje", 'DBDA', 957934810);
insert into unique_stu2 values (2, "anand", 'DBDA', 787654328);
insert into unique_stu2 values (3, "ajay", 'DBDA', 676435789);
insert into unique_stu2 values (4, "ajay", 'DBDA', 676435789);

select * from unique_stu2;

#Here if the student_id is unique then the duplicate mobile number will also get inserted.

create table unique_stu3 (student_id int , student_name varchar(20), course_id varchar (20), mobile_no int(10), unique(student_id, mobile_no), unique(mobile_no));

insert into unique_stu3 values (1, "Vijayraje", 'DBDA', 957934810);
insert into unique_stu3 values (2, "anand", 'DBDA', 787654328);
insert into unique_stu3 values (3, "ajay", 'DBDA', 676435789);



select * from unique_stu3;

# We have to add another unique bracket for mobile_no coloumn. if you Want unique id and mobile number you should right unique after the constraint only,
# unique(student_id, mobile_no) this works as a (OR) condition

####################################### Not Null #########################################
create table not_null_ex1 (student_name varchar(20) not null, student_id varchar(20) not null, hostel_room_no int);

insert into not_null_ex1 values ("Amrita", 12, null);
insert into not_null_ex1 values ("Vijay", 21, 114);
insert into not_null_ex1 values ("ajay",33 ,null );
insert into not_null_ex1 (student_name, student_id)values ("vinay",32 );

select * from not_null_ex1;

#################################### Primary Key Constraint#################
# Primary key = unique key + not null value.

create table pkc_ex1 (s_id int unique not null, s_name varchar(20) not null, age int not null);

insert into pkc_ex1 values ( 121, "Vijayraje" , 23);
insert into pkc_ex1 values ( 121, "Vijayraje" , 23); #error duplicate entry
insert into pkc_ex1 values ( null, "Vijayraje" , 23); # error s_id cannot be null 
insert into pkc_ex1 values ( 121, null , 23);# error s_name cannot be null 

select * from pkc_ex1;

#################################
create table pkc_ex2 (s_id int primary key, s_name varchar (20) not null);

insert into pkc_ex2 values(121, "Ayush");
insert into pkc_ex2 values(121, "Ayush");#error no duplicates are allowed in primary key
insert into pkc_ex2 values(122, "Ayush");# name can me duplicate because it is not null but not unique
insert into pkc_ex2 values(123, "");# whitespace will e inserted in the place of s_name
insert into pkc_ex2 (s_id)values(124);#s_name cannot be default because it is not null

select * from pkc_ex2;
####################################
create table pkc_ex3 (s_id int  not null, s_name varchar(20) not null);

insert into pkc_ex3 values (121, "Ayush");
insert into pkc_ex3 (s_name)values ( "Ayush"); #error s_id cannot be default because it is not null value

select * from pkc_ex3;

####################################### Composite Key ####################################
create table composite_key_ex1 (address varchar(120), street_name varchar(50), pincode int(7), primary key(address, pincode));
# composite key is the combnation of two attributes to make one primary key

insert into composite_key_ex1 values ('pune', 'hinjewadi', 431513);
insert into composite_key_ex1 values ('pune', 'hinjewadi', 431513);#error duplicate values are not allowed
insert into composite_key_ex1 values ('pune', 'hinjewadi', 431512);#anyone unique is sufficiant

select * from composite_key_ex1;

#####################################################
create table unique_pk_ex (s_id int primary key , s_name varchar(20) not null, mobile_no int unique, email varchar(50) primary key);
#error is here are multiple primary keys are defined 

create table unique_pk_ex (s_id int primary key , s_name varchar(20) not null, mobile_no int unique, email varchar(50) unique);
desc unique_pk_ex;

################################################ Foreign Key Constraint #################

#create table student_table (s_id int primary key, s_name varchar(20), age int, course_id int);

create table course_table(course_id int primary key, student_id int, course_name varchar(20), faculty_name varchar(20));

drop table student_table;

create table student_table (s_id int primary key, s_name varchar(20), age int, course_id int, 
foreign key(s_id) references course_table(student_id));#error . Failed to add the foreign key constraint. Missing index for constraint 'student_table_ibfk_1' in the referenced table 'course_table'	

create table student_table (s_id int primary key, s_name varchar(20), age int, course_id int, 
foreign key(course_id) references course_table(course_id));
desc student_table;

create table student_distribution_table(faculty_id int, student_id int, course_id int, 
foreign key(student_id) references student_table(s_id));
# without having primary key can have a foriegn key.
desc student_distribution_table ;

################################# Default Constraint ##################################
create table default_ex (s_id int, s_name varchar(20), course_id int, subjects varchar(20) default 'Unassigned');

insert into default_ex  (s_id, s_name, course_id) values (12,'ayush', 23);

select * from default_ex;

# table 2
create table default_ex1 (s_id int, s_name varchar (20), course_name varchar(20) default 'DBDA');

insert into default_ex1(s_id, s_name) values (2, 'Abhay');

select * from default_ex1;

################################### Check Constraint  ########################################
create table check1 (order_id int, order_name varchar(20), quantity int check(quantity>0));

insert into check1 values (1, "veg", 0);#error doest not allow the value 0 or less than 0.
insert into check1 values (1, "veg", 10);

select * from check1;
#table2
create table check2 ( user_name varchar(20) check(user_name>=8), pasword varchar(30));

insert into check2 values("cdac mumbai", 'abc@');#error the user_name contains the charcters greater than 8
insert into check2 values("cdac", 'abc@');

#table3
create table check3 ( user_name varchar(20) check(char_length(user_name)<=8), pasword varchar(30));
desc check3;

insert into check3 values("cdac", 'abc@');
insert into check3 values("cdac mumbai", 'abc@');#error the user_name contains the charcters greater than 8

select * from check3;

#table4
create table check4 ( user_name varchar(20), pasword varchar(30), check(char_length(user_name)<=8 and length(pasword)=8));

insert into check4 values ('cdac', 'cdac@abc');

#table5
create table check5 ( user_name varchar(20), check (user_name REGEXP '^[A-Za-z]+$'));

insert into check5 values ('cdac0');# error Check constraint 'check5_chk_1' is violated.	

#table6
create table check6 ( user_name varchar(20), email varchar(50),
check (user_name REGEXP '^[A-Za-z]+$'),
check (email like '%@%'));

insert into check6 values ('cdac', 'asfgha');#error  Check constraint 'email' is violated.	
insert into check6 values ('cdac', 'asdjksdcjh@gmail.com');

select * from check6;

#table7
create table check7 ( user_name varchar(20), email varchar(50), gender varchar(10),
check (gender in ('Female', 'Male', 'Other')));

insert into check7 values ('cdac', 'asdjksdcjh@gmail.com', 'male');
insert into check7 values ('cdac', 'asdjksdcjh@gmail.com', 'Male');

#You can add capital as well as small letter in the table it will not affect the table addition.
select * from check7;









