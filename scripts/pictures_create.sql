--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.albums (
    id bigint,
    albumname character varying(50),
    userid bigint
);


ALTER TABLE public.albums OWNER TO postgres;

--
-- Name: picturecomments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.picturecomments (
    id bigint,
    userid bigint,
    content character varying(255),
    date timestamp without time zone,
    pictureid bigint
);


ALTER TABLE public.picturecomments OWNER TO postgres;

--
-- Name: pictures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pictures (
    id bigint,
    date timestamp without time zone,
    title character varying(255),
    location character varying(50),
    userid bigint,
    albumid bigint
);


ALTER TABLE public.pictures OWNER TO postgres;

--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.albums (id, albumname, userid) FROM stdin;
\N	Album1	\N
\N	Album2	\N
\N	Album3	\N
\N	Album4	\N
\N	Album5	\N
\.


--
-- Data for Name: picturecomments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.picturecomments (id, userid, content, date, pictureid) FROM stdin;
\N	1	valami	2018-11-06 00:00:00	1
\N	2	valami	2018-11-06 00:00:00	2
\N	3	valami	2018-11-06 00:00:00	4
\N	4	valami	2018-11-06 00:00:00	5
\N	5	valami	2018-11-06 00:00:00	3
\.


--
-- Data for Name: pictures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pictures (id, date, title, location, userid, albumid) FROM stdin;
\N	2018-02-04 00:00:00	title1	Szeged	\N	\N
\N	2018-03-06 00:00:00	title2	BP	\N	\N
\N	2019-03-06 00:00:00	title3	Pecs	\N	\N
\N	2020-03-06 00:00:00	title3	Kecskemet	\N	\N
\N	2000-03-06 00:00:00	title3	New York	\N	\N
\.


--
-- PostgreSQL database dump complete
--

