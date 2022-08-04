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
-- Name: asteroid_sys; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid_sys (
    asteroid_sys_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.asteroid_sys OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(8,2),
    mass numeric(8,2),
    gass_content numeric(4,3)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    sequence integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    sequence integer NOT NULL,
    name character varying(30) NOT NULL,
    is_habitable boolean,
    radius numeric(4,2),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_white boolean,
    galaxy_id integer NOT NULL,
    mass numeric(8,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid_sys; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid_sys VALUES (1, 'a1', 3);
INSERT INTO public.asteroid_sys VALUES (2, 'a2', 4);
INSERT INTO public.asteroid_sys VALUES (3, 'a3', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 100000.10, 100000.10, 0.200);
INSERT INTO public.galaxy VALUES (2, 'g2', 200000.10, 200000.10, 0.200);
INSERT INTO public.galaxy VALUES (3, 'g3', 200000.10, 200000.10, 0.200);
INSERT INTO public.galaxy VALUES (4, 'g4', 200000.10, 200000.10, 0.200);
INSERT INTO public.galaxy VALUES (5, 'g5', 200000.10, 200000.10, 0.200);
INSERT INTO public.galaxy VALUES (6, 'g6', 200000.10, 200000.10, 0.200);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'm', 'm1', 1);
INSERT INTO public.moon VALUES (2, 2, 'm', 'm2', 1);
INSERT INTO public.moon VALUES (3, 3, 'm', 'm3', 1);
INSERT INTO public.moon VALUES (4, 4, 'm', 'm4', 1);
INSERT INTO public.moon VALUES (5, 1, 'm', 'm5', 2);
INSERT INTO public.moon VALUES (6, 2, 'm', 'm6', 2);
INSERT INTO public.moon VALUES (7, 3, 'm', 'm7', 2);
INSERT INTO public.moon VALUES (8, 1, 'm', 'm8', 3);
INSERT INTO public.moon VALUES (9, 2, 'm', 'm9', 3);
INSERT INTO public.moon VALUES (10, 3, 'm', 'm10', 3);
INSERT INTO public.moon VALUES (11, 1, 'm', 'm11', 4);
INSERT INTO public.moon VALUES (12, 2, 'm', 'm12', 4);
INSERT INTO public.moon VALUES (13, 3, 'm', 'm13', 4);
INSERT INTO public.moon VALUES (14, 1, 'm', 'm14', 5);
INSERT INTO public.moon VALUES (15, 2, 'm', 'm15', 5);
INSERT INTO public.moon VALUES (16, 3, 'm', 'm16', 5);
INSERT INTO public.moon VALUES (17, 1, 'm', 'm17', 6);
INSERT INTO public.moon VALUES (18, 2, 'm', 'm18', 6);
INSERT INTO public.moon VALUES (19, 3, 'm', 'm19', 6);
INSERT INTO public.moon VALUES (20, 1, 'm', 'm20', 7);
INSERT INTO public.moon VALUES (21, 2, 'm', 'm21', 7);
INSERT INTO public.moon VALUES (22, 3, 'm', 'm22', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'p1', false, 12.20, 1);
INSERT INTO public.planet VALUES (2, 4, 'p2', true, 12.20, 1);
INSERT INTO public.planet VALUES (3, 1, 'p3', false, 12.20, 2);
INSERT INTO public.planet VALUES (4, 4, 'p4', false, 12.20, 2);
INSERT INTO public.planet VALUES (5, 1, 'p5', false, 12.20, 3);
INSERT INTO public.planet VALUES (6, 4, 'p6', true, 12.20, 3);
INSERT INTO public.planet VALUES (7, 1, 'p7', false, 12.20, 3);
INSERT INTO public.planet VALUES (8, 4, 'p8', false, 12.20, 4);
INSERT INTO public.planet VALUES (9, 1, 'p9', false, 12.20, 5);
INSERT INTO public.planet VALUES (10, 4, 'p10', false, 12.20, 5);
INSERT INTO public.planet VALUES (11, 1, 'p11', false, 12.20, 6);
INSERT INTO public.planet VALUES (12, 4, 'p12', false, 12.20, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', false, 1, 1.10);
INSERT INTO public.star VALUES (2, 's2', false, 1, 2.10);
INSERT INTO public.star VALUES (3, 's3', false, 1, 2.30);
INSERT INTO public.star VALUES (4, 's4', true, 4, 2.30);
INSERT INTO public.star VALUES (5, 's5', true, 5, 2.30);
INSERT INTO public.star VALUES (6, 's6', true, 6, 2.30);


--
-- Name: asteroid_sys asteroid_sys_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_sys
    ADD CONSTRAINT asteroid_sys_name_key UNIQUE (name);


--
-- Name: asteroid_sys asteroid_sys_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_sys
    ADD CONSTRAINT asteroid_sys_pkey PRIMARY KEY (asteroid_sys_id);


--
-- Name: asteroid_sys asteroid_sys_start_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_sys
    ADD CONSTRAINT asteroid_sys_start_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: asteroid_sys asteroid_sys_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_sys
    ADD CONSTRAINT asteroid_sys_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

