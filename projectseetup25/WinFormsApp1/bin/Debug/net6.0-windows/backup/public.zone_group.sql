PGDMP         ;            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �           1259    246354 
   zone_group    TABLE       CREATE TABLE public.zone_group (
    zone_group_id smallint NOT NULL,
    "desc" character varying DEFAULT ''::character varying NOT NULL,
    zone_group_name character varying DEFAULT ''::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '2'::smallint NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    portal_id bigint DEFAULT '0'::bigint NOT NULL
);
    DROP TABLE public.zone_group;
       public         heap    postgres    false            [           2606    246608 )   zone_group PK_766599c9f6b3d1446d829dbbc76 
   CONSTRAINT     t   ALTER TABLE ONLY public.zone_group
    ADD CONSTRAINT "PK_766599c9f6b3d1446d829dbbc76" PRIMARY KEY (zone_group_id);
 U   ALTER TABLE ONLY public.zone_group DROP CONSTRAINT "PK_766599c9f6b3d1446d829dbbc76";
       public            postgres    false    391            ]           2606    246776 )   zone_group UQ_54e96ef084135a25854840807e9 
   CONSTRAINT     q   ALTER TABLE ONLY public.zone_group
    ADD CONSTRAINT "UQ_54e96ef084135a25854840807e9" UNIQUE (zone_group_name);
 U   ALTER TABLE ONLY public.zone_group DROP CONSTRAINT "UQ_54e96ef084135a25854840807e9";
       public            postgres    false    391           