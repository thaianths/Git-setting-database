PGDMP     &    9            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244657    district_tariff    TABLE     z  CREATE TABLE public.district_tariff (
    dist_tariff_id bigint NOT NULL,
    country character varying DEFAULT ''::character varying NOT NULL,
    area character varying DEFAULT ''::character varying NOT NULL,
    pname character varying DEFAULT ''::character varying NOT NULL,
    dname character varying DEFAULT ''::character varying NOT NULL,
    level smallint DEFAULT '0'::smallint NOT NULL,
    cid bigint DEFAULT '84'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    pid bigint DEFAULT '0'::bigint NOT NULL,
    did bigint DEFAULT '84'::bigint NOT NULL,
    aid bigint DEFAULT '0'::bigint NOT NULL
);
 #   DROP TABLE public.district_tariff;
       public         heap    postgres    false            ]           2606    246862 .   district_tariff UQ_c565ce731695d2756fb8e20421f 
   CONSTRAINT     u   ALTER TABLE ONLY public.district_tariff
    ADD CONSTRAINT "UQ_c565ce731695d2756fb8e20421f" UNIQUE (dist_tariff_id);
 Z   ALTER TABLE ONLY public.district_tariff DROP CONSTRAINT "UQ_c565ce731695d2756fb8e20421f";
       public            postgres    false    283            _           2606    246914 $   district_tariff district_tariff_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.district_tariff
    ADD CONSTRAINT district_tariff_pkey PRIMARY KEY (dist_tariff_id);
 N   ALTER TABLE ONLY public.district_tariff DROP CONSTRAINT district_tariff_pkey;
       public            postgres    false    283           