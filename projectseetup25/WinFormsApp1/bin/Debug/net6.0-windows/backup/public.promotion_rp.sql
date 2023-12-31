PGDMP     "    :            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            T           1259    245468    promotion_rp    TABLE       CREATE TABLE public.promotion_rp (
    id integer NOT NULL,
    promotion_id bigint NOT NULL,
    request_provider_id bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL
);
     DROP TABLE public.promotion_rp;
       public         heap    postgres    false            U           1259    245474    promotion_rp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.promotion_rp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.promotion_rp_id_seq;
       public          postgres    false    340            �           0    0    promotion_rp_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.promotion_rp_id_seq OWNED BY public.promotion_rp.id;
          public          postgres    false    341            R           2604    246412    promotion_rp id    DEFAULT     r   ALTER TABLE ONLY public.promotion_rp ALTER COLUMN id SET DEFAULT nextval('public.promotion_rp_id_seq'::regclass);
 >   ALTER TABLE public.promotion_rp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    341    340            W           2606    246494 +   promotion_rp PK_0780e255ec673ad56d62a1f8081 
   CONSTRAINT     k   ALTER TABLE ONLY public.promotion_rp
    ADD CONSTRAINT "PK_0780e255ec673ad56d62a1f8081" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.promotion_rp DROP CONSTRAINT "PK_0780e255ec673ad56d62a1f8081";
       public            postgres    false    340            Y           2606    246824 +   promotion_rp UQ_83a7a648bca09a45a818217281e 
   CONSTRAINT     �   ALTER TABLE ONLY public.promotion_rp
    ADD CONSTRAINT "UQ_83a7a648bca09a45a818217281e" UNIQUE (promotion_id, request_provider_id);
 W   ALTER TABLE ONLY public.promotion_rp DROP CONSTRAINT "UQ_83a7a648bca09a45a818217281e";
       public            postgres    false    340    340           