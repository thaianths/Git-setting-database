PGDMP         ;            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            m           1259    246021    tariff_sell    TABLE     �  CREATE TABLE public.tariff_sell (
    portal_id bigint DEFAULT '0'::bigint NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    zone_type smallint DEFAULT '0'::smallint NOT NULL,
    from_basic_unit real DEFAULT '0'::real NOT NULL,
    to_basic_unit real DEFAULT '0'::real NOT NULL,
    extra_net_per_added_service_unit real DEFAULT '0'::real NOT NULL,
    extra_net_per_added_basic_unit real DEFAULT '0'::real NOT NULL,
    vat_percent real DEFAULT '0'::real NOT NULL,
    unit_of_basic_tariff smallint DEFAULT '0'::smallint NOT NULL,
    incl_service_tariff real DEFAULT '0'::real NOT NULL,
    from_service_tariff real DEFAULT '0'::real NOT NULL,
    to_service_tariff real DEFAULT '0'::real NOT NULL,
    valid_from bigint DEFAULT '0'::bigint NOT NULL,
    valid_to bigint DEFAULT '0'::bigint NOT NULL,
    net_price bigint DEFAULT '0'::bigint NOT NULL,
    service_id smallint DEFAULT '0'::smallint NOT NULL,
    my_service_id smallint DEFAULT '0'::smallint NOT NULL,
    tariff_id bigint NOT NULL,
    zone_group_id smallint DEFAULT '0'::smallint NOT NULL,
    profit_margin smallint DEFAULT '0'::smallint NOT NULL,
    step_of_basic_unit real DEFAULT '1'::real NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    unit_of_service_tariff smallint DEFAULT '-1'::smallint NOT NULL
);
    DROP TABLE public.tariff_sell;
       public         heap    postgres    false            p           2606    246624 *   tariff_sell PK_989191bdc72333daa09eb671bc0 
   CONSTRAINT     q   ALTER TABLE ONLY public.tariff_sell
    ADD CONSTRAINT "PK_989191bdc72333daa09eb671bc0" PRIMARY KEY (tariff_id);
 V   ALTER TABLE ONLY public.tariff_sell DROP CONSTRAINT "PK_989191bdc72333daa09eb671bc0";
       public            postgres    false    365            r           2606    246834 *   tariff_sell UQ_989191bdc72333daa09eb671bc0 
   CONSTRAINT     l   ALTER TABLE ONLY public.tariff_sell
    ADD CONSTRAINT "UQ_989191bdc72333daa09eb671bc0" UNIQUE (tariff_id);
 V   ALTER TABLE ONLY public.tariff_sell DROP CONSTRAINT "UQ_989191bdc72333daa09eb671bc0";
       public            postgres    false    365           