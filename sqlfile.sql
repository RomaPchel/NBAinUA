
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
-- Name: article_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_tags (
    id bigint NOT NULL,
    tags character varying(255)
);


ALTER TABLE public.article_tags OWNER TO postgres;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    content character varying,
    date character varying(255),
    snippet character varying(255),
    title character varying(255),
    author character varying(255),
    image character varying(255),
    main_image character varying(255)
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id bigint NOT NULL,
    first_team_score character varying(255),
    location character varying(255),
    second_team_score character varying(255),
    "time" character varying(255),
    winner character varying(255),
    first_team_id bigint,
    second_team_id bigint,
    date timestamp without time zone,
    date timestamp without time zone,
    has_ended boolean DEFAULT false
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: players; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players (
    id bigint NOT NULL,
    first_name character varying(255),
    from_or_attended character varying(255),
    height character varying(255),
    number character varying(255),
    "position" character varying(255),
    second_name character varying(255),
    weight character varying(255),
    team_id bigint NOT NULL,
    assists character varying(255),
    points character varying(255),
    rebounds character varying(255)
);


ALTER TABLE public.players OWNER TO postgres;

--
-- Name: team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.team (
    id bigint NOT NULL,
    full_name character varying(255),
    name character varying(255),
    standings character varying(255),
    logo character varying(255),
    conference character varying(255),
    division character varying(255),
    games_lost character varying(255) DEFAULT 0,
    games_won character varying(255) DEFAULT 0,
    abbreviation character varying(255),
    assists_leader character varying(255),
    points_leader character varying(255),
    rebounds_leader character varying(255)
);


ALTER TABLE public.team OWNER TO postgres;

