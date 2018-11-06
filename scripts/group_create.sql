create table members (id serial number key, role varchar(20), userId int, groupId int);
create table _group (id serial primary key, status varchar(15), description varchar(255));
create table report (id serial primary key, status varchar(15), subject varchar(20), solution varchar(255), memberisId int, userId int);

