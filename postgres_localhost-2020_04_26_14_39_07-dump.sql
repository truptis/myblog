--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    slno integer NOT NULL,
    name character varying(80) NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(120) NOT NULL,
    msg character varying(120),
    date character varying(50) NOT NULL
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- Name: contact_slno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_slno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_slno_seq OWNER TO postgres;

--
-- Name: contact_slno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_slno_seq OWNED BY public.contact.slno;


--
-- Name: post; Type: TABLE; Schema: public; Owner: truptiv
--

CREATE TABLE public.post (
    sno integer NOT NULL,
    title character varying,
    slug character varying,
    tag_line character varying,
    content character varying,
    date date,
    img_file character varying
);


ALTER TABLE public.post OWNER TO truptiv;

--
-- Name: post_sno_seq; Type: SEQUENCE; Schema: public; Owner: truptiv
--

CREATE SEQUENCE public.post_sno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_sno_seq OWNER TO truptiv;

--
-- Name: post_sno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: truptiv
--

ALTER SEQUENCE public.post_sno_seq OWNED BY public.post.sno;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    sno integer NOT NULL,
    title character varying(80) NOT NULL,
    slug character varying(21) NOT NULL,
    content character varying(120) NOT NULL,
    date character varying(12),
    img_file character varying(12)
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_sno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_sno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_sno_seq OWNER TO postgres;

--
-- Name: posts_sno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_sno_seq OWNED BY public.posts.sno;


--
-- Name: contact slno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact ALTER COLUMN slno SET DEFAULT nextval('public.contact_slno_seq'::regclass);


--
-- Name: post sno; Type: DEFAULT; Schema: public; Owner: truptiv
--

ALTER TABLE ONLY public.post ALTER COLUMN sno SET DEFAULT nextval('public.post_sno_seq'::regclass);


--
-- Name: posts sno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN sno SET DEFAULT nextval('public.posts_sno_seq'::regclass);


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (slno, name, email, phone, msg, date) FROM stdin;
1	trupti	riya.474@gmail.com	919900639025	test	2020-04-21 18:46:31.273991
2	trupti	riya.474@gmail.com	919900639025	testing	2020-04-23 15:35:12.093674
3	trupti	riya.474@gmail.com	919900639025	testing	2020-04-23 15:41:27.102799
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: truptiv
--

COPY public.post (sno, title, slug, tag_line, content, date, img_file) FROM stdin;
1	We all love to read quality blogs	first_blog	I love doing experiments	Of course, spreading the word about it and attracting the right kind of readers who will find your content interesting and useful requires having good and efficient strategies in place.	\N	about-bg.jpg
2	\N	test	test	test	2020-04-25	test
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (sno, title, slug, content, date, img_file) FROM stdin;
1	My First blog	testing	I love doing this	22:05:2020	about-bg.jpg
2	blogs	first_post	snd post 	22:05:2020	about-bg.jpg
\.


--
-- Name: contact_slno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_slno_seq', 3, true);


--
-- Name: post_sno_seq; Type: SEQUENCE SET; Schema: public; Owner: truptiv
--

SELECT pg_catalog.setval('public.post_sno_seq', 2, true);


--
-- Name: posts_sno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_sno_seq', 1, false);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (slno);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (sno);


--
-- PostgreSQL database dump complete
--

