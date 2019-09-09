-- Creating DB:
	CREATE DATABASE test_db;
--Creating user in postgres:
	create user postgres with encrypted password '1111';
--Grant privileges to user:
	grant all privileges on database test_db to myuser;
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
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
-- Name: employee; Type: TABLE; Schema: public; Owner: newrole
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    username character varying(25),
    firstname character varying(25),
    lastname character varying(25),
    date_joined date,
    position_id integer,
    salary_id integer,
    experience numeric(3,1),
    technology_id integer
);


ALTER TABLE public.employee OWNER TO newrole;

--
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: newrole
--

CREATE SEQUENCE public.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_id_seq OWNER TO newrole;

--
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newrole
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- Name: level; Type: TABLE; Schema: public; Owner: newrole
--

CREATE TABLE public.level (
    id integer NOT NULL,
    name character varying(15),
    year_of_required_experience character varying(30)
);


ALTER TABLE public.level OWNER TO newrole;

--
-- Name: position; Type: TABLE; Schema: public; Owner: newrole
--

CREATE TABLE public."position" (
    id integer NOT NULL,
    name character varying(30),
    level_id integer
);


ALTER TABLE public."position" OWNER TO newrole;

--
-- Name: position_id_seq; Type: SEQUENCE; Schema: public; Owner: newrole
--

CREATE SEQUENCE public.position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.position_id_seq OWNER TO newrole;

--
-- Name: position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newrole
--

ALTER SEQUENCE public.position_id_seq OWNED BY public."position".id;


--
-- Name: position_salary; Type: TABLE; Schema: public; Owner: newrole
--

CREATE TABLE public.position_salary (
    id integer NOT NULL,
    position_id integer,
    salary_id integer,
    date_of_setting date
);


ALTER TABLE public.position_salary OWNER TO newrole;

--
-- Name: position_salary_id_seq; Type: SEQUENCE; Schema: public; Owner: newrole
--

CREATE SEQUENCE public.position_salary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.position_salary_id_seq OWNER TO newrole;

--
-- Name: position_salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newrole
--

ALTER SEQUENCE public.position_salary_id_seq OWNED BY public.position_salary.id;


--
-- Name: salary; Type: TABLE; Schema: public; Owner: newrole
--

CREATE TABLE public.salary (
    id integer NOT NULL,
    amount smallint
);


ALTER TABLE public.salary OWNER TO newrole;

--
-- Name: technology; Type: TABLE; Schema: public; Owner: newrole
--

CREATE TABLE public.technology (
    id integer NOT NULL,
    name character varying(30),
    complexity character varying(15)
);


