create table posts (id serial primary key, userid int, type varchar(80), typeid int, content varchar(300), date date, pictureContent bytea);
ALTER TABLE public.comments 
ADD CONSTRAINT postid_posts_id_fk
FOREIGN KEY (postid)
REFERENCES posts (id);

