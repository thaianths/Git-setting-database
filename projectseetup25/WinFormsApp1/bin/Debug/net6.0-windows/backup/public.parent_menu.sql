PGDMP         :            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            J           1259    245351    parent_menu    TABLE     0  CREATE TABLE public.parent_menu (
    portal_id bigint DEFAULT '0'::bigint,
    portal_code character varying DEFAULT ''::character varying,
    customer_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    parent_id bigint NOT NULL,
    path character varying DEFAULT ''::character varying NOT NULL,
    meta jsonb DEFAULT '{}'::jsonb NOT NULL,
    redirect jsonb DEFAULT '{}'::jsonb NOT NULL,
    children_ids bigint[] NOT NULL,
    is_mobile boolean DEFAULT false NOT NULL
);
    DROP TABLE public.parent_menu;
       public         heap    postgres    false            a           2606    246580 *   parent_menu PK_66e4d3044d333b236fc8debb360 
   CONSTRAINT     q   ALTER TABLE ONLY public.parent_menu
    ADD CONSTRAINT "PK_66e4d3044d333b236fc8debb360" PRIMARY KEY (parent_id);
 V   ALTER TABLE ONLY public.parent_menu DROP CONSTRAINT "PK_66e4d3044d333b236fc8debb360";
       public            postgres    false    330            c           2606    246792 *   parent_menu UQ_66e4d3044d333b236fc8debb360 
   CONSTRAINT     l   ALTER TABLE ONLY public.parent_menu
    ADD CONSTRAINT "UQ_66e4d3044d333b236fc8debb360" UNIQUE (parent_id);
 V   ALTER TABLE ONLY public.parent_menu DROP CONSTRAINT "UQ_66e4d3044d333b236fc8debb360";
       public            postgres    false    330           