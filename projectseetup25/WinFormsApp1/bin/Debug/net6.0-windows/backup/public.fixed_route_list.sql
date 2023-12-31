PGDMP         :            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            #           1259    244795    fixed_route_list    TABLE     �  CREATE TABLE public.fixed_route_list (
    client_id bigint DEFAULT '1'::bigint NOT NULL,
    fixed_route_name character varying DEFAULT ''::character varying NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    start_addr character varying DEFAULT ''::character varying NOT NULL,
    end_addr character varying DEFAULT ''::character varying NOT NULL,
    portal_id bigint DEFAULT '1'::bigint NOT NULL,
    request_provider_id bigint DEFAULT '1'::bigint NOT NULL,
    fixed_route_id integer NOT NULL,
    start_lat real DEFAULT '0'::real NOT NULL,
    end_lat real DEFAULT '0'::real NOT NULL,
    start_lon real DEFAULT '0'::real NOT NULL,
    end_lon real DEFAULT '0'::real NOT NULL,
    fixed_route_type character varying DEFAULT ''::character varying NOT NULL
);
 $   DROP TABLE public.fixed_route_list;
       public         heap    postgres    false            $           1259    244816 #   fixed_route_list_fixed_route_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fixed_route_list_fixed_route_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.fixed_route_list_fixed_route_id_seq;
       public          postgres    false    291            �           0    0 #   fixed_route_list_fixed_route_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.fixed_route_list_fixed_route_id_seq OWNED BY public.fixed_route_list.fixed_route_id;
          public          postgres    false    292            ]           2604    246398    fixed_route_list fixed_route_id    DEFAULT     �   ALTER TABLE ONLY public.fixed_route_list ALTER COLUMN fixed_route_id SET DEFAULT nextval('public.fixed_route_list_fixed_route_id_seq'::regclass);
 N   ALTER TABLE public.fixed_route_list ALTER COLUMN fixed_route_id DROP DEFAULT;
       public          postgres    false    292    291            d           2606    246684 /   fixed_route_list PK_f7c76f4e62419c52b8206cd7172 
   CONSTRAINT     {   ALTER TABLE ONLY public.fixed_route_list
    ADD CONSTRAINT "PK_f7c76f4e62419c52b8206cd7172" PRIMARY KEY (fixed_route_id);
 [   ALTER TABLE ONLY public.fixed_route_list DROP CONSTRAINT "PK_f7c76f4e62419c52b8206cd7172";
       public            postgres    false    291            f           2606    246892 /   fixed_route_list UQ_f7c76f4e62419c52b8206cd7172 
   CONSTRAINT     v   ALTER TABLE ONLY public.fixed_route_list
    ADD CONSTRAINT "UQ_f7c76f4e62419c52b8206cd7172" UNIQUE (fixed_route_id);
 [   ALTER TABLE ONLY public.fixed_route_list DROP CONSTRAINT "UQ_f7c76f4e62419c52b8206cd7172";
       public            postgres    false    291            g           2606    246942 /   fixed_route_list FK_c7e2e79dc55c6964530ee33bf90    FK CONSTRAINT     �   ALTER TABLE ONLY public.fixed_route_list
    ADD CONSTRAINT "FK_c7e2e79dc55c6964530ee33bf90" FOREIGN KEY (request_provider_id) REFERENCES public.requestproviderinfo(request_provider_id);
 [   ALTER TABLE ONLY public.fixed_route_list DROP CONSTRAINT "FK_c7e2e79dc55c6964530ee33bf90";
       public          postgres    false    291           