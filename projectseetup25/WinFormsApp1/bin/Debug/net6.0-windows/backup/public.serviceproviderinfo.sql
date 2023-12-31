PGDMP     0    :            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            a           1259    245763    serviceproviderinfo    TABLE     �  CREATE TABLE public.serviceproviderinfo (
    portal_id bigint DEFAULT '0'::bigint,
    portal_code character varying DEFAULT ''::character varying,
    customer_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    uid character varying DEFAULT ''::character varying NOT NULL,
    phone character varying NOT NULL,
    email character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    contact_name character varying DEFAULT ''::character varying NOT NULL,
    list_roles character varying DEFAULT ''::character varying NOT NULL,
    role smallint DEFAULT '0'::smallint NOT NULL,
    department smallint DEFAULT '0'::smallint NOT NULL,
    company_name character varying DEFAULT ''::character varying NOT NULL,
    bank_account character varying DEFAULT ''::character varying NOT NULL,
    business_status smallint DEFAULT '0'::smallint NOT NULL,
    business_license character varying DEFAULT ''::character varying NOT NULL,
    demand character varying DEFAULT ''::character varying NOT NULL,
    address character varying DEFAULT ''::character varying NOT NULL,
    tax_id character varying DEFAULT ''::character varying NOT NULL,
    images jsonb DEFAULT '{}'::jsonb NOT NULL,
    service_provider_id bigint NOT NULL,
    is_main boolean DEFAULT false NOT NULL,
    type smallint DEFAULT '1'::smallint NOT NULL,
    excel_templates jsonb DEFAULT '[]'::jsonb NOT NULL,
    code character varying DEFAULT ''::character varying NOT NULL,
    share_portal boolean DEFAULT false NOT NULL,
    reconcile_type smallint DEFAULT '3'::smallint NOT NULL,
    transfer_fee real DEFAULT '5000'::real NOT NULL
);
 '   DROP TABLE public.serviceproviderinfo;
       public         heap    postgres    false            s           2606    246646 2   serviceproviderinfo PK_b97bdce19078728e763ecf00b80 
   CONSTRAINT     �   ALTER TABLE ONLY public.serviceproviderinfo
    ADD CONSTRAINT "PK_b97bdce19078728e763ecf00b80" PRIMARY KEY (service_provider_id);
 ^   ALTER TABLE ONLY public.serviceproviderinfo DROP CONSTRAINT "PK_b97bdce19078728e763ecf00b80";
       public            postgres    false    353            u           2606    246860 2   serviceproviderinfo UQ_b97bdce19078728e763ecf00b80 
   CONSTRAINT     ~   ALTER TABLE ONLY public.serviceproviderinfo
    ADD CONSTRAINT "UQ_b97bdce19078728e763ecf00b80" UNIQUE (service_provider_id);
 ^   ALTER TABLE ONLY public.serviceproviderinfo DROP CONSTRAINT "UQ_b97bdce19078728e763ecf00b80";
       public            postgres    false    353           