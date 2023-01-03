--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-09-14 14:50:20

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

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 25515)
-- Name: companies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.companies (
    id integer NOT NULL,
    founder_id integer NOT NULL,
    sectors text[] NOT NULL,
    program character varying(100),
    founded_date date NOT NULL,
    raising boolean NOT NULL,
    amount integer,
    pre integer,
    left_in_round integer,
    name character varying(50) NOT NULL
);


--
-- TOC entry 213 (class 1259 OID 25514)
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.companies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 213
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- TOC entry 209 (class 1259 OID 25494)
-- Name: firms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.firms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 210 (class 1259 OID 25495)
-- Name: firms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.firms (
    id integer DEFAULT nextval('public.firms_id_seq'::regclass) NOT NULL,
    name character varying(100),
    website character varying(100),
    location character varying(100),
    notes text,
    relationship character varying(50),
    met_date timestamp with time zone,
    min_check integer NOT NULL,
    max_check integer NOT NULL,
    prefers_lead boolean,
    stages text[],
    sectors text[] NOT NULL,
    blacklist text[],
    need_rev boolean,
    prefers_early_intros boolean,
    special_requirements text[],
    ownership_target_low integer,
    ownership_target_high integer,
    investor_id integer
);


--
-- TOC entry 216 (class 1259 OID 25524)
-- Name: founders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.founders (
    id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email text NOT NULL,
    phone text,
    company_ids text[]
);


--
-- TOC entry 215 (class 1259 OID 25523)
-- Name: founders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.founders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 215
-- Name: founders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.founders_id_seq OWNED BY public.founders.id;


--
-- TOC entry 218 (class 1259 OID 25533)
-- Name: introductions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.introductions (
    id integer NOT NULL,
    firm_id integer,
    company_id integer,
    date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    status character varying(50) NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 25532)
-- Name: introductions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.introductions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 217
-- Name: introductions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.introductions_id_seq OWNED BY public.introductions.id;


--
-- TOC entry 212 (class 1259 OID 25504)
-- Name: investors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.investors (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    linkedin character varying(100),
    firm_id integer NOT NULL
);


--
-- TOC entry 211 (class 1259 OID 25503)
-- Name: investors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.investors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 211
-- Name: investors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.investors_id_seq OWNED BY public.investors.id;


--
-- TOC entry 221 (class 1259 OID 25575)
-- Name: session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) with time zone NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 25540)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50),
    password text,
    is_admin boolean DEFAULT false
);


--
-- TOC entry 219 (class 1259 OID 25539)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3195 (class 2604 OID 25518)
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- TOC entry 3196 (class 2604 OID 25527)
-- Name: founders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.founders ALTER COLUMN id SET DEFAULT nextval('public.founders_id_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 25536)
-- Name: introductions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.introductions ALTER COLUMN id SET DEFAULT nextval('public.introductions_id_seq'::regclass);


--
-- TOC entry 3194 (class 2604 OID 25507)
-- Name: investors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.investors ALTER COLUMN id SET DEFAULT nextval('public.investors_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 25543)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3210 (class 2606 OID 25522)
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 25502)
-- Name: firms firms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.firms
    ADD CONSTRAINT firms_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 25531)
-- Name: founders founders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.founders
    ADD CONSTRAINT founders_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 25538)
-- Name: introductions introductions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.introductions
    ADD CONSTRAINT introductions_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 25511)
-- Name: investors investors_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.investors
    ADD CONSTRAINT investors_email_key UNIQUE (email);


--
-- TOC entry 3206 (class 2606 OID 25513)
-- Name: investors investors_linkedin_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.investors
    ADD CONSTRAINT investors_linkedin_key UNIQUE (linkedin);


--
-- TOC entry 3208 (class 2606 OID 25509)
-- Name: investors investors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.investors
    ADD CONSTRAINT investors_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 25581)
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);


--
-- TOC entry 3212 (class 2606 OID 25816)
-- Name: companies unique_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- TOC entry 3218 (class 2606 OID 25547)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 25549)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 3221 (class 1259 OID 25582)
-- Name: IDX_session_expire; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);


--
-- TOC entry 3226 (class 2606 OID 25560)
-- Name: companies companies_founder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_founder_id_fkey FOREIGN KEY (founder_id) REFERENCES public.founders(id);


--
-- TOC entry 3224 (class 2606 OID 25550)
-- Name: firms firms_investor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.firms
    ADD CONSTRAINT firms_investor_id_fkey FOREIGN KEY (investor_id) REFERENCES public.investors(id);


--
-- TOC entry 3228 (class 2606 OID 25570)
-- Name: introductions introductions_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.introductions
    ADD CONSTRAINT introductions_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 3227 (class 2606 OID 25565)
-- Name: introductions introductions_investor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.introductions
    ADD CONSTRAINT introductions_investor_id_fkey FOREIGN KEY (firm_id) REFERENCES public.firms(id);


--
-- TOC entry 3225 (class 2606 OID 25555)
-- Name: investors investors_firm_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.investors
    ADD CONSTRAINT investors_firm_id_fkey FOREIGN KEY (firm_id) REFERENCES public.firms(id);


-- Completed on 2022-09-14 14:50:20

--
-- PostgreSQL database dump complete
--