ALTER TABLE public.technology OWNER TO newrole;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public."position" ALTER COLUMN id SET DEFAULT nextval('public.position_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.position_salary ALTER COLUMN id SET DEFAULT nextval('public.position_salary_id_seq'::regclass);


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: newrole
--

COPY public.employee (id, username, firstname, lastname, date_joined, position_id, salary_id, experience, technology_id) FROM stdin;
1	dennietill	Dennie	Till	2000-02-23	1051	6	10.1	0
2	anabelbaker	Anabel	Baker	2000-11-29	1052	15	14.1	1
3	oberonveyne	Oberon	Veyne	2001-11-21	1053	28	14.9	2
4	goldinahurst	Goldina	Hurst	2002-04-28	1054	3	10.4	3
5	jeremiedamuth	Jeremie	Damuth	2018-04-01	1055	9	1.8	4
6	rosabellepermutt	Rosabelle	Permutt	2017-11-27	1056	29	11.7	5
7	buddiefrankel	Buddie	Frankel	2015-12-01	1054	6	11.9	6
8	marylynnemcgovern	Marylynne	Mcgovern	2014-12-20	1058	11	13.7	7
9	ogdonhegarty	Ogdon	Hegarty	2014-07-22	1053	18	11.5	8
10	rubettahoaglin	Rubetta	Hoaglin	2013-04-23	1060	6	14.5	9
51	dennietill	Dennie	Till	2000-02-23	1051	6	10.1	0
52	anabelbaker	Anabel	Baker	2000-11-29	1052	15	14.1	1
53	oberonveyne	Oberon	Veyne	2001-11-21	1053	28	14.9	2
54	goldinahurst	Goldina	Hurst	2002-04-28	1054	3	10.4	3
55	jeremiedamuth	Jeremie	Damuth	2018-04-01	1055	9	1.8	4
56	rosabellepermutt	Rosabelle	Permutt	2017-11-27	1056	29	11.7	5
57	buddiefrankel	Buddie	Frankel	2015-12-01	1054	6	11.9	6
58	marylynnemcgovern	Marylynne	Mcgovern	2014-12-20	1058	11	13.7	7
59	ogdonhegarty	Ogdon	Hegarty	2014-07-22	1053	18	11.5	8
60	rubettahoaglin	Rubetta	Hoaglin	2013-04-23	1060	6	14.5	9
61	mohammedmatulewicz	Mohammed	Matulewicz	2013-01-21	1055	17	2.6	0
62	christeanharington	Christean	Harington	2010-12-14	1062	27	13.9	1
63	mendeldhar	Mendel	Dhar	2010-07-19	1054	1	1.9	2
64	normataniguchi	Norma	Taniguchi	2010-01-24	1052	15	11.1	3
65	justinopollastri	Justino	Pollastri	2002-09-06	1056	27	1.8	4
66	evaleennoecker	Evaleen	Noecker	2002-07-11	1066	2	10.8	5
67	royhecht	Roy	Hecht	2003-08-18	1052	15	6.6	6
68	brennknutson	Brenn	Knutson	2005-05-08	1053	16	5.5	7
69	nialhwu	Nial	Hwu	2005-09-22	1060	2	3.1	8
70	coleenhumbert	Coleen	Humbert	2005-11-19	1070	15	9.3	9
71	meadtoth	Mead	Toth	2006-01-06	1053	20	9.9	0
72	elyshaattanasio	Elysha	Attanasio	2008-09-05	1051	3	7.4	1
73	demetrispinson	Demetris	Pinson	2008-11-17	1058	11	1.7	2
74	vikinobel	Viki	Nobel	2008-12-27	1053	19	8.7	3
75	linckavanaugh	Linc	Kavanaugh	2009-11-09	1054	6	9.0	4
76	deloriskawamura	Deloris	Kawamura	2000-05-02	1076	17	13.7	5
77	buckyhurst	Bucky	Hurst	2000-09-15	1077	19	12.7	6
78	ajaygross	Ajay	Gross	2001-08-30	1054	6	4.6	7
79	xymenesmcgovern	Xymenes	Mcgovern	2002-01-20	1052	12	8.8	8
80	bobbettecandaele	Bobbette	Candaele	2002-06-21	1080	28	8.0	9
81	artemusharington	Artemus	Harington	2002-12-17	1081	4	6.6	0
82	rosalyndchew	Rosalynd	Chew	2003-07-07	1076	16	9.8	1
83	dwaynenoecker	Dwayne	Noecker	2004-01-19	1056	20	12.9	2
84	cindiesumma	Cindie	Summa	2005-06-04	1054	5	13.6	3
85	byromhumbert	Byrom	Humbert	2005-11-03	1076	15	12.4	4
86	rebekahlathrop	Rebekah	Lathrop	2006-01-26	1056	16	3.5	5
87	johnathannobel	Johnathan	Nobel	2008-06-13	1054	5	4.3	6
88	derabinowitz	De	Rabinowitz	2008-07-16	1058	15	14.3	7
89	zebedeegross	Zebedee	Gross	2011-04-30	1080	19	14.1	8
90	katherinaguadagnoli	Katherina	Guadagnoli	2012-05-19	1081	4	13.9	9
91	andychew	Andy	Chew	2013-12-11	1076	12	12.1	0
92	allegrafenn	Allegra	Fenn	2013-12-29	1080	17	6.2	1
93	yancelathrop	Yance	Lathrop	2014-04-29	1066	1	5.6	2
94	gillguerra	Gill	Guerra	2014-10-05	1052	8	13.1	3
95	urbanguadagnoli	Urban	Guadagnoli	2015-03-09	1062	24	12.5	4
96	jordanashibata	Jordana	Shibata	2015-04-14	1066	3	4.1	5
97	kevenguerra	Keven	Guerra	2015-04-21	1052	17	4.4	6
98	celinaglenshaw	Celina	Glenshaw	2015-09-17	1062	22	7.4	7
99	romeoglenshaw	Romeo	Glenshaw	2015-12-08	1066	4	2.1	8
100	corbettkernan	Corbett	Kernan	2018-02-06	1070	7	1.4	9
\.


--
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newrole
--

SELECT pg_catalog.setval('public.employee_id_seq', 100, true);


--
-- Data for Name: level; Type: TABLE DATA; Schema: public; Owner: newrole
--

COPY public.level (id, name, year_of_required_experience) FROM stdin;
1	junior	up to 2
2	middle	1 to 4
3	senior	greater than 4
\.


--
-- Data for Name: position; Type: TABLE DATA; Schema: public; Owner: newrole
--

COPY public."position" (id, name, level_id) FROM stdin;
1051	HR manager	1
1052	Sales manager	2
1053	Delivery manager	3
1054	Sales manager	1
1055	Software engineer	2
1056	Sales manager	3
1058	HR manager	2
1060	Delivery manager	1
1062	HR manager	3
1066	Project manager	1
1070	Project manager	2
1076	Delivery manager	2
1077	Software engineer	3
1080	Project manager	3
1081	Software engineer	1
\.


--
-- Name: position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newrole
--

SELECT pg_catalog.setval('public.position_id_seq', 1250, true);


--
-- Data for Name: position_salary; Type: TABLE DATA; Schema: public; Owner: newrole
--

COPY public.position_salary (id, position_id, salary_id, date_of_setting) FROM stdin;
652	1051	6	2016-04-04
653	1052	15	2017-08-08
654	1053	28	2012-08-08
655	1054	3	2010-09-09
656	1055	9	2014-09-09
657	1056	29	2012-03-03
658	1054	6	2015-10-10
659	1058	11	2018-02-02
660	1053	18	2014-05-05
661	1060	6	2011-08-08
662	1055	17	2011-04-04
663	1062	27	2012-11-11
664	1054	1	2013-09-09
666	1056	27	2015-01-01
667	1066	2	2016-03-03
669	1053	16	2017-04-04
670	1060	2	2015-12-12
671	1070	15	2013-08-08
672	1053	20	2014-10-10
673	1051	3	2011-03-03
675	1053	19	2018-07-07
677	1076	17	2012-08-08
678	1077	19	2014-06-06
680	1052	12	2015-04-04
681	1080	28	2014-12-12
682	1081	4	2017-06-06
683	1076	16	2016-08-08
684	1056	20	2011-06-06
685	1054	5	2018-11-11
686	1076	15	2017-11-11
687	1056	16	2013-10-10
689	1058	15	2015-11-11
690	1080	19	2018-09-09
692	1076	12	2010-12-12
693	1080	17	2015-10-10
694	1066	1	2015-09-09
695	1052	8	2010-09-09
696	1062	24	2013-07-07
697	1066	3	2011-05-05
698	1052	17	2014-02-02
699	1062	22	2010-08-08
700	1066	4	2010-09-09
701	1070	7	2011-08-08
\.


--
-- Name: position_salary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newrole
--

SELECT pg_catalog.setval('public.position_salary_id_seq', 701, true);


--
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: newrole
--

COPY public.salary (id, amount) FROM stdin;
6	900
15	1800
28	3500
3	600
9	1200
29	4000
11	1400
18	2100
17	2000
27	3000
1	400
2	500
16	1900
20	2300
19	2200
12	1500
4	700
5	800
8	1100
24	2700
22	2500
7	1000
\.


--
-- Data for Name: technology; Type: TABLE DATA; Schema: public; Owner: newrole
--

COPY public.technology (id, name, complexity) FROM stdin;
0	SQL	low
1	Java	high
2	JavaScript	low
3	C#	medium
4	C++	high
5	Python	low
6	PHP	low
7	Ruby	low
8	Swift	medium
9	GO	medium
\.


--
-- Name: amount_unique; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT amount_unique UNIQUE (amount);


--
-- Name: employee_pkey; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: level_pkey; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_pkey PRIMARY KEY (id);


--
-- Name: name_unique; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.technology
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: position_pkey; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);


