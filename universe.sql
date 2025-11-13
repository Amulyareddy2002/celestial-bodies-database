--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(60) NOT NULL,
    composition text,
    diameter_km numeric,
    discovered_year integer NOT NULL,
    is_potentially_hazardous boolean,
    planet_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_type character varying(30),
    age_in_millions_of_year integer,
    distance_from_earth numeric,
    has_life boolean,
    description text,
    has_black_hole boolean
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
    name character varying(60) NOT NULL,
    is_spherical boolean,
    age_in_millions_of_year integer,
    radius numeric,
    has_life boolean,
    description text,
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
    name character varying(60) NOT NULL,
    planet_type text,
    age_in_millions_of_year integer,
    distance_from_sun numeric,
    has_life boolean,
    has_water boolean,
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
    name character varying(60) NOT NULL,
    temperature integer,
    mass numeric,
    is_spherical boolean,
    description text,
    has_planet boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'Rock and ice', 939.4, 1801, false, 5);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 'Rocky', 525.4, 1807, false, 5);
INSERT INTO public.asteroid VALUES (3, 'Apophis', 'Stony', 0.37, 2004, true, 3);
INSERT INTO public.asteroid VALUES (4, 'Eros', 'Silicate rock', 16.8, 1898, false, 4);
INSERT INTO public.asteroid VALUES (5, 'Bennu', 'Carbonaceous', 0.49, 1999, true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13600, 0, true, 'Home galaxy of the Solar System, contains billions of stars.', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, 2500000, false, 'Nearest spiral galaxy to the Milky Way, on a collision course.', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 12000, 3000000, false, 'Small spiral galaxy near Andromeda, part of the Local Group.', true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Elliptical', 13000, 29000000, false, 'Bright central bulge with a dark dust lane resembling a hat.', true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 14000, 23000000, false, 'Famous for its spiral arms and companion galaxy M51b.', true);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular', 11000, 160000, false, 'A satellite galaxy of the Milky Way, visible from the southern hemisphere.', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 4500, 1737.4, false, 'Earth’s natural satellite, only one known to host human visitors.', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', true, 4500, 11.3, false, 'Innermost moon of Mars, irregularly shaped and slowly falling toward the planet.', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', true, 4500, 6.2, false, 'Smaller outer moon of Mars, smooth and cratered.', 4);
INSERT INTO public.moon VALUES (4, 'Io', true, 4500, 1821.6, false, 'Volcanically active moon orbiting Jupiter.', 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 4500, 1560.8, true, 'Icy moon of Jupiter with subsurface ocean, potential for life.', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 4500, 2634.1, false, 'Largest moon in the solar system, has a magnetic field.', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 4500, 2410.3, false, 'Heavily cratered moon of Jupiter, very old surface.', 5);
INSERT INTO public.moon VALUES (8, 'Titan', true, 4500, 2575.0, false, 'Saturn’s largest moon, dense atmosphere and methane lakes.', 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 4500, 252.1, true, 'Saturn moon with water geysers and possible life beneath its icy crust.', 6);
INSERT INTO public.moon VALUES (13, 'Rhea', true, 4500, 763.8, false, 'Second-largest moon of Saturn, composed mostly of ice.', 6);
INSERT INTO public.moon VALUES (15, 'Miranda', true, 4500, 235.8, false, 'Small, oddly-shaped Uranian moon with canyons and ridges.', 7);
INSERT INTO public.moon VALUES (16, 'Ariel', true, 4500, 578.9, false, 'Bright Uranian moon with evidence of past geological activity.', 7);
INSERT INTO public.moon VALUES (17, 'Triton', true, 4500, 1353.4, false, 'Neptune’s largest moon, retrograde orbit, likely captured object.', 8);
INSERT INTO public.moon VALUES (10, 'Mimas', true, 4500, 198.2, false, 'Small moon of Saturn, known for its large Herschel crater.', 6);
INSERT INTO public.moon VALUES (11, 'Tethys', true, 4500, 531.1, false, 'Icy Saturnian moon with a large canyon called Ithaca Chasma.', 6);
INSERT INTO public.moon VALUES (12, 'Dione', true, 4500, 561.4, false, 'Moon of Saturn with icy cliffs and wispy terrain.', 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', true, 4500, 734.5, false, 'Saturn moon with one dark and one bright hemisphere.', 6);
INSERT INTO public.moon VALUES (18, 'Nereid', true, 4500, 170.0, false, 'Neptune’s irregular moon, highly elliptical orbit.', 8);
INSERT INTO public.moon VALUES (19, 'Pandora Moon', true, 4600, 1600.0, true, 'Fictional habitable moon from the movie Avatar, lush and life-filled.', 12);
INSERT INTO public.moon VALUES (20, 'Kepler-22b I', true, 4000, 1500.0, false, 'Exomoon possibly orbiting exoplanet Kepler-22b.', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 4500, 57.9, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 4500, 108.2, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 4540, 149.6, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 4600, 227.9, false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 4600, 778.5, false, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 4600, 1433.5, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 4600, 2872.5, false, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 4600, 4495.1, false, false, 1);
INSERT INTO public.planet VALUES (10, 'Proxima b', 'Exoplanet', 4800, 7.5, true, true, 2);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Exoplanet', 4000, 600000, true, true, 3);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 'Exoplanet', 4300, 20.3, true, true, 3);
INSERT INTO public.planet VALUES (12, 'Pandora', 'Fictional - Habitable Moon', 4600, 1500.0, true, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5778, 1.00, true, 'The central star of our Solar System, located in the Milky Way.', true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 3042, 0.12, true, 'The closest known star to the Sun, part of Alpha Centauri system.', true, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 3500, 20.0, true, 'A red supergiant in the Orion constellation, nearing end of life.', false, 3);
INSERT INTO public.star VALUES (3, 'Sirius A', 9940, 2.02, true, 'The brightest star in the night sky, located in the Milky Way.', true, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 11000, 21.0, true, 'A blue supergiant in Orion, one of the brightest stars visible from Earth.', false, 1);
INSERT INTO public.star VALUES (6, 'Andromeda Star A', 7500, 1.3, true, 'A prominent star in the Andromeda Galaxy, visible through telescope.', false, 2);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


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
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

