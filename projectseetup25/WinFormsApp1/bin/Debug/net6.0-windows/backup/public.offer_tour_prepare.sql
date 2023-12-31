PGDMP     '    ;            
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            I           1259    245346    offer_tour_prepare    VIEW       CREATE VIEW public.offer_tour_prepare AS
 SELECT d.client_id,
    d.customer_id,
    d.member_id,
    d.resource_id,
    d.offer_id,
    d.from_workingtime,
    d.to_workingtime,
    to_char(to_timestamp(((d.from_workingtime / 1000))::double precision), 'YYYY-MM-DD HH24:MI'::text) AS from_workingtime_date,
    to_char(to_timestamp(((d.to_workingtime / 1000))::double precision), 'YYYY-MM-DD HH24:MI'::text) AS to_workingtime_date,
    d.from_address,
    d.from_lat,
    d.from_lon,
    d.to_address,
    d.to_lat,
    d.to_lon,
    bv.handling_unit_ids,
    bv.vheight AS heightofvehicle,
    bv.vwidth AS widthofvehicle,
    bv.vlength AS lengthofvehicle,
    bv.max_weight AS max_velocityofvehicle,
    d.created_at,
    dr.name AS driver_name,
    dr.phone AS driver_phone,
    concat_ws('-'::text, bv.group_name, bv.name) AS vehicle_type_name
   FROM ((public.driveroffer d
     JOIN public.base_vehicles bv ON ((bv.resource_id = d.resource_id)))
     JOIN public.memberinfo dr ON ((dr.member_id = d.member_id)))
  WHERE (d.status = 0);
 %   DROP VIEW public.offer_tour_prepare;
       public          postgres    false           