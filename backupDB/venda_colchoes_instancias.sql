--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2021-08-28 12:31:59

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

--
-- TOC entry 3045 (class 0 OID 17074)
-- Dependencies: 200
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente VALUES (12345678901, 'Rian Victor', 'rianvictor@gmail.com', '123 Pindoretama');
INSERT INTO public.cliente VALUES (12345688901, 'Rauane Batista', 'rauane@gmail.com', '23 Iguape');
INSERT INTO public.cliente VALUES (15345688901, 'Samuel Afonso', 'samuel@gmail.com', '43 Eusébio');
INSERT INTO public.cliente VALUES (42345688991, 'João da Silva', 'joazinho@gmail.com', '43 Rua X');
INSERT INTO public.cliente VALUES (62345688901, 'Maria Souza', 'mariazinha@gmail.com', '22 Rua Y');
INSERT INTO public.cliente VALUES (32349988901, 'Maria Souza', 'mariazinha@gmail.com', '4980 Gerald Plaza');
INSERT INTO public.cliente VALUES (34545688901, 'Brenda Costa', 'brendacosta@gmail.com', '1234 Forster Drive');
INSERT INTO public.cliente VALUES (99945688901, 'Evelyn Santos', 'evelyyn@gmail.com', '34 Forster Drive');
INSERT INTO public.cliente VALUES (11231231236, 'Irene Rocha', 'ireenee@gmail.com', '473 Nova Avenue');
INSERT INTO public.cliente VALUES (91236631236, 'Diana Silva', 'diaaana@gmail.com', '755 Nova Avenue');


--
-- TOC entry 3047 (class 0 OID 17083)
-- Dependencies: 202
-- Data for Name: filiais; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.filiais VALUES (10, '92 Londonderry Trail', 'filial1@gmail.com');
INSERT INTO public.filiais VALUES (11, '91210 Farwell Place', 'filial2@gmail.com');
INSERT INTO public.filiais VALUES (12, '63 Stoughton Alley', 'filial3@gmail.com');
INSERT INTO public.filiais VALUES (13, '090 Garrison Road', 'filial4@gmail.com');


--
-- TOC entry 3049 (class 0 OID 17095)
-- Dependencies: 204
-- Data for Name: fornecedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fornecedor VALUES (1, 85, 988888888, 'ortobom@gmail.com', '2450 São Gerardo');
INSERT INTO public.fornecedor VALUES (2, 85, 988898888, 'herval@gmail.com', '370 Vila Mariana');
INSERT INTO public.fornecedor VALUES (3, 85, 676698888, 'simmons@gmail.com', '749 Aldeota');


--
-- TOC entry 3051 (class 0 OID 17107)
-- Dependencies: 206
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produto VALUES (1, 'Boston', 'Ortobom', 'Mola', 1, '1,38 x 1,88 m', 1000);
INSERT INTO public.produto VALUES (2, 'New York', 'Ortobom', 'Espuma', 1, '1,38 x 1,88 m', 2000);
INSERT INTO public.produto VALUES (3, 'Orleans', 'Ortobom', 'Espuma', 1, '1,93 x 2,03 m', 3000);
INSERT INTO public.produto VALUES (4, 'Miami', 'Herval', 'Mola', 2, '1,58 x 1,98 m', 2500);
INSERT INTO public.produto VALUES (5, 'San Diego', 'Herval', 'Espuma', 2, '1,38 x 1,88 m', 1400);
INSERT INTO public.produto VALUES (6, 'Orlando', 'Simmons', 'Espuma', 3, '1,93 x 2,03 m', 4000);
INSERT INTO public.produto VALUES (7, 'Chicago', 'Simmons', 'Mola', 3, '1,93 x 2,03 m', 5000);


