PGDMP     ,    9            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244729    driveroffer    TABLE     �  CREATE TABLE public.driveroffer (
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
    offer_id bigint NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    offer_mode smallint DEFAULT '1'::smallint NOT NULL,
    my_vehicle_id bigint DEFAULT '-1'::bigint,
    from_lon real DEFAULT '0'::real,
    to_lon real DEFAULT '0'::real,
    from_address character varying DEFAULT ''::character varying NOT NULL,
    from_lat real NOT NULL,
    to_lat real DEFAULT '0'::real,
    to_address character varying DEFAULT ''::character varying NOT NULL,
    route_id bigint DEFAULT '-1'::bigint,
    offer_code character varying DEFAULT ''::character varying,
    distance real DEFAULT '0'::real,
    from_workingtime bigint DEFAULT '0'::bigint NOT NULL,
    to_workingtime bigint DEFAULT '0'::bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    resource_id bigint DEFAULT '0'::bigint NOT NULL,
    idwt character varying DEFAULT ''::character varying
);
    DROP TABLE public.driveroffer;
       public         heap    postgres    false            m           2606    246518 *   driveroffer PK_229d234025ac5aa026da7e95cbb 
   CONSTRAINT     p   ALTER TABLE ONLY public.driveroffer
    ADD CONSTRAINT "PK_229d234025ac5aa026da7e95cbb" PRIMARY KEY (offer_id);
 V   ALTER TABLE ONLY public.driveroffer DROP CONSTRAINT "PK_229d234025ac5aa026da7e95cbb";
       public            postgres    false    287            o           2606    246730 *   driveroffer UQ_229d234025ac5aa026da7e95cbb 
   CONSTRAINT     k   ALTER TABLE ONLY public.driveroffer
    ADD CONSTRAINT "UQ_229d234025ac5aa026da7e95cbb" UNIQUE (offer_id);
 V   ALTER TABLE ONLY public.driveroffer DROP CONSTRAINT "UQ_229d234025ac5aa026da7e95cbb";
       public            postgres    false    287           