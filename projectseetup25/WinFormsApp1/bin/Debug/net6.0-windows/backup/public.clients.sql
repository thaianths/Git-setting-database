PGDMP     2    8            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243971    clients    TABLE     �  CREATE TABLE public.clients (
    client_id bigint NOT NULL,
    type smallint DEFAULT '0'::smallint NOT NULL,
    group_id character varying DEFAULT '-1'::character varying NOT NULL,
    uid character varying DEFAULT ''::character varying NOT NULL,
    phone character varying NOT NULL,
    email character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    contact_name character varying DEFAULT ''::character varying NOT NULL,
    department smallint DEFAULT '0'::smallint NOT NULL,
    company_name character varying DEFAULT ''::character varying NOT NULL,
    bank_account character varying DEFAULT ''::character varying NOT NULL,
    business_status smallint DEFAULT '0'::smallint NOT NULL,
    business_license character varying DEFAULT ''::character varying NOT NULL,
    demand character varying DEFAULT ''::character varying NOT NULL,
    address character varying DEFAULT ''::character varying NOT NULL,
    tax_id character varying DEFAULT ''::character varying NOT NULL,
    images jsonb DEFAULT '[]'::jsonb NOT NULL,
    portal_id bigint NOT NULL,
    portal_code character varying DEFAULT ''::character varying NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    profit_margin real DEFAULT '0'::real NOT NULL,
    min_order_per_mon bigint DEFAULT '0'::bigint NOT NULL
);
    DROP TABLE public.clients;
       public         heap    postgres    false            k           2606    246550 &   clients PK_49e91f1e368e3f760789e7764aa 
   CONSTRAINT     m   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT "PK_49e91f1e368e3f760789e7764aa" PRIMARY KEY (client_id);
 R   ALTER TABLE ONLY public.clients DROP CONSTRAINT "PK_49e91f1e368e3f760789e7764aa";
       public            postgres    false    236            m           2606    246764 &   clients UQ_49e91f1e368e3f760789e7764aa 
   CONSTRAINT     h   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT "UQ_49e91f1e368e3f760789e7764aa" UNIQUE (client_id);
 R   ALTER TABLE ONLY public.clients DROP CONSTRAINT "UQ_49e91f1e368e3f760789e7764aa";
       public            postgres    false    236           