--
-- TOC entry 3046 (class 0 OID 17080)
-- Dependencies: 201
-- Data for Name: estoque; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estoque VALUES (10, 1, 25);
INSERT INTO public.estoque VALUES (10, 2, 14);
INSERT INTO public.estoque VALUES (11, 2, 70);
INSERT INTO public.estoque VALUES (11, 3, 90);
INSERT INTO public.estoque VALUES (11, 4, 18);
INSERT INTO public.estoque VALUES (12, 5, 24);
INSERT INTO public.estoque VALUES (12, 6, 22);
INSERT INTO public.estoque VALUES (13, 7, 10);
INSERT INTO public.estoque VALUES (13, 1, 30);
INSERT INTO public.estoque VALUES (13, 2, 29);


--
-- TOC entry 3048 (class 0 OID 17089)
-- Dependencies: 203
-- Data for Name: fornece; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fornece VALUES (10, 1, 39, '1/07/21');
INSERT INTO public.fornece VALUES (11, 1, 160, '1/07/21');
INSERT INTO public.fornece VALUES (11, 2, 18, '1/07/21');
INSERT INTO public.fornece VALUES (12, 2, 24, '1/07/21');
INSERT INTO public.fornece VALUES (12, 3, 22, '1/07/21');
INSERT INTO public.fornece VALUES (13, 1, 59, '1/07/21');
INSERT INTO public.fornece VALUES (13, 3, 22, '1/07/21');


--
-- TOC entry 3050 (class 0 OID 17101)
-- Dependencies: 205
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionario VALUES (12625678906, 'Caio Barreros', 'Gerente', 7458);
INSERT INTO public.funcionario VALUES (22628878906, 'Ester Lara', 'Caixa', 4780);
INSERT INTO public.funcionario VALUES (22627878906, 'Nara Lima', 'Caixa', 4780);
INSERT INTO public.funcionario VALUES (55429978906, 'Denise Damaceno', 'Vendedor', 1502);
INSERT INTO public.funcionario VALUES (55429988906, 'Ricardo Silva', 'Vendedor', 1502);
INSERT INTO public.funcionario VALUES (66429988906, 'Raissa Rocha', 'Vendedor', 1502);
INSERT INTO public.funcionario VALUES (12688678906, 'Caio Barreros', 'Marketing', 9458);


--
-- TOC entry 3052 (class 0 OID 17113)
-- Dependencies: 207
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.venda VALUES (1, 10, 12345678901, 55429978906, '19/10/21');
INSERT INTO public.venda VALUES (2, 10, 12345688901, 55429978906, '19/10/21');
INSERT INTO public.venda VALUES (3, 10, 42345688991, 55429978906, '21/10/21');
INSERT INTO public.venda VALUES (4, 10, 15345688901, 55429978906, '26/10/21');
INSERT INTO public.venda VALUES (5, 10, 91236631236, 55429978906, '25/10/21');
INSERT INTO public.venda VALUES (6, 11, 62345688901, 55429988906, '19/10/21');
INSERT INTO public.venda VALUES (7, 11, 32349988901, 55429988906, '19/10/21');
INSERT INTO public.venda VALUES (8, 12, 34545688901, 66429988906, '11/07/21');
INSERT INTO public.venda VALUES (9, 12, 99945688901, 66429988906, '30/09/21');
INSERT INTO public.venda VALUES (10, 12, 11231231236, 66429988906, '25/08/21');


--
-- TOC entry 3053 (class 0 OID 17119)
-- Dependencies: 208
-- Data for Name: venda_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.venda_produto VALUES (1, 1, 2);
INSERT INTO public.venda_produto VALUES (2, 2, 1);
INSERT INTO public.venda_produto VALUES (3, 2, 4);
INSERT INTO public.venda_produto VALUES (4, 1, 2);
INSERT INTO public.venda_produto VALUES (5, 1, 1);
INSERT INTO public.venda_produto VALUES (6, 4, 1);
INSERT INTO public.venda_produto VALUES (7, 4, 2);
INSERT INTO public.venda_produto VALUES (8, 5, 3);
INSERT INTO public.venda_produto VALUES (9, 6, 2);
INSERT INTO public.venda_produto VALUES (10, 5, 1);


-- Completed on 2021-08-28 12:32:05

--
-- PostgreSQL database dump complete
--

