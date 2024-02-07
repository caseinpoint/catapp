--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Homebrew)
-- Dumped by pg_dump version 14.10 (Homebrew)

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

ALTER TABLE ONLY public.cat DROP CONSTRAINT cat_pkey;
ALTER TABLE public.cat ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.cat_id_seq;
DROP TABLE public.cat;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cat; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cat (
    id integer NOT NULL,
    name character varying
);


--
-- Name: cat_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cat_id_seq OWNED BY public.cat.id;


--
-- Name: cat id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cat ALTER COLUMN id SET DEFAULT nextval('public.cat_id_seq'::regclass);


--
-- Data for Name: cat; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cat (id, name) FROM stdin;
1	Azrael
2	Tommy
\.


--
-- Name: cat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cat_id_seq', 2, true);


--
-- Name: cat cat_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cat
    ADD CONSTRAINT cat_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

