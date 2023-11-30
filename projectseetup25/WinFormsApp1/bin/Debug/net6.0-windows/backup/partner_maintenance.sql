PGDMP                     
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            L           1259    245399    partner_maintenance    TABLE     z  CREATE TABLE public.partner_maintenance (
    id bigint NOT NULL,
    partner_id bigint DEFAULT '0'::bigint NOT NULL,
    partner_code character varying DEFAULT ''::character varying,
    start_time bigint DEFAULT '0'::bigint NOT NULL,
    end_time bigint DEFAULT '0'::bigint NOT NULL,
    pid bigint DEFAULT '0'::bigint NOT NULL,
    did bigint DEFAULT '0'::bigint NOT NULL
);
 '   DROP TABLE public.partner_maintenance;
       public         heap    postgres    false            M           1259    245410    partner_maintenance_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partner_maintenance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.partner_maintenance_id_seq;
       public          postgres    false    332            �           0    0    partner_maintenance_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.partner_maintenance_id_seq OWNED BY public.partner_maintenance.id;
          public          postgres    false    333            R           2604    246409    partner_maintenance id    DEFAULT     �   ALTER TABLE ONLY public.partner_maintenance ALTER COLUMN id SET DEFAULT nextval('public.partner_maintenance_id_seq'::regclass);
 E   ALTER TABLE public.partner_maintenance ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    333    332            �          0    245399    partner_maintenance 
   TABLE DATA           k   COPY public.partner_maintenance (id, partner_id, partner_code, start_time, end_time, pid, did) FROM stdin;
    public          postgres    false    332   5       �           0    0    partner_maintenance_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.partner_maintenance_id_seq', 3, true);
          public          postgres    false    333            Z           2606    246920 *   partner_maintenance partner_maintenance_id 
   CONSTRAINT     h   ALTER TABLE ONLY public.partner_maintenance
    ADD CONSTRAINT partner_maintenance_id PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.partner_maintenance DROP CONSTRAINT partner_maintenance_id;
       public            postgres    false    332            \           2606    246922 3   partner_maintenance partner_maintenance_pid_did_key 
   CONSTRAINT     ~   ALTER TABLE ONLY public.partner_maintenance
    ADD CONSTRAINT partner_maintenance_pid_did_key UNIQUE (partner_id, pid, did);
 ]   ALTER TABLE ONLY public.partner_maintenance DROP CONSTRAINT partner_maintenance_pid_did_key;
       public            postgres    false    332    332    332            �   o   x���K
�0���0Ҵ5�wq� ����6�\d�x!Q�0�ĉm�l%�"y�����%��Vi�Y�i��iB[Y����jY,#/y��^�v�ƽ�G�W>�ծ1�<.�;�     