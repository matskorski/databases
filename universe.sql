--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
    name character varying(30) NOT NULL,
    size numeric,
    distance_from_earth numeric,
    number_of_stars numeric
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    mass numeric,
    or_dwarf_moon boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    size numeric,
    mass numeric,
    or_star boolean NOT NULL,
    age integer,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    age integer,
    mass numeric,
    or_red_dwarf boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: type_body_blue; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.type_body_blue (
    type_body_blue_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.type_body_blue OWNER TO freecodecamp;

--
-- Name: type_body_blue_type_body_blue_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.type_body_blue_type_body_blue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_body_blue_type_body_blue_id_seq OWNER TO freecodecamp;

--
-- Name: type_body_blue_type_body_blue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.type_body_blue_type_body_blue_id_seq OWNED BY public.type_body_blue.type_body_blue_id;


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
-- Name: type_body_blue type_body_blue_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_body_blue ALTER COLUMN type_body_blue_id SET DEFAULT nextval('public.type_body_blue_type_body_blue_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 80000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 90000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 110000000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 85000000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 0.0073, false, 3);
INSERT INTO public.moon VALUES (2, 'Europa', 3122, 0.008, false, 3);
INSERT INTO public.moon VALUES (3, 'Titan', 5150, 0.134, false, 6);
INSERT INTO public.moon VALUES (4, 'Triton', 2703, 0.0021, false, 4);
INSERT INTO public.moon VALUES (5, 'Io', 3660, 0.02, false, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 4800, 0.018, false, 3);
INSERT INTO public.moon VALUES (7, 'Ganymede', 5268, 0.025, false, 3);
INSERT INTO public.moon VALUES (8, 'Enceladus', 504, 0.001, false, 3);
INSERT INTO public.moon VALUES (9, 'Phobos', 22.4, 0.0001, false, 4);
INSERT INTO public.moon VALUES (10, 'Deimos', 12.4, 0.00003, false, 4);
INSERT INTO public.moon VALUES (11, 'Rhea', 1528, 0.00002, false, 6);
INSERT INTO public.moon VALUES (12, 'Charon', 1228, 0.00016, false, 7);
INSERT INTO public.moon VALUES (13, 'Europa', 3122, 0.008, false, 8);
INSERT INTO public.moon VALUES (14, 'Phoebe', 106.6, 0.0005, false, 9);
INSERT INTO public.moon VALUES (15, 'Hyperion', 270, 0.0003, false, 10);
INSERT INTO public.moon VALUES (16, 'HOberon', 1527, 0.0003, false, 11);
INSERT INTO public.moon VALUES (17, 'Ariel', 1157, 0.0001, false, 12);
INSERT INTO public.moon VALUES (18, 'Miranda', 472, 0.0007, false, 13);
INSERT INTO public.moon VALUES (19, 'Umbriel', 4472, 0.008, false, 14);
INSERT INTO public.moon VALUES (20, 'Iapetus', 442, 0.008, false, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 12742, 5.97, false, 6515, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6779, 0.64, false, 515, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139820, 1898, true, 51500, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 116460, 568, true, 456, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 49244, 102, true, 9898, 2);
INSERT INTO public.planet VALUES (8, 'Venus', 12104, 4.87, false, 515, 3);
INSERT INTO public.planet VALUES (9, 'Mercury', 4879, 0.33, false, 8989, 4);
INSERT INTO public.planet VALUES (10, 'Uranos', 50724, 86.8, true, 79854, 5);
INSERT INTO public.planet VALUES (11, 'Pluto', 2370, 0.0146, false, 798, 6);
INSERT INTO public.planet VALUES (12, 'Europa', 3122, 0.0008, false, 10, 1);
INSERT INTO public.planet VALUES (13, 'Titan', 5150, 0.134, false, 15890, 4);
INSERT INTO public.planet VALUES (14, 'Ganymede', 5268, 0.025, false, 15890, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5000, 2.0, false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 3000, 2.5, false, 2);
INSERT INTO public.star VALUES (3, 'Vega', 4500, 2.1, false, 3);
INSERT INTO public.star VALUES (4, 'Arcturus', 7000, 1.5, false, 4);
INSERT INTO public.star VALUES (5, 'Antatres', 9000, 12.0, true, 5);
INSERT INTO public.star VALUES (6, 'Altair', 6000, 1.7, false, 6);


--
-- Data for Name: type_body_blue; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.type_body_blue VALUES (1, 'Galaxy', 'A cluster of stars, nebulae and interstellar dust.');
INSERT INTO public.type_body_blue VALUES (2, 'Star', 'A bright, hot celestial body emitting light and heat.');
INSERT INTO public.type_body_blue VALUES (3, 'Planet', 'A celestial body orbiting a star is not light in itself.');
INSERT INTO public.type_body_blue VALUES (4, 'Moon', 'A celestial body orbiting a planet.');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: type_body_blue_type_body_blue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.type_body_blue_type_body_blue_id_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: type_body_blue type_body_blue_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_body_blue
    ADD CONSTRAINT type_body_blue_pkey PRIMARY KEY (type_body_blue_id);


--
-- Name: type_body_blue type_body_blue_type_body_blue_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_body_blue
    ADD CONSTRAINT type_body_blue_type_body_blue_id_key UNIQUE (type_body_blue_id);


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

