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
-- Name: favorite_moons; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.favorite_moons (
    name character varying(30) NOT NULL,
    favorite_moons_id integer NOT NULL,
    description text,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.favorite_moons OWNER TO freecodecamp;

--
-- Name: favorite_moons_favorite_moons_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.favorite_moons_favorite_moons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorite_moons_favorite_moons_id_seq OWNER TO freecodecamp;

--
-- Name: favorite_moons_favorite_moons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.favorite_moons_favorite_moons_id_seq OWNED BY public.favorite_moons.favorite_moons_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    size_divided_to_earth_size numeric(6,1),
    age_in_millions_of_years integer,
    has_life boolean
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    size_divided_to_earth_size numeric(6,1),
    age_in_millions_of_years integer,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    size_divided_to_earth_size numeric(6,1),
    age_in_millions_of_years integer,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    description text,
    size_divided_to_earth_size numeric(6,1),
    age_in_millions_of_years integer,
    has_life boolean,
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
-- Name: favorite_moons favorite_moons_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.favorite_moons ALTER COLUMN favorite_moons_id SET DEFAULT nextval('public.favorite_moons_favorite_moons_id_seq'::regclass);


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
-- Data for Name: favorite_moons; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.favorite_moons VALUES ('favone', 1, 'favone', 1, 1, 1, 1);
INSERT INTO public.favorite_moons VALUES ('favtwo', 2, 'favtwo', 1, 1, 1, 2);
INSERT INTO public.favorite_moons VALUES ('favthree', 3, 'favthree', 2, 1, 1, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milkyway', 1, 'Its our galaxy!!', 43543.1, 13600, true);
INSERT INTO public.galaxy VALUES ('andromeda', 2, 'Its quite popular', 76345.5, 13700, false);
INSERT INTO public.galaxy VALUES ('cartwheel', 3, 'You havent heard of it', 56346.9, 13500, false);
INSERT INTO public.galaxy VALUES ('cigar', 4, 'A strange name for a galaxy!!', 78653.3, 13000, false);
INSERT INTO public.galaxy VALUES ('comet', 5, 'It has a tail', 53672.8, 13400, false);
INSERT INTO public.galaxy VALUES ('cosmos', 6, 'It took that cool name', 45683.5, 13100, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 1, 'Its our moon!!', 0.1, 15, true, 1);
INSERT INTO public.moon VALUES ('ISS', 2, 'A made up moon', 0.1, 1, true, 1);
INSERT INTO public.moon VALUES ('moon-1', 3, 'lorem ipsum', 0.2, 8, false, 2);
INSERT INTO public.moon VALUES ('moon-2', 4, 'dolor sit amet', 0.3, 6, false, 2);
INSERT INTO public.moon VALUES ('moon-3', 5, 'lorem ipsum', 0.1, 4, false, 3);
INSERT INTO public.moon VALUES ('moon-4', 6, 'dolor sit amet', 0.2, 6, false, 3);
INSERT INTO public.moon VALUES ('moon-5', 7, 'lorem ipsum', 0.4, 6, false, 4);
INSERT INTO public.moon VALUES ('moon-6', 8, 'dolor sit amet', 0.1, 7, false, 4);
INSERT INTO public.moon VALUES ('moon-7', 9, 'lorem ipsum', 0.2, 7, false, 5);
INSERT INTO public.moon VALUES ('moon-8', 10, 'dolor sit amet', 0.1, 8, false, 5);
INSERT INTO public.moon VALUES ('moon-9', 11, 'lorem ipsum', 0.2, 6, false, 6);
INSERT INTO public.moon VALUES ('moon-10', 12, 'lorem ipsum', 0.1, 6, false, 6);
INSERT INTO public.moon VALUES ('moon-11', 13, 'dolor sit amet', 0.4, 5, false, 7);
INSERT INTO public.moon VALUES ('moon-12', 14, 'lorem ipsum', 0.2, 9, false, 7);
INSERT INTO public.moon VALUES ('moon-13', 15, 'dolor sit amet', 0.3, 7, false, 8);
INSERT INTO public.moon VALUES ('moon-14', 16, 'lorem ipsum', 0.5, 5, false, 8);
INSERT INTO public.moon VALUES ('moon-15', 17, 'dolor sit amet', 0.4, 8, false, 9);
INSERT INTO public.moon VALUES ('moon-16', 18, 'lorem ipsum', 0.3, 6, false, 9);
INSERT INTO public.moon VALUES ('moon-17', 19, 'dolor sit amet', 0.9, 45, false, 10);
INSERT INTO public.moon VALUES ('moon-18', 20, 'lorem ipsum', 0.1, 1, false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 1, 'Its our planet!!', 1.0, 65, true, 1);
INSERT INTO public.planet VALUES ('mars', 2, 'Hey its our neighbor', 1.5, 68, true, 1);
INSERT INTO public.planet VALUES ('androplanet-1', 3, 'continue making up', 2.3, 56, false, 2);
INSERT INTO public.planet VALUES ('androplanet-2', 4, 'lorem ipsum', 4.3, 45, false, 2);
INSERT INTO public.planet VALUES ('wheelplanet-1', 5, 'dolor sit amet', 3.5, 69, false, 3);
INSERT INTO public.planet VALUES ('wheelplanet-2', 6, 'lorem ipsum', 3.7, 65, false, 3);
INSERT INTO public.planet VALUES ('starettenet-1', 7, 'dolor sit amet', 3.7, 54, false, 4);
INSERT INTO public.planet VALUES ('starettenet-2', 8, 'lorem ipsum', 5.7, 45, false, 4);
INSERT INTO public.planet VALUES ('comettenet-1', 9, 'dolor sit amet', 3.6, 67, false, 5);
INSERT INTO public.planet VALUES ('comettenet-2', 10, 'lorem ipsum', 3.8, 46, false, 5);
INSERT INTO public.planet VALUES ('cosmoplanet-1', 11, 'dolor sit amet', 3.8, 698, false, 6);
INSERT INTO public.planet VALUES ('cosmoplanet-2', 12, 'lorem ipsum', 4.8, 35, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, 'Its our favorite star!!', 1564.2, 5600, true, 1);
INSERT INTO public.star VALUES ('androstar', 2, 'Started making up names', 1276.8, 6500, false, 2);
INSERT INTO public.star VALUES ('wheelstar', 3, 'another one incoming', 1345.7, 3400, false, 3);
INSERT INTO public.star VALUES ('starette', 4, 'good at making up names', 1654.8, 5400, false, 4);
INSERT INTO public.star VALUES ('comette', 5, 'lorem ipsumm', 1453.7, 5300, false, 5);
INSERT INTO public.star VALUES ('cosmostar', 6, 'dolor sit amet', 1520.8, 5200, false, 6);


--
-- Name: favorite_moons_favorite_moons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.favorite_moons_favorite_moons_id_seq', 3, true);


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
-- Name: favorite_moons favorite_moons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.favorite_moons
    ADD CONSTRAINT favorite_moons_name_key UNIQUE (name);


--
-- Name: favorite_moons favorite_moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.favorite_moons
    ADD CONSTRAINT favorite_moons_pkey PRIMARY KEY (favorite_moons_id);


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
-- Name: favorite_moons favorite_galaxy_constraint; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.favorite_moons
    ADD CONSTRAINT favorite_galaxy_constraint FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: favorite_moons favorite_moon_constraint; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.favorite_moons
    ADD CONSTRAINT favorite_moon_constraint FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: favorite_moons favorite_planet_constraint; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.favorite_moons
    ADD CONSTRAINT favorite_planet_constraint FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: favorite_moons favorite_star_constraint; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.favorite_moons
    ADD CONSTRAINT favorite_star_constraint FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_constraint; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_constraint FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_constraint; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_constraint FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_constraint; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_constraint FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

