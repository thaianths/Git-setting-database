PGDMP     	    :            
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
                postgres    false            9           1259    245073    logtest    TABLE     {   CREATE TABLE public.logtest (
    id integer NOT NULL,
    uid character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.logtest;
       public         heap    postgres    false            :           1259    245079    logtest_id_seq    SEQUENCE     �   CREATE SEQUENCE public.logtest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.logtest_id_seq;
       public          postgres    false    313            �           0    0    logtest_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.logtest_id_seq OWNED BY public.logtest.id;
          public          postgres    false    314            R           2604    246406 
   logtest id    DEFAULT     h   ALTER TABLE ONLY public.logtest ALTER COLUMN id SET DEFAULT nextval('public.logtest_id_seq'::regclass);
 9   ALTER TABLE public.logtest ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    314    313            U           2606    246538 &   logtest PK_3fe3e745e13380ab9913036ab66 
   CONSTRAINT     f   ALTER TABLE ONLY public.logtest
    ADD CONSTRAINT "PK_3fe3e745e13380ab9913036ab66" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.logtest DROP CONSTRAINT "PK_3fe3e745e13380ab9913036ab66";
       public            postgres    false    313            W           2606    246842 &   logtest UQ_9d28ae54125e603b627ee761e1f 
   CONSTRAINT     b   ALTER TABLE ONLY public.logtest
    ADD CONSTRAINT "UQ_9d28ae54125e603b627ee761e1f" UNIQUE (uid);
 R   ALTER TABLE ONLY public.logtest DROP CONSTRAINT "UQ_9d28ae54125e603b627ee761e1f";
       public            postgres    false    313           