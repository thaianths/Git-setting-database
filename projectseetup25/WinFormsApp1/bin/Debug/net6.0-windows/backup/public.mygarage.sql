PGDMP         :            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            >           1259    245164    mygarage    TABLE     �  CREATE TABLE public.mygarage (
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
    garage_id bigint NOT NULL,
    service_provider_id character varying DEFAULT ''::character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    contact_name character varying DEFAULT ''::character varying NOT NULL,
    address character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    lat real DEFAULT '0'::real NOT NULL,
    lon real DEFAULT '0'::real NOT NULL
);
    DROP TABLE public.mygarage;
       public         heap    postgres    false            d           2606    246590 '   mygarage PK_6d28e2d6615bb22dbb5b1fe4973 
   CONSTRAINT     n   ALTER TABLE ONLY public.mygarage
    ADD CONSTRAINT "PK_6d28e2d6615bb22dbb5b1fe4973" PRIMARY KEY (garage_id);
 S   ALTER TABLE ONLY public.mygarage DROP CONSTRAINT "PK_6d28e2d6615bb22dbb5b1fe4973";
       public            postgres    false    318            f           2606    246800 '   mygarage UQ_6d28e2d6615bb22dbb5b1fe4973 
   CONSTRAINT     i   ALTER TABLE ONLY public.mygarage
    ADD CONSTRAINT "UQ_6d28e2d6615bb22dbb5b1fe4973" UNIQUE (garage_id);
 S   ALTER TABLE ONLY public.mygarage DROP CONSTRAINT "UQ_6d28e2d6615bb22dbb5b1fe4973";
       public            postgres    false    318           