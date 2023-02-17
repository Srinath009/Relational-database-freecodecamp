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
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_types integer,
    about_galaxy text,
    galaxy_size numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    moon_size numeric,
    about_moon text,
    distance_from_planet integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean,
    has_life boolean,
    planet_types integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_id integer NOT NULL,
    star_types integer,
    about_star text,
    star_size numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: unknown; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.unknown (
    name character varying NOT NULL,
    unknown_id integer NOT NULL,
    about_unknown text
);


ALTER TABLE public.unknown OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, 1240, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Canis Major Dwarf', 2, 1241, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cygnus', 3, 1243, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Maffei', 4, 1244, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Magellanic', 5, 1245, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Milky Way', 6, 1246, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Adhira', 1, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Abylay', 2, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Aegoen', 3, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Chan', 4, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('Chandra', 5, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Chandrakant', 6, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('dal', 7, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Hilal', 8, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('Kuu', 9, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('Linus', 10, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('Mani', 11, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('Moon', 12, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('Nidi', 13, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Sharad', 14, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Raki', 15, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Thomas', 16, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('Titan', 17, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('Abuk', 18, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('boom', 19, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('stuth', 20, NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Mars', 2, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Jupiter', 3, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Saturn', 4, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Uranus', 5, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('Neptune', 6, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('Helium', 7, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('Gas Dwarf', 8, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('Desert', 9, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Coreless', 10, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Carbon', 11, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('city', 12, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sirius', 1, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Canopus', 2, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('Arcturus', 3, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES ('Vega', 4, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('Rigel', 5, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES ('Procyon', 6, NULL, NULL, NULL, 6);


--
-- Data for Name: unknown; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.unknown VALUES ('mystery', 1, NULL);
INSERT INTO public.unknown VALUES ('boom', 2, NULL);
INSERT INTO public.unknown VALUES ('miracle', 3, NULL);


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
-- Name: unknown unknown_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown
    ADD CONSTRAINT unknown_pkey PRIMARY KEY (unknown_id);


--
-- Name: unknown unknown_unknown_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown
    ADD CONSTRAINT unknown_unknown_id_key UNIQUE (unknown_id);


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

