PGDMP     6    
            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            
           1259    244351    depot_itemwaitfor_moving    TABLE     d  CREATE TABLE public.depot_itemwaitfor_moving (
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    depot_request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    depot_id bigint DEFAULT '0'::bigint NOT NULL,
    depot_input_id bigint NOT NULL,
    collection_order_id bigint DEFAULT '0'::bigint NOT NULL,
    collection_item_id bigint DEFAULT '0'::bigint NOT NULL,
    sender_phone character varying DEFAULT ''::character varying NOT NULL,
    sender_name character varying DEFAULT ''::character varying NOT NULL,
    pickup_lat real DEFAULT '0'::real NOT NULL,
    pickup_lon real DEFAULT '0'::real NOT NULL,
    pickup_address character varying DEFAULT ''::character varying NOT NULL,
    pickup_time bigint DEFAULT '0'::bigint NOT NULL,
    receiver_phone character varying DEFAULT ''::character varying NOT NULL,
    receiver_name character varying DEFAULT ''::character varying NOT NULL,
    drop_lat real DEFAULT '0'::real NOT NULL,
    drop_lon real DEFAULT '0'::real NOT NULL,
    drop_address character varying DEFAULT ''::character varying NOT NULL,
    request_type smallint DEFAULT '1'::smallint NOT NULL,
    distance real DEFAULT '0'::real NOT NULL,
    basegood_id bigint DEFAULT '0'::bigint NOT NULL,
    package_name character varying DEFAULT ''::character varying NOT NULL,
    count_of_parcels smallint DEFAULT '1'::smallint NOT NULL,
    rlength real DEFAULT '0'::real NOT NULL,
    rwidth real DEFAULT '0'::real NOT NULL,
    rheight real DEFAULT '0'::real NOT NULL,
    rweight real DEFAULT '0'::real NOT NULL,
    rvolume real DEFAULT '0'::real NOT NULL,
    handling_unit_id bigint DEFAULT '0'::bigint NOT NULL,
    note character varying DEFAULT ''::character varying NOT NULL,
    is_insurance boolean DEFAULT false NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    packaging_unit_id smallint DEFAULT '1'::smallint NOT NULL,
    delivery_mode bigint DEFAULT '0'::bigint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL
);
 ,   DROP TABLE public.depot_itemwaitfor_moving;
       public         heap    postgres    false                      0    244351    depot_itemwaitfor_moving 
   TABLE DATA           &  COPY public.depot_itemwaitfor_moving (client_id, depot_request_provider_id, depot_id, depot_input_id, collection_order_id, collection_item_id, sender_phone, sender_name, pickup_lat, pickup_lon, pickup_address, pickup_time, receiver_phone, receiver_name, drop_lat, drop_lon, drop_address, request_type, distance, basegood_id, package_name, count_of_parcels, rlength, rwidth, rheight, rweight, rvolume, handling_unit_id, note, is_insurance, status, packaging_unit_id, delivery_mode, member_created, member_updated, created_at, modified_at) FROM stdin;
    public          postgres    false    266   ;             x������ � �     