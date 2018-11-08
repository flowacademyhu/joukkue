--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

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
-- Name: event; Type: TABLE; Schema: public; Owner: vrgbrg
--

CREATE TABLE public.event (
    id integer NOT NULL,
    title character varying(50),
    date timestamp without time zone,
    address character varying(100),
    description character varying(255)
);


ALTER TABLE public.event OWNER TO vrgbrg;

--
-- Name: event_id_seq; Type: SEQUENCE; Schema: public; Owner: vrgbrg
--

CREATE SEQUENCE public.event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_id_seq OWNER TO vrgbrg;

--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vrgbrg
--

ALTER SEQUENCE public.event_id_seq OWNED BY public.event.id;


--
-- Name: eventusers; Type: TABLE; Schema: public; Owner: vrgbrg
--

CREATE TABLE public.eventusers (
    id integer NOT NULL,
    userid integer,
    status character varying(50),
    owner boolean,
    eventid integer
);


ALTER TABLE public.eventusers OWNER TO vrgbrg;

--
-- Name: eventusers_id_seq; Type: SEQUENCE; Schema: public; Owner: vrgbrg
--

CREATE SEQUENCE public.eventusers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eventusers_id_seq OWNER TO vrgbrg;

--
-- Name: eventusers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vrgbrg
--

ALTER SEQUENCE public.eventusers_id_seq OWNED BY public.eventusers.id;


--
-- Name: event id; Type: DEFAULT; Schema: public; Owner: vrgbrg
--

ALTER TABLE ONLY public.event ALTER COLUMN id SET DEFAULT nextval('public.event_id_seq'::regclass);


--
-- Name: eventusers id; Type: DEFAULT; Schema: public; Owner: vrgbrg
--

ALTER TABLE ONLY public.eventusers ALTER COLUMN id SET DEFAULT nextval('public.eventusers_id_seq'::regclass);


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: vrgbrg
--

COPY public.event (id, title, date, address, description) FROM stdin;
1	Tasi morzsaparty	2018-11-17 00:00:00	6725 Szeged, Pásztor utca 2	Segítsetek megszabadulni a maradéktól!
2	Bödön piac	2018-11-10 00:00:00	6724 Szeged, Kossuth Lajos sgt. 119	Újra kétnapos Bödön!! Ugye tudod, mit jelent ez?!
3	Lámpás séta Szegeden	2018-11-10 00:00:00	6722 Szeged, Kálvária sugárút 23	A program díja: 500 Ft/fő, amellyel egy téli szüneti programon is részt lehet venni december 27-én vagy 28-án. 
4	16. Olasz Filmfesztivál	2018-11-09 00:00:00	6721 Szeged, Vaszy Viktor tér 3	Válogatás a legújabb olasz filmekből eredeti nyelven, magyar felirattal
5	Munjin Andrea kiállításmegnyitó	2018-11-10 00:00:00	6720 Szeged, Deák Ferenc utca 18	Föllép a Lucy Dreamin akusztikus duóverziója Lucy Chillin néven, valamint Lanczkor Gábor (Anarchitecture, Médeia fiai) új szólóprojektje is bemutatkozik Los Reyes Católicos néven.
6	Creativ_it meetup - Enterprise Gamification	2018-11-07 00:00:00	6722 Szeged, Kálvária sgt 23	 ingyenes meetupot szervez, ahol a gamification vállalati megoldásairól hallgathatsz meg egy előadást.
7	Legendás Lemezek - Szegedi Lemezbörze	2018-11-24 00:00:00	6725 Szeged, Rákóczy utca 1	Biggest record fair in south of Hungary. The last one this year.
8	Van Gogh – Búzamezők és borús égbolt között	2018-11-24 00:00:00	6720 Szeged, Vaszy Viktor tér 3	Ebben a művészeti ismeretterjesztő filmben Vincent Van Gogh munkássága egy egészen új nézőpontból kerül megközelítésre
9	Belvárosi Magyar Ede séta	2018-11-18 00:00:00	6720 Szeged, Széchenyi tér 12	 A sétán a Reök-palotát megálmodó zseniális építész legszebb szecessziós épületeit ismerhetjük meg – kívül-belül!
10	Diótörő	2018-12-15 00:00:00	Szegedi Nemzeti Színház	A Diótörő balett ötlete a cári színház egykori igazgatójától származott. E. T. A. Hoffmann: A diótörő és az egérkirály című meséje alapján olyan mese-balettet akart színpadra vinni, ami minden addigit felülmúl, mind hangzásban, mind pedig látványban.
\.


--
-- Data for Name: eventusers; Type: TABLE DATA; Schema: public; Owner: vrgbrg
--

COPY public.eventusers (id, userid, status, owner, eventid) FROM stdin;
1	8	Ott lesz	f	1
2	1	Ott lesz	f	3
3	10	Ott lesz	f	4
4	2	Nem lesz ott	f	2
5	3	Ott lesz	t	5
6	9	Érdeklődik	f	6
7	4	Ott lesz	f	7
8	5	Nem lesz ott	f	4
9	8	Ott lesz	f	8
10	2	Érdeklődik	f	1
11	1	Ott lesz	t	3
\.


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vrgbrg
--

SELECT pg_catalog.setval('public.event_id_seq', 10, true);


--
-- Name: eventusers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vrgbrg
--

SELECT pg_catalog.setval('public.eventusers_id_seq', 11, true);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: vrgbrg
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: eventusers eventusers_pkey; Type: CONSTRAINT; Schema: public; Owner: vrgbrg
--

ALTER TABLE ONLY public.eventusers
    ADD CONSTRAINT eventusers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

