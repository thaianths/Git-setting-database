PGDMP          8            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243736    base_es_mapping    TABLE       CREATE TABLE public.base_es_mapping (
    id integer NOT NULL,
    dbname character varying DEFAULT ''::character varying NOT NULL,
    mapping jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL
);
 #   DROP TABLE public.base_es_mapping;
       public         heap    postgres    false            �            1259    243745    base_es_mapping_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_es_mapping_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.base_es_mapping_id_seq;
       public          postgres    false    218            �           0    0    base_es_mapping_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.base_es_mapping_id_seq OWNED BY public.base_es_mapping.id;
          public          postgres    false    219            R           2604    246381    base_es_mapping id    DEFAULT     x   ALTER TABLE ONLY public.base_es_mapping ALTER COLUMN id SET DEFAULT nextval('public.base_es_mapping_id_seq'::regclass);
 A   ALTER TABLE public.base_es_mapping ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            X           2606    246600 .   base_es_mapping PK_718cf3d5d3688f039b74dca4999 
   CONSTRAINT     n   ALTER TABLE ONLY public.base_es_mapping
    ADD CONSTRAINT "PK_718cf3d5d3688f039b74dca4999" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.base_es_mapping DROP CONSTRAINT "PK_718cf3d5d3688f039b74dca4999";
       public            postgres    false    218            Z           2606    246772 .   base_es_mapping UQ_4f1efeba338b128e9203eaabcc9 
   CONSTRAINT     m   ALTER TABLE ONLY public.base_es_mapping
    ADD CONSTRAINT "UQ_4f1efeba338b128e9203eaabcc9" UNIQUE (dbname);
 Z   ALTER TABLE ONLY public.base_es_mapping DROP CONSTRAINT "UQ_4f1efeba338b128e9203eaabcc9";
       public            postgres    false    218           