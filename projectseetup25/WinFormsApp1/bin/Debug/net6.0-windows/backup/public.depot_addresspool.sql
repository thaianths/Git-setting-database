PGDMP         9            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    244102    depot_addresspool    TABLE     �  CREATE TABLE public.depot_addresspool (
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
    addr_id bigint NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    contact_name character varying DEFAULT ''::character varying NOT NULL,
    addr character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    lat real DEFAULT '0'::real NOT NULL,
    lon real DEFAULT '0'::real NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    pick bigint DEFAULT '0'::bigint NOT NULL,
    drop bigint DEFAULT '0'::bigint NOT NULL,
    kind smallint DEFAULT '0'::smallint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    w3w_code character varying DEFAULT ''::character varying NOT NULL,
    period_of_out smallint DEFAULT '0'::smallint NOT NULL,
    period_of_in smallint DEFAULT '0'::smallint NOT NULL,
    begin_out character varying DEFAULT ''::character varying NOT NULL,
    begin_in character varying DEFAULT ''::character varying NOT NULL,
    short_name character varying DEFAULT ''::character varying NOT NULL,
    group_id character varying DEFAULT ''::character varying NOT NULL,
    radius_of_pickupdrop real DEFAULT '0'::real NOT NULL
);
 %   DROP TABLE public.depot_addresspool;
       public         heap    postgres    false            q           2606    246586 0   depot_addresspool PK_6bbe0ff87561bf297771ca5bf8f 
   CONSTRAINT     u   ALTER TABLE ONLY public.depot_addresspool
    ADD CONSTRAINT "PK_6bbe0ff87561bf297771ca5bf8f" PRIMARY KEY (addr_id);
 \   ALTER TABLE ONLY public.depot_addresspool DROP CONSTRAINT "PK_6bbe0ff87561bf297771ca5bf8f";
       public            postgres    false    250            s           2606    246796 0   depot_addresspool UQ_6bbe0ff87561bf297771ca5bf8f 
   CONSTRAINT     p   ALTER TABLE ONLY public.depot_addresspool
    ADD CONSTRAINT "UQ_6bbe0ff87561bf297771ca5bf8f" UNIQUE (addr_id);
 \   ALTER TABLE ONLY public.depot_addresspool DROP CONSTRAINT "UQ_6bbe0ff87561bf297771ca5bf8f";
       public            postgres    false    250           