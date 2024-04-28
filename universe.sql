--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer DEFAULT nextval('public.galaxy_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    descripton text,
    galaxy_type integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer DEFAULT nextval('public.meteor_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    meteor_type integer,
    area integer
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer DEFAULT nextval('public.moon_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    circunference numeric(15,2),
    planet_id integer NOT NULL,
    moon_type integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer DEFAULT nextval('public.planet_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer DEFAULT nextval('public.star_id_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    galaxy_id integer NOT NULL,
    star_type integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1, 'description1', 1);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 2, 'description2', 2);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 3, 'description3', 3);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 4, 'description4', 4);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 5, 'description5', 5);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 6, 'description6', 6);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'meteor1', 'description1', 1, 1);
INSERT INTO public.meteor VALUES (2, 'meteor2', 'description2', 2, 2);
INSERT INTO public.meteor VALUES (3, 'meteor3', 'description3', 3, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1.00, 1, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 2.00, 1, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 3.00, 1, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 3.00, 1, 3);
INSERT INTO public.moon VALUES (5, 'moon5', 3.00, 1, 3);
INSERT INTO public.moon VALUES (6, 'moon6', 3.00, 1, 3);
INSERT INTO public.moon VALUES (7, 'moon7', 3.00, 1, 3);
INSERT INTO public.moon VALUES (8, 'moon8', 3.00, 1, 3);
INSERT INTO public.moon VALUES (9, 'moon9', 3.00, 1, 3);
INSERT INTO public.moon VALUES (10, 'moon10', 3.00, 1, 3);
INSERT INTO public.moon VALUES (11, 'moon11', 3.00, 1, 3);
INSERT INTO public.moon VALUES (12, 'moon12', 3.00, 1, 3);
INSERT INTO public.moon VALUES (13, 'moon13', 3.00, 1, 3);
INSERT INTO public.moon VALUES (14, 'moon14', 3.00, 1, 3);
INSERT INTO public.moon VALUES (15, 'moon15', 3.00, 1, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 3.00, 1, 3);
INSERT INTO public.moon VALUES (17, 'moon17', 3.00, 1, 3);
INSERT INTO public.moon VALUES (18, 'moon18', 3.00, 1, 3);
INSERT INTO public.moon VALUES (19, 'moon19', 3.00, 1, 3);
INSERT INTO public.moon VALUES (20, 'moon20', 3.00, 1, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', true, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', true, true, 1);
INSERT INTO public.planet VALUES (3, 'planet3', true, true, 1);
INSERT INTO public.planet VALUES (4, 'planet4', true, true, 1);
INSERT INTO public.planet VALUES (5, 'planet5', true, true, 1);
INSERT INTO public.planet VALUES (6, 'planet6', true, true, 1);
INSERT INTO public.planet VALUES (7, 'planet7', true, true, 1);
INSERT INTO public.planet VALUES (8, 'planet8', true, true, 1);
INSERT INTO public.planet VALUES (9, 'planet9', true, true, 1);
INSERT INTO public.planet VALUES (10, 'planet10', true, true, 1);
INSERT INTO public.planet VALUES (11, 'planet11', true, true, 1);
INSERT INTO public.planet VALUES (12, 'planet12', true, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 1, 1);
INSERT INTO public.star VALUES (2, 'star2', 2, 1, 2);
INSERT INTO public.star VALUES (3, 'star3', 3, 1, 3);
INSERT INTO public.star VALUES (4, 'star4', 4, 1, 4);
INSERT INTO public.star VALUES (5, 'star5', 5, 1, 5);
INSERT INTO public.star VALUES (6, 'star6', 6, 1, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

