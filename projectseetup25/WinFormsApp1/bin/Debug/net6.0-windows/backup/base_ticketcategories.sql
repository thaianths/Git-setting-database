PGDMP         
            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243849    base_ticketcategories    TABLE     �  CREATE TABLE public.base_ticketcategories (
    portal_id bigint DEFAULT '0'::bigint,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    ticket_category_id bigint NOT NULL,
    ticket_category_name character varying DEFAULT ''::character varying NOT NULL,
    ticket_category_desc character varying DEFAULT ''::character varying NOT NULL,
    i18n character varying DEFAULT ''::character varying NOT NULL,
    kind_of_ticket_category smallint DEFAULT '0'::smallint NOT NULL
);
 )   DROP TABLE public.base_ticketcategories;
       public         heap    postgres    false            �          0    243849    base_ticketcategories 
   TABLE DATA           �   COPY public.base_ticketcategories (portal_id, member_created, member_updated, status, created_at, modified_at, ticket_category_id, ticket_category_name, ticket_category_desc, i18n, kind_of_ticket_category) FROM stdin;
    public          postgres    false    224          �      x������ � �     