create table profile (id int primary key, userid int, head varchar(200), postNumberPerPage int, pictureNumberPerPage int, date int, pictureid int);
create table permissions (id int primary key, userid int, userStatus varchar(30), profileid int);
create table profilepicture (pictureid int, profileid int);

alter table profilepicture
add constraint profileid_profile_id_fk
foreign key(profileid) references profile(id);


alter table permissions
add constraint profileid_profile_id_fk
foreign key(profileid) references profile(id);