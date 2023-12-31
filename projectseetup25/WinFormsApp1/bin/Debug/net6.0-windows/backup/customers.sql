PGDMP          
            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    244057 	   customers    TABLE     >  CREATE TABLE public.customers (
    customer_id bigint NOT NULL,
    group_id character varying DEFAULT '-1'::character varying NOT NULL,
    uid character varying DEFAULT ''::character varying NOT NULL,
    phone character varying NOT NULL,
    email character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    contact_name character varying DEFAULT ''::character varying NOT NULL,
    department smallint DEFAULT '0'::smallint NOT NULL,
    company_name character varying DEFAULT ''::character varying NOT NULL,
    bank_account character varying DEFAULT ''::character varying NOT NULL,
    business_status smallint DEFAULT '0'::smallint NOT NULL,
    business_license character varying DEFAULT ''::character varying NOT NULL,
    demand character varying DEFAULT ''::character varying NOT NULL,
    address character varying DEFAULT ''::character varying NOT NULL,
    tax_id character varying DEFAULT ''::character varying NOT NULL,
    images jsonb DEFAULT '[]'::jsonb NOT NULL,
    portal_id bigint NOT NULL,
    portal_code character varying DEFAULT ''::character varying NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �          0    244057 	   customers 
   TABLE DATA           H  COPY public.customers (customer_id, group_id, uid, phone, email, name, title, contact_name, department, company_name, bank_account, business_status, business_license, demand, address, tax_id, images, portal_id, portal_code, client_id, country_prefix, member_created, member_updated, status, created_at, modified_at) FROM stdin;
    public          postgres    false    244   �       i           2606    246588 (   customers PK_6c444ce6637f2c1d71c3cf136c1 
   CONSTRAINT     q   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT "PK_6c444ce6637f2c1d71c3cf136c1" PRIMARY KEY (customer_id);
 T   ALTER TABLE ONLY public.customers DROP CONSTRAINT "PK_6c444ce6637f2c1d71c3cf136c1";
       public            postgres    false    244            k           2606    246798 (   customers UQ_6c444ce6637f2c1d71c3cf136c1 
   CONSTRAINT     l   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT "UQ_6c444ce6637f2c1d71c3cf136c1" UNIQUE (customer_id);
 T   ALTER TABLE ONLY public.customers DROP CONSTRAINT "UQ_6c444ce6637f2c1d71c3cf136c1";
       public            postgres    false    244            �      x������ � �     