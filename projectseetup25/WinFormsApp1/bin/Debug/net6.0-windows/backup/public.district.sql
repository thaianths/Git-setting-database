PGDMP     %    9            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244634    district    TABLE     5  CREATE TABLE public.district (
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
    did bigint NOT NULL,
    dname character varying DEFAULT ''::character varying NOT NULL,
    dshort character varying DEFAULT ''::character varying NOT NULL,
    dkey text[] NOT NULL,
    cid bigint DEFAULT '84'::bigint NOT NULL,
    pid bigint DEFAULT '84'::bigint NOT NULL,
    pname character varying DEFAULT ''::character varying NOT NULL,
    pshort character varying DEFAULT ''::character varying NOT NULL,
    pkey text[] NOT NULL,
    wards jsonb DEFAULT '[]'::jsonb NOT NULL,
    aid smallint DEFAULT '0'::smallint NOT NULL
);
    DROP TABLE public.district;
       public         heap    postgres    false            e           2606    246564 '   district PK_58b491eba12019e82f05997bb4f 
   CONSTRAINT     h   ALTER TABLE ONLY public.district
    ADD CONSTRAINT "PK_58b491eba12019e82f05997bb4f" PRIMARY KEY (did);
 S   ALTER TABLE ONLY public.district DROP CONSTRAINT "PK_58b491eba12019e82f05997bb4f";
       public            postgres    false    282            g           2606    246778 '   district UQ_58b491eba12019e82f05997bb4f 
   CONSTRAINT     c   ALTER TABLE ONLY public.district
    ADD CONSTRAINT "UQ_58b491eba12019e82f05997bb4f" UNIQUE (did);
 S   ALTER TABLE ONLY public.district DROP CONSTRAINT "UQ_58b491eba12019e82f05997bb4f";
       public            postgres    false    282           