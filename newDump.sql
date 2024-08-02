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
    lastchapter integer DEFAULT 0,
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
    hanako integer DEFAULT 0,
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
13	18.23	3.97	6.58	2.92	1.87	1.29	12.03	3.03	22.65	13.37	14.23	23.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
14	18.23	13.97	6.58	2.92	1.87	1.29	12.03	23.03	22.65	13.37	14.23	23.61	50.45	4.33	246	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
15	53.71	45.87	16.74	8.68	11.23	4.71	42.04	44.36	42.26	55.45	47.54	71.21	77.21	10.02	246	14.42	32.32	43.32	12.49	19.32	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
16	51.08	45.12	16.42	8.65	11.92	4.69	41.29	44.16	41.76	67.31	51.33	69.23	75.21	9.64	247	14.39	39.42	47.27	12.55	18.42	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
17	67.71	44.32	16.35	8.61	10.78	4.65	40.98	43.66	41.36	31.03	60.01	68.65	79.91	9.55	248	14.32	38.87	47.01	12.41	17.35	6.54	7.91	0.00	0.00	0.00	0.00	0.00	0.00	0.00
18	74.23	42.07	16.13	8.58	10.54	4.62	39.87	43.36	41.91	6.03	67.32	67.95	69.38	9.34	249	24.52	38.01	46.55	12.38	16.13	6.43	7.83	0.00	0.00	0.00	0.00	0.00	0.00	0.00
32	55.26	26.99	75.16	6.25	1.11	3.09	41.86	26.36	31.37	3.86	83.89	44.03	71.48	16.32	263	23.12	28.85	12.94	19.42	8.03	15.21	5.56	22.47	36.51	9.18	11.22	45.76	12.98	6.38
1	18.23	23.61	14.23	13.37	2.92	23.02	1.87	12.03	13.97	3.03	22.65	6.58	1.29	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
2	18.23	23.61	14.23	13.37	2.92	23.02	1.87	12.03	13.97	3.03	22.65	6.58	2.29	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
3	18.23	13.97	6.58	2.92	1.87	1.29	12.03	3.03	22.65	13.37	14.23	23.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
4	18.23	13.97	6.58	2.92	1.87	1.29	12.03	3.03	22.65	13.37	14.23	23.61	23.02	2.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
5	18.23	13.97	6.58	2.92	1.87	1.29	12.03	3.03	22.65	13.37	14.23	23.61	21.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
6	19.23	13.97	6.58	2.92	1.87	1.29	12.03	3.03	22.65	13.37	14.23	23.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
7	18.23	13.97	6.58	2.92	1.87	1.29	12.03	3.03	22.65	13.37	14.23	22.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
22	76.12	57.54	15.54	8.38	2.03	4.42	28.23	42.51	45.35	5.78	63.54	64.21	74.05	7.52	253	24.32	41.73	51.30	12.25	24.34	6.02	7.32	29.47	23.47	13.05	15.16	18.99	17.82	0.00
23	75.87	59.01	15.40	8.32	1.95	4.36	26.34	42.32	44.23	5.62	62.97	63.09	79.23	30.32	254	30.23	41.22	17.02	42.45	23.67	5.94	7.24	28.89	22.79	12.63	14.73	18.46	17.51	0.00
19	79.96	57.23	15.92	8.52	11.42	4.53	39.50	42.91	41.42	6.01	77.64	67.03	62.52	8.86	250	24.48	37.42	45.98	12.39	15.52	6.30	7.71	0.00	0.00	0.00	0.00	0.00	0.00	0.00
20	78.32	54.98	15.82	8.47	2.32	4.54	39.00	42.96	41.26	5.96	84.52	66.43	56.43	8.32	251	24.40	36.91	45.63	12.41	15.17	6.14	7.64	30.64	24.94	0.00	0.00	0.00	0.00	0.00
21	77.34	56.65	15.75	8.43	2.21	4.47	65.32	41.96	45.34	5.91	65.43	65.90	59.01	7.98	252	24.45	36.44	47.01	12.27	24.75	6.09	7.49	30.01	24.05	0.00	0.00	0.00	0.00	0.00
8	18.23	13.97	6.58	2.92	1.87	1.29	12.03	3.03	22.65	13.37	18.23	23.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
9	18.23	13.97	6.58	2.92	1.87	1.29	12.03	3.03	22.65	19.37	14.23	23.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
10	18.23	13.97	6.58	12.92	1.87	1.29	12.03	3.03	22.65	13.37	14.23	23.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
11	18.23	13.97	6.58	2.92	11.87	1.29	12.03	3.03	22.65	13.37	14.23	23.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
12	18.23	13.97	6.58	2.92	1.87	1.29	9.03	3.03	22.65	13.37	14.23	23.61	23.02	4.33	0	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
24	75.00	58.54	15.23	8.29	1.85	4.29	47.41	41.85	43.67	5.45	67.22	62.43	82.03	34.23	255	29.22	40.95	16.75	62.32	27.28	5.87	7.07	28.25	21.91	12.45	14.35	17.86	16.89	10.85
25	72.94	57.25	15.00	8.14	1.80	4.21	52.97	40.91	42.76	5.21	77.64	59.38	83.21	22.13	256	28.28	40.45	15.82	36.95	41.39	5.80	6.98	27.82	21.32	11.96	14.07	17.37	16.20	10.23
26	68.42	59.25	14.70	8.05	1.73	4.12	50.34	39.72	41.91	5.11	86.31	55.51	75.78	19.59	257	27.24	60.91	14.93	35.75	43.77	5.64	6.79	27.49	20.99	11.42	13.68	16.63	15.59	9.57
27	67.42	58.55	14.21	7.85	1.62	4.01	49.64	38.42	40.71	5.01	82.31	54.51	84.78	17.59	258	28.24	62.91	17.33	33.45	42.56	18.99	6.57	26.92	20.27	11.05	13.24	16.21	15.02	8.99
28	68.90	53.27	67.21	7.61	1.49	3.78	48.14	34.25	42.71	4.78	85.93	52.77	76.05	19.28	259	27.44	60.72	16.28	31.99	64.89	18.02	6.35	26.48	40.88	10.74	12.99	15.89	14.67	8.42
29	66.45	44.01	78.16	7.27	1.41	3.62	46.63	32.02	39.22	4.54	88.13	50.99	62.38	37.50	260	26.39	34.38	15.02	28.54	14.62	17.24	6.19	25.21	41.41	10.31	12.47	15.44	14.14	7.95
30	80.91	29.71	77.46	7.02	1.29	3.51	44.97	30.42	36.62	4.34	86.24	48.29	50.82	21.28	261	25.03	33.28	14.42	25.04	11.22	16.39	6.02	24.07	39.97	9.82	12.03	14.95	13.75	7.24
31	81.41	27.34	75.73	6.56	1.18	3.24	43.01	27.98	33.09	4.01	85.64	46.49	68.28	19.95	262	24.02	31.05	13.11	22.92	8.92	15.85	5.77	23.13	37.21	9.36	11.58	14.42	13.27	6.89
33	38.28	25.21	80.89	5.99	1.44	2.88	39.62	24.04	29.74	3.67	88.16	42.25	63.08	12.71	264	21.85	26.57	11.71	17.09	7.37	13.46	5.28	21.11	34.91	8.96	10.82	40.07	12.48	28.92
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, money, totalstockvalue, profit,sukuna,ashaf,jukusuke ,ryuuichi ,asuka ,noroi ,kenji ,asura ,tashiro , tadashi ,seina ,kaze ,ishika ,akane ,sado ,alaric ,gorou ,kaiaku,arata ,chiyomi ,kuba ,touka ,abo ,kazuya, hanako) FROM stdin;
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

