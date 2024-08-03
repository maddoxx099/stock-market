--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.stockvalues DROP CONSTRAINT stockvalues_pkey;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.stockvalues ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.stockvalues_id_seq;
DROP TABLE public.stockvalues;
DROP EXTENSION pgagent;
-- *not* dropping schema, since initdb creates it
DROP SCHEMA pgagent;
--
-- Name: pgagent; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgagent;


ALTER SCHEMA pgagent OWNER TO postgres;

--
-- Name: SCHEMA pgagent; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';


--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: pgagent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;


--
-- Name: EXTENSION pgagent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: stockvalues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stockvalues (
    id integer NOT NULL,
    ashaf numeric(5,2) DEFAULT 0,
    jukusuke numeric(5,2) DEFAULT 0,
    ryuuichi numeric(5,2) DEFAULT 0,
    asuka numeric(5,2) DEFAULT 0,
    noroi numeric(5,2) DEFAULT 0,
    kenji numeric(5,2) DEFAULT 0,
    asura numeric(5,2) DEFAULT 0,
    tashiro numeric(5,2) DEFAULT 0,
    tadashi numeric(5,2) DEFAULT 0,
    seina numeric(5,2) DEFAULT 0,
    kaze numeric(5,2) DEFAULT 0,
    ishika numeric(5,2) DEFAULT 0,
    akane numeric(5,2) DEFAULT 0,
    sado numeric(5,2) DEFAULT 0,
    alaric numeric(5,2) DEFAULT 0,
    gorou numeric(5,2) DEFAULT 0,
    kaiaku numeric(5,2) DEFAULT 0,
    arata numeric(5,2) DEFAULT 0,
    chiyomi numeric(5,2) DEFAULT 0,
    kuba numeric(5,2) DEFAULT 0,
    touka numeric(5,2) DEFAULT 0,
    abo numeric(5,2) DEFAULT 0,
    kazuya numeric(5,2) DEFAULT 0,
    hanako numeric(5,2) DEFAULT 0,
    lastchapter integer DEFAULT 0
);


ALTER TABLE public.stockvalues OWNER TO postgres;

--
-- Name: stockvalues_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stockvalues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stockvalues_id_seq OWNER TO postgres;

--
-- Name: stockvalues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stockvalues_id_seq OWNED BY public.stockvalues.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    money numeric(100,2) DEFAULT 1000,
    totalstockvalue numeric(100,2) DEFAULT 1000,
    profit numeric(100,2) DEFAULT 0,
    ashaf  integer DEFAULT 0,
    jukusuke integer DEFAULT 0,
    ryuuichi integer DEFAULT 0,
    asuka integer DEFAULT 0,
    noroi integer DEFAULT 0,
    kenji integer DEFAULT 0,
    asura integer DEFAULT 0,
    tashiro integer DEFAULT 0,
    tadashi integer DEFAULT 0,
    seina integer DEFAULT 0,
    kaze integer DEFAULT 0,
    ishika integer DEFAULT 0,
    akane integer DEFAULT 0,
    sado integer DEFAULT 0,
    alaric integer DEFAULT 0,
    gorou integer DEFAULT 0,
    kaiaku integer DEFAULT 0,
    arata integer DEFAULT 0,
    chiyomi integer DEFAULT 0,
    kuba integer DEFAULT 0,
    touka integer DEFAULT 0,
    abo integer DEFAULT 0,
    kazuya integer DEFAULT 0,
    hanako integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: stockvalues id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stockvalues ALTER COLUMN id SET DEFAULT nextval('public.stockvalues_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: pga_jobagent; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
344189	2024-05-19 13:26:40.766091-04	newvm
344538	2024-05-19 13:46:41.170743-04	newvm
\.


--
-- Data for Name: pga_jobclass; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
\.


--
-- Data for Name: pga_job; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
1	1	updateMoneyServer			t	2024-05-18 18:44:26.350379-04	2024-05-18 18:44:26.350379-04	\N	2024-07-25 00:00:00-04	2024-07-23 20:00:01.122558-04
\.


--
-- Data for Name: pga_schedule; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
1	1	daily		t	2024-05-18 19:00:00-04	\N	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,t,t,t,t,t,t}	{f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{f,f,f,f,f,f,f,f,f,f,f,f}
\.


--
-- Data for Name: pga_exception; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
\.
--
-- Data for Name: pga_jobstep; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
1	1	updateServer		t	s	UPDATE users set money=money+60;\nUPDATE users set totalstockvalue=totalstockvalue+60;		investors	f	\N
\.


--
-- Data for Name: stockvalues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stockvalues (id, ashaf,jukusuke ,ryuuichi ,asuka ,noroi ,kenji ,asura ,tashiro , tadashi ,seina ,kaze ,ishika ,akane ,sado ,alaric ,gorou ,kaiaku,arata ,chiyomi ,kuba ,touka ,abo ,kazuya, hanako , lastchapter) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, money, totalstockvalue, profit,ashaf,jukusuke ,ryuuichi ,asuka ,noroi ,kenji ,asura ,tashiro , tadashi ,seina ,kaze ,ishika ,akane ,sado ,alaric ,gorou ,kaiaku,arata ,chiyomi ,kuba ,touka ,abo ,kazuya, hanako) FROM stdin;
\.


--
-- Name: stockvalues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stockvalues_id_seq', 33, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 14406, true);


--
-- Name: stockvalues stockvalues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stockvalues
    ADD CONSTRAINT stockvalues_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

