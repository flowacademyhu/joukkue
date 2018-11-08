create table likes(id serial, mood varchar(50), date date, type varchar(500), typeid bigint, userid bigint);
alter table public.likes
add constraint likes_users_id_fk
foreign key(userid)
references users(id);
