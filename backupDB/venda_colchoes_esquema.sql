--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

<<<<<<< HEAD
<<<<<<< HEAD
-- Started on 2021-08-29 00:04:39
=======
-- Started on 2021-08-28 23:39:24
>>>>>>> parent of 61d621e (Revert "att")
=======
-- Started on 2021-08-28 23:39:24
>>>>>>> parent of 61d621e (Revert "att")

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
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 200 (class 1259 OID 17088)
=======
-- TOC entry 200 (class 1259 OID 16956)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 200 (class 1259 OID 16956)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    cpf bigint NOT NULL,
    nome character varying,
    email character varying,
    endereco character varying
);


ALTER TABLE public.cliente OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 201 (class 1259 OID 17094)
=======
-- TOC entry 201 (class 1259 OID 16962)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 201 (class 1259 OID 16962)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: estoque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estoque (
    filial_id integer NOT NULL,
    produto_id integer NOT NULL,
    quantidade integer
);


ALTER TABLE public.estoque OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 202 (class 1259 OID 17097)
=======
-- TOC entry 202 (class 1259 OID 16965)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 202 (class 1259 OID 16965)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: filiais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filiais (
    id integer NOT NULL,
    endereco character varying,
    email character varying,
    nome character varying
);


ALTER TABLE public.filiais OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 203 (class 1259 OID 17103)
=======
-- TOC entry 203 (class 1259 OID 16971)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 203 (class 1259 OID 16971)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: fornece; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornece (
    filial_id integer NOT NULL,
    fornecedor_id integer NOT NULL,
    quantidade integer,
    data character varying
);


ALTER TABLE public.fornece OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 204 (class 1259 OID 17109)
=======
-- TOC entry 204 (class 1259 OID 16977)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 204 (class 1259 OID 16977)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: fornecedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornecedor (
    id integer NOT NULL,
    "DDD" integer,
    numero integer,
    email character varying,
    endereco character varying
);


ALTER TABLE public.fornecedor OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 205 (class 1259 OID 17115)
=======
-- TOC entry 205 (class 1259 OID 16983)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 205 (class 1259 OID 16983)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    cpf bigint NOT NULL,
    nome character varying,
    cargo character varying,
    salario integer
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 206 (class 1259 OID 17121)
=======
-- TOC entry 206 (class 1259 OID 16989)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 206 (class 1259 OID 16989)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying,
    marca character varying,
    descricao character varying,
    fornecedor_id integer,
    medida character varying,
    valor integer
);


ALTER TABLE public.produto OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 207 (class 1259 OID 17127)
=======
-- TOC entry 207 (class 1259 OID 16995)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 207 (class 1259 OID 16995)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda (
    id integer NOT NULL,
    filial_id integer,
    cliente_cpf bigint,
    funcionario_cpf bigint,
    data character varying
);


ALTER TABLE public.venda OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 208 (class 1259 OID 17133)
=======
-- TOC entry 208 (class 1259 OID 17001)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 208 (class 1259 OID 17001)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda_produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda_produto (
    venda_id integer NOT NULL,
    produto_id integer NOT NULL,
    "quantidade " integer
);


ALTER TABLE public.venda_produto OWNER TO postgres;

--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2900 (class 2606 OID 17137)
=======
-- TOC entry 2900 (class 2606 OID 17005)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2900 (class 2606 OID 17005)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: produto Produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT "Produto_pkey" PRIMARY KEY (id);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2888 (class 2606 OID 17139)
=======
-- TOC entry 2888 (class 2606 OID 17007)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2888 (class 2606 OID 17007)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cpf);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2890 (class 2606 OID 17141)
=======
-- TOC entry 2890 (class 2606 OID 17009)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2890 (class 2606 OID 17009)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: estoque estoque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY (filial_id, produto_id);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2892 (class 2606 OID 17143)
=======
-- TOC entry 2892 (class 2606 OID 17011)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2892 (class 2606 OID 17011)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: filiais filiais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filiais
    ADD CONSTRAINT filiais_pkey PRIMARY KEY (id);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2894 (class 2606 OID 17145)
