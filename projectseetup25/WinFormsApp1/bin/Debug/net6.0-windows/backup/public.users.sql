PGDMP         ;            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            z           1259    246227    users    TABLE     �  CREATE TABLE public.users (
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
    uid character varying NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    fullname character varying NOT NULL,
    last_login bigint DEFAULT '0'::bigint NOT NULL,
    change_pass_at bigint DEFAULT '0'::bigint NOT NULL,
    role character varying DEFAULT '1'::character varying NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            a           2606    246594 $   users PK_6e20ce1edf0678a09f1963f9587 
   CONSTRAINT     e   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_6e20ce1edf0678a09f1963f9587" PRIMARY KEY (uid);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_6e20ce1edf0678a09f1963f9587";
       public            postgres    false    378            c           2606    246896 $   users UQ_fe0bb3f6520ee0469504521e710 
   CONSTRAINT     e   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UQ_fe0bb3f6520ee0469504521e710" UNIQUE (username);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "UQ_fe0bb3f6520ee0469504521e710";
       public            postgres    false    378           