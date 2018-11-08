--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

-- Started on 2018-11-08 11:46:32 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13041)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

-- Started on 2018-11-08 11:46:32 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13041)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 32778)
-- Name: albums; Type: TABLE; Schema: public; Owner: -
--


CREATE TABLE public.albums (
    id serial primary key,
    albumname character varying(50),
    userid bigint
);


--
-- TOC entry 198 (class 1259 OID 32781)
-- Name: picturecomments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.picturecomments (
    id serial primary key,
    userid bigint,
    content character varying(255),
    date timestamp without time zone,
    pictureid bigint
);

--
-- TOC entry 196 (class 1259 OID 32775)
-- Name: pictures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pictures (
    id serial primary key,
    date timestamp without time zone,
    title character varying(255),
    location character varying(50),
    userid bigint,
    albumid bigint
);



ALTER TABLE albums ADD CONSTRAINT userid_users_id_FK FOREIGN KEY (userid) REFERENCES public.user (id);
ALTER TABLE picturecomments ADD CONSTRAINT userid_users_id_FK FOREIGN KEY (userid) REFERENCES public.user (id);
ALTER TABLE picturecomments ADD CONSTRAINT pictureid_pictures_id_FK FOREIGN KEY (pictureid) REFERENCES pictures (id);
ALTER TABLE pictures ADD CONSTRAINT userid_users_id_FK FOREIGN KEY (userid) REFERENCES public.user (id);
ALTER TABLE pictures ADD CONSTRAINT albumid_albums_id_FK FOREIGN KEY (albumid) REFERENCES albums (id);

--
-- TOC entry 2914 (class 0 OID 32778)
-- Dependencies: 197
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: -
--


INSERT INTO public.albums (id, albumname, userid) VALUES (1, 'Album1', 1);
INSERT INTO public.albums (id, albumname, userid) VALUES (2, 'Album2', 1);
INSERT INTO public.albums (id, albumname, userid) VALUES (3, 'Album3', 2);
INSERT INTO public.albums (id, albumname, userid) VALUES (4, 'Album4', 2);
INSERT INTO public.albums (id, albumname, userid) VALUES (5, 'Album5', 3);


--
-- TOC entry 2915 (class 0 OID 32781)
-- Dependencies: 198
-- Data for Name: picturecomments; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.picturecomments (id, userid, content, date, pictureid) VALUES (1, 1, 'valami', '2018-11-06 00:00:00', 1);
INSERT INTO public.picturecomments (id, userid, content, date, pictureid) VALUES (2, 2, 'valami', '2018-11-06 00:00:00', 2);
INSERT INTO public.picturecomments (id, userid, content, date, pictureid) VALUES (3, 3, 'valami', '2018-11-06 00:00:00', 4);
INSERT INTO public.picturecomments (id, userid, content, date, pictureid) VALUES (4, 4, 'valami', '2018-11-06 00:00:00', 5);
INSERT INTO public.picturecomments (id, userid, content, date, pictureid) VALUES (5, 5, 'valami', '2018-11-06 00:00:00', 3);


--
-- TOC entry 2913 (class 0 OID 32775)
-- Dependencies: 196
-- Data for Name: pictures; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pictures (id, date, title, location, userid, albumid) VALUES (1, '2018-02-04 00:00:00', 'title1', 'Szeged', 1, 1);
INSERT INTO public.pictures (id, date, title, location, userid, albumid) VALUES (2, '2018-03-06 00:00:00', 'title2', 'BP', 1, 2);
INSERT INTO public.pictures (id, date, title, location, userid, albumid) VALUES (3, '2019-03-06 00:00:00', 'title3', 'Pecs', 2, 3);
INSERT INTO public.pictures (id, date, title, location, userid, albumid) VALUES (4, '2020-03-06 00:00:00', 'title3', 'Kecskemet', 2, 4);
INSERT INTO public.pictures (id, date, title, location, userid, albumid) VALUES (5, '2000-03-06 00:00:00', 'title3', 'New York', 3, 5);


-- Completed on 2018-11-08 11:46:32 CET

--
-- PostgreSQL database dump complete
--


