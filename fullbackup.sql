--
-- PostgreSQL database dump
--

-- Dumped from database version 12.20 (Ubuntu 12.20-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.20 (Ubuntu 12.20-0ubuntu0.20.04.1)

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
    higeki numeric(5,2) DEFAULT 0,
    isamu numeric(5,2) DEFAULT 0,
    enki numeric(5,2) DEFAULT 20,
    yuu numeric(5,2) DEFAULT 20,
    ue numeric(5,2) DEFAULT 20,
    shiro numeric(5,2) DEFAULT 20,
    shukei numeric(5,2) DEFAULT 20,
    hokama numeric(5,2) DEFAULT 20,
    wei numeric(5,2) DEFAULT 20,
    sanagi numeric(5,2) DEFAULT 20,
    meatloaf numeric(5,2) DEFAULT 20,
    amelie numeric(5,2) DEFAULT 20,
    shihai numeric(5,2) DEFAULT 10,
    yasu numeric(5,2) DEFAULT 20,
    hirioki numeric(5,2) DEFAULT 20,
    renzo numeric(5,2) DEFAULT 20,
    kota numeric(5,2) DEFAULT 20,
    itachi numeric(5,2) DEFAULT 20,
    hikari numeric(5,2) DEFAULT 20,
    sora numeric(5,2) DEFAULT 20,
    kairijo numeric(5,2) DEFAULT 20,
    aki numeric(5,2) DEFAULT 20,
    toru numeric(5,2) DEFAULT 20,
    aoyama numeric(5,2) DEFAULT 20,
    dai numeric(5,2) DEFAULT 20
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


ALTER TABLE public.stockvalues_id_seq OWNER TO postgres;

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
    ashaf integer DEFAULT 0,
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
    higeki integer DEFAULT 0,
    isamu integer DEFAULT 0,
    enki integer DEFAULT 0,
    tempprofit numeric(100,2) DEFAULT 0,
    yuu integer DEFAULT 0,
    ue integer DEFAULT 0,
    shiro integer DEFAULT 0,
    shukei integer DEFAULT 0,
    hokama integer DEFAULT 0,
    wei integer DEFAULT 0,
    sanagi integer DEFAULT 0,
    meatloaf integer DEFAULT 0,
    amelie integer DEFAULT 0,
    shihai integer DEFAULT 0,
    yasu integer DEFAULT 0,
    hirioki integer DEFAULT 0,
    renzo integer DEFAULT 0,
    kota integer DEFAULT 0,
    itachi integer DEFAULT 0,
    hikari integer DEFAULT 0,
    sora integer DEFAULT 0,
    kairijo integer DEFAULT 0,
    aki integer DEFAULT 0,
    toru integer DEFAULT 0,
    aoyama integer DEFAULT 0,
    dai integer DEFAULT 0
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


ALTER TABLE public.users_id_seq OWNER TO postgres;

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
45163	2024-08-11 06:47:40.161801+00	halcyon
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
1	1	updateMoneyServer			t	2024-05-18 22:44:26.350379+00	2024-05-18 22:44:26.350379+00	\N	2024-08-22 00:00:00+00	2024-08-21 00:00:03.952911+00
\.


--
-- Data for Name: pga_schedule; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
1	1	daily		t	2024-05-18 23:00:00+00	\N	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,t,t,t,t,t,t}	{f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{f,f,f,f,f,f,f,f,f,f,f,f}
\.


--
-- Data for Name: pga_exception; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
\.


--
-- Data for Name: pga_joblog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
1	1	s	2024-08-09 18:23:00.778258+00	00:00:00.010281
2	1	s	2024-08-11 06:47:40.169419+00	00:00:00.00878
3	1	s	2024-08-12 00:00:00.110954+00	00:00:00.00926
4	1	s	2024-08-13 00:00:00.442049+00	00:00:00.008507
5	1	s	2024-08-14 00:00:03.926145+00	00:00:00.008551
6	1	s	2024-08-15 00:00:02.927457+00	00:00:00.00877
7	1	s	2024-08-16 00:00:03.45192+00	00:00:00.008841
8	1	s	2024-08-17 00:00:01.297003+00	00:00:00.009065
9	1	s	2024-08-18 00:00:00.795245+00	00:00:00.008768
10	1	s	2024-08-19 00:00:03.928288+00	00:00:00.008825
11	1	s	2024-08-20 00:00:01.444171+00	00:00:00.009037
12	1	s	2024-08-21 00:00:03.956738+00	00:00:00.009047
\.


--
-- Data for Name: pga_jobstep; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
1	1	updateServer		t	s	UPDATE users set money=money+60;\nUPDATE users set totalstockvalue=totalstockvalue+60;		investors	f	\N
\.


--
-- Data for Name: pga_jobsteplog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
1	1	1	s	10	2024-08-09 18:23:00.781221+00	00:00:00.006352	
2	2	1	s	13	2024-08-11 06:47:40.171742+00	00:00:00.00568	
3	3	1	s	14	2024-08-12 00:00:00.113071+00	00:00:00.00634	
4	4	1	s	14	2024-08-13 00:00:00.444087+00	00:00:00.005716	
5	5	1	s	15	2024-08-14 00:00:03.928269+00	00:00:00.005622	
6	6	1	s	16	2024-08-15 00:00:02.929649+00	00:00:00.005781	
7	7	1	s	16	2024-08-16 00:00:03.454162+00	00:00:00.005828	
8	8	1	s	16	2024-08-17 00:00:01.299239+00	00:00:00.006024	
9	9	1	s	16	2024-08-18 00:00:00.797366+00	00:00:00.005893	
10	10	1	s	16	2024-08-19 00:00:03.930539+00	00:00:00.005846	
11	11	1	s	16	2024-08-20 00:00:01.446522+00	00:00:00.005945	
12	12	1	s	16	2024-08-21 00:00:03.959062+00	00:00:00.005915	
\.


--
-- Data for Name: stockvalues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stockvalues (id, ashaf, jukusuke, ryuuichi, asuka, noroi, kenji, asura, tashiro, tadashi, seina, kaze, ishika, akane, sado, alaric, gorou, kaiaku, arata, chiyomi, kuba, touka, abo, kazuya, hanako, lastchapter, higeki, isamu, enki, yuu, ue, shiro, shukei, hokama, wei, sanagi, meatloaf, amelie, shihai, yasu, hirioki, renzo, kota, itachi, hikari, sora, kairijo, aki, toru, aoyama, dai) FROM stdin;
36	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	0	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
37	42.00	41.00	32.00	32.00	31.00	30.00	25.00	25.00	24.00	24.00	23.00	23.00	23.00	21.00	19.00	18.00	17.00	15.00	14.00	20.00	20.00	20.00	20.00	21.00	1	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
38	42.00	41.00	32.00	33.28	31.00	32.10	25.00	25.00	24.00	24.00	23.00	23.00	23.00	21.00	19.00	18.00	17.00	15.00	14.00	20.00	20.00	20.00	20.00	21.00	2	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
39	42.00	44.69	35.84	33.28	31.00	32.10	27.25	25.50	24.00	24.00	23.00	23.46	23.00	21.00	19.00	18.00	17.00	15.15	14.00	20.00	20.00	20.00	20.00	21.00	3	20.00	20.00	20.00	20.20	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
40	42.00	44.69	35.84	33.28	31.00	32.10	27.25	25.50	24.00	24.00	23.00	23.46	23.00	21.00	19.00	18.00	17.00	15.15	14.00	20.00	21.00	20.00	20.00	21.00	4	20.00	20.00	20.00	20.20	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
41	39.90	44.69	35.84	33.28	31.00	32.10	27.25	25.50	24.00	24.00	23.00	23.46	23.00	23.52	19.00	18.00	19.04	15.15	14.70	20.00	21.00	20.00	22.40	21.00	5	20.00	20.00	18.00	20.20	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
42	39.00	44.69	35.84	33.28	31.00	32.10	27.25	25.50	24.00	24.00	23.00	23.46	23.00	25.40	19.00	18.00	20.75	15.15	14.70	20.00	22.05	20.00	24.20	21.00	6	20.00	20.00	17.64	20.20	20.00	20.00	20.00	22.20	20.00	20.00	20.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
43	39.00	44.69	35.84	33.28	31.00	32.10	27.25	25.50	24.00	24.00	23.00	23.46	23.00	25.40	19.00	18.54	20.75	15.15	14.70	20.00	23.81	20.00	24.20	21.00	7	20.00	20.00	17.64	20.20	20.00	20.00	20.00	22.20	20.00	20.00	20.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
44	39.00	44.69	35.84	33.28	31.62	32.10	27.25	25.50	24.00	24.00	23.00	23.46	23.00	25.40	19.00	18.54	20.75	15.15	14.70	21.60	23.81	20.00	24.20	21.00	8	20.00	20.00	17.64	20.20	20.00	20.00	20.00	22.20	20.00	20.00	1.60	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
45	39.00	44.69	35.84	33.28	31.62	32.10	27.25	25.50	24.00	24.00	23.00	25.80	23.00	25.40	19.00	18.54	20.75	16.10	14.70	21.60	23.81	20.00	24.20	21.00	9	20.00	20.00	17.64	20.20	20.00	20.00	20.00	22.20	20.00	20.00	1.50	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
46	39.00	44.69	35.84	33.28	31.62	32.10	27.25	27.29	24.00	25.44	23.00	25.80	23.00	25.40	19.00	18.54	20.75	16.10	14.70	21.60	23.81	20.00	24.20	21.00	10	20.00	20.00	17.64	21.41	20.00	20.00	20.00	22.20	20.00	20.00	2.01	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
47	39.00	44.69	35.84	33.28	31.62	32.10	27.25	27.29	24.00	25.44	23.69	25.80	23.00	25.40	19.00	18.54	20.75	16.10	14.70	21.60	23.81	20.00	24.20	21.00	11	20.00	20.00	17.64	21.41	20.00	20.60	20.00	22.20	20.00	20.00	2.13	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
48	39.00	44.69	35.84	33.28	31.62	32.10	27.25	27.29	24.00	29.26	23.69	25.80	23.00	25.40	19.57	18.54	20.75	16.10	14.70	21.60	23.81	20.00	24.20	21.00	12	20.00	20.00	17.64	21.41	20.00	20.60	20.00	22.20	20.00	20.00	2.25	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
49	39.00	46.03	37.63	33.28	31.62	32.10	27.25	27.29	24.00	29.26	23.69	23.22	23.00	25.40	19.57	18.54	20.75	16.10	14.70	21.60	23.81	20.00	24.20	21.00	13	20.00	20.00	17.64	21.41	20.00	20.60	20.00	22.20	20.00	20.00	1.00	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
50	39.00	46.03	37.63	34.61	31.62	33.70	27.25	27.29	24.00	29.26	23.69	23.22	24.15	25.40	19.57	18.54	21.37	16.10	14.70	21.60	23.81	20.00	24.20	21.00	14	20.00	20.60	17.64	21.41	21.20	21.63	20.00	22.20	20.00	20.00	1.42	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
51	39.00	46.03	37.63	34.61	31.62	33.70	27.25	27.29	24.00	29.26	23.69	23.22	24.15	25.40	19.57	18.54	21.37	16.10	14.70	21.60	23.81	20.00	24.20	21.00	15	21.20	20.60	17.64	21.41	20.00	21.63	20.00	22.20	20.00	20.00	1.42	20.00	10.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
52	39.00	46.03	37.63	34.61	31.62	33.70	27.25	27.29	24.00	29.26	23.69	23.22	24.15	25.40	19.57	18.54	21.37	16.10	14.70	21.60	23.81	20.00	24.20	21.00	16	21.20	20.60	17.64	21.41	20.00	21.63	20.00	22.20	20.00	20.00	2.00	20.00	10.00	20.00	20.60	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00	20.00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, money, totalstockvalue, profit, ashaf, jukusuke, ryuuichi, asuka, noroi, kenji, asura, tashiro, tadashi, seina, kaze, ishika, akane, sado, alaric, gorou, kaiaku, arata, chiyomi, kuba, touka, abo, kazuya, hanako, higeki, isamu, enki, tempprofit, yuu, ue, shiro, shukei, hokama, wei, sanagi, meatloaf, amelie, shihai, yasu, hirioki, renzo, kota, itachi, hikari, sora, kairijo, aki, toru, aoyama, dai) FROM stdin;
14408	maddoxx	jujutsu123	2040.85	5847.81	287.81	0	0	1	0	5	4	0	9	10	2	0	0	10	5	15	0	15	0	20	10	10	0	0	0	0	10	15	73.66	0	0	0	0	5	0	7	160	0	16	0	0	0	0	0	0	0	0	0	0	0	0
14421	theyuster	stonksgodown	5256.00	5457.28	17.28	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	1	1	1	1	0	0	0	0	0	0	0	0	0.00	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14416	wompwomp	jubvun-qymwyj-qIwgy8	3240.60	5771.20	211.20	0	0	5	5	0	62	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	17.40	0	0	0	0	0	0	0	30	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14409	Knee Deep In Doot	lucas2005	608.06	5815.41	255.41	0	15	0	15	0	0	0	0	0	10	10	0	0	10	10	0	15	20	28	0	0	0	10	0	0	10	10	62.64	0	0	0	0	0	10	5	120	0	0	0	0	0	20	10	10	0	0	0	0	0	0
14414	Shatter	theJOKER05	2712.01	5745.98	185.98	0	5	0	0	0	0	0	0	0	0	20	10	0	0	0	0	31	0	0	0	15	2	0	2	11	5	0	0.00	0	0	0	0	0	20	0	0	3	0	0	0	0	0	0	10	0	0	0	0	0	0
14417	armada	password	6980.35	6980.35	1420.35	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	133.20	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14411	TheIronLegion	DMasterRevan.7929	3960.56	5702.45	142.45	0	0	0	0	0	0	0	0	1	0	3	4	0	0	5	9	1	10	18	0	6	0	0	1	0	4	0	138.04	0	0	0	0	0	6	0	238	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14419	test	jujutsu12	2100.01	4900.01	-659.99	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	638.00	0	0	0	0	0	0	0	1400	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14412	sixes3232	sixes666	3664.38	5788.42	228.42	0	0	0	0	0	0	13	0	0	0	1	0	0	1	0	0	0	0	74	10	5	0	0	0	9	0	0	0.00	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14424	CraigM370	Malleron32	4840.00	4840.00	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14423	Chad Thundersweep	11162316	6812.51	6812.51	1552.51	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14415	ytho	Microwave08	2341.66	5774.17	214.17	3	6	5	5	5	5	3	3	2	1	0	1	1	4	1	1	3	0	0	6	5	0	1	1	1	1	0	160.66	0	0	7	1	2	0	0	644	0	0	0	0	0	0	0	0	1	0	0	0	0	0
14420	mazinator	mazination	2469.28	5637.22	137.22	0	0	9	15	0	15	0	0	0	0	0	1	0	12	0	0	0	0	78	0	0	0	0	0	0	0	0	81.20	0	0	0	0	0	0	0	140	0	5	0	0	0	0	0	0	0	0	0	0	0	0
14410	Torrential_Downpour	samuelthesuperb#swag	2700.16	6837.27	1277.27	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	50	0	11	0	0	12	6	6	0	745.30	0	0	0	0	0	0	0	1285	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14418	justcallmeclu	Zigzager	3961.20	5629.23	97.53	3	0	0	0	0	0	0	0	0	0	0	0	0	0	9	0	10	20	0	0	0	0	0	0	3	26	0	69.60	0	0	0	0	0	0	0	120	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14422	GOoober	@WSMS@UC3	4335.10	5342.22	22.22	0	0	0	0	0	9	0	0	11	0	5	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0.00	0	15	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14413	Flauros	AsukaKamo27	3965.51	5724.10	164.10	0	3	10	0	5	10	0	0	1	0	0	0	0	0	0	0	0	1	10	5	0	0	0	0	0	5	0	58.00	0	0	0	0	5	0	0	100	2	0	0	0	0	0	0	0	0	0	0	0	0	0
\.


--
-- Name: stockvalues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stockvalues_id_seq', 52, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 14424, true);


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
-- PostgreSQL database dump complete
--

