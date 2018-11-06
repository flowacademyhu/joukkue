create table profile (id int, userid int, head varchar(200), postNumberPerPage int, pictureNumberPerPage int, date int, pictureid int);
create table permissions (id int, userid int, userStatus varchar(30), profileid int);
create table profilepicture (pictureid int, profileid int);