--
-- Name: position_salary_pkey; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.position_salary
    ADD CONSTRAINT position_salary_pkey PRIMARY KEY (id);


--
-- Name: position_salary_position_id_salary_id_key; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.position_salary
    ADD CONSTRAINT position_salary_position_id_salary_id_key UNIQUE (position_id, salary_id);


--
-- Name: salary_pkey; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (id);


--
-- Name: technology_pkey; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.technology
    ADD CONSTRAINT technology_pkey PRIMARY KEY (id);


--
-- Name: unique_pos_and_level; Type: CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT unique_pos_and_level UNIQUE (name, level_id);


--
-- Name: employee_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_position_id_fkey FOREIGN KEY (position_id) REFERENCES public."position"(id);


--
-- Name: employee_salary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_salary_id_fkey FOREIGN KEY (salary_id) REFERENCES public.salary(id);


--
-- Name: employee_technology_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_technology_id_fkey FOREIGN KEY (technology_id) REFERENCES public.technology(id);


--
-- Name: position_level_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_level_id_fkey FOREIGN KEY (level_id) REFERENCES public.level(id);


--
-- Name: position_salary_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.position_salary
    ADD CONSTRAINT position_salary_position_id_fkey FOREIGN KEY (position_id) REFERENCES public."position"(id);


--
-- Name: position_salary_salary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newrole
--

ALTER TABLE ONLY public.position_salary
    ADD CONSTRAINT position_salary_salary_id_fkey FOREIGN KEY (salary_id) REFERENCES public.salary(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--














