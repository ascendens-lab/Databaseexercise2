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
    pet_name varchar(255) not null,
    species varchar(255),
    owner_id int, foreign key (owner_id) references owner(owner_id)
);

create table visit (
    owner_id int, foreign key (owner_id) references owner(owner_id),
    visit_date varchar(10),
    diagnosis varchar(255),
    fee int check ( fee >=-10 )
);

insert into owner(owner_name, owner_phone)
values ('Anne Berg','070-111 11 11');
insert into owner(owner_name, owner_phone)
values ('Erik Holm',  '070-222 22 22');
insert into owner(owner_name, owner_phone)
values ('Sara Lind',  '070-333 33 33');
insert into owner (owner_name, owner_phone)
values ('Stefan Bergli', '079-3333446');


insert into pet(pet_name, species, owner_id )
values ('Rex', 'Hund', 1);
insert into pet(pet_name, species, owner_id )
values ('Misse', 'Katt', 1);
insert into pet(pet_name, species, owner_id )
values ('Bella', 'Hund', 2);
insert into pet(pet_name, species, owner_id )
values ('Pelle', 'Kanin', 3);
insert into pet(pet_name, species, owner_id )
values ('Dustin', 'Dammråtta', 4);

insert into visit(owner_id, visit_date, diagnosis, fee)
values (1,'2026-01-10', 'Vaccination','450');
insert into visit(owner_id, visit_date, diagnosis, fee)
values (1,'2026-03-02', 'Klokklippning','150');
insert into visit(owner_id, visit_date, diagnosis, fee)
values (2,'2026-01-20', 'Hälta','850');
insert into visit(owner_id, visit_date, diagnosis, fee)
values (2,'2026-04-05', 'Kontroll','300');
insert into visit(owner_id, visit_date, diagnosis, fee)
values (3,'2026-02-28', 'Tandkontroll','350');
insert into visit(owner_id, visit_date, diagnosis, fee)
values (4,'2026-06-06', 'Alkoholförgiftning','1500');



select count(*)
from owner;
select count(*)
from pet;
select count(*)
from visit;


delete from visit
where fee = 0
;
-- Del B
-- 4.

alter table owner
    add unique (owner_phone);

alter table visit
add  constraint  CHK_fee check ( fee>=0 )

-- 5.
-- Felmeddelandet för check på avgiften blev det här.
-- "[HY000][3819] Check constraint 'CHK_fee' is violated."

-- För



