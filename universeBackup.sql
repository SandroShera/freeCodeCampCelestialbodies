--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    info text,
    is_alive boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_moon (
    name character varying(30),
    galaxy_id integer NOT NULL,
    moon_id integer NOT NULL,
    galaxy_moon_id integer NOT NULL
);


ALTER TABLE public.galaxy_moon OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    mass numeric(4,2),
    info text,
    is_hot boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    mass numeric(4,2),
    info text,
    is_hot boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    mass numeric(4,2),
    info text,
    is_hot boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 'Excellent galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Cygnus', 150, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis major', 200, 'Major of all', NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 260, 'It is for Androes', NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', 170, 'Head in the Clouds', NULL);
INSERT INTO public.galaxy VALUES (6, 'Virgo', 168, 'It is for ...', NULL);


--
-- Data for Name: galaxy_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_moon VALUES ('One ticket', 3, 12, 1);
INSERT INTO public.galaxy_moon VALUES ('To and back', 2, 10, 2);
INSERT INTO public.galaxy_moon VALUES ('Try it', 1, 8, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 48, 12.30, 'Silver shine', false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 12, 43.40, 'Mars moon', false, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 13, 23.70, 'Mars moon', false, 2);
INSERT INTO public.moon VALUES (4, 'Callisto', 46, 12.10, 'Jupiter moon', false, 4);
INSERT INTO public.moon VALUES (5, 'Io', 1, 45.70, 'Jupiter moon and mitsubishi', false, 10);
INSERT INTO public.moon VALUES (6, 'Europa', 67, 19.00, 'Jupiter europe', false, 11);
INSERT INTO public.moon VALUES (7, 'Thebe', 140, 33.90, 'Ou great Thebe', true, 8);
INSERT INTO public.moon VALUES (8, 'Metis', 12, 2.30, 'illegal child with other dig', true, 9);
INSERT INTO public.moon VALUES (9, 'Titan', 99, 39.20, 'Titan veery big', true, 10);
INSERT INTO public.moon VALUES (10, 'Rhea', 2, 34.60, 'it is rhea', false, 7);
INSERT INTO public.moon VALUES (11, 'Dione', 5, 22.20, 'Does it love wine?', true, 3);
INSERT INTO public.moon VALUES (12, 'Janus', 67, 45.70, 'Januuuuus', false, 12);
INSERT INTO public.moon VALUES (13, 'Helene', 2, 13.00, 'Name of great ones', true, 1);
INSERT INTO public.moon VALUES (14, 'Pan', 32, 30.00, 'You must be afraid', false, 3);
INSERT INTO public.moon VALUES (15, 'Telesto', 90, 10.30, 'Tell', true, 2);
INSERT INTO public.moon VALUES (16, 'Calypso', 90, 15.30, 'Oh great godess', true, 6);
INSERT INTO public.moon VALUES (17, 'Titania', 67, 45.20, 'Female Titan', true, 8);
INSERT INTO public.moon VALUES (18, 'Oberon', 12, 34.20, 'Just Oberon', false, 9);
INSERT INTO public.moon VALUES (19, 'Ariel', 13, 40.30, 'Under da sea', true, 10);
INSERT INTO public.moon VALUES (20, 'Ezra', 1, 1.00, 'Ezzzzzraari', false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 14, 43.20, 'Is it freddy?', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 43, 87.20, 'I am venus what is your name?', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1.10, 'Mother earth', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 25, 3.45, 'God of war', true, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 67, 12.30, 'Jup Jup', false, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 15, 45.80, 'Saturation', false, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 34, 18.90, 'Dont come any further', false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 56, 14.30, 'Trident', false, 4);
INSERT INTO public.planet VALUES (9, 'MD_14', 12, 45.30, 'OOh its good', true, 2);
INSERT INTO public.planet VALUES (10, 'Exc_11', 11, 11.10, 'OOh it has power', true, 5);
INSERT INTO public.planet VALUES (11, 'HV_01', 0, 0.10, 'Good place to be', false, 5);
INSERT INTO public.planet VALUES (12, 'Neu_3', 33, 24.20, 'Neutral one', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Castor', 12, 63.00, 'Twin of pollux', true, 1);
INSERT INTO public.star VALUES (2, 'Polaris', 34, 57.89, 'The North star', NULL, 1);
INSERT INTO public.star VALUES (3, 'Pollux', 34, 34.67, 'Twin of Castor', true, 3);
INSERT INTO public.star VALUES (4, 'Orion', 67, 90.10, 'It is double on', true, 4);
INSERT INTO public.star VALUES (5, 'Sirius', 56, 10.20, 'Is it black ?', true, 2);
INSERT INTO public.star VALUES (6, 'Sun', 100, 10.10, 'It is warm at summer', true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy_moon galaxy_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_pkey PRIMARY KEY (galaxy_moon_id);


--
-- Name: galaxy_moon galaxy_moon_record_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon
    ADD CONSTRAINT galaxy_moon_record_code_key UNIQUE (name);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

