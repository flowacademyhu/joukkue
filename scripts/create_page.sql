create table page (id serial primary key, name varchar(100), category varchar(60), description varchar(255));
create table pageMembers (id serial primary key, pageId int, userId int);

alter table pageMembers add constraint pageId_page_id_fk foreign key (pageId) references page(id);
alter table pageMembers add constraint userId_users_id_fk foreign key (userId) references users(id);