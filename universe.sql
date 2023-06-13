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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(255),
    size integer NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    planet_numbers numeric NOT NULL,
    description text,
    galaxy_types character varying(255)
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
    name character varying(255),
    form character varying(40) NOT NULL,
    description text NOT NULL,
    color text NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
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
    name character varying(255),
    planet_types character varying(255),
    size integer NOT NULL,
    distance_from_sun numeric NOT NULL,
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
    name character varying(255),
    color text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    galaxy_id integer NOT NULL,
    is_spherical boolean,
    distance_from_earth integer NOT NULL,
    size numeric
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'blackhole1', 123456);
INSERT INTO public.blackhole VALUES (2, 'blackhole2', 123457);
INSERT INTO public.blackhole VALUES (3, 'blackhole3', 123458);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1228479, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 1238479, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 1234479, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 1254479, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 2254479, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 2454479, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('lune', 'a', 'la lune', 'color1', 1, 3);
INSERT INTO public.moon VALUES ('lune2', 'a1', 'la lune', 'color2', 3, 4);
INSERT INTO public.moon VALUES ('lune3', 'a2', 'la lune', 'color3', 4, 5);
INSERT INTO public.moon VALUES ('lune3', 'a3', 'la lune', 'color4', 4, 6);
INSERT INTO public.moon VALUES ('lune3', 'a4', 'la lune', 'color5', 4, 7);
INSERT INTO public.moon VALUES ('lune3', 'a5', 'la lune', 'color6', 4, 8);
INSERT INTO public.moon VALUES ('lune3', 'a6', 'la lune', 'color7', 5, 9);
INSERT INTO public.moon VALUES ('lune3', 'a7', 'la lune', 'color8', 5, 10);
INSERT INTO public.moon VALUES ('lune3', 'a8', 'la lune', 'color9', 6, 11);
INSERT INTO public.moon VALUES ('lune4', 'a9', 'la lune', 'color10', 6, 12);
INSERT INTO public.moon VALUES ('lune4', 'a10', 'la lune', 'color11', 6, 13);
INSERT INTO public.moon VALUES ('lune5', 'a11', 'la lune', 'color13', 8, 14);
INSERT INTO public.moon VALUES ('lune6', 'a12', 'la lune', 'color15', 9, 16);
INSERT INTO public.moon VALUES ('lune7', 'a13', 'la lune', 'color16', 9, 17);
INSERT INTO public.moon VALUES ('lune8', 'a14', 'la lune', 'color17', 10, 18);
INSERT INTO public.moon VALUES ('lune9', 'a15', 'la lune', 'color18', 10, 19);
INSERT INTO public.moon VALUES ('lune10', 'a16', 'la lune', 'color19', 10, 21);
INSERT INTO public.moon VALUES ('lune10', 'a17', 'la lune', 'color20', 10, 22);
INSERT INTO public.moon VALUES ('lune10', 'a18', 'la lune', 'color12', 10, 23);
INSERT INTO public.moon VALUES ('lune10', 'a19', 'la lune', 'color14', 10, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'terre', NULL, 1234556, 24987243743, 1);
INSERT INTO public.planet VALUES (3, 'jupiter', NULL, 1224556, 24947243743, 3);
INSERT INTO public.planet VALUES (4, 'mars', NULL, 1224557, 24947248743, 4);
INSERT INTO public.planet VALUES (5, 'Pluton', NULL, 1264557, 24957248743, 5);
INSERT INTO public.planet VALUES (6, 'Venus', NULL, 1264857, 24757248743, 6);
INSERT INTO public.planet VALUES (7, 'Mercure', NULL, 1264057, 24757048743, 7);
INSERT INTO public.planet VALUES (8, 'Uranus', NULL, 12640570, 24757048741, 7);
INSERT INTO public.planet VALUES (9, 'Neptune', NULL, 12640571, 24757048742, 5);
INSERT INTO public.planet VALUES (10, 'Saturne', NULL, 12640581, 24757068742, 4);
INSERT INTO public.planet VALUES (12, 'Ceres', NULL, 126405814, 24757068742, 3);
INSERT INTO public.planet VALUES (13, 'Charon', NULL, 126405811, 24757065742, 3);
INSERT INTO public.planet VALUES (14, 'UB313', NULL, 126405811, 24757065742, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'blue', 123, NULL, 1, NULL, 158209, NULL);
INSERT INTO public.star VALUES (3, 'star2', 'yellow', 1234, NULL, 2, NULL, 158208, NULL);
INSERT INTO public.star VALUES (4, 'star2', 'red', 1234, NULL, 3, NULL, 1582087, NULL);
INSERT INTO public.star VALUES (5, 'star2', 'rose', 1234, NULL, 3, NULL, 1582087, NULL);
INSERT INTO public.star VALUES (6, 'star2', 'green', 1234, NULL, 3, NULL, 1582087, NULL);
INSERT INTO public.star VALUES (7, 'star2', 'mauve', 1234, NULL, 3, NULL, 1582087, NULL);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: blackhole blackhole_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_size_key UNIQUE (size);


--
-- Name: galaxy galaxy_galaxy_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_key UNIQUE (galaxy_types);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_key UNIQUE (color);


--
-- Name: moon moon_form_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_form_key UNIQUE (form);


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
-- Name: planet planet_planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_key UNIQUE (planet_types);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


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


