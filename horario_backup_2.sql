PGDMP     $    5            	    {           horario    14.9    14.4 !               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    horario    DATABASE     c   CREATE DATABASE horario WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE horario;
                postgres    false            �            1259    16395    empleado_id_seq    SEQUENCE     x   CREATE SEQUENCE public.empleado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.empleado_id_seq;
       public          postgres    false            �            1259    16396    empleado    TABLE     	  CREATE TABLE public.empleado (
    id integer DEFAULT nextval('public.empleado_id_seq'::regclass) NOT NULL,
    nombre character varying(20),
    apellido character varying(20),
    ci integer,
    usuario character varying(20),
    contra character varying(70)
);
    DROP TABLE public.empleado;
       public         heap    postgres    false    209            �            1259    16423    historial_id_seq    SEQUENCE     y   CREATE SEQUENCE public.historial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.historial_id_seq;
       public          postgres    false            �            1259    16424 	   historial    TABLE       CREATE TABLE public.historial (
    id integer DEFAULT nextval('public.historial_id_seq'::regclass) NOT NULL,
    llegada_tardia character varying(50),
    salida_fuera_horario character varying(50),
    id_empleado integer,
    ausencia character varying(50)
);
    DROP TABLE public.historial;
       public         heap    postgres    false    217            �            1259    16402    horario_id_seq    SEQUENCE     w   CREATE SEQUENCE public.horario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.horario_id_seq;
       public          postgres    false            �            1259    16403    horario    TABLE     �   CREATE TABLE public.horario (
    id integer DEFAULT nextval('public.horario_id_seq'::regclass) NOT NULL,
    "mañana" character varying(20),
    tarde character varying(20),
    noche character varying(20),
    id_empleado integer
);
    DROP TABLE public.horario;
       public         heap    postgres    false    211            �            1259    16416    marca_id_seq    SEQUENCE     u   CREATE SEQUENCE public.marca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.marca_id_seq;
       public          postgres    false            �            1259    16417    marca    TABLE     �   CREATE TABLE public.marca (
    id integer DEFAULT nextval('public.marca_id_seq'::regclass) NOT NULL,
    id_empleado integer,
    tipo_marca character varying(100),
    hora_marca character varying(100)
);
    DROP TABLE public.marca;
       public         heap    postgres    false    215            �            1259    16409    puesto_trabajo_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.puesto_trabajo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.puesto_trabajo_id_seq;
       public          postgres    false            �            1259    16410    puesto_trabajo    TABLE     �   CREATE TABLE public.puesto_trabajo (
    id integer DEFAULT nextval('public.puesto_trabajo_id_seq'::regclass) NOT NULL,
    ocupacion character varying(20),
    id_empleado integer
);
 "   DROP TABLE public.puesto_trabajo;
       public         heap    postgres    false    213                      0    16396    empleado 
   TABLE DATA           M   COPY public.empleado (id, nombre, apellido, ci, usuario, contra) FROM stdin;
    public          postgres    false    210   �$                 0    16424 	   historial 
   TABLE DATA           d   COPY public.historial (id, llegada_tardia, salida_fuera_horario, id_empleado, ausencia) FROM stdin;
    public          postgres    false    218   �%                 0    16403    horario 
   TABLE DATA           K   COPY public.horario (id, "mañana", tarde, noche, id_empleado) FROM stdin;
    public          postgres    false    212   �%                 0    16417    marca 
   TABLE DATA           H   COPY public.marca (id, id_empleado, tipo_marca, hora_marca) FROM stdin;
    public          postgres    false    216   �%                 0    16410    puesto_trabajo 
   TABLE DATA           D   COPY public.puesto_trabajo (id, ocupacion, id_empleado) FROM stdin;
    public          postgres    false    214   �%                  0    0    empleado_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.empleado_id_seq', 4, true);
          public          postgres    false    209                       0    0    historial_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.historial_id_seq', 1, false);
          public          postgres    false    217                        0    0    horario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.horario_id_seq', 4, true);
          public          postgres    false    211            !           0    0    marca_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.marca_id_seq', 1, false);
          public          postgres    false    215            "           0    0    puesto_trabajo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.puesto_trabajo_id_seq', 4, true);
          public          postgres    false    213            v           2606    16401    empleado empleado_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            postgres    false    210            ~           2606    16429    historial historial_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.historial
    ADD CONSTRAINT historial_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.historial DROP CONSTRAINT historial_pkey;
       public            postgres    false    218            x           2606    16408    horario horario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_pkey;
       public            postgres    false    212            |           2606    16422    marca marca_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
       public            postgres    false    216            z           2606    16415 "   puesto_trabajo puesto_trabajo_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.puesto_trabajo
    ADD CONSTRAINT puesto_trabajo_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.puesto_trabajo DROP CONSTRAINT puesto_trabajo_pkey;
       public            postgres    false    214                       2606    16430    horario fk_id_empleado    FK CONSTRAINT     |   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 @   ALTER TABLE ONLY public.horario DROP CONSTRAINT fk_id_empleado;
       public          postgres    false    210    212    3190            �           2606    16435    puesto_trabajo fk_id_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.puesto_trabajo
    ADD CONSTRAINT fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 G   ALTER TABLE ONLY public.puesto_trabajo DROP CONSTRAINT fk_id_empleado;
       public          postgres    false    214    3190    210            �           2606    16440    marca fk_id_empleado    FK CONSTRAINT     z   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 >   ALTER TABLE ONLY public.marca DROP CONSTRAINT fk_id_empleado;
       public          postgres    false    3190    216    210            �           2606    16445    historial fk_id_empleado    FK CONSTRAINT     ~   ALTER TABLE ONLY public.historial
    ADD CONSTRAINT fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 B   ALTER TABLE ONLY public.historial DROP CONSTRAINT fk_id_empleado;
       public          postgres    false    210    3190    218               w   x�=��
�0����a���]��H|��%`�@h m/}�Z#�~�0�>�1��[Ms\aʪ$���;ƣLK����*ԈM�)���RE�K�u���'Ҳ�3N�!�u��Y�Ͼ�^'��\�'�            x������ � �            x������ � �            x������ � �         ;   x�3�LO-J�+I�4�2�tL����,.)JL�/�4�2�L�-�I�8��L�=... =�v     