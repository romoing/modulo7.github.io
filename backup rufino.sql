PGDMP                      |            abarrotesdonrufino    16.3    16.3 $    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16770    abarrotesdonrufino    DATABASE     �   CREATE DATABASE abarrotesdonrufino WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 "   DROP DATABASE abarrotesdonrufino;
                postgres    false            �            1259    17001    cliente    TABLE     >  CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(100),
    apellidos character varying(100),
    email character varying(150),
    telefono character varying(15),
    calle character varying(150),
    codigo_postal character varying(10),
    barrio character varying(100)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    17000    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          postgres    false    218                       0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          postgres    false    217            �            1259    17025    detalleventa    TABLE     �   CREATE TABLE public.detalleventa (
    id_detalleventa integer NOT NULL,
    id_venta integer,
    id_producto integer,
    cantidad integer
);
     DROP TABLE public.detalleventa;
       public         heap    postgres    false            �            1259    17024     detalleventa_id_detalleventa_seq    SEQUENCE     �   CREATE SEQUENCE public.detalleventa_id_detalleventa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.detalleventa_id_detalleventa_seq;
       public          postgres    false    222                       0    0     detalleventa_id_detalleventa_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.detalleventa_id_detalleventa_seq OWNED BY public.detalleventa.id_detalleventa;
          public          postgres    false    221            �            1259    16992    producto    TABLE     �   CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    nombre character varying(100),
    descripcion text,
    precio numeric(10,2),
    sku character varying(50)
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    16991    producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.producto_id_producto_seq;
       public          postgres    false    216                       0    0    producto_id_producto_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.producto.id_producto;
          public          postgres    false    215            �            1259    17012    venta    TABLE     �   CREATE TABLE public.venta (
    id_venta integer NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_cliente integer
);
    DROP TABLE public.venta;
       public         heap    postgres    false            �            1259    17011    venta_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venta_id_venta_seq;
       public          postgres    false    220                       0    0    venta_id_venta_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venta_id_venta_seq OWNED BY public.venta.id_venta;
          public          postgres    false    219            `           2604    17004    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    217    218    218            c           2604    17028    detalleventa id_detalleventa    DEFAULT     �   ALTER TABLE ONLY public.detalleventa ALTER COLUMN id_detalleventa SET DEFAULT nextval('public.detalleventa_id_detalleventa_seq'::regclass);
 K   ALTER TABLE public.detalleventa ALTER COLUMN id_detalleventa DROP DEFAULT;
       public          postgres    false    221    222    222            _           2604    16995    producto id_producto    DEFAULT     |   ALTER TABLE ONLY public.producto ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);
 C   ALTER TABLE public.producto ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    216    215    216            a           2604    17015    venta id_venta    DEFAULT     p   ALTER TABLE ONLY public.venta ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_id_venta_seq'::regclass);
 =   ALTER TABLE public.venta ALTER COLUMN id_venta DROP DEFAULT;
       public          postgres    false    219    220    220                      0    17001    cliente 
   TABLE DATA           o   COPY public.cliente (id_cliente, nombre, apellidos, email, telefono, calle, codigo_postal, barrio) FROM stdin;
    public          postgres    false    218   �)                 0    17025    detalleventa 
   TABLE DATA           X   COPY public.detalleventa (id_detalleventa, id_venta, id_producto, cantidad) FROM stdin;
    public          postgres    false    222   x*                 0    16992    producto 
   TABLE DATA           Q   COPY public.producto (id_producto, nombre, descripcion, precio, sku) FROM stdin;
    public          postgres    false    216   �*                 0    17012    venta 
   TABLE DATA           <   COPY public.venta (id_venta, fecha, id_cliente) FROM stdin;
    public          postgres    false    220    +                  0    0    cliente_id_cliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 3, true);
          public          postgres    false    217                       0    0     detalleventa_id_detalleventa_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.detalleventa_id_detalleventa_seq', 3, true);
          public          postgres    false    221                       0    0    producto_id_producto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.producto_id_producto_seq', 6, true);
          public          postgres    false    215                       0    0    venta_id_venta_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.venta_id_venta_seq', 2, true);
          public          postgres    false    219            g           2606    17010    cliente cliente_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_email_key;
       public            postgres    false    218            i           2606    17008    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    218            m           2606    17030    detalleventa detalleventa_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.detalleventa
    ADD CONSTRAINT detalleventa_pkey PRIMARY KEY (id_detalleventa);
 H   ALTER TABLE ONLY public.detalleventa DROP CONSTRAINT detalleventa_pkey;
       public            postgres    false    222            e           2606    16999    producto producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    216            k           2606    17018    venta venta_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id_venta);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public            postgres    false    220            o           2606    17036 *   detalleventa detalleventa_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventa
    ADD CONSTRAINT detalleventa_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 T   ALTER TABLE ONLY public.detalleventa DROP CONSTRAINT detalleventa_id_producto_fkey;
       public          postgres    false    222    216    4709            p           2606    17031 '   detalleventa detalleventa_id_venta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleventa
    ADD CONSTRAINT detalleventa_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.venta(id_venta);
 Q   ALTER TABLE ONLY public.detalleventa DROP CONSTRAINT detalleventa_id_venta_fkey;
       public          postgres    false    220    4715    222            n           2606    17019    venta venta_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 E   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_id_cliente_fkey;
       public          postgres    false    4713    218    220               �   x�e�=
1@�zr�\�@���EP�A��t�H~�q]�Y{�����{|�s�e���I��d��֒�h�%"�p�.�9��C���cI����Y�XY�>(�~zK��j���oh]�aE1�^S��� ?DH%,�Ou2J�/�1#            x�3�4B#.#�i�e$�9��b���� 4n         i   x�3�t,*ʯ��
)�
�E�y�
9�E�����z���A�F�\F��U�w%'�h���ļ�DN#=��(S3.cN���̒T(2/7���*Nc�"gsK�=... α#W         2   x�3�4202�50�52U04�26�20�4�2B��)XZ��č�b���� ��	     