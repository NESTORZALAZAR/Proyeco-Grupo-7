PGDMP         :            
    {           horario    14.9    15.2 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16681    horario    DATABASE     �   CREATE DATABASE horario WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_United States.1252';
    DROP DATABASE horario;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5            �            1259    16682    empleado_id_seq    SEQUENCE     x   CREATE SEQUENCE public.empleado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.empleado_id_seq;
       public          postgres    false    5            �            1259    16683    empleado    TABLE     J  CREATE TABLE public.empleado (
    id integer DEFAULT nextval('public.empleado_id_seq'::regclass) NOT NULL,
    nombre character varying(20),
    apellido character varying(20),
    ci integer,
    usuario character varying(20),
    contra character varying(70),
    id_puesto_trabajo integer,
    puesto character varying(30)
);
    DROP TABLE public.empleado;
       public         heap    postgres    false    209    5            �            1259    16687    historial_id_seq    SEQUENCE     y   CREATE SEQUENCE public.historial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.historial_id_seq;
       public          postgres    false    5            �            1259    16688 	   historial    TABLE     �   CREATE TABLE public.historial (
    id_histori integer DEFAULT nextval('public.historial_id_seq'::regclass) NOT NULL,
    llegada_tardia character varying(50),
    salida_fuera_horario character varying(50),
    id_empleado integer
);
    DROP TABLE public.historial;
       public         heap    postgres    false    211    5            �            1259    16692    horario_id_seq    SEQUENCE     w   CREATE SEQUENCE public.horario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.horario_id_seq;
       public          postgres    false    5            �            1259    16693    horario    TABLE     �   CREATE TABLE public.horario (
    id integer DEFAULT nextval('public.horario_id_seq'::regclass) NOT NULL,
    "mañana" character varying(20),
    tarde character varying(20),
    noche character varying(20),
    id_empleado integer
);
    DROP TABLE public.horario;
       public         heap    postgres    false    213    5            �            1259    16697    marca_id_seq    SEQUENCE     u   CREATE SEQUENCE public.marca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.marca_id_seq;
       public          postgres    false    5            �            1259    16698    marca    TABLE     �   CREATE TABLE public.marca (
    id integer DEFAULT nextval('public.marca_id_seq'::regclass) NOT NULL,
    id_empleado integer,
    tipo_marca character varying(100),
    hora_marca character varying(100)
);
    DROP TABLE public.marca;
       public         heap    postgres    false    215    5            �            1259    16702    puesto_trabajo_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.puesto_trabajo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.puesto_trabajo_id_seq;
       public          postgres    false    5            �            1259    16703    puesto_trabajo    TABLE     �   CREATE TABLE public.puesto_trabajo (
    id integer DEFAULT nextval('public.puesto_trabajo_id_seq'::regclass) NOT NULL,
    ocupacion character varying(20),
    id_empleado integer
);
 "   DROP TABLE public.puesto_trabajo;
       public         heap    postgres    false    217    5                      0    16683    empleado 
   TABLE DATA           h   COPY public.empleado (id, nombre, apellido, ci, usuario, contra, id_puesto_trabajo, puesto) FROM stdin;
    public          postgres    false    210   ['                 0    16688 	   historial 
   TABLE DATA           b   COPY public.historial (id_histori, llegada_tardia, salida_fuera_horario, id_empleado) FROM stdin;
    public          postgres    false    212   �)                 0    16693    horario 
   TABLE DATA           K   COPY public.horario (id, "mañana", tarde, noche, id_empleado) FROM stdin;
    public          postgres    false    214   
*                 0    16698    marca 
   TABLE DATA           H   COPY public.marca (id, id_empleado, tipo_marca, hora_marca) FROM stdin;
    public          postgres    false    216   '*                 0    16703    puesto_trabajo 
   TABLE DATA           D   COPY public.puesto_trabajo (id, ocupacion, id_empleado) FROM stdin;
    public          postgres    false    218   +                  0    0    empleado_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.empleado_id_seq', 15, true);
          public          postgres    false    209                        0    0    historial_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.historial_id_seq', 1, false);
          public          postgres    false    211            !           0    0    horario_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.horario_id_seq', 1, false);
          public          postgres    false    213            "           0    0    marca_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.marca_id_seq', 20, true);
          public          postgres    false    215            #           0    0    puesto_trabajo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.puesto_trabajo_id_seq', 3, true);
          public          postgres    false    217            v           2606    16708    empleado empleado_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            postgres    false    210            x           2606    16710    historial historial_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.historial
    ADD CONSTRAINT historial_pkey PRIMARY KEY (id_histori);
 B   ALTER TABLE ONLY public.historial DROP CONSTRAINT historial_pkey;
       public            postgres    false    212            z           2606    16712    horario horario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.horario DROP CONSTRAINT horario_pkey;
       public            postgres    false    214            |           2606    16714    marca marca_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.marca DROP CONSTRAINT marca_pkey;
       public            postgres    false    216            ~           2606    16716 "   puesto_trabajo puesto_trabajo_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.puesto_trabajo
    ADD CONSTRAINT puesto_trabajo_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.puesto_trabajo DROP CONSTRAINT puesto_trabajo_pkey;
       public            postgres    false    218            �           2606    16717    horario fk_id_empleado    FK CONSTRAINT     |   ALTER TABLE ONLY public.horario
    ADD CONSTRAINT fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 @   ALTER TABLE ONLY public.horario DROP CONSTRAINT fk_id_empleado;
       public          postgres    false    210    214    3190            �           2606    16722    marca fk_id_empleado    FK CONSTRAINT     z   ALTER TABLE ONLY public.marca
    ADD CONSTRAINT fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 >   ALTER TABLE ONLY public.marca DROP CONSTRAINT fk_id_empleado;
       public          postgres    false    216    3190    210            �           2606    16727    historial fk_id_empleado    FK CONSTRAINT     ~   ALTER TABLE ONLY public.historial
    ADD CONSTRAINT fk_id_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id);
 B   ALTER TABLE ONLY public.historial DROP CONSTRAINT fk_id_empleado;
       public          postgres    false    3190    212    210                       2606    16732    empleado fk_id_puesto_trabajo    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_id_puesto_trabajo FOREIGN KEY (id_puesto_trabajo) REFERENCES public.puesto_trabajo(id);
 G   ALTER TABLE ONLY public.empleado DROP CONSTRAINT fk_id_puesto_trabajo;
       public          postgres    false    218    3198    210               �  x�m�Ɏ�@���s�(��%(�*8 ��RJq�A��/z�N:�Im�_�/g�@�״� �(Jҿ��> �l��qL��#����|�C{�:WU�� kg�f����F׆�� _��̢n1Po-I�yI@2^���ފ*]Du5M�u��\��2y�tZ6]��H��-��U|En�����(�
�Q��H2�C(�+��X9'#���D��M�f�l��n��!k�2��>c���q���;O � ���(��W8� ʢ|Ko�����e�e��Zؒ����!�]#RY���r�{��Qd���H�vzV�E��1�| B� 
���7���s��?�ĭ�m�Vd�n��ԚiCu�ƭXO3�ৗ#+UO�e$'uCG�@����c#h�A��?M,�y{����l,fþ�۴����U�M�Nnԥ����d^n>1�y�'�Y�#���AP3Of������獜W���2��s"\V�ǒ��ׅtDt�K.�@����)�q݌k}��^�}�'�i������Gvv����d�p�;[���B�L��(�+F%��¿����B:��iJƙ���ںE�o�.���$��콻���o'F�c�w�I��ž����ך2G~����d���            x������ � �            x������ � �         �   x�]�;n�0��<������ۦ1�f�E� �G�*k�~�g0�����:�2+Wv�߿?�%(�2eM�q`��*��c��v�J�t��$t��;g:�Mf+OMʷjD'�K��OVY�
���yar� �N�`�P��wr)_<m�����ߔ>�QG�>�l�(,���WT�$�Cx�ݽ)oԋK!X�	s'�x?`w_�
ΈA*;E7�P�O&�?9�xa         0   x�3�LO-J�+I�4�2�LL����4�2�L�-�IML��4����� �t
c     