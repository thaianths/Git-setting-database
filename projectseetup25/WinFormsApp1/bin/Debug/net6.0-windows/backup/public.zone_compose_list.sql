PGDMP         ;            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �           1259    246346    zone_compose_list    TABLE       CREATE TABLE public.zone_compose_list (
    zone_compose_id bigint NOT NULL,
    dist_tariff_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    compose_name character varying DEFAULT ''::character varying NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL
);
 %   DROP TABLE public.zone_compose_list;
       public         heap    postgres    false            V           2606    246522 0   zone_compose_list PK_22e86035c936269c629bd7f8c58 
   CONSTRAINT     }   ALTER TABLE ONLY public.zone_compose_list
    ADD CONSTRAINT "PK_22e86035c936269c629bd7f8c58" PRIMARY KEY (zone_compose_id);
 \   ALTER TABLE ONLY public.zone_compose_list DROP CONSTRAINT "PK_22e86035c936269c629bd7f8c58";
       public            postgres    false    390            X           2606    246856 0   zone_compose_list UQ_b511a62bd71ea68dba5b63a687d 
   CONSTRAINT     �   ALTER TABLE ONLY public.zone_compose_list
    ADD CONSTRAINT "UQ_b511a62bd71ea68dba5b63a687d" UNIQUE (dist_tariff_ids, compose_name);
 \   ALTER TABLE ONLY public.zone_compose_list DROP CONSTRAINT "UQ_b511a62bd71ea68dba5b63a687d";
       public            postgres    false    390    390           