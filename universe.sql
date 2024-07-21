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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    size numeric NOT NULL,
    age integer
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
    name character varying(100) NOT NULL,
    description text,
    inhabited boolean,
    size numeric,
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
    name character varying(100) NOT NULL,
    description text,
    size numeric,
    quantity_of_satellites integer,
    quantity_of_moons integer,
    in_milkyway boolean,
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    size numeric,
    age integer
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    size numeric,
    age integer,
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MilkyWay', 'Spiral galaxy in the Local Group containing the Solar System', 26.8, 1000);
INSERT INTO public.galaxy VALUES (2, 'Mushroom way', 'Galaxy of mushrooms', 20, 10001202);
INSERT INTO public.galaxy VALUES (3, 'Ketchup way', 'Tomato ketchup galaxy', 10, 1222);
INSERT INTO public.galaxy VALUES (4, 'Mungiro', 'Spiral galaxy in the Local', 246.8, 1002320);
INSERT INTO public.galaxy VALUES (5, 'Canpachiro', 'Galaxy of Canpachiro', 202, 342);
INSERT INTO public.galaxy VALUES (6, 'Manjiro', 'Manjiro galaxy', 212, 343);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'One', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Two', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Three', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Four', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Five', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Six', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Seven', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Eight', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Nine', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Ten', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Eleven', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Twelve', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Thirteen', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Fourteen', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Fifteen', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Sixteen', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'Sevewnteen', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Jsdow', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'sdadw2q', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'JSdjwefsdd', NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest and fastest planet, Mercury is the closest planet to the Sun and whips around it every 88 Earth days.', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Spinning in the opposite direction to most planets, Venus is the hottest planet, and one of the brightest objects in the sky.', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'The place we call home, Earth is the third rock from the sun and the only planet with known life on it - and lots of it too!', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 'The red planet is dusty, cold world with a thin atmosphere and is home to four NASA robots.', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is a massive planet, twice the size of all other planets combined, and has a centuries-old storm that is bigger than Earth.', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The most recognizable planet with a system of icy rings, Saturn is a very unique and interesting planet.', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus has a very unique rotation--it spins on its side at an almost 90-degree angle, unlike other planets.', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is now the most distant planet and is a cold and dark world nearly 3 billion miles from the Sun.', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'Ceres', 'Ceres is the largest object in the asteroid belt but was reclassified a dwarf planet in 2006', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Pluto will always be the ninth planet to us!', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Haumea lives in the Kuiper belt and is about the same size as Pluto.', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Also in the Kuiper belt, Makemake is the second brightest object in the belt, behind Pluto', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'One Satellite', NULL, 1, 2);
INSERT INTO public.satellite VALUES (2, 'Two Satellite', NULL, 2, 5);
INSERT INTO public.satellite VALUES (3, 'Three Satellite', NULL, 3, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Vloy', 'Vloy a met', 323, 12, 2);
INSERT INTO public.star VALUES (2, 'Uslaud', 'Uslaud star vam na radost', 3434, 232, 3);
INSERT INTO public.star VALUES (3, 'Sun', 'Sun is hot', 20, 221223, 1);
INSERT INTO public.star VALUES (4, 'Ipfer', 'Ipfer vas vseh na kyo', 2332, 568, 4);
INSERT INTO public.star VALUES (5, 'Enirs', 'Enirs ne zhenirs', 64.45, 23, 5);
INSERT INTO public.star VALUES (6, 'Isrenlul', 'Polnyi LUL', 5465, 235, 6);


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
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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

