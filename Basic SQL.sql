show databases;
create database Aug24;
use Aug24;

create table charg(id int, s_name char(10));

desc charg;
insert into charg values (01, 'Vijay');
insert into charg values (02, 'Ajay');

select * from charg;

create table varch (id int , s_name varchar(10));
desc varch;

insert into varch values(10, 'ab');
insert into varch values (11, 'vcj');

select * from varch;

create table blobg (img_name varchar(10), image_data blob);
desc blobg;

#blog can store image , videos , audios etc
 
 insert into blobg values ('A', load_file('/Users/vijayrajejadhav/Downloads/4ada4c57-c9b8-4488-a7d9-e21e8e69053d.JPG'));
select * from blobg;

create table blobsize(img_name varchar(50), image_data blob(150));
desc blobsize;

 insert into blobsize values ('A', load_file('/Users/vijayrajejadhav/Downloads/4ada4c57-c9b8-4488-a7d9-e21e8e69053d.JPG'));
select * from blobsize;

##########################TEXT###########################
create table textex ( description text);
desc textex;

insert into textex values ('ghakjfjkfggjkgrggbrghfvfbvreueydhbkuvfyurgrevgibvvufbig');
select * from textex;

#size of the coloumn length descriotion.
select length(description) as no_of_bytes from textex;

create table textex2 ( description text(50));
insert into textex2 values('fm');
select length(description) as no_of_bytes from textex2;

show tables;

#####################SET ##################
create table setex (item_name varchar(10), item_option set('Spicy', 'Medium Spicy ','Indian', 'no onion', 'no garlic'));
desc setex;

#confusion is here plese read carefully.
insert into setex (item_name,item_option) values("Samosa",'Medium Spicy,no garlic,no onion');
select * from setex;

create table emp(emp_id int, emp_name varchar(20), skills set("java","Python","mysql","Bid Data","ML"));
desc emp;

insert into emp (emp_id,emp_name,skills) values (101, "Vijayraje", "Python,Bid Data,ML");
insert into emp (emp_id,emp_name,skills) values(102, "ABC", "Python,Bid Data,ML");

select * from emp;

####################################### ENUM #############################
create table emp_enum ( emp_id int, emp_name varchar(20), gender enum("Male", "Female", "Other"));
desc emp_enum;
#only select one value from the enum list..
insert into emp_enum values (101, "Ajay", "Male");
insert into emp_enum values (102, "Ajaya", "Female");

select * from emp_enum;

##################### Numeric Data Type ########################

# 1) Int: 

create table intex (name varchar(20), id int);
insert into intex values ("Vijayraje", 21);
insert into intex values ("Yogansh", 22);

select * from intex;

select length(id) as id_length from intex;

############################# Float ######################

create table floatex(emp_name varchar(20), salary float(6));
desc floatex;

insert into floatex values ("Vijayraje", 2500.00);
insert into floatex values ("Umesh", 500.00);

select * from floatex;
# The above table do not consider the decimal value.

create table floatex2(emp_name varchar(20), salary float(6,3));
desc floatex2;

insert into floatex2 values ("Vijayraje", 250.00);
insert into floatex2 values ("Umesh", 500.00);

select * from floatex2;
# The above table shows the decimal values upto 6 characters.


#################### decimal ##############
create table decimalex(emp_name varchar(20), salary decimal(6,3));

insert into decimalex values ("Vijayraje", 123.900);
insert into decimalex values ("Vijayrajeex", 123);

select * from decimalex;
 
########################### Bolean ###############
create table checkbool(emp_name varchar(20), attendance boolean);

insert into checkbool values( "Vijayraje", true);
insert into checkbool values( "Rashmika", false);
insert into checkbool values( "Vijayraje", 1);
insert into checkbool values( "Rashmika", 0);

select * from checkbool;

show tables;

#################### date and time ##############
create table datecheck(emp_name varchar(20), dob date);

insert into datecheck values ("Vijayraje", '2002-10-15');
insert into datecheck values ("Ramu", '2002-10-09');

select * from datecheck;

############################ Time #################
create table timecheck (emp_name varchar(20), meeting date, meeting_timimg time);

insert into timecheck values ("Vijayraje" , '2024-10-15', '14:00:00');
select * from timecheck ;

################## date-time ################
create table date_time_check (emp_name varchar(20), meeting_timimg datetime);

insert into date_time_check values ("Vijayraje" , '2024-10-15 14:00:00');
select * from date_time_check;

################### time stamp ##################
create table timestamp_check (emp_name varchar(20), login_time timestamp);

insert into timestamp_check values ("Vijayraje" , current_timestamp());

select * from timestamp_check;

################### Year ################
create table yearcheck (emp_name varchar(20), year_of_joining year);

insert into yearcheck values ("Vijayraje" , 2024);
select * from yearcheck;


show tables;













