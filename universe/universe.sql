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
    name character varying(35) NOT NULL,
    type text NOT NULL,
    diameter_in_lightyears numeric NOT NULL,
    total_millions_of_stars numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: miscellaneous; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.miscellaneous (
    miscellaneous_id integer NOT NULL,
    name character varying(60) NOT NULL,
    type text,
    orbiting_a_planet boolean,
    star_id integer
);


ALTER TABLE public.miscellaneous OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    radius_in_km integer NOT NULL,
    temperature_in_kelvin integer NOT NULL,
    orbit_in_days numeric,
    surface_gravity_in_g numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    type text,
    habitable boolean NOT NULL,
    number_of_moons numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(35) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    type text,
    number_of_planets_in_orbit numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Eliptical', 120000, 50037);
INSERT INTO public.galaxy VALUES (2, 'The Galaxy', 'Spiral', 87400, 48676);
INSERT INTO public.galaxy VALUES (3, 'New Eden', 'Lenticular', 55000, 27808);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Spiral', 250000, 92050);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 'Spiral', 152000, 85644);
INSERT INTO public.galaxy VALUES (6, 'Eridanus', 'Lenticular', 50000, 20565);


--
-- Data for Name: miscellaneous; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.miscellaneous VALUES (1, 'Mass relay', 'Navigational structure', false, 1);
INSERT INTO public.miscellaneous VALUES (2, 'Emperor Family Academy', 'Station', true, 3);
INSERT INTO public.miscellaneous VALUES (3, 'mothership', 'ship', true, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lucen', 556, 173, 2301, 0.1, 2);
INSERT INTO public.moon VALUES (2, 'Rietta I', 178, 70, 0.2, 0.04, 11);
INSERT INTO public.moon VALUES (3, 'Rietta II', 200, 70, 5, 0.2, 11);
INSERT INTO public.moon VALUES (4, 'Sek I', 723, 136, 4.7, 0.028, 16);
INSERT INTO public.moon VALUES (5, 'Zorast I', 299, 106, 0.2, 0.007, 17);
INSERT INTO public.moon VALUES (6, 'Zorast II', 620, 106, 3, 0.046, 17);
INSERT INTO public.moon VALUES (7, 'Nemantizor I', 126, 80, 0.248, 0.001, 18);
INSERT INTO public.moon VALUES (8, 'Nemantizor II', 1009, 80, 2.7, 0.035, 18);
INSERT INTO public.moon VALUES (9, 'Nemantizor III', 1212, 80, 29.5, 0.045, 18);
INSERT INTO public.moon VALUES (10, 'Oris I', 190, 54, 0.09, 0.002, 19);
INSERT INTO public.moon VALUES (11, 'Oris II', 243, 54, 0.1, 0.003, 19);
INSERT INTO public.moon VALUES (12, 'Oris III', 183, 54, 0.3, 0.002, 19);
INSERT INTO public.moon VALUES (13, 'Oris IV', 484, 54, 0.4, 0.009, 19);
INSERT INTO public.moon VALUES (14, 'Oris V', 603, 54, 0.8, 0.012, 19);
INSERT INTO public.moon VALUES (15, 'Oris VI', 804, 54, 1.4, 0.02, 19);
INSERT INTO public.moon VALUES (16, 'Oris VII', 362, 54, 2.2, 0.006, 19);
INSERT INTO public.moon VALUES (17, 'Oris VIII', 1083, 54, 2.9, 0.03, 19);
INSERT INTO public.moon VALUES (18, 'Oris IX', 298, 54, 4.7, 0.004, 19);
INSERT INTO public.moon VALUES (19, 'Oris X', 1530, 54, 6.5, 0.05, 19);
INSERT INTO public.moon VALUES (20, 'Oris XI', 915, 54, 11.6, 0.02, 19);
INSERT INTO public.moon VALUES (21, 'Oris XII', 2076, 54, 17.9, 0.07, 19);
INSERT INTO public.moon VALUES (22, 'Oris XIII', 367, 54, 39.2, 0.006, 19);
INSERT INTO public.moon VALUES (23, 'Derdainys I', 158, 34, 0.1, 0.001, 20);
INSERT INTO public.moon VALUES (24, 'Derdainys II', 165, 34, 0.2, 0.001, 20);
INSERT INTO public.moon VALUES (25, 'Derdainys III', 278, 34, 0.3, 0.003, 20);
INSERT INTO public.moon VALUES (26, 'Derdainys IV', 388, 34, 0.7, 0.005, 20);
INSERT INTO public.moon VALUES (27, 'Derdainys V', 781, 34, 2.5, 0.01, 20);
INSERT INTO public.moon VALUES (28, 'Derdainys VI', 1237, 34, 5.6, 0.02, 20);
INSERT INTO public.moon VALUES (29, 'Derdainys VII', 443, 34, 7.1, 0.006, 20);
INSERT INTO public.moon VALUES (30, 'Derdainys VIII', 798, 34, 8.5, 0.01, 20);
INSERT INTO public.moon VALUES (31, 'Derdainys IX', 1270, 34, 19.7, 0.02, 20);
INSERT INTO public.moon VALUES (32, 'Derdainys X', 1420, 34, 25, 0.03, 20);
INSERT INTO public.moon VALUES (33, 'Derdainys XI', 3034, 34, 33.8, 0.1, 20);
INSERT INTO public.moon VALUES (34, 'Derdainys XII', 2743, 34, 105, 0.08, 20);
INSERT INTO public.moon VALUES (35, 'Derdainys XIII', 727, 34, 265.4, 0.01, 20);
INSERT INTO public.moon VALUES (36, 'Angel Moon', 1737, 220, 27.3, 0.16, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Kurinth', 'Barren', false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Thessia', 'Temperate', true, 1, 1);
INSERT INTO public.planet VALUES (3, 'Piares', 'Desert', false, 0, 1);
INSERT INTO public.planet VALUES (4, 'Janiri', 'Gas', false, 0, 1);
INSERT INTO public.planet VALUES (5, 'Athame', 'Gas', false, 0, 1);
INSERT INTO public.planet VALUES (6, 'Tevura', 'Ice', false, 0, 1);
INSERT INTO public.planet VALUES (7, 'Schada', 'Barren', false, 0, 2);
INSERT INTO public.planet VALUES (8, 'Jestefad', 'Gas', false, 0, 2);
INSERT INTO public.planet VALUES (9, 'Mustafar', 'Magmatic', true, 0, 2);
INSERT INTO public.planet VALUES (10, 'Lefrani', 'Gas', false, 0, 2);
INSERT INTO public.planet VALUES (11, 'Rietta', 'Gas', false, 2, 2);
INSERT INTO public.planet VALUES (12, 'Mikew', 'Plasma', false, 0, 3);
INSERT INTO public.planet VALUES (13, 'Mikeb', 'Barren', false, 0, 3);
INSERT INTO public.planet VALUES (14, 'Amarr Prime', 'Temperate', true, 0, 3);
INSERT INTO public.planet VALUES (15, 'Tamiroth', 'Oceanic', true, 0, 3);
INSERT INTO public.planet VALUES (16, 'Sek', 'Barren', false, 1, 3);
INSERT INTO public.planet VALUES (17, 'Zorast', 'Gas', false, 2, 3);
INSERT INTO public.planet VALUES (18, 'Nemantizor', 'Storm', false, 3, 3);
INSERT INTO public.planet VALUES (19, 'Oris', 'Temperate', true, 13, 3);
INSERT INTO public.planet VALUES (20, 'Derdainys', 'Gas', false, 13, 3);
INSERT INTO public.planet VALUES (21, 'Hiigara', 'Temperate', true, 1, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Parnitha', 5000, 'G2V Main Sequence', 6, 1);
INSERT INTO public.star VALUES (2, 'Priate', 5000, 'K6V Main Sequence', 5, 2);
INSERT INTO public.star VALUES (3, 'Amarr', 5000, 'K5V Main Sequence', 9, 3);
INSERT INTO public.star VALUES (4, 'Hiigara', 5000, 'G2V Main Sequence', 6, 4);
INSERT INTO public.star VALUES (5, 'Vulpecula', 5, 'Pulsar', 0, 5);
INSERT INTO public.star VALUES (6, 'Vela Pulsar', 8, 'Pulsar', 0, 6);


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
-- Name: miscellaneous miscellaneous_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.miscellaneous
    ADD CONSTRAINT miscellaneous_name_key UNIQUE (name);


--
-- Name: miscellaneous miscellaneous_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.miscellaneous
    ADD CONSTRAINT miscellaneous_pkey PRIMARY KEY (miscellaneous_id);


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
-- Name: miscellaneous miscellaneous_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.miscellaneous
    ADD CONSTRAINT miscellaneous_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

