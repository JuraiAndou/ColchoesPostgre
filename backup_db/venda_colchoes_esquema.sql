--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-08-28 22:40:01

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
-- TOC entry 200 (class 1259 OID 16692)
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
-- TOC entry 201 (class 1259 OID 16698)
-- Name: estoque; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estoque (
    filial_id integer NOT NULL,
    produto_id integer NOT NULL,
    quantidade integer
);


ALTER TABLE public.estoque OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16701)
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
-- TOC entry 203 (class 1259 OID 16707)
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
-- TOC entry 204 (class 1259 OID 16713)
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
-- TOC entry 205 (class 1259 OID 16719)
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
-- TOC entry 206 (class 1259 OID 16725)
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
-- TOC entry 207 (class 1259 OID 16731)
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
-- TOC entry 208 (class 1259 OID 16737)
-- Name: venda_produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda_produto (
    venda_id integer NOT NULL,
    produto_id integer NOT NULL,
    "quantidade " integer
);


ALTER TABLE public.venda_produto OWNER TO postgres;

--
-- TOC entry 2900 (class 2606 OID 16741)
-- Name: produto Produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT "Produto_pkey" PRIMARY KEY (id);


--
-- TOC entry 2888 (class 2606 OID 16743)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cpf);


--
-- TOC entry 2890 (class 2606 OID 16745)
-- Name: estoque estoque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY (filial_id, produto_id);


--
-- TOC entry 2892 (class 2606 OID 16747)
-- Name: filiais filiais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filiais
    ADD CONSTRAINT filiais_pkey PRIMARY KEY (id);


--
-- TOC entry 2894 (class 2606 OID 16749)
-- Name: fornece fornece_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_pkey PRIMARY KEY (filial_id, fornecedor_id);


--
-- TOC entry 2896 (class 2606 OID 16751)
-- Name: fornecedor fornecedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id);


--
-- TOC entry 2898 (class 2606 OID 16753)
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (cpf);


--
-- TOC entry 2902 (class 2606 OID 16755)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


--
-- TOC entry 2904 (class 2606 OID 16757)
-- Name: venda_produto venda_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_pkey PRIMARY KEY (venda_id, produto_id);


--
-- TOC entry 2905 (class 2606 OID 16758)
-- Name: estoque estoque_filial_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2906 (class 2606 OID 16763)
-- Name: estoque estoque_produto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2907 (class 2606 OID 16768)
-- Name: fornece fornece_filial_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2908 (class 2606 OID 16773)
-- Name: fornece fornece_fornecedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_fornecedor_id_fkey FOREIGN KEY (fornecedor_id) REFERENCES public.fornecedor(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2909 (class 2606 OID 16778)
-- Name: produto produto_fornecedor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_fornecedor_id FOREIGN KEY (fornecedor_id) REFERENCES public.fornecedor(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
-- TOC entry 2910 (class 2606 OID 16783)
-- Name: venda venda_cliente_cpf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_cliente_cpf_fkey FOREIGN KEY (cliente_cpf) REFERENCES public.cliente(cpf) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2911 (class 2606 OID 16788)
-- Name: venda venda_filial_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2912 (class 2606 OID 16793)
-- Name: venda venda_funcionario_cpf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_funcionario_cpf_fkey FOREIGN KEY (funcionario_cpf) REFERENCES public.funcionario(cpf) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2913 (class 2606 OID 16798)
-- Name: venda_produto venda_produto_produto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2914 (class 2606 OID 16803)
-- Name: venda_produto venda_produto_venda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_venda_id_fkey FOREIGN KEY (venda_id) REFERENCES public.venda(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2021-08-28 22:40:02

--
-- PostgreSQL database dump complete
--