--
-- Data for Name: article_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_tags (id, tags) FROM stdin;
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles (id, content, date, snippet, title, author, image, main_image) FROM stdin;
2377	DeMar DeRozan was linked to joining the LA Clippers during the off-season, but he's never publicly spoken about it - until now.\n\nDeRozan was a guest on Serge Ibaka's 'How Hungry Are You' show, where he discussed the serious possibility of joining the LA Clippers, and his conversations with Paul George.\n\n"It could've been a day earlier, it would've worked," DeRozan said. "It really was a real possibility. We got the deal done with Chicago... I talked to PG about it, we was really talking about it, we was really trying to figure it out to make it happen. What needed to be figured out, didn't get figured out. I'm being dead serious, no bullshit. I haven't even talked about it. It was a real opportunity.тАЭ	Fri Aug 26 18:01:29 EEST 2022	Joining the Clippers was a serious possibility for DeRozan.\n	DeMar DeRozan Reveals Paul George Talked With him to Join Clippers\n	\N	https://www.si.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkxNDUxMjk4Nzg3MjM5NTIy/usatsi_18135549_168388303_lowres.jpg	https://library.sportingnews.com/styles/twitter_card_120x120/s3/2021-11/demar-derozan-11152021-nbae-getty-ftr_wl7c1x6ntocj1jse6u0fa38xn.jpg?itok=nygcfrU6
2378	While the NBA world keeps talking about Kawhi Leonard and Paul George, many are forgetting about Norman Powell's potential return as well. Powell is out of a walking boot after getting surgery, getting shots up, but still not cleared for contact yet.\n\nтАЬNot yet," Ty Lue said at shootaround. I know heтАЩs doing some shooting and stuff, but not anything as far as contact with us today.тАЭ \n\nSome footage of Powell taking one-legged jump shots were also captured by Tomer Azarly.	Fri Aug 26 18:01:50 EEST 2022	Norman Powell is out of the boot and progressing.\n	Norman Powell Getting Shots Up, Not Cleared For Contact Yet\n	\N	https://www.si.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTg3Njk4NzQxODM3MzA5ODM5/imageedit_1_3515913325.jpg	https://library.sportingnews.com/styles/crop_style_16_9_mobile_2x/s3/2022-02/nba-plain--f6ff3374-061e-4ed9-905a-37df7410f441.jpeg?itok=gnJLLzFZ
2376	Kawhi Leonard's injury rehab has maintained one constant, which is an open door. As the season winds down, and injured athletes across the league are being ruled out for the season, Kawhi Leonard has yet to join this group of players who have been shut down for the year. With each new update indicating positive progression, is it realistic to anticipate a Kawhi sighting this season? According to a new report from ESPN's Ohm Youngmisuk, that door still remains open.\n\n"By all accounts, Leonard has been working hard and looks to be in good shape, but the Clippers will be extra cautious with their franchise star. If they make it out of the play-in tournament, however, and Paul George and Norman Powell also return, Leonard would just need clearance from the medical staff to play again. And that door has been left open," Youngmisuk reported.\n\nWhat this report seems to indicate, is that Kawhi Leonard is relatively close to being ready for a return; however, that likely will not happen before the play-in tournament. Should the Clippers survive the play-in, and draw one of the Phoenix Suns, Memphis Grizzlies, or Golden State Warriors in round one, the door has reportedly been left open for Kawhi then returning.	Fri Aug 26 18:00:47 EEST 2022	If the LA Clippers survive the play-in tournament, Kawhi could reportedly rejoin the team\n	Report: Kawhi Leonard Could Return After Play-In Tournament\n	\N	https://www.si.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTg4Mjk5NzM1MjY4ODYxMDUw/kawhi-leonard-la-clippers-nba_4828884.jpg	https://www.the-sun.com/wp-content/uploads/sites/6/2022/06/kc-kawhi-leonard-comp-1.jpg
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, first_team_score, location, second_team_score, "time", winner, first_team_id, second_team_id, date, has_ended) FROM stdin;
2367	\N	location	\N	7:00 pm ET	\N	5	30	\N	f
2368	\N	location	\N	7:30 pm ET	\N	22	1	\N	f
2369	\N	location	\N	7:30 pm ET	\N	28	3	\N	f
2370	\N	location	\N	7:30 pm ET	\N	2	16	\N	f
2371	\N	location	\N	7:30 pm ET	\N	9	20	\N	f
2372	\N	location	\N	8:00 pm ET	\N	15	11	\N	f
2373	\N	location	\N	8:00 pm ET	\N	29	18	\N	f
2374	\N	location	\N	10:00 pm ET	\N	8	10	\N	f
2375	\N	location	\N	10:00 pm ET	\N	24	25	\N	f
2365	111	113	113	7:00 pm ET	\N	19	4	2022-08-26 17:41:16	f
2366	11	location	33	7:00 pm ET	\N	27	12	\N	t
\.


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players (id, first_name, from_or_attended, height, number, "position", second_name, weight, team_id, assists, points, rebounds) FROM stdin;
1631132	Christian	Arizona Cameroon	7-1		C	Koloko	230 lbs	28	--	--	--
1629723	John	Indiana-Purdue Fort Wayne USA	6-5	46	G	Konchar	210 lbs	15	1.5	4.8	4.6
1627788	Furkan	Anadolu Efes Turkey	6-7	30	G-F	Korkmaz	202 lbs	23	1.9	7.6	2.6
1628436	Luke	Vanderbilt USA	7-2	40	C-F	Kornet	250 lbs	2	0.6	2.0	1.9
1630249	Vit	Zaragoza Czech Republic	6-8	27	G	Krejci	195 lbs	21	1.9	6.2	3.4
1629083	Arnoldas	Bilbao Lithuania	6-10	98	F	Kulboka	209 lbs	4	--	--	--
1630228	Jonathan	NBA G	6-7	00	F	Kuminga	225 lbs	10	0.9	9.3	3.3
1628398	Kyle	Utah USA	6-9	33	F	Kuzma	221 lbs	30	3.5	17.1	8.5
1631222	Jake	Wake Forest USA	6-8		F	LaRavia	235 lbs	15	--	--	--
203897	Zach	UCLA USA	6-5	8	G-F	LaVine	200 lbs	5	4.5	24.4	4.6
1630237	Anthony	Vermont USA	6-6	33	F	Lamb	227 lbs	11	1.0	--	0.5
203087	Jeremy	Connecticut USA	6-5	26	G-F	Lamb	180 lbs	26	1.4	7.3	2.8
1629111	Jock	 Australia	6-11	34	C	Landale	255 lbs	24	0.8	4.9	2.6
1629641	Romeo	Indiana USA	6-5	35	G-F	Langford	216 lbs	27	0.4	4.5	2.3
1627774	Jake	Maryland USA	6-8	10	F	Layman	209 lbs	18	0.3	2.4	1.1
1627747	Caris	Michigan USA	6-6	3	G	LeVert	205 lbs	6	4.3	17.0	3.7
1627814	Damion	Drexel USA	6-5	1	G-F	Lee	210 lbs	24	1.0	7.4	3.2
1630240	Saben	Vanderbilt USA	6-2	38	G	Lee	183 lbs	9	2.9	5.6	2.4
203458	Alex	Maryland Ukraine	7-0	25	C	Len	250 lbs	26	1.2	6.0	4.1
202695	Kawhi	San Diego State USA	6-7	2	F	Leonard	225 lbs	13	5.2	24.8	6.5
1631171	Justin	Marquette USA	6-7		F	Lewis	245 lbs	5	--	--	--
1630575	Scottie	Florida USA	6-5	16	G	Lewis	185 lbs	4	0.5	0.5	--
1630184	Kira	Alabama USA	6-1	13	G	Lewis Jr.	170 lbs	19	2.0	5.9	1.6
1630604	E.J.	Ohio State USA	6-7		F	Liddell	240 lbs	19	--	--	--
203081	Damian	Weber State USA	6-2	0	G	Lillard	195 lbs	25	7.3	24.0	4.1
1629642	Nassir	North Carolina USA	6-5	10	F-G	Little	220 lbs	25	1.3	9.8	5.6
1630587	Isaiah	Michigan USA	6-6	12	F	Livers	232 lbs	9	1.1	6.4	3.0
1631254	Kenneth	Louisiana Tech USA	6-7		F	Lofton Jr.	275 lbs	15	--	--	--
1626172	Kevon	UCLA USA	6-9	5	F	Looney	222 lbs	10	2.0	6.0	7.3
201572	Brook	Stanford USA	7-0	11	C	Lopez	282 lbs	17	0.5	12.4	4.1
201577	Robin	Stanford USA	7-0	33	C	Lopez	281 lbs	6	1.5	7.1	3.5
1629712	Didi	Sydney Kings Brazil	6-5	35	G	Louzada	188 lbs	25	0.6	3.9	1.9
201567	Kevin	UCLA USA	6-8	0	F-C	Love	251 lbs	6	2.2	13.6	7.2
200768	Kyle	Villanova USA	6-0	7	G	Lowry	196 lbs	16	7.5	13.4	4.5
1630994	Gabriel	 Denmark	6-4	19	G	Lundberg	203 lbs	24	2.8	3.3	1.8
1627789	Timothe	Mega Basket France	6-7	7	G-F	Luwawu-Cabarrot	215 lbs	1	0.8	4.4	1.6
1626168	Trey	Kentucky Canada	6-9	41	F	Lyles	234 lbs	26	1.2	10.5	5.1
1630588	Makur	Howard South Sudan	6-10		C	Maker	232 lbs	30	--	--	--
1630572	Sandro	Seton Hall Georgia	6-9	54	F-C	Mamukelashvili	240 lbs	17	0.5	3.8	2.0
1629611	Terance	Florida State USA	6-5	14	G-F	Mann	215 lbs	13	2.6	10.8	5.2
1630544	Tre	Florida USA	6-3	23	G	Mann	178 lbs	21	1.5	10.4	2.9
1626246	Boban	Crvena zvezda Serbia	7-3	51	C	Marjanovic	290 lbs	11	0.1	4.3	1.7
1628374	Lauri	Arizona Finland	6-11	24	F-C	Markkanen	240 lbs	6	1.3	14.8	5.7
1630230	Naji	Xavier USA	6-7	8	F	Marshall	220 lbs	19	1.1	5.7	2.6
1628997	Caleb	Nevada-Reno USA	6-5	16	F	Martin	205 lbs	16	1.1	9.2	3.8
1628998	Cody	Nevada-Reno USA	6-6	11	F	Martin	205 lbs	4	2.5	7.7	4.0
1631213	Tyrese	Connecticut USA	6-6		G	Martin	215 lbs	1	--	--	--
1630231	Kenyon	IMG Academy (FL) USA	6-5	6	F	Martin Jr.	215 lbs	11	1.3	8.8	3.8
1629726	Garrison	Lipscomb USA	6-5	25	G	Mathews	215 lbs	11	1.0	10.0	2.9
1631097	Bennedict	Arizona USA	6-7	00	G-F	Mathurin	210 lbs	12	--	--	--
1631255	Karlo	Mega Basket	6-10		F-C	Matkovic	231 lbs	19	--	--	--
202083	Wesley	Marquette USA	6-4	23	G	Matthews	220 lbs	17	0.7	5.1	1.9
1630178	Tyrese	Kentucky USA	6-2	0	G	Maxey	200 lbs	23	4.3	17.5	3.2
1630219	Skylar	Louisiana State USA	6-4	4	G	Mays	205 lbs	1	0.6	2.9	0.9
1630644	Mac	Texas Tech USA	6-2	37	G	McClung	185 lbs	10	0.5	4.0	1.5
204456	T.J.	Arizona USA	6-1	9	G	McConnell	190 lbs	12	4.9	8.5	3.3
1631322	Javante	Boston University USA	6-5		G	McCoy	180 lbs	14	--	--	--
1630183	Jaden	Washington USA	6-9	3	F	McDaniels	185 lbs	18	1.1	9.2	4.2
1629667	Jalen	San Diego State USA	6-9	6	F-C	McDaniels	205 lbs	4	1.1	6.2	3.1
1631323	Bryn	Michigan State USA	6-2	6	G	Forbes	205 lbs	18	\N	\N	\N
1627854	Trent	Florida State USA	6-4	3	G	Forrest	210 lbs	1	1.0	8.8	1.2
1630701	Evan	Poitiers Basket 86 France	6-6	13	G-F	Fournier	205 lbs	20	--	--	--
1628368	De'Aaron	Kentucky USA	6-3	5	G	Fox	185 lbs	26	5.6	23.2	3.9
1631241	Javon	DePaul USA	6-4		G	Freeman-Liberty	180 lbs	5	--	--	--
1628365	Markelle	Washington USA	6-4	20	G	Fultz	209 lbs	22	5.5	10.8	2.7
1629117	Wenyen	Kentucky South Sudan	6-9	35	F	Gabriel	205 lbs	14	0.5	5.4	3.7
1629655	Daniel	Arkansas USA	6-9	21	F-C	Gafford	234 lbs	30	0.9	9.4	5.7
201568	Danilo	Olimpia Milano Italy	6-10	8	F	Gallinari	236 lbs	2	1.5	11.7	4.7
1629636	Darius	Vanderbilt USA	6-1	10	G	Garland	192 lbs	6	8.6	21.7	3.3
1630585	Marcus	Kansas USA	6-5	0	G	Garrett	205 lbs	16	0.6	1.1	1.9
1630586	Usman	Real Madrid Spain	6-8	16	F	Garuba	229 lbs	11	0.7	2.0	3.5
1630568	Luka	Iowa USA	6-10	55	C	Garza	243 lbs	9	0.6	5.8	3.1
200752	Rudy	Connecticut USA	6-8	8	F-G	Gay	250 lbs	29	1.0	8.1	4.4
1628427	Vlatko	San Pablo Burgos Slovenia	6-8	31	F	Cancar	236 lbs	8	1.1	4.1	2.1
203926	Doug	Creighton USA	6-7	17	F	McDermott	225 lbs	27	1.3	11.3	2.3
201580	JaVale	Nevada-Reno USA	7-0	00	C-F	McGee	270 lbs	7	0.6	9.2	6.7
1631121	Bryce	Nebraska USA	6-6		G	McGowens	175 lbs	4	--	--	--
203585	Rodney	Kansas State USA	6-4	17	G	McGruder	205 lbs	9	0.9	5.4	2.2
1629162	Jordan	Southern California USA	5-11	6	G	McLaughlin	185 lbs	18	2.9	3.8	1.5
203463	Ben	Kansas USA	6-3	23	G	McLemore	195 lbs	25	0.9	10.2	1.6
1630241	Sam	Utah State USA	6-4	25	G	Merrill	205 lbs	26	0.7	4.2	1.2
1629002	Chimezie	Southern California USA	6-9	7	F-C	Metu	225 lbs	26	1.0	8.9	5.6
201588	George	Indiana-Purdue Indianapolis USA	6-4	3	G	Hill	188 lbs	17	2.2	6.2	2.9
203114	Khris	Texas A&M USA	6-7	22	F	Middleton	222 lbs	17	5.4	20.1	5.4
1630627	Isaiah	North Carolina-Greensboro USA	6-0		G	Miller	180 lbs	25	--	--	--
201988	Patty	St.Mary's College	6-0	8	G	Mills	180 lbs	3	2.3	11.4	1.9
200794	Paul	Louisiana Tech USA	6-7	8	F	Millsap	257 lbs	23	0.9	3.5	3.5
1629003	Shake	Southern Methodist USA	6-5	18	G-F	Milton	205 lbs	23	2.5	8.2	2.6
1631169	Josh	Memphis USA	6-8		F	Minott	205 lbs	18	--	--	--
1630558	Davion	Baylor USA	6-0	15	G	Mitchell	202 lbs	26	4.2	11.5	2.2
1628378	Donovan	Louisville USA	6-1	45	G	Mitchell	215 lbs	29	5.3	25.9	4.2
1630596	Evan	Southern California USA	6-11	4	C	Mobley	215 lbs	6	2.5	15.0	8.3
1630600	Isaiah	Southern California USA	6-8	15	F	Mobley	238 lbs	6	--	--	--
1631320	Chima	California-Davis Nigeria	6-6		F	Moneke	223 lbs	26	--	--	--
1628370	Malik	Kentucky USA	6-3	11	G	Monk	200 lbs	26	2.9	13.8	3.4
202328	Greg	Georgetown USA	6-10	55	F-C	Monroe	250 lbs	18	1.6	5.4	4.6
1630541	Moses	Arkansas USA	6-5	4	G	Moody	211 lbs	10	0.4	4.4	1.5
1629875	Xavier	Morehead State USA	6-2	15	G	Moon	165 lbs	13	2.4	5.8	1.4
1631111	Wendell	Duke USA	6-5		G	Moore Jr.	215 lbs	18	--	--	--
1629630	Ja	Murray State USA	6-3	12	G	Morant	174 lbs	15	6.7	27.4	5.7
202693	Markieff	Kansas USA	6-9	8	F	Morris	245 lbs	16	1.4	7.6	2.6
1628420	Monte	Iowa State USA	6-2	11	G	Morris	183 lbs	30	4.4	12.6	3.0
202694	Marcus	Kansas USA	6-8	8	F	Morris Sr.	218 lbs	13	2.1	15.4	4.4
1630530	Trey	Virginia USA	6-8	25	F	Murphy III	206 lbs	19	0.6	5.4	2.4
1627749	Dejounte	Washington USA	6-4	5	G	Murray	180 lbs	1	9.2	21.1	8.3
1630792	Malcolm	Illinois USA	6-6	14	F	Hill	220 lbs	5	0.4	3.8	1.8
1627750	Jamal	Kentucky Canada	6-3	27	G	Murray	215 lbs	8	4.8	21.2	4.0
1631099	Keegan	Iowa USA	6-8		F	Murray	225 lbs	26	--	--	--
1629004	Svi	Kansas Ukraine	6-7	14	G-F	Mykhailiuk	205 lbs	28	0.8	4.6	1.6
1626204	Larry	Wyoming USA	6-7	22	F-C	Nance Jr.	245 lbs	19	1.8	7.0	5.4
1629614	Andrew	Gonzaga Canada	6-5	2	G-F	Nembhard	191 lbs	12	--	--	--
1630612	RJ	TCU USA	6-4	5	G	Nembhard Jr.	200 lbs	6	0.9	1.1	0.5
1630174	Aaron	Vanderbilt USA	6-5	23	G-F	Nesmith	215 lbs	12	0.4	3.8	1.7
203526	Raul	Murcia Brazil	6-2	19	G	Neto	180 lbs	6	3.1	7.5	1.9
1627777	Georges	Iowa State USA	6-7	20	F	Niang	230 lbs	23	1.3	9.2	2.7
1628988	Aaron	UCLA USA	6-0	4	G	Holiday	185 lbs	1	2.4	6.3	1.9
201950	Jrue	UCLA USA	6-3	21	G	Holiday	205 lbs	17	6.8	18.3	4.5
203200	Justin	Washington USA	6-6	9	F-G	Holiday	180 lbs	1	1.7	10.1	2.6
1626158	Richaun	Bowling Green USA	6-10	22	F	Holmes	235 lbs	26	1.1	10.4	7.0
1631096	Chet	Gonzaga USA	7-0	7	C-F	Holmgren	195 lbs	21	--	--	--
203918	Rodney	Duke USA	6-8	22	G-F	Hood	208 lbs	13	0.7	3.1	1.5
201143	Al	Florida Dominican Republic	6-9	42	C-F	Horford	240 lbs	2	3.4	10.2	7.7
1629659	Talen	Iowa State USA	6-4	5	G	Horton-Tucker	234 lbs	14	2.7	10.0	3.2
1627863	Danuel	Texas A&M USA	6-6	25	F-G	House Jr.	220 lbs	23	1.0	5.9	2.6
1631216	Caleb	Michigan Canada	6-8	2	G	Houstan	205 lbs	22	--	--	--
2730	Dwight	SW Atlanta	6-10	39	C-F	Howard	265 lbs	14	0.6	6.2	5.9
1631309	Trevor	Northwest Missouri State USA	6-0		G	Hudgins	180 lbs	11	--	--	--
1628989	Kevin	Maryland USA	6-7	3	G-F	Huerter	198 lbs	26	2.7	12.1	3.4
1630643	Jay	Virginia USA	7-1	30	F	Huff	240 lbs	14	0.3	--	1.0
1630190	Elijah	Syracuse USA	6-5	19	G	Hughes	215 lbs	25	0.6	3.5	1.6
1630624	Feron	Southern Methodist USA	6-8	11	F	Hunt	195 lbs	20	0.5	--	0.5
1629631	De'Andre	Virginia USA	6-8	12	F-G	Hunter	221 lbs	1	1.3	13.4	3.3
1630538	Bones	Virginia Commonwealth USA	6-2	3	G	Hyland	169 lbs	8	2.8	10.1	2.7
201586	Serge	Ricoh Manresa	6-10	25	F	Ibaka	235 lbs	17	0.9	6.8	4.6
204060	Joe	Maccabi Tel Aviv Australia	6-8	00	F-G	Ingles	220 lbs	17	3.5	7.2	2.9
1627742	Brandon	Duke USA	6-8	14	F	Ingram	190 lbs	19	5.6	22.7	5.8
202681	Kyrie	Duke Australia	6-2	11	G	Irving	195 lbs	3	5.8	27.4	4.4
1628371	Jonathan	Florida State USA	6-10	1	F	Isaac	230 lbs	22	1.4	11.9	6.8
1631093	Jaden	Purdue USA	6-4		G	Ivey	195 lbs	9	--	--	--
1628402	Frank	Duke USA	6-3	5	G	Jackson	205 lbs	9	1.0	10.6	1.6
1630543	Isaiah	Kentucky USA	6-10	22	F	Jackson	205 lbs	12	0.3	8.3	4.1
1628367	Josh	Kansas USA	6-8	55	G-F	Jackson	207 lbs	26	1.1	6.4	2.8
202704	Reggie	Boston College USA	6-2	1	G	Jackson	208 lbs	13	4.8	16.8	3.6
1628991	Jaren	Michigan State USA	6-11	13	F-C	Jackson Jr.	242 lbs	15	1.1	16.3	5.8
2544	LeBron	St. Vincent-St.	6-9	6	F	James	250 lbs	14	6.2	30.3	8.2
1630198	Isaiah	Arkansas USA	6-4	7	G	Joe	165 lbs	23	0.6	3.6	1.0
202709	Cory	Texas-Austin Canada	6-3	18	G	Joseph	200 lbs	9	3.6	8.0	2.7
1631107	Nikola	 Serbia	6-10	5	F	Jovic	205 lbs	16	--	--	--
1630548	Johnny	UCLA USA	6-6		G	Juzang	209 lbs	29	--	--	--
1631130	Ismael	 France	6-11		C	Kamagate	230 lbs	8	--	--	--
1626163	Frank	Wisconsin USA	7-0	8	F-C	Kaminsky	240 lbs	1	1.4	10.6	4.6
1631211	Trevor	Duke USA	6-5		G	Keels	221 lbs	20	--	--	--
1628379	Luke	Duke USA	6-5	5	G	Kennard	206 lbs	13	2.1	11.9	3.3
1631117	Walker	Auburn USA	7-1		C	Kessler	245 lbs	29	--	--	--
1630296	Braxton	Virginia USA	6-8	17	F	Key	225 lbs	9	1.0	7.2	4.5
1630557	Corey	Gonzaga USA	6-6	24	F	Kispert	224 lbs	30	1.1	8.2	2.7
1628467	Maxi	Bayern Munich Germany	6-10	42	F	Kleber	240 lbs	7	1.2	7.0	5.9
1630233	Nathan	William & Mary USA	6-10	13	F-C	Knight	253 lbs	18	0.6	3.7	2.3
1628995	Kevin	Kentucky USA	6-7	5	F	Knox II	215 lbs	9	0.3	3.1	1.5
1629048	Goga	Mega Basket Georgia	7-0	88	C-F	Bitadze	250 lbs	12	1.1	7.0	3.5
202687	Bismack	Baloncesto Fuenlabrada DRC	6-8	18	C	Biyombo	255 lbs	24	0.6	5.8	4.6
1629833	Keljin	Montana State USA	6-4	21	G	Blevins	200 lbs	25	0.6	3.1	1.5
1631205	Buddy	Syracuse USA	6-6		F	Boeheim	205 lbs	9	--	--	--
203992	Bogdan	Fenerbahce Serbia	6-6	13	G	Bogdanovic	225 lbs	1	3.1	15.1	4.0
202711	Bojan	Fenerbahce Croatia	6-7	44	F	Bogdanovic	226 lbs	29	1.7	18.1	4.3
1629626	Bol	Oregon Sudan	7-2	10	C-F	Bol	220 lbs	22	0.4	2.4	1.4
1630195	Leandro	FC Barcelona Argentina	6-6	9	F	Bolmaro	200 lbs	29	0.6	1.4	1.2
1629067	Isaac	Skyliners Frankfurt Germany	6-8	17	G	Bonga	180 lbs	28	0.3	0.8	0.5
1626164	Devin	Kentucky USA	6-5	1	G	Booker	206 lbs	24	4.8	26.8	5.0
1630527	Brandon	Kentucky USA	6-6	4	G	Boston	188 lbs	13	1.0	6.7	2.2
1628449	Chris	Oregon Saint Lucia	6-9	25	F-C	Boucher	200 lbs	28	0.3	9.4	6.2
1630547	James	Connecticut USA	6-4	5	G	Bouknight	190 lbs	4	0.8	4.6	1.7
1631123	Jamaree	San Francisco USA	6-2		G	Bouyea	180 lbs	16	--	--	--
202340	Avery	Texas-Austin USA	6-3	20	G	Bradley	180 lbs	14	0.8	6.4	2.2
1628396	Tony	North Carolina USA	6-10	13	C-F	Bradley	248 lbs	5	0.5	3.0	3.4
1631103	Malaki	Ohio State USA	6-5		F	Branham	180 lbs	27	--	--	--
1631128	Christian	Kansas USA	6-6	0	G	Braun	220 lbs	8	--	--	--
1629649	Ignas	Michigan Canada	6-6	17	F	Brazdeikis	221 lbs	22	0.9	5.0	1.7
1628969	Mikal	Villanova USA	6-6	25	F	Bridges	209 lbs	24	2.3	14.2	4.2
1628970	Miles	Michigan State USA	6-7	0	F	Bridges	225 lbs	4	3.8	20.2	7.0
1629052	Oshae	Syracuse Canada	6-7	12	F-G	Brissett	210 lbs	12	1.1	9.1	5.3
1627763	Malcolm	Virginia USA	6-5	7	G	Brogdon	229 lbs	2	5.9	19.1	5.1
1628415	Dillon	Oregon Canada	6-7	24	G-F	Brooks	225 lbs	15	2.8	18.4	3.2
1628971	Bruce	Miami USA	6-4	11	G-F	Brown	202 lbs	8	2.1	9.0	4.8
1631122	Gabe	Michigan State USA	6-8		F	Brown	215 lbs	28	--	--	--
1627759	Jaylen	California USA	6-6	7	G-F	Brown	223 lbs	2	3.5	23.6	6.1
1631112	Kendall	Baylor USA	6-8	10	G	Brown	205 lbs	12	--	--	--
1629650	Moses	UCLA USA	7-2	6	C	Brown	245 lbs	13	--	4.3	3.4
1628425	Sterling	Southern Methodist USA	6-5	0	G-F	Brown	219 lbs	11	0.7	3.3	3.0
1630535	Greg	Texas-Austin USA	6-7	4	F	Brown III	206 lbs	25	0.7	4.7	2.8
1629718	Charlie	St. Joseph's (PA) USA	6-6	16	G	Brown Jr.	199 lbs	23	0.3	1.4	1.5
1630602	Chaundee	Michigan USA	6-5	38	F	Brown Jr.	215 lbs	1	0.8	6.2	3.2
1628972	Troy	Oregon USA	6-6	7	G-F	Brown Jr.	215 lbs	14	1.0	4.3	3.1
1628973	Jalen	Villanova USA	6-1	13	G	Brunson	190 lbs	20	4.8	16.3	3.9
1628418	Thomas	Indiana USA	6-10	13	C-F	Bryant	248 lbs	14	0.9	7.4	4.0
203493	Reggie	North Carolina USA	6-6	25	G-F	Bullock	205 lbs	7	1.2	8.6	3.5
203504	Trey	Michigan USA	6-0	3	G	Burke	185 lbs	11	1.4	5.1	0.8
202692	Alec	Colorado USA	6-6	18	G	Burks	214 lbs	9	3.0	11.7	4.9
1630215	Jared	Baylor USA	6-3	13	G	Butler	193 lbs	29	1.5	3.8	1.1
202710	Jimmy	Marquette USA	6-7	22	F	Butler	230 lbs	16	5.5	21.4	5.9
1629719	Devontae	North Carolina-Wilmington USA	6-7	18	F	Cacok	240 lbs	27	0.4	3.1	2.8
1631288	Jamal	Oakland USA	6-7	54	F	Cain	191 lbs	16	--	--	--
203484	Kentavious	Georgia USA	6-5	5	G	Caldwell-Pope	204 lbs	8	1.9	13.2	3.4
203468	CJ	Lehigh USA	6-3	3	G	McCollum	190 lbs	19	5.1	22.1	4.3
1630164	James	Memphis USA	7-0	33	C	Wiseman	240 lbs	10	0.7	11.5	5.8
1626174	Christian	UNLV USA	6-9	35	F	Wood	214 lbs	7	2.3	17.9	10.1
1630218	Robert	Mississippi State USA	6-6	28	F	Woodard II	235 lbs	27	0.3	0.6	0.9
1626153	Delon	Utah USA	6-5	0	G	Wright	185 lbs	30	2.4	4.4	2.9
1630589	Moses	Georgia Tech USA	6-8	5	F	Wright	226 lbs	7	0.5	1.3	0.8
1630593	McKinley	Colorado USA	5-11	25	G	Wright IV	192 lbs	7	0.6	1.0	--
201152	Thaddeus	Georgia Tech USA	6-8	21	F	Young	235 lbs	28	2.0	6.2	4.0
1629027	Trae	Oklahoma USA	6-1	11	G	Young	164 lbs	1	9.7	28.4	3.7
1630209	Omer	Georgetown Turkey	6-11	77	C	Yurtseven	275 lbs	16	0.9	5.3	5.3
1627826	Ivica	Mega Basket Croatia	7-0	40	C	Zubac	240 lbs	13	1.6	10.3	8.5
1629661	Cameron	North Carolina USA	6-8	23	F	Johnson	210 lbs	24	1.5	12.5	4.1
1630525	David	Louisville USA	6-4	13	G	Johnson	203 lbs	28	--	--	--
1630552	Jalen	Duke USA	6-8	1	F	Johnson	219 lbs	1	0.1	2.4	1.2
1629640	Keldon	Kentucky USA	6-6	3	F-G	Johnson	220 lbs	27	2.1	17.0	6.1
1630553	Keon	Tennessee USA	6-4	6	G	Johnson	185 lbs	25	2.1	7.2	2.2
1626169	Stanley	Arizona USA	6-6	14	F-G	Johnson	242 lbs	14	1.7	6.7	3.2
203084	Harrison	North Carolina USA	6-8	40	F	Barnes	225 lbs	26	2.4	16.4	5.6
1630567	Scottie	Florida State USA	6-7	4	F	Barnes	225 lbs	28	3.5	15.3	7.5
1629628	RJ	Duke Canada	6-6	9	F-G	Barrett	214 lbs	20	3.0	20.0	5.8
203115	Will	Memphis USA	6-5	5	G	Barton	181 lbs	30	3.9	14.7	4.8
1629646	Charles	Western Kentucky Nigeria	6-9	23	C-F	Bassey	230 lbs	23	0.3	3.0	2.7
1628966	Keita	Ohio State USA	6-8	31	F	Bates-Diop	229 lbs	27	0.7	5.7	3.9
201587	Nicolas	Le Mans France	6-8	33	G-F	Batum	230 lbs	13	1.7	8.3	4.3
203145	Kent	Old Dominion USA	6-4	9	G-F	Bazemore	195 lbs	14	0.9	3.4	1.8
1629647	Darius	Princeton HS (OH) USA	6-8	55	F	Bazley	208 lbs	21	1.4	10.8	6.3
203078	Bradley	Florida USA	6-4	3	G	Beal	207 lbs	30	6.6	23.2	4.7
1627736	Malik	Florida State USA	6-4	5	G	Beasley	187 lbs	29	1.5	12.1	2.9
1630699	MarJon	 USA	6-6		F	Beauchamp	199 lbs	17	--	--	--
202722	Davis	Baskonia Latvia	6-10	44	F	Bertans	225 lbs	7	0.6	5.6	2.1
1630656	Hugo	France France	6-1		G	Besson	196 lbs	17	--	--	--
201976	Patrick	Arkansas USA	6-1	22	G	Beverley	180 lbs	29	4.6	9.2	4.1
1630180	Saddiq	Villanova USA	6-7	41	F	Bey	215 lbs	9	2.8	16.1	5.4
203920	Khem	UNLV Canada	6-9	24	C	Birch	233 lbs	28	1.0	4.5	4.3
1629627	Zion	Duke USA	6-6	1	F	Williamson	284 lbs	19	3.7	27.0	7.2
1628391	D.J.	Michigan USA	6-10	9	F	Wilson	231 lbs	28	1.3	7.5	4.0
1631230	Dominick	 USA	6-9		F	Barlow	215 lbs	27	\N	\N	\N
1629685	Dylan	Belmont USA	6-6	9	G-F	Windler	196 lbs	6	0.7	2.2	1.8
1626159	Justise	Duke USA	6-6	26	F-G	Winslow	222 lbs	25	1.8	5.7	4.2
1630216	Cassius	Michigan State USA	6-1	5	G	Winston	185 lbs	30	1.0	2.0	0.1
1630227	Daishen	NBA G	6-4	15	G	Nix	226 lbs	11	1.7	3.2	1.4
1630192	Zeke	Arizona USA	6-9	22	F-C	Nnaji	240 lbs	8	0.4	6.6	3.6
203457	Nerlens	Kentucky USA	6-11	3	C-F	Noel	220 lbs	9	0.9	3.4	5.6
1629669	Jaylen	Washington USA	6-4	4	G	Nowell	201 lbs	18	2.1	8.5	2.0
1628373	Frank	Strasbourg IG France	6-4	21	G	Ntilikina	200 lbs	7	1.2	4.1	1.4
1629134	Kendrick	Oakland USA	6-2	12	G	Nunn	190 lbs	14	2.6	14.6	3.2
203994	Jusuf	Cedevita Bosnia and Herzegovina	6-11	27	C	Nurkic	290 lbs	25	2.8	15.0	11.1
1628021	David	Cal Poly USA	6-5	2	G-F	Nwaba	219 lbs	11	0.8	5.1	3.3
1629670	Jordan	Louisville USA	6-8	13	F	Nwora	225 lbs	17	1.0	7.9	3.6
1631161	Yannick	Unicaja Malaga DRC	6-11		C	Nzosa	200 lbs	30	--	--	--
1626220	Royce	Baylor USA	6-5	00	F	O'Neale	226 lbs	3	2.5	7.4	4.8
1629643	Chuma	Auburn USA	6-6	3	F	Okeke	229 lbs	22	1.7	8.6	5.0
1629006	Josh	Georgia Tech Nigeria	6-4	20	G	Okogie	213 lbs	24	0.5	2.7	1.4
1630168	Onyeka	Southern California USA	6-8	17	F-C	Okongwu	240 lbs	1	1.1	8.2	5.9
1630171	Isaac	Auburn USA	6-5	35	F-G	Okoro	225 lbs	6	1.8	8.8	3.0
203482	Kelly	Gonzaga Canada	6-11	13	F-C	Olynyk	240 lbs	9	2.8	9.1	4.4
1630647	Eugene	Oregon Nigeria	6-6	97	F	Omoruyi	235 lbs	21	0.5	1.8	1.8
1626224	Cedi	Anadolu Efes Turkey	6-7	16	F	Osman	230 lbs	6	2.0	10.7	2.2
1626162	Kelly	Kansas USA	6-6	12	F-G	Oubre Jr.	203 lbs	4	1.1	15.0	4.0
1629672	Eric	Villanova USA	6-6	0	F	Paschall	255 lbs	18	0.6	5.8	1.8
101108	Chris	Wake Forest USA	6-0	3	G	Paul	175 lbs	24	10.8	14.7	4.4
1626166	Cameron	Murray State USA	6-1	15	G	Payne	183 lbs	24	4.9	10.8	3.0
203901	Elfrid	Louisana-Lafayette USA	6-3	2	G	Payton	195 lbs	24	2.0	3.0	1.8
1627780	Gary	Oregon State USA	6-3	00	G	Payton II	195 lbs	25	0.9	7.1	3.5
203658	Norvel	Iona USA	6-10	14	C	Pelle	231 lbs	25	--	2.0	2.0
1630691	Jamorko	Georgetown USA	6-9	24	F	Pickett	206 lbs	9	0.5	3.8	2.5
1629033	Theo	North Carolina USA	6-5	1	G-F	Pinson	212 lbs	7	0.9	2.5	1.1
1630590	Scotty	Vanderbilt USA	6-3		G	Pippen Jr.	170 lbs	14	--	--	--
203486	Mason	Duke USA	6-11	24	F-C	Plumlee	254 lbs	4	3.1	6.5	7.7
1627751	Jakob	Utah Austria	7-1	25	C	Poeltl	245 lbs	27	2.8	13.5	9.3
1630197	Alekesej	Olympiacos Serbia	7-0	17	F	Pokusevski	190 lbs	21	2.1	7.6	5.2
1630582	Yves	Tennessee France	6-5	5	F	Pons	206 lbs	15	0.1	1.1	1.0
1629673	Jordan	Michigan USA	6-4	3	G	Poole	194 lbs	10	4.0	18.5	3.4
1629645	Kevin	Southern California USA	6-4	3	G-F	Porter Jr.	203 lbs	11	6.2	15.6	4.4
1629008	Michael	Missouri USA	6-10	1	F	Porter Jr.	218 lbs	8	1.9	9.9	6.6
203490	Otto	Georgetown USA	6-8	32	F	Porter Jr.	198 lbs	28	1.5	8.2	5.7
1626171	Bobby	Arkansas USA	6-10	9	F	Portis	250 lbs	17	1.2	14.6	9.1
1629962	Devin	Princeton USA	6-2	30	G	Cannady	183 lbs	22	2.0	10.0	1.2
203991	Clint	Elan Chalon Switzerland	6-10	15	C	Capela	256 lbs	1	1.2	11.1	11.9
1630176	Vernon	Duke USA	6-9	22	F-C	Carey Jr.	270 lbs	30	--	2.9	1.7
1628975	Jevon	West Virginia USA	6-1	5	G	Carter	200 lbs	17	1.5	4.2	1.7
1628976	Wendell	Duke USA	6-10	34	C-F	Carter Jr.	270 lbs	22	2.8	15.0	10.5
1627936	Alex	Texas A&M USA	6-5	6	G	Caruso	186 lbs	5	4.0	7.4	3.6
1630577	Julian	St. John's USA	6-7	5	F	Champagnie	217 lbs	23	--	--	--
1630551	Justin	Pittsburgh USA	6-6	11	G-F	Champagnie	206 lbs	28	0.3	2.3	2.0
1631113	Kennedy	Tennessee USA	6-1		G	Chandler	170 lbs	15	--	--	--
1629185	Chris	Florida USA	5-11	2	G	Chiozza	175 lbs	10	1.9	2.0	1.1
1627737	Marquese	Washington USA	6-9	35	F	Chriss	240 lbs	11	0.5	4.5	3.0
1631108	Max	Michigan State USA	6-6		G	Christie	190 lbs	14	--	--	--
203999	Nikola	Mega Basket Serbia	6-11	15	C	Jokic	284 lbs	8	7.9	27.1	13.8
1630637	Carlik	Louisville USA	6-0		G	Jones	174 lbs	5	1.0	0.8	0.6
1627745	Damian	Vanderbilt USA	6-11	30	C	Jones	245 lbs	14	1.2	8.1	4.4
1630529	Herbert	Alabama USA	6-7	5	F	Jones	206 lbs	19	2.1	9.5	3.8
1630539	Kai	Texas-Austin Bahamas	6-10	23	C-F	Jones	221 lbs	4	0.2	1.0	0.5
1630200	Tre	Duke USA	6-1	33	G	Jones	185 lbs	27	3.4	6.0	2.2
1626145	Tyus	Duke USA	6-0	21	G	Jones	196 lbs	15	4.4	8.7	2.4
1627884	Derrick	UNLV USA	6-6	5	F	Jones Jr.	210 lbs	5	0.6	5.6	3.3
201599	DeAndre	Texas A&M USA	6-11	6	C	Jordan	265 lbs	8	0.4	4.3	5.5
1630528	Josh	Arizona State USA	6-3	9	G	Christopher	215 lbs	11	2.0	7.9	2.5
1629109	Gary	Cincinnati USA	6-6	12	F	Clark	225 lbs	19	0.5	2.7	2.4
1629634	Brandon	Gonzaga Canada	6-8	15	F	Clarke	215 lbs	15	1.3	10.4	5.3
203903	Jordan	Missouri USA	6-4	00	G	Clarkson	194 lbs	29	2.5	16.0	3.5
204001	Kristaps	Cajasol Sevilla Latvia	7-3	6	F-C	Porzingis	240 lbs	30	2.3	20.2	8.1
203939	Dwight	Stanford Canada	6-10	7	F-C	Powell	240 lbs	7	1.2	8.7	4.9
1626181	Norman	UCLA USA	6-3	24	G	Powell	215 lbs	13	2.1	19.0	3.2
1630554	Jason	Ohio USA	6-3	17	G	Preston	181 lbs	13	--	--	--
1630563	Joshua	Alabama Canada	6-4	11	G	Primo	189 lbs	27	1.6	5.8	2.3
1627752	Taurean	Baylor USA	6-6	12	F	Prince	218 lbs	18	1.0	7.3	2.5
1630202	Payton	Oregon USA	6-1	11	G	Pritchard	195 lbs	2	2.0	6.2	1.9
1630629	Gabriele	 Italy	6-7		G-F	Procida	194 lbs	9	--	--	--
1630243	Trevelin	New Mexico State USA	6-6	9	G	Queen	190 lbs	23	0.4	4.3	1.6
1629674	Neemias	Utah State Portugal	7-0	88	C	Queta	248 lbs	26	0.4	3.0	2.1
1630193	Immanuel	Kentucky USA	6-3	5	G	Quickley	190 lbs	20	3.5	11.3	3.2
1631311	Lester	Memphis USA	6-5	25	G	Quinones	208 lbs	10	--	--	--
203944	Julius	Kentucky USA	6-8	30	F-C	Randle	250 lbs	20	5.1	20.1	9.9
1630559	Austin	Oklahoma USA	6-5	15	G	Reaves	197 lbs	14	1.8	7.3	3.2
1629629	Cam	Duke USA	6-8	21	F-G	Reddish	217 lbs	20	1.0	10.1	2.1
1628432	Davon	Miami USA	6-5	9	G	Reed	206 lbs	8	1.1	4.4	2.3
1630194	Paul	DePaul USA	6-9	44	F	Reed	210 lbs	23	0.4	3.1	2.4
1629675	Naz	Louisiana State USA	6-9	11	C-F	Reid	264 lbs	18	0.9	8.3	3.9
1631197	Jared	Seton Hall USA	6-6		G	Rhoden	210 lbs	25	--	--	--
1630208	Nick	Kentucky Jamaica	7-0	14	C	Richards	245 lbs	4	0.3	3.0	1.7
1626196	Josh	Tennessee USA	6-5	7	G	Richardson	200 lbs	27	1.8	10.2	2.8
203085	Austin	Duke USA	6-4	25	G	Rivers	200 lbs	18	1.3	6.0	1.7
1629130	Duncan	Michigan USA	6-7	55	F	Robinson	215 lbs	16	1.6	10.9	2.6
1629011	Mitchell	Western Kentucky USA	7-0	23	C-F	Robinson	240 lbs	20	0.5	8.5	8.6
1631115	Orlando	Fresno State USA	7-0	59	C	Robinson	235 lbs	16	--	--	--
1630526	Jeremiah	Villanova USA	6-8	50	F	Robinson-Earl	242 lbs	21	1.0	7.5	5.6
1629676	Isaiah	Nebraska-Lincoln USA	6-8	22	F	Roby	230 lbs	27	1.6	10.1	4.8
1631223	David	Colorado State USA	6-6		F	Roddy	255 lbs	15	--	--	--
1631157	Ryan	Toledo USA	6-4	2	G	Rollins	180 lbs	10	--	--	--
201565	Derrick	Memphis USA	6-2	4	G	Rose	200 lbs	20	4.0	12.0	3.0
203082	Terrence	Washington USA	6-6	31	G-F	Ross	206 lbs	22	1.8	10.0	2.6
1626179	Terry	Louisville USA	6-1	3	G	Rozier	190 lbs	4	4.5	19.3	4.3
201937	Ricky	FC Barcelona Spain	6-2	99	G	Rubio	190 lbs	6	6.6	13.1	4.1
1626156	D'Angelo	Ohio State USA	6-4	0	G	Russell	193 lbs	18	7.1	18.1	3.3
1630346	Matt	Tennessee-Chattanooga USA	6-7		F	Ryan	215 lbs	2	--	3.0	--
1627734	Domantas	Gonzaga Lithuania	6-11	10	F-C	Sabonis	240 lbs	26	5.2	18.9	12.1
1630611	Gui	 Brazil	6-6	15	G	Santos	185 lbs	10	--	--	--
203967	Dario	Anadolu Efes Croatia	6-10	20	F-C	Saric	225 lbs	24	1.3	8.7	3.8
1630648	Jordan	San Diego State USA	6-6	20	G	Schakel	200 lbs	30	--	1.3	2.0
1629678	Admiral	Tennessee United Kingdom	6-5	25	F	Schofield	241 lbs	22	0.7	3.8	2.3
203471	Dennis	Braunschweig Germany	6-1	17	G	Schroder	172 lbs	11	4.6	13.5	3.3
1630578	Alperen	Besiktas Turkey	6-10	28	C	Sengun	243 lbs	11	2.6	9.6	5.5
1629012	Collin	Alabama USA	6-1	2	G	Sexton	190 lbs	6	2.1	16.0	3.3
1629013	Landry	Wichita State USA	6-4	14	G	Shamet	190 lbs	24	1.6	8.3	1.8
1630549	Day'Ron	North Carolina USA	6-9	20	C	Sharpe	265 lbs	3	0.5	6.2	5.0
1631101	Shaedon	Kentucky Canada	6-6		G	Sharpe	200 lbs	25	--	--	--
1627783	Pascal	New Mexico State Cameroon	6-8	43	F	Siakam	230 lbs	28	5.3	22.8	8.5
1627732	Ben	Louisiana State Australia	6-11	10	G-F	Simmons	240 lbs	3	6.9	14.3	7.2
1630250	Marko	Mega Basket Montenegro	6-11	19	C	Simonovic	220 lbs	5	--	1.9	1.1
1629014	Anfernee	Edgewater HS (FL) USA	6-3	1	G	Simons	181 lbs	25	3.9	17.3	2.6
1630579	Jericho	Texas-Austin USA	6-9	45	C	Sims	250 lbs	20	0.5	2.2	4.1
1629686	Deividas	Lietuvos rytas Vilnius Lithuania	6-8	91	F-G	Sirvydis	190 lbs	12	0.3	1.0	2.0
203935	Marcus	Oklahoma State USA	6-4	36	G	Smart	220 lbs	2	5.9	12.1	3.8
202397	Ish	Wake Forest USA	6-0	14	G	Smith	175 lbs	8	3.8	6.3	2.2
1630188	Jalen	Maryland USA	6-10	25	F-C	Smith	215 lbs	12	0.5	9.2	6.0
1631095	Jabari	Auburn USA	6-10		F	Smith Jr.	220 lbs	11	--	--	--
1630270	Xavier	Kansas State USA	6-5	19	F	Sneed	215 lbs	29	0.1	0.6	0.7
203503	Tony	New Mexico USA	6-6	21	G	Snell	213 lbs	19	0.5	3.5	1.9
1631110	Jeremy	Baylor Poland	6-9		F	Sochan	230 lbs	27	--	--	--
1631164	Matteo	Vanoli Cremona (Italy) Italy	6-4		G	Spagnolo	190 lbs	18	--	--	--
1630311	Pat	Northwestern USA	6-3		G	Spencer	205 lbs	10	--	--	--
1630531	Jaden	Tennessee USA	6-4	11	G	Springer	202 lbs	23	--	1.0	1.0
1630205	Lamar	Penn State USA	6-6	8	F	Stevens	230 lbs	6	0.7	6.1	2.6
1630597	DJ	Mississippi State USA	6-5	18	G	Stewart	205 lbs	27	--	--	--
1629651	Nic	Georgia USA	6-11	33	C	Claxton	215 lbs	3	0.9	8.7	5.6
1629599	Amir	Minnesota USA	6-7	7	G-F	Coffey	210 lbs	13	1.8	9.0	2.9
1628381	John	Wake Forest USA	6-9	20	F-C	Collins	226 lbs	1	1.8	16.2	7.8
1628380	Zach	Gonzaga USA	6-11	23	F-C	Collins	250 lbs	27	2.2	7.8	5.5
201144	Mike	Ohio State USA	6-1	11	G	Conley	175 lbs	29	5.3	13.7	3.0
1626192	Pat	Notre Dame USA	6-5	24	G	Connaughton	209 lbs	17	1.3	9.9	4.2
1629076	Tyler	Iowa USA	6-8	25	F	Cook	255 lbs	5	0.2	3.4	2.7
203496	Robert	Tennessee State USA	6-7	23	F	Covington	209 lbs	13	1.3	8.5	5.5
1628470	Torrey	South Carolina Upstate USA	6-7	0	F	Craig	221 lbs	24	1.2	6.6	4.0
203109	Jae	Marquette USA	6-6	99	F	Crowder	235 lbs	24	1.9	9.4	5.3
1629633	Jarrett	Texas Tech USA	6-6	23	G-F	Culver	195 lbs	15	0.9	3.5	1.3
1630595	Cade	Oklahoma State USA	6-6	2	G	Cunningham	220 lbs	9	5.6	17.4	5.5
203552	Seth	Duke USA	6-2	30	G	Curry	185 lbs	3	3.6	15.0	3.1
201939	Stephen	Davidson USA	6-2	30	G	Curry	185 lbs	10	6.3	25.5	5.2
1630700	Dyson	 Australia	6-6		G	Daniels	199 lbs	19	--	--	--
203076	Anthony	Kentucky USA	6-10	3	F-C	Davis	253 lbs	14	3.1	23.2	9.9
202334	Ed	North Carolina USA	6-9	21	C-F	Davis	218 lbs	6	0.2	0.9	2.1
1631098	Johnny	Wisconsin USA	6-5		G	Davis	195 lbs	30	--	--	--
1629056	Terence	Mississippi USA	6-4	3	G	Davis	201 lbs	26	1.3	10.4	3.1
1631120	JD	Alabama USA	6-3		G	Davison	195 lbs	2	--	--	--
1630620	Darius	Louisiana State USA	6-7		F	Days	245 lbs	16	--	--	--
201942	DeMar	Southern California USA	6-6	11	G-F	DeRozan	220 lbs	5	4.9	27.9	5.2
203473	Dewayne	Southern California USA	7-0	21	C	Dedmon	245 lbs	16	0.7	6.3	5.8
203521	Matthew	St.Mary's College	6-3	18	G	Dellavedova	200 lbs	26	4.5	2.8	1.8
1628978	Donte	Villanova USA	6-4	0	G	DiVincenzo	203 lbs	10	2.8	9.0	4.0
1631217	Moussa	Michigan France	6-11		F	Diabate	210 lbs	13	--	--	--
1628977	Hamidou	Kentucky USA	6-5	6	G	Diallo	202 lbs	9	1.3	11.0	4.8
203476	Gorgui	Louisville Senegal	6-10	10	C	Dieng	248 lbs	27	0.8	3.5	2.8
1631172	Ousmane	New Zealand Breakers France	6-10	13	F	Dieng	185 lbs	21	--	--	--
203915	Spencer	Colorado USA	6-6	26	G	Dinwiddie	215 lbs	7	5.2	13.7	4.2
1631215	Khalifa	Gran Canaria Senegal	6-11		C	Diop	231 lbs	6	--	--	--
1629029	Luka	Real Madrid Slovenia	6-7	77	F-G	Doncic	230 lbs	7	8.7	28.4	9.1
1628416	Tyler	Oregon USA	6-4	22	G	Dorsey	180 lbs	7	1.2	6.2	2.4
1629652	Luguentz	Arizona State Canada	6-3	5	G	Dort	215 lbs	21	1.7	17.2	4.2
1630245	Ayo	Illinois USA	6-4	12	G	Dosunmu	200 lbs	5	3.3	8.8	2.8
1630288	Jeff	Rhode Island USA	6-3	15	G	Dowtin	177 lbs	28	1.1	2.1	2.0
201609	Goran	Union Olimpija Slovenia	6-3	9	G	Dragic	190 lbs	5	4.1	7.5	3.1
203083	Andre	Connecticut USA	6-10	0	C	Drummond	279 lbs	5	1.8	7.9	9.3
1630537	Chris	Oregon Dominican Republic	6-5	3	G	Duarte	190 lbs	12	2.1	13.1	4.1
1630561	David	Providence USA	6-4	6	G	Duke Jr.	204 lbs	3	0.8	4.7	3.0
201142	Kevin	Texas-Austin USA	6-10	7	F	Durant	240 lbs	3	6.4	29.9	7.4
1631105	Jalen	Memphis USA	6-11		C	Duren	250 lbs	9	--	--	--
1631106	Tari	Louisiana State USA	6-8		F	Eason	215 lbs	11	--	--	--
1630162	Anthony	Georgia USA	6-4	1	G	Edwards	225 lbs	18	3.8	21.3	4.8
1630556	Kessler	Pepperdine USA	6-7	14	F	Edwards	203 lbs	3	0.6	5.9	3.6
1629604	CJ	Washington State USA	6-6	16	F-G	Elleby	200 lbs	18	1.5	5.8	3.9
201961	Wayne	North Carolina USA	6-4	2	G	Ellington	207 lbs	14	0.7	6.7	1.8
1631165	Keon	Alabama USA	6-6		G	Ellis	175 lbs	26	--	--	--
203954	Joel	Kansas Cameroon	7-0	21	C-F	Embiid	280 lbs	23	4.2	30.6	11.7
1629234	Drew	Oregon State USA	6-9	24	F-C	Eubanks	245 lbs	25	1.2	7.7	5.4
202324	Derrick	Georgia Tech USA	6-9	15	F	Favors	265 lbs	21	0.6	5.3	4.7
1628981	Bruno	Maryland Angola	6-9	20	F-C	Fernando	240 lbs	11	0.2	2.9	1.8
1627827	Dorian	Florida USA	6-7	10	F	Finney-Smith	220 lbs	7	1.9	11.0	4.7
1630201	Malachi	San Diego State USA	6-1	22	G	Flynn	175 lbs	28	1.6	4.3	1.4
203095	Evan	Poitiers Basket 86 France	6-6	13	G-F	Fournier	205 lbs	20	2.1	14.1	2.6
202331	Paul	Fresno State USA	6-8	13	F	George	220 lbs	13	5.7	24.3	6.9
201569	Eric	Indiana USA	6-3	10	G	Gordon	215 lbs	11	2.7	13.4	2.0
1630702	Jaden	 USA	6-4		G	Hardy	198 lbs	7	--	--	--
1627741	Buddy	Oklahoma Bahamas	6-4	24	G	Hield	220 lbs	12	2.8	15.6	4.4
2738	Andre	Arizona USA	6-6	9	G-F	Iguodala	215 lbs	10	3.7	4.0	3.2
1629660	Ty	Virginia USA	6-5	16	G-F	Jerome	195 lbs	21	2.3	7.1	1.6
1629662	Mfiondu	Florida State Canada	6-9	27	C	Kabengele	250 lbs	2	0.4	2.4	1.5
1630639	A.J.	South Carolina Canada	6-6	5	G	Lawson	179 lbs	18	--	--	--
1630177	Theo	Asvel France	6-4	11	G	Maledon	175 lbs	21	2.2	7.1	2.6
1630540	Miles	West Virginia USA	6-1	2	G	McBride	195 lbs	20	1.0	2.2	1.1
1629001	De'Anthony	Southern California USA	6-2	8	G	Melton	200 lbs	23	2.7	10.8	4.5
203488	Mike	Bucknell USA	6-10	33	F-C	Muscala	240 lbs	21	0.5	8.0	3.0
203506	Victor	Indiana USA	6-4	4	G	Oladipo	213 lbs	16	3.5	12.4	2.9
1630191	Isaiah	Washington USA	6-8	28	F-C	Stewart	250 lbs	9	1.2	8.3	8.7
1629622	Max	DePaul USA	6-5	31	G-F	Strus	215 lbs	16	1.4	10.6	3.0
1630591	Jalen	Gonzaga USA	6-5	4	G	Suggs	205 lbs	22	4.4	11.8	3.6
1628410	Edmond	Xavier USA	6-4	4	G	Sumner	196 lbs	3	0.9	7.5	1.8
1631306	Cole	Syracuse USA	6-9		F	Swider	220 lbs	14	--	--	--
1630256	Jae'Sean	Ohio State USA	6-4	8	F	Tate	230 lbs	11	2.8	11.8	5.4
1628369	Jayson	Duke USA	6-8	0	F-G	Tatum	210 lbs	2	4.4	26.9	8.0
1630678	Terry	Austin Peay USA	6-5	21	F	Taylor	230 lbs	12	1.2	9.6	5.2
202066	Garrett	Louisiana State USA	6-5	41	G-F	Temple	195 lbs	19	1.3	5.2	2.4
1631207	Dalen	Arizona USA	6-7	25	F	Terry	195 lbs	5	--	--	--
1628464	Daniel	Brose Bamberg Germany	6-9	27	F-C	Theis	245 lbs	12	0.9	8.2	4.9
1630271	Brodric	Truman State USA	6-5	97	G	Thomas	185 lbs	2	0.9	1.8	0.8
1630560	Cam	Louisiana State Japan	6-3	24	G	Thomas	210 lbs	3	1.2	8.5	2.4
202738	Isaiah	Washington USA	5-9	4	G	Thomas	185 lbs	4	1.5	8.4	1.3
1629744	Matt	Iowa State USA	6-3	21	G	Thomas	190 lbs	5	0.5	4.0	1.3
202691	Klay	Washington State USA	6-6	11	G	Thompson	220 lbs	10	2.8	20.4	3.9
202684	Tristan	Texas-Austin Canada	6-9	3	C-F	Thompson	254 lbs	5	0.6	6.0	5.1
1630550	JT	Auburn USA	6-9	21	F	Thor	203 lbs	4	0.6	2.0	1.3
1629680	Matisse	Washington USA	6-5	22	G-F	Thybulle	201 lbs	23	1.1	5.7	2.3
1629681	Killian	Gonzaga France	6-9	35	F-C	Tillie	220 lbs	15	0.6	3.3	1.7
1630214	Xavier	Michigan State USA	6-8	2	F	Tillman Sr.	245 lbs	15	1.2	4.8	3.0
1630225	Isaiah	NBA G	6-9	14	F	Todd	219 lbs	30	0.3	1.7	1.0
1630167	Obi	Dayton USA	6-9	1	F	Toppin	220 lbs	20	1.1	9.0	3.7
1629308	Juan	Marquette USA	6-6	95	F	Toscano-Anderson	209 lbs	14	1.7	4.1	2.4
1626157	Karl-Anthony	Kentucky USA	6-11	32	C-F	Towns	248 lbs	18	3.6	24.6	9.8
1631247	Luke	 Australia	6-7	33	F	Travers	207 lbs	6	--	--	--
1629018	Gary	Duke USA	6-5	33	G-F	Trent Jr.	209 lbs	28	2.0	18.3	2.7
200782	P.J.	Texas-Austin USA	6-5	17	F	Tucker	245 lbs	23	2.1	7.6	5.5
1626167	Myles	Texas-Austin USA	6-11	33	C-F	Turner	250 lbs	12	1.0	12.9	7.1
202685	Jonas	Lietuvos rytas Vilnius Lithuania	6-11	17	C	Valanciunas	265 lbs	19	2.6	17.8	11.4
1627832	Fred	Wichita State USA	6-1	23	G	VanVleet	197 lbs	28	6.7	20.3	4.4
1629020	Jarred	Kentucky USA	6-9	8	F	Vanderbilt	214 lbs	29	1.3	6.9	8.4
1630170	Devin	Florida State USA	6-5	24	G-F	Vassell	200 lbs	27	1.9	12.3	4.3
1630492	Luca	Baskonia Argentina	6-3	6	G	Vildoza	190 lbs	17	--	--	--
1629216	Gabe	California-Santa Barbara USA	6-3	2	G	Vincent	200 lbs	16	3.1	8.7	1.9
202696	Nikola	Southern California Montenegro	6-10	9	C	Vucevic	260 lbs	5	3.2	17.6	11.0
1629731	Dean	Kansas State USA	6-9	32	F-C	Wade	228 lbs	6	1.0	5.3	2.9
1630532	Franz	Michigan Germany	6-10	22	F	Wagner	220 lbs	22	2.9	15.2	4.5
1629021	Moritz	Michigan Germany	6-11	21	F-C	Wagner	245 lbs	22	1.4	9.0	3.7
1630688	Ish	Baylor USA	6-5	12	F	Wainright	250 lbs	24	0.3	2.4	1.2
1631133	Jabari	Colorado USA	6-8		F	Walker	200 lbs	25	--	--	--
202689	Kemba	Connecticut USA	6-0	8	G	Walker	184 lbs	9	3.5	11.6	3.0
1629022	Lonnie	Miami USA	6-4	4	G-F	Walker IV	204 lbs	14	2.2	12.1	2.6
202322	John	Kentucky USA	6-3	1	G	Wall	210 lbs	13	6.9	20.6	3.2
203933	T.J.	North Carolina State USA	6-8	1	F	Warren	220 lbs	3	1.3	15.5	3.5
1629023	P.J.	Kentucky USA	6-7	25	F	Washington	230 lbs	4	2.3	10.3	5.2
1630613	Duane	Ohio State Germany	6-3	4	G	Washington Jr.	197 lbs	24	1.8	9.9	1.7
1631102	TyTy	Kentucky USA	6-3		G	Washington Jr.	195 lbs	11	--	--	--
1629139	Yuta	George Washington Japan	6-9	18	G-F	Watanabe	215 lbs	28	0.6	4.3	2.4
1630322	Lindy	Oklahoma State USA	6-6	12	F	Waters III	215 lbs	21	1.0	8.0	2.9
1630570	Trendon	Louisiana State USA	6-8	2	F	Watford	237 lbs	25	1.7	7.6	4.1
1631212	Peyton	UCLA USA	6-8	8	G	Watson	200 lbs	8	--	--	--
1629683	Quinndary	Mississippi State USA	6-3	12	G	Weatherspoon	205 lbs	10	0.5	2.7	1.3
1631104	Blake	Notre Dame USA	6-5		G	Wesley	185 lbs	27	--	--	--
201566	Russell	UCLA USA	6-3	0	G	Westbrook	200 lbs	14	7.1	18.5	7.4
1629632	Coby	North Carolina USA	6-4	0	G	White	195 lbs	5	2.9	12.7	3.0
1628401	Derrick	Colorado USA	6-4	9	G	White	190 lbs	2	4.9	13.2	3.5
1631298	Jack	Duke Australia	6-7	10	F	White	225 lbs	8	--	--	--
1631261	Fabian	Houston USA	6-8		F	White Jr.	230 lbs	14	--	--	--
202355	Hassan	Marshall USA	7-0	21	C	Whiteside	265 lbs	29	0.4	8.2	7.6
1630580	Joe	Iowa USA	6-6	15	G-F	Wieskamp	205 lbs	27	0.3	2.1	0.5
1630598	Aaron	Maryland USA	6-4	21	G	Wiggins	190 lbs	21	1.4	8.3	3.6
203952	Andrew	Kansas Canada	6-7	22	F	Wiggins	197 lbs	10	2.2	17.2	4.5
1629623	Lindell	Iowa State Canada	6-1	28	G	Wigginton	189 lbs	17	1.2	4.2	1.3
1631214	Alondes	Wake Forest USA	6-5	31	G	Williams	210 lbs	3	--	--	--
1630314	Brandon	Arizona USA	6-2	8	G	Williams	190 lbs	25	3.9	12.9	3.1
1629684	Grant	Tennessee USA	6-6	12	F	Williams	236 lbs	2	1.0	7.8	3.6
1631114	Jalen	Santa Clara USA	6-6	8	G-F	Williams	195 lbs	21	--	--	--
1631119	Jaylin	Arkansas USA	6-10	6	F	Williams	240 lbs	21	--	--	--
1629026	Kenrich	TCU USA	6-6	34	G-F	Williams	210 lbs	21	2.2	7.4	4.5
101150	Lou	South Gwinnett	6-2	6	G	Williams	175 lbs	1	1.9	6.3	1.6
1631109	Mark	Duke USA	7-0		C	Williams	240 lbs	4	--	--	--
1630172	Patrick	Florida State USA	6-7	44	F	Williams	215 lbs	5	0.9	9.0	4.1
1630652	Trevion	Purdue USA	6-10		C	Williams	265 lbs	10	--	--	--
1630533	Ziaire	Stanford USA	6-9	8	F	Williams	185 lbs	15	1.0	8.1	2.1
1629057	Robert	Texas A&M USA	6-9	44	C-F	Williams III	237 lbs	2	2.0	10.0	9.6
1631246	Vince	Virginia Commonwealth USA	6-6		G	Williams Jr.	205 lbs	15	--	--	--
1630173	Precious	Memphis Nigeria	6-8	5	F	Achiuwa	225 lbs	28	1.1	9.1	6.5
203500	Steven	Pittsburgh New Zealand	6-11	4	C	Adams	265 lbs	15	3.4	6.9	10.0
1628389	Bam	Kentucky USA	6-9	13	C-F	Adebayo	255 lbs	16	3.4	19.1	10.1
1630534	Ochai	Kansas USA	6-5	30	G	Agbaji	215 lbs	6	--	--	--
1630583	Santi	Loyola-Maryland Spain	6-11	7	F-C	Aldama	215 lbs	15	0.7	4.1	2.7
200746	LaMarcus	Texas-Austin USA	6-11	21	C-F	Aldridge	250 lbs	3	0.9	12.9	5.5
1629638	Nickeil	Virginia Tech Canada	6-5	6	G	Alexander-Walker	205 lbs	29	2.4	10.6	2.9
1628960	Grayson	Duke USA	6-4	7	G	Allen	198 lbs	17	1.5	11.1	3.4
1628386	Jarrett	Texas-Austin USA	6-10	31	C	Allen	243 lbs	6	1.6	16.1	10.8
1630631	Jose	Georgia Tech USA	6-0	15	G	Alvarado	179 lbs	19	2.8	6.1	1.9
203937	Kyle	UCLA USA	6-9	1	F-G	Anderson	230 lbs	18	2.7	7.6	5.3
203507	Giannis	Filathlitikos Greece	6-11	34	F	Antetokounmpo	242 lbs	17	5.8	29.9	11.6
203648	Thanasis	Panathinaikos Greece	6-6	43	F	Antetokounmpo	219 lbs	17	0.5	3.6	2.1
2546	Carmelo	Syracuse USA	6-7	7	F	Anthony	238 lbs	14	1.0	13.3	4.2
1630175	Cole	North Carolina USA	6-3	50	G	Anthony	185 lbs	22	5.7	16.3	5.4
1628384	OG	Indiana United Kingdom	6-7	3	F	Anunoby	232 lbs	28	2.6	17.1	5.5
1631317	Adonis	Texas Tech USA	6-6		G	Arms	205 lbs	8	--	--	--
201571	D.J.	Texas-Austin USA	5-11	4	G	Augustin	183 lbs	14	1.9	5.3	1.2
1630166	Deni	Maccabi Tel Aviv Israel	6-9	9	F	Avdija	210 lbs	30	2.0	8.4	5.2
1629028	Deandre	Arizona Bahamas	6-11	22	C	Ayton	250 lbs	24	1.4	17.2	10.2
1628962	Udoka	Kansas Nigeria	7-0	20	C-F	Azubuike	270 lbs	29	--	4.7	4.2
1628963	Marvin	Duke USA	6-11	35	F	Bagley III	235 lbs	9	0.8	11.3	7.0
1631116	Patrick	Wisconsin-Milwaukee USA	6-9	7	F	Baldwin Jr.	220 lbs	10	--	--	--
1630163	LaMelo	Illawarra USA	6-7	2	G	Ball	180 lbs	4	7.6	20.1	6.7
1628366	Lonzo	UCLA USA	6-6	2	G	Ball	190 lbs	5	5.1	13.0	5.4
1628964	Mo	Texas-Austin USA	7-0	5	C	Bamba	231 lbs	22	1.2	10.6	8.1
1631094	Paolo	Duke USA	6-10	5	F	Banchero	250 lbs	22	--	--	--
1630217	Desmond	TCU USA	6-5	22	G	Bane	215 lbs	15	2.7	18.2	4.4
1630625	Dalano	Nebraska Canada	6-7	45	F	Banton	204 lbs	28	1.5	3.2	1.9
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.team (id, full_name, name, standings, logo, conference, division, games_lost, games_won, abbreviation, assists_leader, points_leader, rebounds_leader) FROM stdin;
27	San Antonio Spurs	Spurs	1	spurs-logo.svg	Western	South-West	0	0	SAS	1628960	1628960	1628960
26	Sacramento Kings	Kings	1	kings-logo.svg	Western	Pacific	0	2	SAC	1628960	1628960	1628960
25	Portland Trail Blazers	Trail Blazers	1	blazers-logo.svg	Western	North-West	0	0	POR	1628960	1628960	1628960
24	Phoenix Suns	Suns	1	suns-logo.svg	Western	Pacific	0	3	PHX	1628960	1628960	1628960
8	Denver Nuggets	Nuggets	1	nuggets-logo.svg	Western	Northwest	0	0	DEN	1628960	1628960	1628960
23	Philadelphia 76ers	76ers	1	76ers-logo.svg	Eastern	Atlantic	0	0	PHI	1628960	1628960	1628960
22	Orlando Magic	Magic	1	orlando-logo.svg	Eastern	South-West	2	0	ORL	1628960	1628960	1628960
13	Los Angeles Clippers	Clippers	1	clippers-logo.svg	Western	Pacific	0	0	LAC	202695	202695	1627826
1	Atlanta Hawks	Hawks	1	hawks-logo.svg	Eastern	South-East	0	0	ATL	1628960	1628960	1628960
21	Oklahoma City Thunder	Thunder	1	thunder-logo.svg	Western	North-West	0	0	OKC	1628960	1628960	1628960
20	New York Knicks	Knicks	1	knicks-logo.svg	Eastern	Atlantic	0	0	NYK	1628960	1628960	1628960
16	Miami Heat	Heat	1	heat-logo.svg	Eastern	South-East	0	0	MIA	1628960	1628960	1628960
4	Charlotte Hornets	Hornets	1	hornets-logo.svg	Eastern	South-East	0	0	CHA	1628960	1628960	1628960
30	Washington Wizards	Wizards	1	wizards-logo.svg	Eastern	South-East	0	0	WAS	1628960	1628960	1628960
29	Utah Jazz	Jazz	1	jazz-logo.svg	Western	North-West	0	0	UTA	1628960	1628960	1628960
28	Toronto Raptors	Raptors	1	raptors-logo.svg	Eastern	Atlantic	0	0	TOR	1628960	1628960	1628960
12	Indiana Pacers	Pacers	1	pacers-logo.svg	Eastern	Central	0	50	IND	1628960	1628960	1628960
9	Detroit Pistons	Pistons	1	pistons-logo.svg	Eastern	Central	16	0	DET	1628960	1628960	1628960
18	Minnesota Timberwolves	Timberwolves	1	timberwolves-logo.svg	Western	North-West	0	0	MIN	1628960	1628960	1628960
10	Golden State Warriors	Warriors	1	warriors-logo.svg	Western	Pacific	0	0	GSW	1628960	1628960	1628960
11	Houston Rockets	Rockets	1	rockets-logo.svg	Western	South-West	0	0	HOU	1628960	1628960	1628960
7	Dallas Mavericks	Mavericks	1	mavericks-logo.svg	Western	South-West	0	0	DAL	1628960	1628960	1628960
6	Cleveland Cavaliers	Cavaliers	1	cavaliers-logo.svg	Eastern	Central	0	4	CLE	1628960	1628960	1628960
14	Los Angeles Lakers	Lakers	1	lakers-logo.svg	Western	Pacific	0	0	LAL	1628960	1628960	1628960
19	New Orleans Pelicans	Pelicans	1	pelicans-logo.svg	Western	South-West	0	0	NOP	1628960	1628960	1628960
3	Brooklyn Nets	Nets	1	nets-logo.svg	Eastern	Atlantic	0	0	BKN	1628960	1628960	1628960
15	Memphis Grizzlies	Grizzlies	1	grizzlies-logo.svg	Western	South-West	0	0	MEM	1628960	1628960	1628960
5	Chicago Bulls	Bulls	1	bulls-logo.svg	Eastern	Central	0	2	CHI	1628960	1628960	1628960
2	Boston Celtics	Celtics	1	celtics-logo.svg	Eastern	Atlantic	0	0	BOS	1628960	1628960	1628960
17	Milwaukee Bucks	Bucks	1	bucks-logo.svg	Eastern	Central	0	0	MIL	1628960	1628960	1628960
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 2380, true);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: team team_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);


--
-- Name: games fk86x0u79kyqy42x65okep9yupw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk86x0u79kyqy42x65okep9yupw FOREIGN KEY (first_team_id) REFERENCES public.team(id);


--
-- Name: article_tags fkjtslnyg6g9r6n8s0gbomrvbv1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_tags
    ADD CONSTRAINT fkjtslnyg6g9r6n8s0gbomrvbv1 FOREIGN KEY (id) REFERENCES public.articles(id);


--
-- Name: games fkmrsvu2p51a1aeji1cvo5v1ltg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkmrsvu2p51a1aeji1cvo5v1ltg FOREIGN KEY (second_team_id) REFERENCES public.team(id);


--
-- Name: players fktj6qbvs84bdv8oquqgob0o44u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT fktj6qbvs84bdv8oquqgob0o44u FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- PostgreSQL database dump complete
--

