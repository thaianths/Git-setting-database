PGDMP     )    9            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244700    driver_rating    TABLE     T  CREATE TABLE public.driver_rating (
    driver_rating_id bigint NOT NULL,
    rating real DEFAULT '0'::real NOT NULL,
    driver_id bigint DEFAULT '0'::bigint NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    request_id bigint DEFAULT '0'::bigint NOT NULL,
    rating_option text[] NOT NULL,
    comment character varying DEFAULT ''::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL
);
 !   DROP TABLE public.driver_rating;
       public         heap    postgres    false            \           2606    246510 ,   driver_rating PK_1db9d7c944117cce10b51192352 
   CONSTRAINT     z   ALTER TABLE ONLY public.driver_rating
    ADD CONSTRAINT "PK_1db9d7c944117cce10b51192352" PRIMARY KEY (driver_rating_id);
 X   ALTER TABLE ONLY public.driver_rating DROP CONSTRAINT "PK_1db9d7c944117cce10b51192352";
       public            postgres    false    285            ^           2606    246726 ,   driver_rating UQ_1db9d7c944117cce10b51192352 
   CONSTRAINT     u   ALTER TABLE ONLY public.driver_rating
    ADD CONSTRAINT "UQ_1db9d7c944117cce10b51192352" UNIQUE (driver_rating_id);
 X   ALTER TABLE ONLY public.driver_rating DROP CONSTRAINT "UQ_1db9d7c944117cce10b51192352";
       public            postgres    false    285           