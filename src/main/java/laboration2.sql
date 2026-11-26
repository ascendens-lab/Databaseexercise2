-- Del A
-- 2.

drop database vetclinic;

create database vetclinic;

use vetclinic;

create table owner (
    owner_id int primary key auto_increment,
    owner_name varchar(255),
    owner_phone varchar(15)
    );

create table pet(
    pet_id int primary key auto_increment,
    pet_name varchar(255),
    species varchar(255),
    owner_id int, foreign key (owner_id) references owner(owner_id)
);

create table visit(
    owner_id int, foreign key (owner_id) references owner(owner_id),
    visit_date varchar(10),
    diagnosis varchar(255),
    fee int
);

