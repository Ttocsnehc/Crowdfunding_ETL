create table contacts (
contact_id int primary key not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
email varchar(50) not null);

create table category (
category_id varchar(30) not null primary key,
category_name varchar(50) not null);

create table subcategory (
subcategory_id varchar(30) primary key not null,
category_name varchar(50) not null);

create table campaign (
cf_id int primary key not null,
contact_id int not null,
company_name varchar(50) not null,
description text not null,
goal numeric(10,2) not null,
pledged numeric(10,2) NOT NULL,
outcome varchar(50) NOT NULL,
backers_count int NOT NULL,
country varchar(10) NOT NULL,
currency varchar(10) NOT NULL,
launch_date date NOT NULL,
end_date date NOT NULL,
category_id varchar(30) not null,
subcategory_id varchar(30) not null,
foreign key (contact_id) references contacts (contact_id),
foreign key (category_id) references category (category_id),
foreign key (subcategory_id) references subcategory (subcategory_id)); 


select * from campaign
select * from category
select * from subcategory
select * from contacts