=======
-- TOC entry 2894 (class 2606 OID 17013)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2894 (class 2606 OID 17013)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: fornece fornece_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_pkey PRIMARY KEY (filial_id, fornecedor_id);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2896 (class 2606 OID 17147)
=======
-- TOC entry 2896 (class 2606 OID 17015)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2896 (class 2606 OID 17015)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: fornecedor fornecedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2898 (class 2606 OID 17149)
=======
-- TOC entry 2898 (class 2606 OID 17017)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2898 (class 2606 OID 17017)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (cpf);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2902 (class 2606 OID 17151)
=======
-- TOC entry 2902 (class 2606 OID 17019)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2902 (class 2606 OID 17019)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2904 (class 2606 OID 17153)
=======
-- TOC entry 2904 (class 2606 OID 17021)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2904 (class 2606 OID 17021)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda_produto venda_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_pkey PRIMARY KEY (venda_id, produto_id);


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2905 (class 2606 OID 17154)
=======
-- TOC entry 2905 (class 2606 OID 17022)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2905 (class 2606 OID 17022)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: estoque estoque_filial_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2906 (class 2606 OID 17159)
=======
-- TOC entry 2906 (class 2606 OID 17027)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2906 (class 2606 OID 17027)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: estoque estoque_produto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2907 (class 2606 OID 17164)
=======
-- TOC entry 2907 (class 2606 OID 17032)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2907 (class 2606 OID 17032)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: fornece fornece_filial_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2908 (class 2606 OID 17169)
=======
-- TOC entry 2908 (class 2606 OID 17037)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2908 (class 2606 OID 17037)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: fornece fornece_fornecedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_fornecedor_id_fkey FOREIGN KEY (fornecedor_id) REFERENCES public.fornecedor(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2909 (class 2606 OID 17174)
=======
-- TOC entry 2909 (class 2606 OID 17042)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2909 (class 2606 OID 17042)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: produto produto_fornecedor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_fornecedor_id FOREIGN KEY (fornecedor_id) REFERENCES public.fornecedor(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2910 (class 2606 OID 17179)
=======
-- TOC entry 2910 (class 2606 OID 17047)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2910 (class 2606 OID 17047)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda venda_cliente_cpf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_cliente_cpf_fkey FOREIGN KEY (cliente_cpf) REFERENCES public.cliente(cpf) ON UPDATE CASCADE ON DELETE SET NULL;


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2911 (class 2606 OID 17184)
=======
-- TOC entry 2911 (class 2606 OID 17052)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2911 (class 2606 OID 17052)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda venda_filial_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2912 (class 2606 OID 17189)
=======
-- TOC entry 2912 (class 2606 OID 17057)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2912 (class 2606 OID 17057)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda venda_funcionario_cpf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_funcionario_cpf_fkey FOREIGN KEY (funcionario_cpf) REFERENCES public.funcionario(cpf) ON UPDATE CASCADE ON DELETE SET NULL;


--
<<<<<<< HEAD
<<<<<<< HEAD
-- TOC entry 2914 (class 2606 OID 17204)
=======
-- TOC entry 2914 (class 2606 OID 17072)
>>>>>>> parent of 61d621e (Revert "att")
=======
-- TOC entry 2914 (class 2606 OID 17072)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda_produto venda_produto_produto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
<<<<<<< HEAD
<<<<<<< HEAD
    ADD CONSTRAINT venda_produto_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 2913 (class 2606 OID 17199)
=======
    ADD CONSTRAINT venda_produto_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id) ON UPDATE CASCADE NOT VALID;


--
-- TOC entry 2913 (class 2606 OID 17067)
>>>>>>> parent of 61d621e (Revert "att")
=======
    ADD CONSTRAINT venda_produto_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id) ON UPDATE CASCADE NOT VALID;


--
-- TOC entry 2913 (class 2606 OID 17067)
>>>>>>> parent of 61d621e (Revert "att")
-- Name: venda_produto venda_produto_venda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_venda_id_fkey FOREIGN KEY (venda_id) REFERENCES public.venda(id) ON UPDATE CASCADE ON DELETE SET NULL;


<<<<<<< HEAD
<<<<<<< HEAD
-- Completed on 2021-08-29 00:04:40
=======
-- Completed on 2021-08-28 23:39:24
>>>>>>> parent of 61d621e (Revert "att")
=======
-- Completed on 2021-08-28 23:39:24
>>>>>>> parent of 61d621e (Revert "att")

--
-- PostgreSQL database dump complete
--

