PGDMP     '    :            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            Y           1259    245574    requestlist    TABLE       CREATE TABLE public.requestlist (
    request_id character varying NOT NULL,
    order_code character varying,
    pickup_address character varying,
    drop_address character varying,
    handling_unit_id character varying,
    width character varying,
    length character varying,
    hight character varying,
    volume character varying,
    weight character varying,
    weightgr character varying,
    pickup_time character varying,
    stop_time character varying,
    pickup_lat character varying,
    pickup_lon character varying,
    drop_lat character varying,
    drop_lon character varying,
    distance character varying
);
    DROP TABLE public.requestlist;
       public         heap    postgres    false           