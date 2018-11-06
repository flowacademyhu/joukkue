create table page (id serial primary key, name varchar(100), category varchar(60), description varchar(255));
create table pageMembers (id serial primary key, pageId int, userId int);
