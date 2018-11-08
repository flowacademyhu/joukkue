create table _group (id serial primary key, status varchar(15), description varchar(255));
create table members (id serial primary key, role varchar(20), userId int, groupId int);
create table report (id serial primary key, status varchar(15), subject varchar(20), solution varchar(255), membersId int, userId int);


ALTER TABLE members 
ADD CONSTRAINT 
membersId_groupId_fk 
FOREIGN KEY (groupId) 
REFERENCES _group (id);

ALTER TABLE report
ADD CONSTRAINT reportId_membersId_fk 
FOREIGN KEY (membersId) 
REFERENCES members (id);

