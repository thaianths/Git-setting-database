PGDMP         9            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244586    depot_shelving_rent    TABLE     z  CREATE TABLE public.depot_shelving_rent (
    depot_sherving_rent_id bigint NOT NULL,
    depot_id bigint DEFAULT '0'::bigint NOT NULL,
    shelving_bin_id bigint DEFAULT '0'::bigint NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    from_time bigint DEFAULT '0'::bigint NOT NULL,
    to_time bigint DEFAULT '0'::bigint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL
);
 '   DROP TABLE public.depot_shelving_rent;
       public         heap    postgres    false            ]           2606    246660 2   depot_shelving_rent PK_d24bbede0c614d86a19a7636b68 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_shelving_rent
    ADD CONSTRAINT "PK_d24bbede0c614d86a19a7636b68" PRIMARY KEY (depot_sherving_rent_id);
 ^   ALTER TABLE ONLY public.depot_shelving_rent DROP CONSTRAINT "PK_d24bbede0c614d86a19a7636b68";
       public            postgres    false    276            _           2606    246878 2   depot_shelving_rent UQ_e0be2b029630972b8c383039f4a 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_shelving_rent
    ADD CONSTRAINT "UQ_e0be2b029630972b8c383039f4a" UNIQUE (depot_id, shelving_bin_id, service_provider_id, request_provider_id);
 ^   ALTER TABLE ONLY public.depot_shelving_rent DROP CONSTRAINT "UQ_e0be2b029630972b8c383039f4a";
       public            postgres    false    276    276    276    276           