PGDMP     !    8            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243746    base_group_services    TABLE     E  CREATE TABLE public.base_group_services (
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
    group_service_id bigint NOT NULL,
    group_service_name character varying DEFAULT ''::character varying NOT NULL,
    service_kind smallint DEFAULT '1'::smallint NOT NULL,
    i18n character varying DEFAULT ''::character varying NOT NULL,
    visible boolean DEFAULT true NOT NULL
);
 '   DROP TABLE public.base_group_services;
       public         heap    postgres    false            a           2606    246616 2   base_group_services PK_873b6e5f728a6ec6ff0bb2d410a 
   CONSTRAINT     �   ALTER TABLE ONLY public.base_group_services
    ADD CONSTRAINT "PK_873b6e5f728a6ec6ff0bb2d410a" PRIMARY KEY (group_service_id);
 ^   ALTER TABLE ONLY public.base_group_services DROP CONSTRAINT "PK_873b6e5f728a6ec6ff0bb2d410a";
       public            postgres    false    220            c           2606    246826 2   base_group_services UQ_873b6e5f728a6ec6ff0bb2d410a 
   CONSTRAINT     {   ALTER TABLE ONLY public.base_group_services
    ADD CONSTRAINT "UQ_873b6e5f728a6ec6ff0bb2d410a" UNIQUE (group_service_id);
 ^   ALTER TABLE ONLY public.base_group_services DROP CONSTRAINT "UQ_873b6e5f728a6ec6ff0bb2d410a";
       public            postgres    false    220           