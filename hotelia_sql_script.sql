create database hotelia;
use hotelia;

create table room_type(
room_type_id int primary key auto_increment,
room_type varchar(20) not null unique,
room_rate decimal(10,2) not null);

create table room(
room_number int primary key,
room_type_id int,
foreign key (room_type_id) references room_type(room_type_id),
room_capacity int not null,
room_condition varchar(20) not null,
room_access_pin int not null unique);

create table guest(
guest_id int auto_increment primary key,
full_name varchar(255) not null,
phone_number varchar(25) not null,
date_of_birth date Not null,
passport_number varchar(255) unique not null);

create table booking(
booking_id int auto_increment primary key,
guest_id int,
foreign key (guest_id) references guest(guest_id),
room_number int,
foreign key (room_number) references room(room_number),
booking_status varchar(255) not null,
start_date datetime not null,
end_date datetime not null,
check_in_time datetime not null,
check_out_time datetime not null);
