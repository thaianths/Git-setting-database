PGDMP         
            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    244036    create_tour_history    TABLE     y  CREATE TABLE public.create_tour_history (
    id bigint NOT NULL,
    client_id bigint DEFAULT 0 NOT NULL,
    total_orders smallint DEFAULT 1,
    total_offers smallint DEFAULT 1,
    from_time bigint DEFAULT 0,
    to_time bigint DEFAULT 0,
    delivery_mode smallint DEFAULT 1,
    transport_mode smallint DEFAULT 1,
    tour_mode character varying DEFAULT '1;0;0;0;0;0'::character varying,
    depot_lat real DEFAULT 0.0,
    depot_lon real DEFAULT 0.0,
    date_request real DEFAULT 0.0,
    member_created bigint DEFAULT 0,
    created_at bigint DEFAULT 0,
    status smallint DEFAULT 0,
    kind_of_plan smallint DEFAULT 2
);
 '   DROP TABLE public.create_tour_history;
       public         heap    postgres    false            �            1259    244056    create_tour_history_id_seq    SEQUENCE     �   ALTER TABLE public.create_tour_history ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.create_tour_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    242            �          0    244036    create_tour_history 
   TABLE DATA           �   COPY public.create_tour_history (id, client_id, total_orders, total_offers, from_time, to_time, delivery_mode, transport_mode, tour_mode, depot_lat, depot_lon, date_request, member_created, created_at, status, kind_of_plan) FROM stdin;
    public          postgres    false    242   �       �           0    0    create_tour_history_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.create_tour_history_id_seq', 9, true);
          public          postgres    false    243            b           2606    246904 ,   create_tour_history create_tour_history_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.create_tour_history
    ADD CONSTRAINT create_tour_history_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.create_tour_history DROP CONSTRAINT create_tour_history_pkey;
       public            postgres    false    242            �   �   x���Kj�0�ur�BЯ��U����0�331���^$�>[�l�mN/1�s��\��M����(K�~�#��6N����QP�G��w]���E��R��3�����P�޲�l���^ڑ��F������I�BiқRd��?�4zR�Ǥ�P~QJ&��G&e���TP>�����������&���K����Zt}O���3�e% ����Bj^[w��*�����i���? o/��     