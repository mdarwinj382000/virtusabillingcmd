
drop schema

if exists instpay;
     CREATE SCHEMA instpay;

use instpay;

/* *************************************************************** 
***************************CREATING TABLES************************
**************************************************************** */

create Table Admin(
      admin_id char(20) not null,
      first_name varchar(30) not null,
      last_name varchar(30) not null,
      email varchar(35) not null,
      primary key(admin_id)
);

create table accountant(
      accountant_id char(20) not null,
      first_name varchar(30) not null,
      last_name varchar(30) not null,
      email varchar(35) not null,
      branch_name varchar(40) not null,
      primary key(accountant_id)
);

create table student(
	  enroll_no char(20) not null,
      first_name varchar(30) not null,
      last_name varchar(30) not null,
      email varchar(35) not null,
      password varchar(30) not null,
      phone_number VARCHAR(20) not null,
      current_semester int not null,
      branch_name varchar(40) not null,
      primary key(enroll_no)
);

create table payment(
      payment_id int not null auto_increment,
	  enroll_no char(20) not null,
      semester_no int not null,
      remain_amnt int not null,
      total_amount int not null,
      primary key(payment_id)
);

alter table payment add foreign key(enroll_no) references student(enroll_no);




