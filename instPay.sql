
drop schema

if exists instpay;
     CREATE SCHEMA instpay COLLATE = utf8_general_ci;

use instpay;

/* *************************************************************** 
***************************CREATING TABLES************************
**************************************************************** */

create Table Admin(
      admin_id char(20) not null,
      first_name varchar(30) not null,
      last_name varchar(30) not null,
      email varchar(35) not null,
      password varchar(30) not null,
      primary key(admin_id)
);

create table accountant(
      accountant_id char(20) not null,
      first_name varchar(30) not null,
      last_name varchar(30) not null,
      email varchar(35) not null,
      password varchar(30) not null,
      branch_id int not null,
      primary key(accountant_id)
);

create table student(
	  student_id char(20) not null,
      first_name varchar(30) not null,
      last_name varchar(30) not null,
      email varchar(35) not null,
      password varchar(30) not null,
      father_name varchar(30) not null,
      phone_number VARCHAR(20) not null,
      current_semester int not null,
      branch_id int not null,
      primary key(student_id)
);

create table payment(
      payment_id int not null auto_increment,
	  student_id char(20) not null,
      semester_no int not null,
      amount_payed int not null,
      total_amount int not null,
      primary key(payment_id)
);

create table branch_fee(
	branch_id int not null auto_increment,
    branch_name varchar(30) not null,
    semester_no int not null,
    fee_payment int not null,
    primary key(branch_id)
);

alter table accountant add foreign key(branch_id) references branch_fee(branch_id);
alter table student add foreign key(branch_id) references branch_fee(branch_id);




