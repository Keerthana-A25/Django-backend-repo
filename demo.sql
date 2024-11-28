--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-11-28 10:40:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 236 (class 1259 OID 16762)
-- Name: management_studentdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.management_studentdetails (
    id bigint NOT NULL,
    reg_emp_id character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    dob date NOT NULL,
    gender character varying(10) NOT NULL,
    blood_group character varying(5) NOT NULL,
    contact_no character varying(15) NOT NULL,
    address text NOT NULL
);


ALTER TABLE public.management_studentdetails OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16761)
-- Name: management_studentdetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.management_studentdetails ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.management_studentdetails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 16785)
-- Name: management_subjectdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.management_subjectdetails (
    id bigint NOT NULL,
    reg_emp_id character varying(50),
    subject character varying(100) NOT NULL,
    faculty_name character varying(100) NOT NULL
);


ALTER TABLE public.management_subjectdetails OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16784)
-- Name: management_subjectdetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.management_subjectdetails ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.management_subjectdetails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 16770)
-- Name: management_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.management_users (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    reg_emp_id character varying(50) NOT NULL,
    type character varying(50) NOT NULL
);


ALTER TABLE public.management_users OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16769)
-- Name: management_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.management_users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.management_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4842 (class 0 OID 16762)
-- Dependencies: 236
-- Data for Name: management_studentdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.management_studentdetails (id, reg_emp_id, first_name, last_name, dob, gender, blood_group, contact_no, address) FROM stdin;
1	STU01	Mani	muthu	2000-10-08	Male	O+	9876543210	123 Main Street, Springfield
2	STU02	Harshini	justine	2003-02-14	Female	B+	9488473926	No 2, 2nd street,Gandhi nagar,vellore-632002
3	STU03	Pranees	Nisanthan	2001-12-15	Male	0+	9477479326	No 7, 1st street, Nethaji nagar, Trichy-636284
\.


--
-- TOC entry 4846 (class 0 OID 16785)
-- Dependencies: 241
-- Data for Name: management_subjectdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.management_subjectdetails (id, reg_emp_id, subject, faculty_name) FROM stdin;
4	STU01	Maths	Arun
1	STU02	SolidWorks	Keerthana
5	STU03	Farm machines	Sashmitha
\.


--
-- TOC entry 4844 (class 0 OID 16770)
-- Dependencies: 238
-- Data for Name: management_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.management_users (id, name, email, reg_emp_id, type) FROM stdin;
1	Manimuthu	muthu.s01@gmail.com	STU01	Student
2	Keerthana	keethu.abc@gmail.com	FAC01	Faculty
3	Harshini	harshini.s02@gmail.com	STU02	Student
4	Arun	arun.abc@gmail.com	FAC02	Faculty
5	Nisa	nisa.s03@gmail.com	STU03	Student
6	Sashmitha	sashmitha.abc@gmail.com	FAC03	Facultyt
\.


--
-- TOC entry 4852 (class 0 OID 0)
-- Dependencies: 235
-- Name: management_studentdetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.management_studentdetails_id_seq', 3, true);


--
-- TOC entry 4853 (class 0 OID 0)
-- Dependencies: 240
-- Name: management_subjectdetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.management_subjectdetails_id_seq', 5, true);


--
-- TOC entry 4854 (class 0 OID 0)
-- Dependencies: 237
-- Name: management_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.management_users_id_seq', 6, true);


--
-- TOC entry 4688 (class 2606 OID 16768)
-- Name: management_studentdetails management_studentdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.management_studentdetails
    ADD CONSTRAINT management_studentdetails_pkey PRIMARY KEY (id);


--
-- TOC entry 4692 (class 2606 OID 16789)
-- Name: management_subjectdetails management_subjectdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.management_subjectdetails
    ADD CONSTRAINT management_subjectdetails_pkey PRIMARY KEY (id);


--
-- TOC entry 4695 (class 2606 OID 16791)
-- Name: management_subjectdetails management_subjectdetails_reg_emp_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.management_subjectdetails
    ADD CONSTRAINT management_subjectdetails_reg_emp_id_key UNIQUE (reg_emp_id);


--
-- TOC entry 4690 (class 2606 OID 16774)
-- Name: management_users management_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.management_users
    ADD CONSTRAINT management_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4693 (class 1259 OID 16792)
-- Name: management_subjectdetails_reg_emp_id_b0e8c407_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX management_subjectdetails_reg_emp_id_b0e8c407_like ON public.management_subjectdetails USING btree (reg_emp_id varchar_pattern_ops);


-- Completed on 2024-11-28 10:40:07

--
-- PostgreSQL database dump complete
--

