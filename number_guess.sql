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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 14);
INSERT INTO public.games VALUES (2, 142, 215);
INSERT INTO public.games VALUES (3, 142, 261);
INSERT INTO public.games VALUES (4, 143, 748);
INSERT INTO public.games VALUES (5, 143, 175);
INSERT INTO public.games VALUES (6, 142, 779);
INSERT INTO public.games VALUES (7, 142, 780);
INSERT INTO public.games VALUES (8, 142, 87);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1766154441384');
INSERT INTO public.users VALUES (79, 'user_1766156555531');
INSERT INTO public.users VALUES (3, 'user_1766154441383');
INSERT INTO public.users VALUES (81, 'user_1766156555530');
INSERT INTO public.users VALUES (8, 'HARSH');
INSERT INTO public.users VALUES (9, 'user_1766154997884');
INSERT INTO public.users VALUES (11, 'user_1766154997883');
INSERT INTO public.users VALUES (86, 'user_1766156653630');
INSERT INTO public.users VALUES (88, 'user_1766156653629');
INSERT INTO public.users VALUES (16, 'user_1766155153731');
INSERT INTO public.users VALUES (18, 'user_1766155153730');
INSERT INTO public.users VALUES (93, 'user_1766156660799');
INSERT INTO public.users VALUES (23, 'user_1766155266523');
INSERT INTO public.users VALUES (25, 'user_1766155266522');
INSERT INTO public.users VALUES (95, 'user_1766156660798');
INSERT INTO public.users VALUES (30, 'user_1766155339036');
INSERT INTO public.users VALUES (32, 'user_1766155339035');
INSERT INTO public.users VALUES (100, 'user_1766156732722');
INSERT INTO public.users VALUES (102, 'user_1766156732721');
INSERT INTO public.users VALUES (37, 'user_1766155891304');
INSERT INTO public.users VALUES (39, 'user_1766155891303');
INSERT INTO public.users VALUES (107, 'user_1766156756383');
INSERT INTO public.users VALUES (44, 'user_1766156061744');
INSERT INTO public.users VALUES (109, 'user_1766156756382');
INSERT INTO public.users VALUES (46, 'user_1766156061743');
INSERT INTO public.users VALUES (51, 'user_1766156085340');
INSERT INTO public.users VALUES (114, 'user_1766156844872');
INSERT INTO public.users VALUES (53, 'user_1766156085339');
INSERT INTO public.users VALUES (116, 'user_1766156844871');
INSERT INTO public.users VALUES (58, 'user_1766156133535');
INSERT INTO public.users VALUES (60, 'user_1766156133534');
INSERT INTO public.users VALUES (121, 'user_1766157349116');
INSERT INTO public.users VALUES (123, 'user_1766157349115');
INSERT INTO public.users VALUES (65, 'user_1766156344987');
INSERT INTO public.users VALUES (67, 'user_1766156344986');
INSERT INTO public.users VALUES (128, 'user_1766157358902');
INSERT INTO public.users VALUES (72, 'user_1766156450672');
INSERT INTO public.users VALUES (74, 'user_1766156450671');
INSERT INTO public.users VALUES (130, 'user_1766157358901');
INSERT INTO public.users VALUES (135, 'user_1766157376985');
INSERT INTO public.users VALUES (137, 'user_1766157376984');
INSERT INTO public.users VALUES (142, 'user_1766157641761');
INSERT INTO public.users VALUES (143, 'user_1766157641760');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 8, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 143, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

