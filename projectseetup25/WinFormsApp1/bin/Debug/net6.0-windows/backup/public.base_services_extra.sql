PGDMP     &    8            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243820    base_services_extra    TABLE     �  CREATE TABLE public.base_services_extra (
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
    extra_service_id bigint NOT NULL,
    extra_service_name character varying DEFAULT ''::character varying NOT NULL,
    i18n character varying DEFAULT ''::character varying NOT NULL,
    visible boolean DEFAULT true NOT NULL,
    service_kind smallint[] DEFAULT '{}'::smallint[] NOT NULL,
    unit_of_basic_tariff smallint DEFAULT '1'::smallint NOT NULL,
    unit_name character varying DEFAULT ''::character varying NOT NULL,
    field_of_tariff character varying DEFAULT ''::character varying,
    is_whole smallint DEFAULT '0'::smallint NOT NULL,
    show_dimension smallint DEFAULT '1'::smallint NOT NULL,
    unit_of_service_tariff smallint DEFAULT '-1'::smallint,
    unit_service_name character varying DEFAULT ''::character varying,
    show_check boolean DEFAULT false NOT NULL,
    mandatory boolean DEFAULT false NOT NULL,
    field_fee character varying DEFAULT ''::character varying
);
 '   DROP TABLE public.base_services_extra;
       public         heap    postgres    false            k           2606    246662 2   base_services_extra PK_d29c054191f8dd9b14ac5f09292 
   CONSTRAINT     �   ALTER TABLE ONLY public.base_services_extra
    ADD CONSTRAINT "PK_d29c054191f8dd9b14ac5f09292" PRIMARY KEY (extra_service_id);
 ^   ALTER TABLE ONLY public.base_services_extra DROP CONSTRAINT "PK_d29c054191f8dd9b14ac5f09292";
       public            postgres    false    223            m           2606    246872 2   base_services_extra UQ_d29c054191f8dd9b14ac5f09292 
   CONSTRAINT     {   ALTER TABLE ONLY public.base_services_extra
    ADD CONSTRAINT "UQ_d29c054191f8dd9b14ac5f09292" UNIQUE (extra_service_id);
 ^   ALTER TABLE ONLY public.base_services_extra DROP CONSTRAINT "UQ_d29c054191f8dd9b14ac5f09292";
       public            postgres    false    223           