PGDMP     -    
            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244227    depot_failtype    TABLE     z   CREATE TABLE public.depot_failtype (
    fail_type_id smallint NOT NULL,
    fail_type_desc character varying NOT NULL
);
 "   DROP TABLE public.depot_failtype;
       public         heap    postgres    false            �          0    244227    depot_failtype 
   TABLE DATA           F   COPY public.depot_failtype (fail_type_id, fail_type_desc) FROM stdin;
    public          postgres    false    257   �       S           2606    246908 "   depot_failtype depot_failtype_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.depot_failtype
    ADD CONSTRAINT depot_failtype_pkey PRIMARY KEY (fail_type_id);
 L   ALTER TABLE ONLY public.depot_failtype DROP CONSTRAINT depot_failtype_pkey;
       public            postgres    false    257            �      x������ � �     