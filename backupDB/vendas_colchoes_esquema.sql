PGDMP         3                y            venda_colchoes    13.3    13.3      �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16833    venda_colchoes    DATABASE     n   CREATE DATABASE venda_colchoes WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE venda_colchoes;
                postgres    false            �            1259    16834    cliente    TABLE     �   CREATE TABLE public.cliente (
    cpf bigint NOT NULL,
    nome character varying,
    email character varying,
    endereco character varying
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16840    estoque    TABLE     y   CREATE TABLE public.estoque (
    filial_id integer NOT NULL,
    produto_id integer NOT NULL,
    quantidade integer
);
    DROP TABLE public.estoque;
       public         heap    postgres    false            �            1259    16843    filiais    TABLE     v   CREATE TABLE public.filiais (
    id integer NOT NULL,
    endereco character varying,
    email character varying
);
    DROP TABLE public.filiais;
       public         heap    postgres    false            �            1259    16849    fornece    TABLE     �   CREATE TABLE public.fornece (
    filial_id integer NOT NULL,
    fornecedor_id integer NOT NULL,
    quantidade integer,
    data character varying
);
    DROP TABLE public.fornece;
       public         heap    postgres    false            �            1259    16855 
   fornecedor    TABLE     �   CREATE TABLE public.fornecedor (
    id integer NOT NULL,
    "DDD" integer,
    numero integer,
    email character varying,
    endereco character varying
);
    DROP TABLE public.fornecedor;
       public         heap    postgres    false            �            1259    16861    funcionario    TABLE     �   CREATE TABLE public.funcionario (
    cpf bigint NOT NULL,
    nome character varying,
    cargo character varying,
    salario integer
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    16867    produto    TABLE     �   CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying,
    marca character varying,
    descricao character varying,
    fornecedor_id integer,
    medida character varying,
    valor integer
);
    DROP TABLE public.produto;
       public         heap    postgres    false            �            1259    16873    venda    TABLE     �   CREATE TABLE public.venda (
    id integer NOT NULL,
    filial_id integer,
    cliente_cpf bigint,
    funcionario_cpf bigint,
    data character varying
);
    DROP TABLE public.venda;
       public         heap    postgres    false            �            1259    16879    venda_produto    TABLE     �   CREATE TABLE public.venda_produto (
    venda_id integer NOT NULL,
    produto_id integer NOT NULL,
    "quantidade " integer
);
 !   DROP TABLE public.venda_produto;
       public         heap    postgres    false            T           2606    16883    produto Produto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT "Produto_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produto DROP CONSTRAINT "Produto_pkey";
       public            postgres    false    206            H           2606    16885    cliente cliente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cpf);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    200            J           2606    16887    estoque estoque_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_pkey PRIMARY KEY (filial_id, produto_id);
 >   ALTER TABLE ONLY public.estoque DROP CONSTRAINT estoque_pkey;
       public            postgres    false    201    201            L           2606    16889    filiais filiais_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.filiais
    ADD CONSTRAINT filiais_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.filiais DROP CONSTRAINT filiais_pkey;
       public            postgres    false    202            N           2606    16891    fornece fornece_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_pkey PRIMARY KEY (filial_id, fornecedor_id);
 >   ALTER TABLE ONLY public.fornece DROP CONSTRAINT fornece_pkey;
       public            postgres    false    203    203            P           2606    16893    fornecedor fornecedor_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_pkey;
       public            postgres    false    204            R           2606    16895    funcionario funcionario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (cpf);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    205            V           2606    16897    venda venda_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public            postgres    false    207            X           2606    16899     venda_produto venda_produto_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_pkey PRIMARY KEY (venda_id, produto_id);
 J   ALTER TABLE ONLY public.venda_produto DROP CONSTRAINT venda_produto_pkey;
       public            postgres    false    208    208            Y           2606    16900    estoque estoque_filial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.estoque DROP CONSTRAINT estoque_filial_id_fkey;
       public          postgres    false    201    2892    202            Z           2606    16905    estoque estoque_produto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT estoque_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.estoque DROP CONSTRAINT estoque_produto_id_fkey;
       public          postgres    false    201    2900    206            [           2606    16910    fornece fornece_filial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.fornece DROP CONSTRAINT fornece_filial_id_fkey;
       public          postgres    false    203    2892    202            \           2606    16915 "   fornece fornece_fornecedor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fornece
    ADD CONSTRAINT fornece_fornecedor_id_fkey FOREIGN KEY (fornecedor_id) REFERENCES public.fornecedor(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.fornece DROP CONSTRAINT fornece_fornecedor_id_fkey;
       public          postgres    false    204    2896    203            ]           2606    16920    produto produto_fornecedor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_fornecedor_id FOREIGN KEY (fornecedor_id) REFERENCES public.fornecedor(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 G   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_fornecedor_id;
       public          postgres    false    2896    206    204            ^           2606    16925    venda venda_cliente_cpf_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_cliente_cpf_fkey FOREIGN KEY (cliente_cpf) REFERENCES public.cliente(cpf) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_cliente_cpf_fkey;
       public          postgres    false    200    2888    207            _           2606    16930    venda venda_filial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_filial_id_fkey FOREIGN KEY (filial_id) REFERENCES public.filiais(id) ON UPDATE CASCADE ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_filial_id_fkey;
       public          postgres    false    207    2892    202            `           2606    16935     venda venda_funcionario_cpf_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_funcionario_cpf_fkey FOREIGN KEY (funcionario_cpf) REFERENCES public.funcionario(cpf) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_funcionario_cpf_fkey;
       public          postgres    false    207    2898    205            a           2606    16940 +   venda_produto venda_produto_produto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.venda_produto DROP CONSTRAINT venda_produto_produto_id_fkey;
       public          postgres    false    206    208    2900            b           2606    16945 )   venda_produto venda_produto_venda_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_venda_id_fkey FOREIGN KEY (venda_id) REFERENCES public.venda(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.venda_produto DROP CONSTRAINT venda_produto_venda_id_fkey;
       public          postgres    false    2902    207    208           