PGDMP     +    9            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244714    driver_working_time    TABLE     N  CREATE TABLE public.driver_working_time (
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    my_vehicle_id bigint DEFAULT '0'::bigint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    id_workingtime bigint DEFAULT '0'::bigint NOT NULL,
    id character varying DEFAULT ''::character varying NOT NULL,
    offer_id bigint DEFAULT '0'::bigint NOT NULL
);
 '   DROP TABLE public.driver_working_time;
       public         heap    postgres    false            ]           2606    246530 2   driver_working_time PK_2e90e2281cf9edd809e8a671a86 
   CONSTRAINT     r   ALTER TABLE ONLY public.driver_working_time
    ADD CONSTRAINT "PK_2e90e2281cf9edd809e8a671a86" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.driver_working_time DROP CONSTRAINT "PK_2e90e2281cf9edd809e8a671a86";
       public            postgres    false    286            _           2606    246748 2   driver_working_time UQ_3ae3efa6e01189e57af55a8d1f1 
   CONSTRAINT     �   ALTER TABLE ONLY public.driver_working_time
    ADD CONSTRAINT "UQ_3ae3efa6e01189e57af55a8d1f1" UNIQUE (id, id_workingtime, offer_id);
 ^   ALTER TABLE ONLY public.driver_working_time DROP CONSTRAINT "UQ_3ae3efa6e01189e57af55a8d1f1";
       public            postgres    false    286    286    286           