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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(60) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (113, 2018, 138, 139, 4, 2, 'Final');
INSERT INTO public.games VALUES (114, 2018, 140, 141, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (115, 2018, 139, 141, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (116, 2018, 138, 140, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (117, 2018, 139, 142, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (118, 2018, 141, 143, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (119, 2018, 140, 144, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (120, 2018, 138, 145, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (121, 2018, 141, 146, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (122, 2018, 143, 147, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (123, 2018, 140, 148, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (124, 2018, 144, 149, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (125, 2018, 139, 150, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (126, 2018, 142, 151, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (127, 2018, 145, 152, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (128, 2018, 138, 153, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (129, 2014, 154, 153, 1, 0, 'Final');
INSERT INTO public.games VALUES (130, 2014, 155, 144, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (131, 2014, 153, 155, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (132, 2014, 154, 144, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (133, 2014, 155, 156, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (134, 2014, 153, 140, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (135, 2014, 144, 146, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (136, 2014, 154, 138, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (137, 2014, 144, 157, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (138, 2014, 146, 145, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (139, 2014, 138, 158, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (140, 2014, 154, 159, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (141, 2014, 155, 149, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (142, 2014, 156, 160, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (143, 2014, 153, 147, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (144, 2014, 140, 161, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (138, 'France');
INSERT INTO public.teams VALUES (139, 'Croatia');
INSERT INTO public.teams VALUES (140, 'Belgium');
INSERT INTO public.teams VALUES (141, 'England');
INSERT INTO public.teams VALUES (142, 'Russia');
INSERT INTO public.teams VALUES (143, 'Sweden');
INSERT INTO public.teams VALUES (144, 'Brazil');
INSERT INTO public.teams VALUES (145, 'Uruguay');
INSERT INTO public.teams VALUES (146, 'Colombia');
INSERT INTO public.teams VALUES (147, 'Switzerland');
INSERT INTO public.teams VALUES (148, 'Japan');
INSERT INTO public.teams VALUES (149, 'Mexico');
INSERT INTO public.teams VALUES (150, 'Denmark');
INSERT INTO public.teams VALUES (151, 'Spain');
INSERT INTO public.teams VALUES (152, 'Portugal');
INSERT INTO public.teams VALUES (153, 'Argentina');
INSERT INTO public.teams VALUES (154, 'Germany');
INSERT INTO public.teams VALUES (155, 'Netherlands');
INSERT INTO public.teams VALUES (156, 'Costa Rica');
INSERT INTO public.teams VALUES (157, 'Chile');
INSERT INTO public.teams VALUES (158, 'Nigeria');
INSERT INTO public.teams VALUES (159, 'Algeria');
INSERT INTO public.teams VALUES (160, 'Greece');
INSERT INTO public.teams VALUES (161, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 144, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 161, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

