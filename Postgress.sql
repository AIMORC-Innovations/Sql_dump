toc.dat                                                                                             0000600 0004000 0002000 00000066323 14140210527 0014445 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           4            
    y            Product_Development    13.0    13.0 [    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         7           1262    17034    Product_Development    DATABASE     q   CREATE DATABASE "Product_Development" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
 %   DROP DATABASE "Product_Development";
                postgres    false         ?            1259    25497    category    TABLE     ?   CREATE TABLE public.category (
    category_id integer NOT NULL,
    category_name character varying(255),
    category_description character varying(1000)
);
    DROP TABLE public.category;
       public         heap    postgres    false         ?            1259    25495    category_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_category_id_seq;
       public          postgres    false    213         8           0    0    category_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;
          public          postgres    false    212         ?            1259    67319    configuration    TABLE     ?   CREATE TABLE public.configuration (
    configuration_id integer NOT NULL,
    configuration_name character varying(60),
    configuration_value integer
);
 !   DROP TABLE public.configuration;
       public         heap    postgres    false         ?            1259    67317 "   configuration_configuration_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.configuration_configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.configuration_configuration_id_seq;
       public          postgres    false    218         9           0    0 "   configuration_configuration_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.configuration_configuration_id_seq OWNED BY public.configuration.configuration_id;
          public          postgres    false    217         ?            1259    75785    date    TABLE     o  CREATE TABLE public.date (
    date_id integer NOT NULL,
    userid integer,
    date character varying(50),
    country character varying(150),
    state character varying(150),
    city character varying(150),
    del_address1 character varying(200),
    zip character varying(6),
    del_address2 character varying(255),
    del_address3 character varying(255)
);
    DROP TABLE public.date;
       public         heap    postgres    false         ?            1259    75783    date_date_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.date_date_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.date_date_id_seq;
       public          postgres    false    220         :           0    0    date_date_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.date_date_id_seq OWNED BY public.date.date_id;
          public          postgres    false    219         ?            1259    75839    deliveryaddress    TABLE       CREATE TABLE public.deliveryaddress (
    del_id integer NOT NULL,
    userid integer NOT NULL,
    "del_profileAddr" character varying(250),
    del_address1 character varying(250),
    del_address2 character varying(250),
    del_address3 character varying(255)
);
 #   DROP TABLE public.deliveryaddress;
       public         heap    postgres    false         ?            1259    75837    deliveryaddress_del_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.deliveryaddress_del_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.deliveryaddress_del_id_seq;
       public          postgres    false    222         ;           0    0    deliveryaddress_del_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.deliveryaddress_del_id_seq OWNED BY public.deliveryaddress.del_id;
          public          postgres    false    221         ?            1259    34310    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false         ?            1259    17269    image    TABLE     /   CREATE TABLE public.image (
    photo bytea
);
    DROP TABLE public.image;
       public         heap    postgres    false         ?            1259    17204    image_table    TABLE     ?   CREATE TABLE public.image_table (
    id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    path character varying(255) NOT NULL
);
    DROP TABLE public.image_table;
       public         heap    postgres    false         ?            1259    17048    login    TABLE     ?   CREATE TABLE public.login (
    userid integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    lastlogin character varying(50)
);
    DROP TABLE public.login;
       public         heap    postgres    false         ?            1259    17046    login_userid_seq    SEQUENCE     ?   CREATE SEQUENCE public.login_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.login_userid_seq;
       public          postgres    false    201         <           0    0    login_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.login_userid_seq OWNED BY public.login.userid;
          public          postgres    false    200         ?            1259    17310    orders    TABLE     ?   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    product_id integer,
    userid integer,
    quantity integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false         ?            1259    17308    orders_order_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_order_id_seq;
       public          postgres    false    211         =           0    0    orders_order_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;
          public          postgres    false    210         ?            1259    17297    product    TABLE     #  CREATE TABLE public.product (
    product_id integer NOT NULL,
    product_name character varying(150),
    product_description character varying(1000),
    product_price double precision,
    max_quantity integer,
    category_id integer,
    istrendy boolean,
    isnextrelease boolean
);
    DROP TABLE public.product;
       public         heap    postgres    false         ?            1259    17295    product_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    209         >           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    208         ?            1259    17058    registration    TABLE     ?  CREATE TABLE public.registration (
    regid integer NOT NULL,
    userid integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    dob character varying NOT NULL,
    gender character varying(255) NOT NULL,
    phonenum character varying NOT NULL,
    address character varying(50) NOT NULL,
    created_on character varying(50),
    security_id integer,
    security_answer character varying(1000)
);
     DROP TABLE public.registration;
       public         heap    postgres    false         ?            1259    17056    registration_regid_seq    SEQUENCE     ?   CREATE SEQUENCE public.registration_regid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.registration_regid_seq;
       public          postgres    false    203         ?           0    0    registration_regid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.registration_regid_seq OWNED BY public.registration.regid;
          public          postgres    false    202         ?            1259    17118    security_question    TABLE     {   CREATE TABLE public.security_question (
    security_id integer NOT NULL,
    security_question character varying(1000)
);
 %   DROP TABLE public.security_question;
       public         heap    postgres    false         ?            1259    17116 !   security_question_security_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.security_question_security_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.security_question_security_id_seq;
       public          postgres    false    205         @           0    0 !   security_question_security_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.security_question_security_id_seq OWNED BY public.security_question.security_id;
          public          postgres    false    204         ?            1259    42705    spring_session    TABLE     6  CREATE TABLE public.spring_session (
    primary_id character(36) NOT NULL,
    session_id character(36) NOT NULL,
    creation_time bigint NOT NULL,
    last_access_time bigint NOT NULL,
    max_inactive_interval integer NOT NULL,
    expiry_time bigint NOT NULL,
    principal_name character varying(100)
);
 "   DROP TABLE public.spring_session;
       public         heap    postgres    false         ?            1259    42713    spring_session_attributes    TABLE     ?   CREATE TABLE public.spring_session_attributes (
    session_primary_id character(36) NOT NULL,
    attribute_name character varying(200) NOT NULL,
    attribute_bytes bytea NOT NULL
);
 -   DROP TABLE public.spring_session_attributes;
       public         heap    postgres    false         r           2604    25500    category category_id    DEFAULT     |   ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);
 C   ALTER TABLE public.category ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    213    212    213         s           2604    67322    configuration configuration_id    DEFAULT     ?   ALTER TABLE ONLY public.configuration ALTER COLUMN configuration_id SET DEFAULT nextval('public.configuration_configuration_id_seq'::regclass);
 M   ALTER TABLE public.configuration ALTER COLUMN configuration_id DROP DEFAULT;
       public          postgres    false    217    218    218         t           2604    75788    date date_id    DEFAULT     l   ALTER TABLE ONLY public.date ALTER COLUMN date_id SET DEFAULT nextval('public.date_date_id_seq'::regclass);
 ;   ALTER TABLE public.date ALTER COLUMN date_id DROP DEFAULT;
       public          postgres    false    219    220    220         u           2604    75842    deliveryaddress del_id    DEFAULT     ?   ALTER TABLE ONLY public.deliveryaddress ALTER COLUMN del_id SET DEFAULT nextval('public.deliveryaddress_del_id_seq'::regclass);
 E   ALTER TABLE public.deliveryaddress ALTER COLUMN del_id DROP DEFAULT;
       public          postgres    false    222    221    222         m           2604    17051    login userid    DEFAULT     l   ALTER TABLE ONLY public.login ALTER COLUMN userid SET DEFAULT nextval('public.login_userid_seq'::regclass);
 ;   ALTER TABLE public.login ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    200    201    201         q           2604    17313    orders order_id    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);
 >   ALTER TABLE public.orders ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    211    210    211         p           2604    17300    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    208    209    209         n           2604    17061    registration regid    DEFAULT     x   ALTER TABLE ONLY public.registration ALTER COLUMN regid SET DEFAULT nextval('public.registration_regid_seq'::regclass);
 A   ALTER TABLE public.registration ALTER COLUMN regid DROP DEFAULT;
       public          postgres    false    203    202    203         o           2604    17121    security_question security_id    DEFAULT     ?   ALTER TABLE ONLY public.security_question ALTER COLUMN security_id SET DEFAULT nextval('public.security_question_security_id_seq'::regclass);
 L   ALTER TABLE public.security_question ALTER COLUMN security_id DROP DEFAULT;
       public          postgres    false    204    205    205         (          0    25497    category 
   TABLE DATA           T   COPY public.category (category_id, category_name, category_description) FROM stdin;
    public          postgres    false    213       3112.dat -          0    67319    configuration 
   TABLE DATA           b   COPY public.configuration (configuration_id, configuration_name, configuration_value) FROM stdin;
    public          postgres    false    218       3117.dat /          0    75785    date 
   TABLE DATA           z   COPY public.date (date_id, userid, date, country, state, city, del_address1, zip, del_address2, del_address3) FROM stdin;
    public          postgres    false    220       3119.dat 1          0    75839    deliveryaddress 
   TABLE DATA           v   COPY public.deliveryaddress (del_id, userid, "del_profileAddr", del_address1, del_address2, del_address3) FROM stdin;
    public          postgres    false    222       3121.dat "          0    17269    image 
   TABLE DATA           &   COPY public.image (photo) FROM stdin;
    public          postgres    false    207       3106.dat !          0    17204    image_table 
   TABLE DATA           N   COPY public.image_table (id, firstname, lastname, filename, path) FROM stdin;
    public          postgres    false    206       3105.dat           0    17048    login 
   TABLE DATA           F   COPY public.login (userid, username, password, lastlogin) FROM stdin;
    public          postgres    false    201       3100.dat &          0    17310    orders 
   TABLE DATA           H   COPY public.orders (order_id, product_id, userid, quantity) FROM stdin;
    public          postgres    false    211       3110.dat $          0    17297    product 
   TABLE DATA           ?   COPY public.product (product_id, product_name, product_description, product_price, max_quantity, category_id, istrendy, isnextrelease) FROM stdin;
    public          postgres    false    209       3108.dat           0    17058    registration 
   TABLE DATA           ?   COPY public.registration (regid, userid, firstname, lastname, dob, gender, phonenum, address, created_on, security_id, security_answer) FROM stdin;
    public          postgres    false    203       3102.dat            0    17118    security_question 
   TABLE DATA           K   COPY public.security_question (security_id, security_question) FROM stdin;
    public          postgres    false    205       3104.dat *          0    42705    spring_session 
   TABLE DATA           ?   COPY public.spring_session (primary_id, session_id, creation_time, last_access_time, max_inactive_interval, expiry_time, principal_name) FROM stdin;
    public          postgres    false    215       3114.dat +          0    42713    spring_session_attributes 
   TABLE DATA           h   COPY public.spring_session_attributes (session_primary_id, attribute_name, attribute_bytes) FROM stdin;
    public          postgres    false    216       3115.dat A           0    0    category_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.category_category_id_seq', 3, true);
          public          postgres    false    212         B           0    0 "   configuration_configuration_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.configuration_configuration_id_seq', 1, false);
          public          postgres    false    217         C           0    0    date_date_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.date_date_id_seq', 1, true);
          public          postgres    false    219         D           0    0    deliveryaddress_del_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.deliveryaddress_del_id_seq', 1, true);
          public          postgres    false    221         E           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 127, true);
          public          postgres    false    214         F           0    0    login_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.login_userid_seq', 65, true);
          public          postgres    false    200         G           0    0    orders_order_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.orders_order_id_seq', 565, true);
          public          postgres    false    210         H           0    0    product_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_product_id_seq', 8, true);
          public          postgres    false    208         I           0    0    registration_regid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.registration_regid_seq', 50, true);
          public          postgres    false    202         J           0    0 !   security_question_security_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.security_question_security_id_seq', 10, true);
          public          postgres    false    204         ?           2606    25505    category category_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_id PRIMARY KEY (category_id);
 >   ALTER TABLE ONLY public.category DROP CONSTRAINT category_id;
       public            postgres    false    213         ?           2606    67324     configuration configuration_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.configuration
    ADD CONSTRAINT configuration_pkey PRIMARY KEY (configuration_id);
 J   ALTER TABLE ONLY public.configuration DROP CONSTRAINT configuration_pkey;
       public            postgres    false    218         ?           2606    75793    date date_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.date
    ADD CONSTRAINT date_pkey PRIMARY KEY (date_id);
 8   ALTER TABLE ONLY public.date DROP CONSTRAINT date_pkey;
       public            postgres    false    220         ?           2606    75847 $   deliveryaddress deliveryaddress_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.deliveryaddress
    ADD CONSTRAINT deliveryaddress_pkey PRIMARY KEY (del_id);
 N   ALTER TABLE ONLY public.deliveryaddress DROP CONSTRAINT deliveryaddress_pkey;
       public            postgres    false    222         w           2606    17053    login login_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    201         y           2606    17055    login login_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.login DROP CONSTRAINT login_username_key;
       public            postgres    false    201         ?           2606    17315    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    211                    2606    17305    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    209         {           2606    17066    registration registration_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.registration
    ADD CONSTRAINT registration_pkey PRIMARY KEY (regid);
 H   ALTER TABLE ONLY public.registration DROP CONSTRAINT registration_pkey;
       public            postgres    false    203         }           2606    17126 (   security_question security_question_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.security_question
    ADD CONSTRAINT security_question_pkey PRIMARY KEY (security_id);
 R   ALTER TABLE ONLY public.security_question DROP CONSTRAINT security_question_pkey;
       public            postgres    false    205         ?           2606    42720 6   spring_session_attributes spring_session_attributes_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_pk PRIMARY KEY (session_primary_id, attribute_name);
 `   ALTER TABLE ONLY public.spring_session_attributes DROP CONSTRAINT spring_session_attributes_pk;
       public            postgres    false    216    216         ?           2606    42709     spring_session spring_session_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.spring_session
    ADD CONSTRAINT spring_session_pk PRIMARY KEY (primary_id);
 J   ALTER TABLE ONLY public.spring_session DROP CONSTRAINT spring_session_pk;
       public            postgres    false    215         ?           1259    42710    spring_session_ix1    INDEX     Z   CREATE UNIQUE INDEX spring_session_ix1 ON public.spring_session USING btree (session_id);
 &   DROP INDEX public.spring_session_ix1;
       public            postgres    false    215         ?           1259    42711    spring_session_ix2    INDEX     T   CREATE INDEX spring_session_ix2 ON public.spring_session USING btree (expiry_time);
 &   DROP INDEX public.spring_session_ix2;
       public            postgres    false    215         ?           1259    42712    spring_session_ix3    INDEX     W   CREATE INDEX spring_session_ix3 ON public.spring_session USING btree (principal_name);
 &   DROP INDEX public.spring_session_ix3;
       public            postgres    false    215         ?           2606    25511    product fk_category_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES public.category(category_id);
 @   ALTER TABLE ONLY public.product DROP CONSTRAINT fk_category_id;
       public          postgres    false    209    213    2947         ?           2606    75794    date fk_login    FK CONSTRAINT     o   ALTER TABLE ONLY public.date
    ADD CONSTRAINT fk_login FOREIGN KEY (userid) REFERENCES public.login(userid);
 7   ALTER TABLE ONLY public.date DROP CONSTRAINT fk_login;
       public          postgres    false    220    201    2935         ?           2606    75848    deliveryaddress fk_login    FK CONSTRAINT     z   ALTER TABLE ONLY public.deliveryaddress
    ADD CONSTRAINT fk_login FOREIGN KEY (userid) REFERENCES public.login(userid);
 B   ALTER TABLE ONLY public.deliveryaddress DROP CONSTRAINT fk_login;
       public          postgres    false    201    222    2935         ?           2606    17067    registration fk_userid    FK CONSTRAINT     x   ALTER TABLE ONLY public.registration
    ADD CONSTRAINT fk_userid FOREIGN KEY (userid) REFERENCES public.login(userid);
 @   ALTER TABLE ONLY public.registration DROP CONSTRAINT fk_userid;
       public          postgres    false    2935    201    203         ?           2606    17316    orders orders_product_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_product_id_fkey;
       public          postgres    false    209    211    2943         ?           2606    17321    orders orders_userid_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_userid_fkey FOREIGN KEY (userid) REFERENCES public.login(userid);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_userid_fkey;
       public          postgres    false    211    2935    201         ?           2606    17137 *   registration registration_security_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.registration
    ADD CONSTRAINT registration_security_id_fkey FOREIGN KEY (security_id) REFERENCES public.security_question(security_id);
 T   ALTER TABLE ONLY public.registration DROP CONSTRAINT registration_security_id_fkey;
       public          postgres    false    2941    203    205         ?           2606    42721 6   spring_session_attributes spring_session_attributes_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_fk FOREIGN KEY (session_primary_id) REFERENCES public.spring_session(primary_id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.spring_session_attributes DROP CONSTRAINT spring_session_attributes_fk;
       public          postgres    false    215    2952    216                                                                                                                                                                                                                                                                                                                     3112.dat                                                                                            0000600 0004000 0002000 00000001751 14140210527 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Indian Wear	Ethnic wear is a kind of attire that is worn by both men and women during special occasions, such as festivals, wedding ceremonies
2	Western Wear	 A party dress is a dress worn especially for a party. Different types of party such as children party, cocktail party, garden party and costume party would tend to require different styles of dress
3	Casual Wear	Casual wear  dress code that is relaxed, occasional, spontaneous and suited for everyday use. Casual wear became popular in the Western world ,This usually consists of informal garments like jeans, a T-shirt, and even skirts. A simple T-shirt, for example, can dress down a look, taking the edge off a fancier outfit. When emphasising casual wears comfort, it may be referred to as leisurewear.A casual dress code means that employees are permitted to dress in comfortable, informal clothing. Although the employees comfort is a priority, certain standards are required clothing must be appropriate and still professional.
\.


                       3117.dat                                                                                            0000600 0004000 0002000 00000000022 14140210527 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	pagesize	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3119.dat                                                                                            0000600 0004000 0002000 00000000242 14140210527 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        87	50	10/30/2021 9:03 AM	India	karnataka	mysore	Ramakrishana Nagar Mysuru	234341	\N	\N
127	65	11/02/2021 3:50 PM	\N	\N	\N	Ramakrishana Nagar Mysuru	\N	\N	\N
\.


                                                                                                                                                                                                                                                                                                                                                              3121.dat                                                                                            0000600 0004000 0002000 00000000111 14140210527 0014225 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	48	\N	Tumkur	RamaKrishna Nagar	\N
115	111	\N	Bannergata	tumkur	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                       3106.dat                                                                                            0000600 0004000 0002000 00000040661 14140210527 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \\xffd8ffe000104a46494600010100000100010000ffdb0043000b090907090907090909090b0909090909090b090b0b0c0b0b0b0c0d100c110e0d0e0c121912251a1d251d191f1c292916253735361a2a323e2d2930193b2113ffdb0043010708080b090b150b0b152c1d191d2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2cffc0001108013000b603012200021101031101ffc4001b00000105010100000000000000000000000001020304050607ffc40044100002010302020606070605030501000001020300041112210531132241516171328191a1b1c106142342526272337392a2b2d124344382f05363e115446474f1a3ffc4001b01010002030101000000000000000000000001020304050607ffc400341100020102040306050304030000000000000102031104122131054151226171b1c1f0133281a1d10623911415e1f1334362ffda000c03010002110311003f009f3451495602d145140145145005145417772b676b7776c0116f134801e4cdc954f99c543765764a4dbb21b777f65623fc44a03e90c235de42a7912bd80d6737d2185090d6c73b61126d6dbefd63d181f1ad0fa3bf43a4e216f0f16e25732a5d5f8170da02990239d432586012396db67d9b37ff0043384c29d25bab2b08c821dcbab11d60c73db9e67c7d9a93c45b6372187be8cc0b6e2d05c0cbc6d082480cce1d76e61b00115a3ebacf9b8774114af0a1628332af36223d838f1039d45c32ecb62d9f900dd031e785e71907bb98f223b2b253ad9b731d5a397546ae68c9a296b60d60f5d2e6928a0173466928a0173466928a0173499a28a0141de8a073a280651477d1401451450051451402d739f4a2e88b692cd49eb42b23018c96663a41f8faeba2ac2e37c2a7bdb9b37801633e2da503eeb1c2a3f9636f578d62abf2dccb47e6b1e87c0f89d9cb0d9d920612c36d6c8e0bdbb6963129d0eb148ceaddb8205437fc66ed279ada5b3bb6511a3a0b0b13719477e8fad24d22927b4854dbbcf627008b8559f0c86e2da2de64864b930299249255c465b483cf39cfaeb6e09e4108926b69a303240709af49df242b11efae6a6b6e474dc5a77b6a71c23963924e903ab872ae01eb06034b60fbfd75ccdec4d657a5d74e15d2e10a6caca0e4e1472db3ff00e5755c6f880b63713bc6e2139d5227a6854160c17b7fe73e55c9dd28bae90c5716f3b22a4e05bcd19621d049a4c79e6411cbcb19e54a7277b996ac15acce80104061ba90083de0ee296a8f09b84b8b2874b64c23a16efea8eae7d58abd5d98bbab9c392b3b0514515240514514014514500514514028e745039d14032968a28028a28a00a28a28029b3b4b6f697178ac17a2eac6491a9a423d1551b9f1f3a76d91938c903966b1f8b5fda2a490c0b25c4e832e900caab1d80966f440f01befd8778f5abd4b7623bb36b0f4d49e696c87fd17e2ad1cd77c164b992092e22fad594e850f4733b6868fed015eb1c15db993da45774b64d234571711f5212b20334da8174e4da4313e3d663e4315e2f27d6ed2eaf05c05325ec222b942b80a8b2473284c72d25171ecaed3849e39c6acee2d8717ba3f549c46eae519a5b77459232cd8d59009077ecad3a91caaf17b9bf4a7293cac9be90dec5c4248f8742e0acf711c73cb9ea449248aaef91dc33bd67fd27e130f00e21c3225ba1712496fd33e2358dd228e4e8a31a50e36180be0839e327a14e0515b260292427599b72493be4d721f483871b4e209300c639a15126e4b0541b32f6e07238e5b1e5cab4a4b2b8226b41dd54e84fc175db710e2368d9d1221b885b3b3a6bd99478822ba1ae7f83c8257b6d5a59e0122c6f8dcc6e30c011b62ba0ae85095e3a9cdc4472c828a28ace6b8514514014514500514514028e745039d140368a28a00a28a28028a2ad59d9b5d3ef91129c31fc47f08f9d527354e39a45e10954965895c40668a66d0ee134011ae409599b485623b0736df90c76d577b0eb58db227d9a4cd3dc6c35c92286d39c0f007ff00caece38ede08b40000db18036f1ac2e2cb2c32c135bb0e9d668a55014b66353921940c7586473f577716ad4739663b34a9aa71ca7017f6fae39a5605ee6e6e220a00cb6805c73f562b6fe87c8d6b7d7f938d3022c8aeda11db582135b0d2180c9dd87776e4493d9270f8a691dd44dd779242432db212708bd9a864027bf61e2ee1f0c56f1c168d1dcbdcf135b8bc860b66691a751f62b6c843285665d45c92799f02db14bb7a7221c7b5a1dccb35a3dbbb62e351c80bd112cc570709838dfb37f8ef897525bdc5c40ff5390f448d1dbc77291ac93ccea5c851a89c0034edde77da96082da2b21344cf025a99f4476e19a296342eecaa85d3d325800790c6765c0a96652d6ea08e39ae186bbd55b795e49ee64e8d637e907489d2b09170720e013819077cdf0d4755b9452cc9abe84169f446681d2e52f9d6e092f3c4638dedc92492aa0696180719cf8d6849c36e63524323e39aae437beb7639934a3a9063914329c7304524f24215987756bc6bce1b32d2a10a8f5472c76383b11b1a4a74b32cb7138031a0af3ed0738f8536ba94e79e2a4726ac3e1cdc428a28ab98c28a28a00a28a4da8070e74520e745009451450051454d6f6ef3b6064203d66f90aace7182cd22f084a6f2c771208249dc2a838db5b7e115b68d15ac6a8b80aa3029aab15b47a540518f59f1ae738971590cad67669d3ddb2e5941c244a7ef4ae7603fe0cd71aad59622768ad0ee51a10c3c1ca4f52f711e3c906a45cb48c02a01c83390a327dfeaa2de7924b75965931265a72b8ce88539c8e4efa4721f888c0d96b0a2e19a1659eee57b8bb215c9425638c23090a42876ecc64f3f0ad39043f549e140b31bd9a458146dd3a411aca3a4dc1c60e48cefa71b0cd4ce838349f314aa2c44b2c7a959daeae273f57b7492482e6dd2dedfa1b8ba8c49ac8c48b10442d9c86fb42012738e66ca41c14c56c82e845c4a6b49a55648351b6424ac8e2249300e49e8c2b9c608fba30ab767a0b9b74975a5dfdbcf711ea11a928b134424d408195c0c01b11d56069b24571d25a5b916b2b5c5dc12bc52db7451f4802380d2275d971ac83cf2739048d1bb08a8ab233d4a0e0ecddbfc7bd9fa96e3e2173070f16ca677b9b6b710b74f6ed98e308cad3cbd04aea79ae46bdcab0c752a9359cb144f7535fa4d71676f170f96686e47d65f537482257b825724631b8c6e372709ad7d6f04367184851d325322468dc199ca975527586400a28cf2ce73cab352dc43d199ede0093470b5c48259248265e8824ad2a301d7231a79fdec6719377b98a9454a9b9c7af76a5fe177daa0e88c26386359240aec165b68b516459d1bad923ad9ede632370935fa2dcfd5c303ae269571dca403f1ac866b38eee686dda636d245158aae2490c6bd107fb30ca1c2a911ab0eb0eba9cf5c86cbe1937d6389f13999d8c76c25b4b70c0827af966c1f2007978d6ad7a4be645633b4f21ab04824b9bd23b0423faeacd53e1ea745c4a7fd6b8908fd29d41f03572b7e8ab5348e3e2259aac985145073594c014526f4500514514028e745039d1402514518a025b784ccfa77083d23f215b07a281140000036acfb091754b11d9b21d4f7a9db6f2a7719b6967b3658e578df49d2f1e0b0f2cd71713394ea657b23d060e9c614d496adfbb19d7dc4a6b995ecec5baea00b89f194b607c39173d83d676e6c82de1b68fa3881009d4ecc72f239e6f237693ff3ba882182de28e28174c6bb8dc9662772cec7724f69a97b2ba54284692d3739389c44ab4b5d10f436a03f4ccb92a7a346651ace0ed83b9ac52d7ed7d656f113044e2e9ba638631e02b1255c018242a7300960bda41d531ab3239e6b9df6c91b617caabde451b14967d063902da80eaccceef2831e9d247543e932782e37d58ac73a6dc9ce5f436b09359e3087d4ce99d498d5a27165725059d844ac5ede52a09e9cc587df3923d265607ab818d2b317e02dc71094335a3492c76d68c896e1b46151090416c61469d88c6e48388a349209d6e24844cb700371550ace679c6b88f40139a96d5cb1beacf548cefdb43671c9074aa034b0f4d23469095853495d0599153a51851b28e406c701a51d9ad36a3addad76fbfdb7eba320e21334f0c604b20e86e8249246dacbcd6e742c47a45539057aa5971900f5b92e1711e237131592eba5e880547e1d02a998f48fa51cf6a96db1904e40d807adebc92d9c473bbc424bdb928c854028221a5418d4ab8df201233dbf7f23979e5892e7eb56ccf040d3c697323ab35e5c46ce881604c670e720e146e3727919dd94a4d52a7a46d6bebe6afede9a58ab2caaf33432b42cc928b442ab22c31594c9d32c2376cb9d219cea380cdb92dd48783ce659f884d938966965cf7eb6246699725ad6da762021b581acfa38e60e904eacd108013b960195a42399c0e4b812f00b7ff0f349d87978002a956d94e641b955bb3a4b2005a5af8c7abd6c49ab1505a7f95b4fdca7f7a9cf6d6dc3e5472e7f330c8a4a28ab140a28a28028a28a01473a281ce8a013b6968a2804cba14923fda467526f807bd4f81ff9cab6edde3bdb7ea9ec39079a9ed06b16a4b69dad67e954f51b0255ecfd5fdeb4b15433aceb747470788c8f24b6624d0b412ba11d524b27913b8f57ce998adfba821bb85645c0246558761ac26564628c0ea071b64e7f4f7d4e16b668e47baf22b8ca39659d6cfcc6e3bb7ce36efab0ca904b0dccce7eaf67fe1645e83a7e72472cce8232482e74aa9dfd1ef2409c70dbd4852712da4330d2f1a5e92a8181046adf07cab2af0fd2be15048d347094758614bc81564e849766eac8b8c33648c90790c608ac93a916ec99b5c3f0552ab6d349ed66ecddf7b17ed2fa6b1791e308cd99a2791540fa9bdd16b867dce32d81f74e36d86c04f1cb2743732de59dc497602ca96ab1ac976cbd5b687a61185ed566074634e41f4b0bc274f3131e249008c623ebb650018ea9ced4efaddc80cc2697514488b091f3a108d2b9ce703b052ccf53fd824b55357e7a3fcf33ac9ef21e8ee6d24b78e76481628e47485123b99f43431f4aa372a3242f5bbb3a466b3cad8ddcdc5ae37458a37b18cdac886e4651a59e620aea3c861b3f70807b5b005e5ec31ca639e41a0bc88bab52ab1dcbaabe5436e77c66a4b4e2f35a5bdc40608e7628cb04b293d2424132291b10c06a2ca0f224e08cd458d0c5f0bad4a2dc757efe9c8671a81138533e1b52f108ad433000c9d1f4a8653b024b8552c7c872515a3c1e3e8b868279b293eeaa9c6dd27e09c36588b98e6be8a5cc802b9e91263970a48ce79ef5b9c2ad1a4b7b55c6502827b8ed58711a451c2c35e52727b8eb5dadad077431ff0048a9a8e8fa2cc58fd9b327a81dbdd456ec1de29a399515a4d30a28a2ac5028a292805a4a28a01473a281ce8a0168a28a00a28a280d8e073c5d335b5c95e84a3489af1a4b2e0e839f6faab52e9ad4cf04f79716b1004476b1cd247120d47644d640c9f7d7278aab7896c96f753c91c6cd1c0e11a501cab32f46ba35e71cfb2b5a7413db437685594a4a3bb7648eb2e6f3a49e7e1b09816f82b14b1e2aba60bf880ce6da65073da3b482374c6f5c77177e10209638a1e21c2af527532f0760e6c8b046cce98c4431d84019cf2df232a2e2378f631585d95bb81147d4dae4b99ac986086864520ed8c00738f75453df5fdf185aeee66b868a2786233b97648c6e17277edac51a7667b5c170bab4a6a737efdf835c995558851e2147b714ae4e95eed55129fb38fc427c2a494f5079d6c23d2a95e170c6a5907e2523da3154e37eac2c7b55437fb0e83ee23d956d09c7aaa82729539689dd7fdb2657e62a19a38b76717e3e9e97372c2337dc2388f0de735ac9d3da8ef2add220f5ee3fdd5dafd1bd13585bb8df283d5b76d701c26e7a0bfb472709703eaf27831f44fb71ecaee381ca2d6f2ead0e0473137300ec1acf5d40f039f68ac15e37827d0f1188a7f031328ada5aa24e271745759ec91327f521c7c3154eb638dc795b6987dd90027c1c693f2ac7acb8595e16e8723171b54bf50a4a28ad935028efa4a2805a4a28a01473a281ce8a01d452d250051451401595c765d1669103bcd26e3bc2e00f79f756ad73fc7df335a479d9445fccccdfdaab3d8ebf06a4aa63237e577efea5007ac98e433fdaa28cf563f293e42a4ce341ef3f3a8223d48fc04bf1ac4cfa7c9da497bdd08a7a908fcc07b29f31ea0a8872887fde71ec2d4f9ff66288c507fb6fc1790e53b0f2aa2d917170a39c91075fd436ab887aabe42a95c1d1716efdfa90fc686ae37fe38cba35f7d3d49324ac854e1959668c8ecd4358c7bebb6b7b83341637f1fa6aa93800ee7231227c7d60570f19d2631fbc87f84eb5f7574df47a726dee6d49deda6d49fbb9bac3de0d4a4a5a3e6796e3106e942bade2cef24097d612aa904bc5a90e7c320d73bbf6f3ed1dc7b6b4f84ce55ba0246943951f918e31eaaa97d0f4175709d85ba45f27dfe39ad6c3b70a8e0ce2e2d29d3552257a4a28adf3961452d2500514514028e745039d1403a8a28a00a28a2802b96e32e1ef5bb92e638ff802a7f7aea977651dec07beb8abd7e926327e3bbd7fc531ac750f4bfa7a17ab527d179ffa1cc7f67e27e7504676c773ce3f98d4adfe9ffceda8576790774d27bd75550f7751f69084f597ff00b0d8f5a16a7dc1fb2f5544fb347e33a7be3229f707ec1bc01a84624ed09a1c9e82790aa77a3088ff0082453ea395ab71fa09e42a0bb198671da0123d441a9e463c52cd877e0459eaca4735e8e75f35183f0ad6e11388788dbeff0067768d6edddab1d2467da31ebac7b7607a227ef2bc67cb9d4b1b3ac4a50fdadbb8287f3c2da94d13b1c8a90fea284a1d57df7f5fb1e97c3046d791231c193289fa8e0fc01a9b8e00b7c9de612a47e96d40fbeb3ac2e97a4e1f791e4a318675c73d2e3247b09f6568717c5c712e280101ec2d6c6e0afe49ba40cc4faab154ecd5523c7d24e546507dff00c99b9a33499a335b873c5a29292807514da28070e74520e74501352514500519a29280466d2b23fe08e47fe1526b8798f56db3ff00560feacd76576da6cef9bbada6f7a95f9d71971b7d5c774d00f6562a87affd3f1b51ab2f0f7f72673809ff003b6a1ff5e51f995bdb191f2a9243b2f80150b6d73faa307d9a85559eb6b3d63e2bd4253fb13ff7e3f98a75c1fb17f23f0a64de8a1ee9a13fcc053e7de193c9a9d4c6de951777e421398e33f94524a350917f1291ed14db639863fd2053dfd2a22576a8af0336d9b0b8ed5607e55714e999c7648a245fd4bb1f762a8c7d49e64fccdf1ab6cd811bff00d2937fd2763ee23d9508e2e16796167cbd347f63a2e0ef3cb0f45248896b66fa000c448e1d8cc3593b05032339e40f2e67a1bd9a1ffd6b8d3a4cef15ff0005b2619464567fac6235c38d5b02d8db7f215c870d50f7491931f5bacbd22975cc796234e40c91ab19cd7507ac63770a64452a64c75dc93bbb93dbd9dc06c00aaca9b93563818e51c2d69c7aea978ff9b8ff00ef49499a335b573cf8b452668cd09168a334500a39d140e74501277d193477d142028a29280abc49b4f0fbff0018d57f8a4415c85cf38bf7f11fe6aeaf8a9c584ff9a4817f9f57cab93b9e40f7346dfce2b14f73db70256c1cdf7bf244929e5e42a17ff316a7bd245f6006a597e42a193f69647f3b2fb633fdaaacf455de9f55e6859bf6721ee31b7b1c1a925de390781a8a6de2b8fddb1f6026a46dd1bc40f7d08de52f0fc90da36615f0a99f98aab627ecd877337c6acbf65118b0d2cd87899b3752e98fe2d2ded18ab2b86d4a793a03ecea1f95417a30f1377823d8735246db44ddcc14f938d3f1c53b8e4c1e4af38beb7fe7fd972ce7689eda63e94320d7de741c30f58f8d76419480548208054f783b835c3a9d323af638d63f52f55be55d3709b8e96d8464f5edce8f343ba9f88f555e2ce7f1ac3b9d28d65bc747e9efbcd3cd19a6e68cd5cf283f228cf3a6e68a103a8a4a5a01c28a419cd15209a8a4a28028a29280cfe30d8b203bee22f72b9ae56ebf67278229f6106ba6e36716b00fc5393fc319fef5cc5d1fb39ff746b14f73dcf0656c037d6e492721e42a293ff6a7ba68fde196a47dd53f4ad4527ece33dd2467d8e2a8772b3d18f619120ef471ed18a5439850f7c687dc28fbf4d87f611f8201ecdaa4b2f9fe8fd3f255b43879d7ba46f8d5c7e43caa8c3d5b9b85fcf9f68cd5d6e4288d4c1bfd971e8df9952f466356fc2c3dfb54509d48c9da4103e22acdc0d50483b973eb073546ddb0d8efc7f6a87b9cdc4f63129f545d66cac72f6ae1cf91eab0ff009dd5a5c3ae7eaf72858e2393ece4eec31d8fa8e2b35318743c81c81f95f7c7c69f1ee349e6a741f91a946dca0aac1c27b497dfdf91dae68aa3c3ee4dc5b2163f6917d949e2546cdeb15733592e781ab4a54a6e12dd0fcd2834ccd2e6a4c561f9a5a6e69735240e068a4145013d145254901451484d0191c75874566bdef3b7b150573971bc571fba3f0adee3add6b35ee8a56fe27c7cab067de29fc5187f29ac52dd9efb8546d804badfd471398e33f917e1514bfb063ddbfb181a7a9cc3078c4a7dd4c6de1907e57fe9aab3a737787d0909eb67ce88b642bdcd20fe634dce741ef00fb452c7b749fad8fb40343245f6d3291eade37e6553f2abc7d11542e7ab750b77823d86af67282a11a585769548778d2352b2f7823da2b250e965f322b5873359730d12c83b9f50f5ef52cd2e24ad9665e53d643d8c0a9fea1f3a7f2607b0f54f98dc1f8d4084b47b735dc79a9cd4c70c363b30041f1e60d0d8a72bc6ebc4d3e1f70219d4b1c473011c87b01cf558faf6f5d7415c844e18608d9b983ec22ba0b0b93343a18e65870ad9e6cbf75be47cbc6a62ce1717c35ed5e3f5f47e868034e06a2069d9ab9e74929734c0696a4a920a29a28a105aa4a28ab10212683452501cff001c6ff1302f7411fbddcd634bba3f8ab7f49ad4e36d9be03f0a5baff2e7e7598fe89f26f85617ccfa270e56c241770c88e6de0fdd2fc281ba38eff98229b6e49b680fe41eecd397930f2a836e9bcd08f7af41a872909fc89f015227a520efd27f97150c64f451f8647b09152afa6fe2abf134149dd47df229deecd0377391ed156d0e635aad7c3ecc9fc2ca7df8a9606cc20d399a94de5c54d75571e39d51bd5c481bf1a11eb157bb4556bd5ea2b7e171ec3b51ec571d1cd45f7115b3ee4782b0f58c558438d487ee3103f4f3154226d3227932fb0e6ae93868dfb1c686f3e60d0d1c2d5ec27d3d4901d2c7c7ac3cc73156ed6e5a19525193a7aae3f146798f98f2aa6d9236e6304798a556e4476d0de9a534e12d99d7232b056520ab00ca472208c822a406b2385dc6a56b763ba0d7167b509dd7d47e3e15a80d5d33c4e228ba151c192834e07954609a703526b920a290515254b7499a5a0f6558a8d3494a690d01cb7186cf1097c1e11ec441545bfbd59e2ad9e21747ff009047b180aacffdeb09f47c12b5082ffcaf220b6ff2d0f911ef34f5fbfe5f3a8ed37b68bfddfd469ebe93791a832517fb54df72f2189e8b0fc2ee3df9a947a60f7a1f88a89766987e707f8945480ef1f8823dd9f9540a4f45ef9915d2ea8a51f958fb37a659b6613e18a9e5dc11df91edaa76270244ed1f238a9e66ad47971717d5345c351dc2eb8a41f94e3d5bd48791a0e31526cd48a945c5f331f24153e20fb462af2f5e32bdb8c8f31b8aa4eba5997f0b11ec356616c605423cee165966e0f99611f52a9f51f3a07558f71cb0f98a60d9d8763f5879f6d3cee3cb7143ad16dc7bd13452bc3247221dd1832f71ec20f81e46ba786549a34953d17191de0f220f957268d9007b2b57855ce890dbb9eaca731e7b24eef5fcbc6ac8e6f12c3fc5a7f123baf2374765482a31520ab1e5c78a281454905c3494ec5262ac5061cd26338f3a71148a3acbfa87c680e2efdb55edc9efb990ff00fd0d4521c03e01be745c36a9ddbf14acded6269b37a0ff00a1fe06b033e934965a76e8910d9ff968ff00ddf134f1e9fa8d4767fe5e2f23f1a93efafb28c8a2ff00669f8219feac83bd236f66454831f667c40f71151b6d2a78c6ebec20d3feeaf811fd55020ecdaf7d4749546dbab73709fa88f683579f95511d5bd5fce9f222a59af8cd2a427debee5d3c8d20dc5277d00fc6a4dabea67dd0d3216ec60adeb1b1a48ce0d4d78b940df84907c8d568cfa3eca8479cacbe1e21974eea08e6bb8a504601efa6a72140eab15ece63c8d0e927b4ba8edc1cf7fc6a40c7218121860823bc7222a3c6690311b50c97cbb9d6d8dda5c5b74ceca8d16167c9c00dd8de47b3ff0014f8efa079844a0e962156427019bf49df1dd5c89d457299d40e4789eead8b2b4e24ad04735adc2374ab97751a10060c4920f66f537671ab60b0f49c9cdefb777e4e954514e037345643ce1688a4a5a2ac40da639d2b2bfe08e47fe152d5262aadfb48b6777d1c7248ef198d5635d4407ea96206f8033ff391ec64a70cf351eace21cf5f1da39fb29d36caff00a5fe06a37c8924c8c10581cf3cf753e7ce893f76df0358391f458caea44569fe5e2f2a736cc87c69b6dfb08bf48a593eef9d0a53d2843c10936cd09fce57f881a77dc3ebfef4cb8f4437e178dbdf8a78dd5bccfc283fec92f7ef4246e5edaa13f567b47fcda4d5ee680f80f8552bb1f66afda8eadefa18b1eaf4f32e567fc6a5aa41f785229ce294736f5549953bab91ccba9245ef524798ace88ef8f57ac56ab7f71594cad1c876c293b1ec3438dc46396719fd0bb16ea7bc6ffde9ee0e030fbbbfabb6a3b72320f8ef5648001048c789036a1b94567a63362323b69857b47673f2a588498234bb61955742ea2751d2361bf3dbd75b963c0e791ba4be5e8a21ca15706573f9d93603c893e5dadcc357174610bcd99915b48eacca06001cc8193dc335bfc1a7bd7d504b8922881fb424968ff0c7ac6c7cbb2b492cec955116da0d2800506343803c5866ac2aaa85550028e414000790156517738b8be230c4432287f3c85037a29c39d15738c4b452e0f75183dd5204a434b83dd460f75014ee6359558bdbc5310ac5564546d440c819715c65eabc6b70aea55d14a90c3041c72c577e533d959979c16ceecbb32156724bb23382c4f7807154946fb1d7e1f8f5868ce135a3471b6ffb18bf48a241d527bb7ae94fd1a544c413b03b7a6a08c0f1e7559fe8d5ec990d7098c636d58f60155caceb7f79a0a928a4ef6306605a1703b5323d5bd3a320a67b1883eeadb7fa3177a5556f19b6c1c8d200ee18c9a69fa377c8802dd16603015574803ccff6a8cac85c628e7cd67b777e4ca8b251363cb1b786d515c464c328c7353eedeb45be8d7126e72b91e321c7a850bf452e58f59cff00166a6ccc7538cc250c992fa5b7326ddb52af8015390739ada87e8a4c809fadb23720046197de69ebf46ef01eb5d0619fc007bb1f3a5996a3c5a8c69a8caf730883d82a15b7fad473c691e67132b2c8cceaab18c8214018ce715d5afd1fc6353671e3ff008abf0f0c8a200606dcb0296669e3788c3111cb147231f04be051d444c5812c0332a8276c6e3273e42af27009a6551218e12bd5050195ca1db07d15cf773aead6155c6053b49eeab6439cb19351caac665b70bb2b66478ad943aaaa876cb36c31abac7193da71578237754f83460f75592b1a929396ec8b41a708cd4983dd46fdd525468439a29e39d1407fffd9
\.


                                                                               3105.dat                                                                                            0000600 0004000 0002000 00000000256 14140210527 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        32435345	chandana	m	images\\1.jpg	E:/IDE_WS/ImagePathUpload/WebContent/\\images\\1.jpg
32	Chandana	MN	images\\2.jpg	E:/IDE_WS/ImagePathUpload/WebContent/\\images\\2.jpg
\.


                                                                                                                                                                                                                                                                                                                                                  3100.dat                                                                                            0000600 0004000 0002000 00000005025 14140210527 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        41	Aimorc@aimorc.com	QWltb3JjQDEyMw==	29-10-2021 8:22:22
48	Sinchana@gmail.com	U2luY2h1QDEyMw==	2-11-2021 4:56:49
65	vani@gmail.com	VmFuaUAxMjM=	2-11-2021 10:15:35
11	shdb@hwgves.com	Chandu@98	12-1-2021 21:20:44
12	sahg@usydh.com	Chandu@98	12-1-2021 21:22:37
14	ewrew@wewe.com	Chandu@12	13-1-2021 12:24:48
15	erwt@ewd.com	Chandu@98	13-1-2021 12:47:51
16	chaithra.m@gmail.com	Chai@123	17-1-2021 21:32:38
17	Chandan.m@aimorc.com	Chandu@89	26-1-2021 18:3:22
18	wed@a.co	Wed@1234	26-1-2021 18:17:30
19	wer@f.in	Wed@1234	26-1-2021 18:18:58
20	sdf@d.com	Chan@123	26-1-2021 18:22:51
21	asdfwe@wqed.xcom	Chan@123	26-1-2021 18:24:16
22	ewrw@sdf.in	Chan@123	26-1-2021 18:25:9
23	wqewq@wsd.om	Pass@123	3-2-2021 17:52:51
24	Chandana.m@aimorc.in	Pass@123	4-2-2021 12:52:46
25	Chandana.m@abc.com	Pass@123	4-2-2021 17:47:1
26	Chandana.m@aibc.com	Chandu@98	5-2-2021 11:26:12
27	chandu@12.in	Chandu@12	5-2-2021 12:44:19
28	Chandann@aimorc.com	Chan@123	5-2-2021 12:51:53
29	Chand@aimorc.com	Chan@123	5-2-2021 13:8:55
30	wedd@a.co	Pass@123	5-2-2021 13:23:59
3	Chandana.m@aimorc.com	Chandu@123	\N
31	Chaithra.m@gmail.com	Chaithu@96	5-2-2021 13:33:30
32	lalitha@gmail.com	Lali@123	5-2-2021 21:24:24
33	monisha@34.co	Moni@123	6-2-2021 11:34:38
34	Chandana.m@aimorc.cq	Chan@1	7-2-2021 13:47:53
35	monisha@34.in	Qwe@123	8-2-2021 11:26:33
36	Geetha@gmail.com	Gee@1234	8-2-2021 17:5:25
38	chan@98.in	Chan@123	9-2-2021 12:4:22
39	Ranji@98.in	Ran@1234	9-2-2021 12:55:31
40	Chandana.m@aibczzzz.com	Zxc@1234	9-2-2021 13:7:53
43	abc@gmail.com	Abcde@12345	9-2-2021 13:21:34
44	erf@gmail.com	Erf@1234	9-2-2021 13:30:55
45	gchg@gahacfHg.in	Chan@123	9-2-2021 13:33:57
46	Lak@89.in	lAK@1234	9-2-2021 13:36:39
47	Sinchana	Sin@1234	9-2-2021 15:15:24
49	Chandana.sm@aimorc.com	Chandu@98	11-2-2021 17:19:51
51	xyz@abc.in	Chandu@98	23-2-2021 15:15:7
56	keerthana.yadunath@aimorc.com	Chandu@123	20-5-2021 20:7:13
57	mjlakshmi123@gmail.com	Chandu@123	20-5-2021 20:13:37
59	chandanam.kaushik02@gmail.com	Chandu@123	21-5-2021 17:58:47
64	chandana.m.kaushik@gmail.com	Q2hhbmR1QDEyMw==	3-6-2021 20:50:54
50	Madhav@gmail.com	QWltb3JjQDEy	29-10-2021 8:48:38
88	ADC@gmailc.om	QWltb3JjQDEy	29-10-2021 8:56:20
94	ABCD@gmailc.om	QWltb3JjQDEy	29-10-2021 8:57:26
96	ABCD@gmail.com	QWltb3JjQDEyMw==	29-10-2021 9:5:7
98	ADD@gmail.com	QWltb3JjQDEyMw==	29-10-2021 9:8:15
102	ADDD@gmail.com	QWltb3JjQDEy	29-10-2021 9:15:34
105	ABCDE@gmail.com	QWltb3JjQDEy	29-10-2021 9:17:44
107	ABWEE@gmail.com	QWltb3JjQDEy	29-10-2021 9:22:48
109	AccEE@gmail.com	QWltb3JjQDEy	29-10-2021 9:27:52
111	nvmadhav@aimorc.com	QWltb3JjQDEy	30-10-2021 10:34:32
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3110.dat                                                                                            0000600 0004000 0002000 00000000324 14140210527 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        548	4	65	1
549	6	65	1
292	3	65	4
550	4	50	1
551	6	50	1
552	4	109	1
553	6	109	1
554	7	109	1
556	6	111	1
558	19	111	2
560	8	111	1
561	8	111	1
471	3	48	2
423	19	48	4
424	1	48	1
425	2	48	4
539	4	48	2
533	6	48	2
\.


                                                                                                                                                                                                                                                                                                            3108.dat                                                                                            0000600 0004000 0002000 00000032533 14140210527 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Denim Jacket	Midi Dress. Sitting between a maxi and a mini dress, the midi is what everyone needs for the timesShoulder. Take the plunge and keep your shoulders exposed in an off-the-shoulder dress.	400	25	2	f	f
6	Capri	Summer nights can be treacherous, no matter how hard you try. Even if your air-conditioner turns your bedroom into the Artic or you open every window for ventilation, sometimes waking up in a pool of sweat seems unavoidable. So what can you do to make sleeping in summer a little more comfortable Slip into one of these  cotton night suits. The breathable fabric will keep you cool through the night so that you sleep peacefully and wake up clean and sweat-free. This is available in cotton and capri which is comfortable for night as well as to walk and will be comfortable while sleeping.	450	25	3	f	f
7	Printed Night Suit	Wear our super comfortable womens cotton printed night suit set. This casual nightwear set if a perfect outfit for lazy days, friendly sleepovers and weekend getaways.\nThe piece is a loose fit cotton nightshirt in white with leaf print with relaxed waist cotton short. The outfit is not sheer and is ideal for at-home chilling.It open your bedroom into the Artic or you open every window for ventilation, sometimes waking up in a pool of sweat seems unavoidable. So what can you do to make sleeping in summer a  The breathable fabric will keep you cool through the night so that you sleep peacefully and wake up clean and sweat-free. This is available in cotton and capri which is comfortable for night as well as to walk and will be comfortable while sleeping.	1150	25	3	f	f
1	Frock	Midi Dress. Sitting between a maxi and a mini dress, the midi is what everyone needs for the timesShoulder. Take the plunge and keep your shoulders exposed in an off-the-shoulder dress.	100	25	2	t	f
2	Anarkali Gown	Midi Dress. Sitting between a maxi and a mini dress, the midi is what everyone needs for the timesShoulder. Take the plunge and keep your shoulders exposed in an off-the-shoulder dress.	200	25	1	t	f
8	Jump Suit	A jumpsuit is a one-piece garment with sleeves and legs and typically without integral coverings for feet, hands or head. The original jump suit is the functional one-piece garment used by parachuters.Hourglass-shaped women were born for the jumpsuit. An hourglass body type suggests that your waist is slimmer and your hips and chest are wider, making you a perfect candidate for wearing a jumpsuit. Show off your natural figure by wearing a tighter-fitting jumpsuit that accentuates your waistline. Pilots and astronauts usually prefer jumpsuits for comfortable for space and with all temperatures.	728	25	3	f	f
5	Salwar Suit	Midi Dress. Sitting between a maxi and a mini dress, the midi is what everyone needs for the timesShoulder. Take the plunge and keep your shoulders exposed in an off-the-shoulder dress.	500	25	1	f	f
3	Party Gown	Midi Dress. Sitting between a maxi and a mini dress, the midi is what everyone needs for the timesShoulder. Take the plunge and keep your shoulders exposed in an off-the-shoulder dress.	300	25	1	f	t
20	Maxi Dress	 A maxi dress is a floor or ankle length informal dress. Maxi dresses are formfitting at the top and loose flowing at the bottom, cut to flow over the body. They are usually made out of cotton or polyester and come in a variety of necklines, colors and patterns	499	25	1	f	f
16	Midi Dress	Midi Dresses are appropriately titled medium-length dresses that land around the knee or calf. We love a button-front midi dress during the warmer months. It looks effortlessly cool and put-together as if you’re heading to a tropical vacation. For something a little dressier, try a ruched bodycon midi dress. The extra length will prevent any wardrobe mishaps, but you’ll still get the sex appeal of a bodycon fit.	480	25	2	f	f
22	T Shirt Dress	A shirtdress is a style of womens dress that borrows details from a mans shirt. These can include a collar, a button front, or cuffed sleeves. Often, these dresses are made up in crisp fabrics including cotton or silk, much like a mens dress shirt would be. As they are typically cut without a seam at the waist, these dresses often have a looser fit, usually relying on a belt to define the waist. Button fronts and a forgiving fit make this a flattering look for most body types.	475	25	3	f	f
24	Mini Skirt	A miniskirt is a skirt with its hemline well above the knees, generally at mid-thigh level, normally no longer below the buttocks; and a dress with such a hemline is called a minidress or a miniskirt dress	675	25	2	f	f
15	Gagra Choli	 Gagra choli or ghagra choli, which is also known as lehenga choli and locally as chaniya choli, is the traditional cloth.	1099	25	1	f	t
11	Churidar	Churidars, also churidar pyjamas, are tightly fitting trousers worn by both men and women in South Asia.[1] Churidars are a variant of the common shalwar pants. Shalwars are cut wide at the top and narrow at the ankle. Churidars narrow more quickly so that contours of the legs are revealed. They are usually cut on the bias, making them naturally stretchy. Stretch is important when pants are closefitting. They are also longer than the leg and sometimes finish with a tightly fitting buttoned cuff at the ankle. The excess length falls into folds and appears like a set of bangles resting on the ankle	750	25	1	f	f
19	Crop Top	A crop top may be a way to draw attention to a pregnant belly. Also known as a “belly shirt” or a “cutoff shirt,” a crop top is a top which falls just above or around the navel, exposing the midriff section. Crop tops have gone in and out of fashion	299	25	2	f	t
23	Dungaree	 Dungarees in British English, plural noun a suit of workmans overalls made of this material consisting of trousers with a bib attached. a big burly fellow in dungarees, carrying a spanner, a casual garment resembling this, usually worn by women or children. a young woman in dungarees	945	25	2	t	f
10	Track Suit	A Track Suit is a loose, warm set of clothes consisting of a sweatshirt and trousers with an elasticated or drawstring waist, worn when exercising or as casual wear. A tracksuit is an article of clothing consisting of two parts,  trousers and a jacket usually with front zipper. It was originally intended for use in sports, mainly for athletes to wear over competition clothing such as running shirt and shorts or a swimsuit and to take off before competition. In modern times, it has become commonly worn in other contexts. The tracksuit was one of the earliest uses of synthetic fibers in sportswear.\nA descendant of the tracksuit, the shell suit,was popular with the hip hop and breakdancing . They were manufactured from a mix of cellulose triacetate and polyester making them shiny on the outside, with distinctive combinations of colours.	899	25	3	f	f
9	Flared Skirt	A flares skirt with crop top and heels to complete the look. A flared skirt is very similar to an A-line skirt, except that it is mostly short and flares out a lot more than your A-line. As it moves down, it circles out and covers your bottom. When you are styling a flared skirt, wear a fitted top. The flared skirt has more hem area added by closing the waist darts.  The basic flared skirt does not have any darts in the waist; the darts are closing completely and that value is transferred to the hem. An extension can also be added to the side seam to give a bit more flare.	799	25	2	f	f
12	Lehenga	 Lehenga, which is also known as lehenga choli and locally as chaniya choli, is the traditional clothing of women from Indian Subcontinent, notable in Indian states. It makes for a very graceful and elegant outfit when paired with the correct jewelry and makeup. Lehenga and Ghagra Choli have always been considered almost a necessity in every formal function in the subcontinent. Be it a wedding or a mehndi or even a formal party; girls always love to dress up in lehengas.	1099	25	1	f	f
14	Classic T Shirt	A T-shirt typically extends to the waist. Variants of the T-shirt, such as the V-neck, have been developed. Hip hop fashion calls for tall-T shirts which may extend down to the knees	399	25	3	f	f
17	Chiffon Blouses	Chiffon fabric is an airy, sheer plain weave cloth created out of highly twisted filament yarns. Such technology provides exceptional fineness and a slightly textured hand. Most commonly made of silk, it is used both for special occasion and casual outfits, such as dresses, skirts and blouses, all especially popular in summer	495	25	2	f	f
18	Turtleneck Top	A polo neck, roll-neck, turtleneck, or skivvy is a garment—usually a sweater—with a close-fitting collar that folds over and covers the neck. It can also refer to the type of neckline, the style of collar itself, or be used as an adjective. A simpler variant of the standard polo neck is the mock polo neck, that resembles the polo neck with the soft fold at its top and the way it stands up around the neck, but both ends of the tube forming the collar are sewn to the neckline.	463	25	3	f	f
25	Silk Saree	Silk Sarees are a part of every special occasion in India. They are worn on weddings, and are gifted on key events. They are even treasured and saved for generations. During weddings, mothers, grandmothers, grooms gift rich, heirloom silk sarees, along with the wedding jewels.	1999	25	1	f	f
21	Pyjama Top	A reliable pyjama top thats great for the warmer months. Sleeveless style with button detailing at the round neckline. Breathable cotton rich material with added stretch for your best fit. All of the cotton for our clothing is sustainably sourced and always will be.	750	25	3	f	f
13	Skater Dress	Since the knee-length skirt is a little simple in concept, you can make it seem different and stand out even more by choosing a bold color. Think bright colors like bubblegum pink, mustard, lime green, and peach. Pastels work well, but gem colors do too. You could try wearing a knee-length skirt with pleats	699	25	2	f	f
26	A Line Kurthi	The Kurti or Kurta is an outfit that has stretched beyond the Indian borders, and has evolved down the ages to suit the ever-changing demands of the fashion forward world. A long top, generally of knee-length, paired with Salwar or Churidar and Dupatta is what comprises the Salwar-Kurti-Dupatta get-up. 	299	25	3	f	f
27	Formal Dress	Formal attire for women includes evening gowns and very nice cocktail dresses. White tie is the most formal of formal attire. When an invitation states white tie or evening dress, a man is expected to wear a black tailcoat with black trousers with a stripe of black satin down the outside seam and white suspenders. Under the tailcoat, he should wear a stiff fronted white shirt with a wing collar, white bow tie, and white waistcoat.	950	25	2	f	f
28	Kurthis	These kurtis will make you look elegant and professional at the same time. Asymmetrical Designer Kurtis: Sometimes, asymmetrical is what you really need. Asymmetrical Kurtis basically has a lop-sided hemline, which makes it more stylish. Girls and ladies alike can opt for this style of kurti when they want to glam-up a bit.	781	25	1	f	f
29	Regular Fit Top	Our collection of women’s tops has something to balance with every outfit, whether you prefer off-the-shoulder styles, halternecks, camisoles or knitted jersey t-shirts. . Classic black, white, pink and navy block colours sit alongside everything from sequin tops to statement animal prints, to original slogan T-shirts this sea 	350	25	3	f	f
30	Saree	A sari as saree is a garment from the Indian subcontinent[1] that consists of an unstitched drape varying that is typically wrapped around the waist, with one end draped over the shoulder, partly baring the midriff.It is traditionally worn in the countries of India, Pakistan, Bangladesh, Sri Lanka, and Nepal. There are various styles of sari manufacture and draping. The most common one is the Nivi style.The sari is worn with a fitted bodice commonly called a choli (ravike or kuppasa in southern India, and cholo in Nepal) and a petticoat called ghagra, parkar, or ul-pavadai.In the modern Indian subcontinent, the sari is considered a cultural icon.	699	25	1	f	f
31	Regular Fit Top	A sari as saree is a garment from the Indian subcontinent[1] that consists of an unstitched drape varying that is typically wrapped around the waist, with one end draped over the shoulder, partly baring the midriff.It is traditionally worn in the countries of India, Pakistan, Bangladesh, Sri Lanka, and Nepal. There are various styles of sari manufacture and draping. The most common one is the Nivi style.The sari is worn with a fitted bodice commonly called a choli (ravike or kuppasa in southern India, and cholo in Nepal) and a petticoat called ghagra, parkar, or ul-pavadai.In the modern Indian subcontinent, the sari is considered a cultural icon.	699	22	3	f	f
33	Formal Dress	Formal attire for women includes evening gowns and very nice cocktail dresses. White tie is the most formal of formal attire. When an invitation states white tie or evening dress, a man is expected to wear a black tailcoat with black trousers with a stripe of black satin down the outside seam and white suspenders. Under the tailcoat, he should wear a stiff fronted white shirt with a wing collar, white bow tie, and white waistcoat.	21	11	2	f	f
32	Kurthis	These kurtis will make you look elegant and professional at the same time. Asymmetrical Designer Kurtis: Sometimes, asymmetrical is what you really need. Asymmetrical Kurtis basically has a lop-sided hemline, which makes it more stylish. Girls and ladies alike can opt for this style of kurti when they want to glam-up a bit.	324	33	1	f	f
\.


                                                                                                                                                                     3102.dat                                                                                            0000600 0004000 0002000 00000005641 14140210527 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        15	15	sdas	wed		None	1232143242		13-1-2021 12:47:51	\N	\N
16	16	Chaithra	m	2021-06-10	Female	8197004095	JP Nagar mysore	17-1-2021 21:32:38	\N	\N
17	17	chandana	MN	2021-01-31	playing	1231232132	3423	26-1-2021 18:3:22	\N	\N
18	18	efwer	wq	2021-02-06	Male	1231321323	123123	26-1-2021 18:17:30	\N	\N
19	19	wqeqweW	qws		Male	1213132213	aewd	26-1-2021 18:18:58	\N	\N
20	20	aedwadewq	wewq	2021-01-03	Female	9945785768	xdcfds	26-1-2021 18:22:51	\N	\N
21	21	wef	wefd	2021-01-31	Female	9900083180	werwr	26-1-2021 18:24:16	\N	\N
22	22	sdf	wef	2021-01-26	Male	9945785768	wqeqw	26-1-2021 18:25:9	\N	\N
4	3	Chandana	m	2021-07-08	Female	9164233826	mysore	\N	1	munna
23	23	ewdew	wefde	2021-02-03	Female	1232134241	sfdsdfds	3-2-2021 17:52:51	\N	\N
24	24	wrfew	werf	2021-02-04	Male	9945785768	234e234	4-2-2021 12:52:46	\N	\N
25	29	chandana	m	2021-02-05	Female	1232323123	qwewqewq	5-2-2021 13:8:55	\N	\N
27	31	Chaithra	M	2021-02-10	Female	9945785768	JP Nagar Mysuru	5-2-2021 13:33:30	\N	\N
28	33	Monu	k	2021-02-06	Female	1233534535	Banglore	6-2-2021 11:34:38	1	Cat
30	45	ewdewdewdfewewd	wedewd	2021-02-09	Female	1234234433	rgregregfr	9-2-2021 13:33:57	4	wqewqe
31	46	LAK	mJ	2021-02-06	Female	123456789	SDASDASCAS	9-2-2021 13:36:39	4	SAADADAS
32	47	Sinchana	m	2021-02-07	Female	1222232333	dwffsfsfdsf	9-2-2021 15:15:24	3	Koligala
34	49	Chan	MN	2021-03-14	Female	9900083180	dasdsa	11-2-2021 17:19:51	1	Cat
35	49	Chan	MN	2021-03-14	Female	9900083180	dasdsa	11-2-2021 17:21:4	1	Cat
36	51	xyz	abc	2021-02-28	Female	1232323123	asdsadasdsad	23-2-2021 15:15:7	1	Cat
33	48	chandana	Sinchana	2021-08-07	Female	12345322	Jayanagar Banglore	10-2-2021 12:59:2	1	Cat
51	50	Madhav	Nv	2021-10-30	Male	9900083180	Ramakrishana Nagar Mysuru	29-10-2021 8:29:51	3	Goa
89	88	ADC	k	2021-10-30	Female	1232323123	tumkur	29-10-2021 8:56:20	1	Cat
95	94	ADC	k	2021-10-30	Female	1232323123	tumkur	29-10-2021 8:57:26	1	Cat
97	96	ABCD	EF	2021-10-30	Female	1232312311	Tumkur	29-10-2021 9:5:7	1	Cat
41	56	Chandana	M	2021-05-22	Female	9945785768	mysore	20-5-2021 20:7:13	1	Cat
42	57	lakshmi	mj	2021-05-08	Female	1231232132	Banglore	20-5-2021 20:13:37	1	Cat
44	59	Chandana	M	2021-05-09	Female	9164233826	banglore	21-5-2021 17:58:47	1	Cat
45	59	chandana	M	2021-06-27	Female	9900083180	Mysore	3-6-2021 20:25:33	1	Cat
46	59	chandana	M	2021-06-27	Female	9900083180	Mysore	3-6-2021 20:25:34	1	Cat
49	64	Sinchana	sa	2021-06-06	Female	9164233826	swa	3-6-2021 20:50:54	1	Cat
50	65	Vani	C	1978-07-02	Female	9902018530	JP Nagar, Mysore-31	16-6-2021 20:41:59	1	munna
99	98	ABC	ASS	2021-10-31	Female	2131231232	Tumkur	29-10-2021 9:8:15	1	Cat
103	102	ADDD	BVV	2021-10-30	Female	1231233121	Tumkur	29-10-2021 9:15:34	1	Cat
106	105	ABCD	ASSDA	2021-10-31	Female	1213121122	tumkur	29-10-2021 9:17:44	1	Cat
108	107	ABCD	ASSDA	2021-10-31	Female	1213121122	tumkur	29-10-2021 9:22:48	1	Cat
110	109	ABCD	ASSDA	2021-10-31	Female	1213121122	tumkur	29-10-2021 9:27:14	1	Cat
112	111	Madhav	Nv	2021-10-30	Male	1221112222	Banglore	29-10-2021 10:42:3	1	Cat
\.


                                                                                               3104.dat                                                                                            0000600 0004000 0002000 00000000267 14140210527 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	What was the name of your favorite pet?
2	Which city were you born?
3	Which is your favorite place for vacation?
4	What was your primary school name?
5	What is your nick name?
\.


                                                                                                                                                                                                                                                                                                                                         3114.dat                                                                                            0000600 0004000 0002000 00000000005 14140210527 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3115.dat                                                                                            0000600 0004000 0002000 00000000005 14140210527 0014232 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000054525 14140210527 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "Product_Development";
--
-- Name: Product_Development; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Product_Development" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';


ALTER DATABASE "Product_Development" OWNER TO postgres;

\connect "Product_Development"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    category_name character varying(255),
    category_description character varying(1000)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_category_id_seq OWNER TO postgres;

--
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- Name: configuration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configuration (
    configuration_id integer NOT NULL,
    configuration_name character varying(60),
    configuration_value integer
);


ALTER TABLE public.configuration OWNER TO postgres;

--
-- Name: configuration_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.configuration_configuration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.configuration_configuration_id_seq OWNER TO postgres;

--
-- Name: configuration_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.configuration_configuration_id_seq OWNED BY public.configuration.configuration_id;


--
-- Name: date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.date (
    date_id integer NOT NULL,
    userid integer,
    date character varying(50),
    country character varying(150),
    state character varying(150),
    city character varying(150),
    del_address1 character varying(200),
    zip character varying(6),
    del_address2 character varying(255),
    del_address3 character varying(255)
);


ALTER TABLE public.date OWNER TO postgres;

--
-- Name: date_date_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.date_date_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.date_date_id_seq OWNER TO postgres;

--
-- Name: date_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.date_date_id_seq OWNED BY public.date.date_id;


--
-- Name: deliveryaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deliveryaddress (
    del_id integer NOT NULL,
    userid integer NOT NULL,
    "del_profileAddr" character varying(250),
    del_address1 character varying(250),
    del_address2 character varying(250),
    del_address3 character varying(255)
);


ALTER TABLE public.deliveryaddress OWNER TO postgres;

--
-- Name: deliveryaddress_del_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deliveryaddress_del_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deliveryaddress_del_id_seq OWNER TO postgres;

--
-- Name: deliveryaddress_del_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deliveryaddress_del_id_seq OWNED BY public.deliveryaddress.del_id;


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image (
    photo bytea
);


ALTER TABLE public.image OWNER TO postgres;

--
-- Name: image_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.image_table (
    id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    path character varying(255) NOT NULL
);


ALTER TABLE public.image_table OWNER TO postgres;

--
-- Name: login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.login (
    userid integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    lastlogin character varying(50)
);


ALTER TABLE public.login OWNER TO postgres;

--
-- Name: login_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.login_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.login_userid_seq OWNER TO postgres;

--
-- Name: login_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.login_userid_seq OWNED BY public.login.userid;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    product_id integer,
    userid integer,
    quantity integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    product_name character varying(150),
    product_description character varying(1000),
    product_price double precision,
    max_quantity integer,
    category_id integer,
    istrendy boolean,
    isnextrelease boolean
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;


--
-- Name: registration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registration (
    regid integer NOT NULL,
    userid integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    dob character varying NOT NULL,
    gender character varying(255) NOT NULL,
    phonenum character varying NOT NULL,
    address character varying(50) NOT NULL,
    created_on character varying(50),
    security_id integer,
    security_answer character varying(1000)
);


ALTER TABLE public.registration OWNER TO postgres;

--
-- Name: registration_regid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.registration_regid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.registration_regid_seq OWNER TO postgres;

--
-- Name: registration_regid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.registration_regid_seq OWNED BY public.registration.regid;


--
-- Name: security_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.security_question (
    security_id integer NOT NULL,
    security_question character varying(1000)
);


ALTER TABLE public.security_question OWNER TO postgres;

--
-- Name: security_question_security_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.security_question_security_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.security_question_security_id_seq OWNER TO postgres;

--
-- Name: security_question_security_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.security_question_security_id_seq OWNED BY public.security_question.security_id;


--
-- Name: spring_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spring_session (
    primary_id character(36) NOT NULL,
    session_id character(36) NOT NULL,
    creation_time bigint NOT NULL,
    last_access_time bigint NOT NULL,
    max_inactive_interval integer NOT NULL,
    expiry_time bigint NOT NULL,
    principal_name character varying(100)
);


ALTER TABLE public.spring_session OWNER TO postgres;

--
-- Name: spring_session_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spring_session_attributes (
    session_primary_id character(36) NOT NULL,
    attribute_name character varying(200) NOT NULL,
    attribute_bytes bytea NOT NULL
);


ALTER TABLE public.spring_session_attributes OWNER TO postgres;

--
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- Name: configuration configuration_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration ALTER COLUMN configuration_id SET DEFAULT nextval('public.configuration_configuration_id_seq'::regclass);


--
-- Name: date date_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.date ALTER COLUMN date_id SET DEFAULT nextval('public.date_date_id_seq'::regclass);


--
-- Name: deliveryaddress del_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deliveryaddress ALTER COLUMN del_id SET DEFAULT nextval('public.deliveryaddress_del_id_seq'::regclass);


--
-- Name: login userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.login ALTER COLUMN userid SET DEFAULT nextval('public.login_userid_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: product product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Name: registration regid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registration ALTER COLUMN regid SET DEFAULT nextval('public.registration_regid_seq'::regclass);


--
-- Name: security_question security_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.security_question ALTER COLUMN security_id SET DEFAULT nextval('public.security_question_security_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (category_id, category_name, category_description) FROM stdin;
\.
COPY public.category (category_id, category_name, category_description) FROM '$$PATH$$/3112.dat';

--
-- Data for Name: configuration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.configuration (configuration_id, configuration_name, configuration_value) FROM stdin;
\.
COPY public.configuration (configuration_id, configuration_name, configuration_value) FROM '$$PATH$$/3117.dat';

--
-- Data for Name: date; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.date (date_id, userid, date, country, state, city, del_address1, zip, del_address2, del_address3) FROM stdin;
\.
COPY public.date (date_id, userid, date, country, state, city, del_address1, zip, del_address2, del_address3) FROM '$$PATH$$/3119.dat';

--
-- Data for Name: deliveryaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deliveryaddress (del_id, userid, "del_profileAddr", del_address1, del_address2, del_address3) FROM stdin;
\.
COPY public.deliveryaddress (del_id, userid, "del_profileAddr", del_address1, del_address2, del_address3) FROM '$$PATH$$/3121.dat';

--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.image (photo) FROM stdin;
\.
COPY public.image (photo) FROM '$$PATH$$/3106.dat';

--
-- Data for Name: image_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.image_table (id, firstname, lastname, filename, path) FROM stdin;
\.
COPY public.image_table (id, firstname, lastname, filename, path) FROM '$$PATH$$/3105.dat';

--
-- Data for Name: login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.login (userid, username, password, lastlogin) FROM stdin;
\.
COPY public.login (userid, username, password, lastlogin) FROM '$$PATH$$/3100.dat';

--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, product_id, userid, quantity) FROM stdin;
\.
COPY public.orders (order_id, product_id, userid, quantity) FROM '$$PATH$$/3110.dat';

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, product_name, product_description, product_price, max_quantity, category_id, istrendy, isnextrelease) FROM stdin;
\.
COPY public.product (product_id, product_name, product_description, product_price, max_quantity, category_id, istrendy, isnextrelease) FROM '$$PATH$$/3108.dat';

--
-- Data for Name: registration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registration (regid, userid, firstname, lastname, dob, gender, phonenum, address, created_on, security_id, security_answer) FROM stdin;
\.
COPY public.registration (regid, userid, firstname, lastname, dob, gender, phonenum, address, created_on, security_id, security_answer) FROM '$$PATH$$/3102.dat';

--
-- Data for Name: security_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.security_question (security_id, security_question) FROM stdin;
\.
COPY public.security_question (security_id, security_question) FROM '$$PATH$$/3104.dat';

--
-- Data for Name: spring_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spring_session (primary_id, session_id, creation_time, last_access_time, max_inactive_interval, expiry_time, principal_name) FROM stdin;
\.
COPY public.spring_session (primary_id, session_id, creation_time, last_access_time, max_inactive_interval, expiry_time, principal_name) FROM '$$PATH$$/3114.dat';

--
-- Data for Name: spring_session_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spring_session_attributes (session_primary_id, attribute_name, attribute_bytes) FROM stdin;
\.
COPY public.spring_session_attributes (session_primary_id, attribute_name, attribute_bytes) FROM '$$PATH$$/3115.dat';

--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_category_id_seq', 3, true);


--
-- Name: configuration_configuration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.configuration_configuration_id_seq', 1, false);


--
-- Name: date_date_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.date_date_id_seq', 1, true);


--
-- Name: deliveryaddress_del_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deliveryaddress_del_id_seq', 1, true);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 127, true);


--
-- Name: login_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.login_userid_seq', 65, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 565, true);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_product_id_seq', 8, true);


--
-- Name: registration_regid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.registration_regid_seq', 50, true);


--
-- Name: security_question_security_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.security_question_security_id_seq', 10, true);


--
-- Name: category category_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_id PRIMARY KEY (category_id);


--
-- Name: configuration configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configuration
    ADD CONSTRAINT configuration_pkey PRIMARY KEY (configuration_id);


--
-- Name: date date_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.date
    ADD CONSTRAINT date_pkey PRIMARY KEY (date_id);


--
-- Name: deliveryaddress deliveryaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deliveryaddress
    ADD CONSTRAINT deliveryaddress_pkey PRIMARY KEY (del_id);


--
-- Name: login login_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (userid);


--
-- Name: login login_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_username_key UNIQUE (username);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- Name: registration registration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registration
    ADD CONSTRAINT registration_pkey PRIMARY KEY (regid);


--
-- Name: security_question security_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.security_question
    ADD CONSTRAINT security_question_pkey PRIMARY KEY (security_id);


--
-- Name: spring_session_attributes spring_session_attributes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_pk PRIMARY KEY (session_primary_id, attribute_name);


--
-- Name: spring_session spring_session_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spring_session
    ADD CONSTRAINT spring_session_pk PRIMARY KEY (primary_id);


--
-- Name: spring_session_ix1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX spring_session_ix1 ON public.spring_session USING btree (session_id);


--
-- Name: spring_session_ix2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX spring_session_ix2 ON public.spring_session USING btree (expiry_time);


--
-- Name: spring_session_ix3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX spring_session_ix3 ON public.spring_session USING btree (principal_name);


--
-- Name: product fk_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- Name: date fk_login; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.date
    ADD CONSTRAINT fk_login FOREIGN KEY (userid) REFERENCES public.login(userid);


--
-- Name: deliveryaddress fk_login; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deliveryaddress
    ADD CONSTRAINT fk_login FOREIGN KEY (userid) REFERENCES public.login(userid);


--
-- Name: registration fk_userid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registration
    ADD CONSTRAINT fk_userid FOREIGN KEY (userid) REFERENCES public.login(userid);


--
-- Name: orders orders_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);


--
-- Name: orders orders_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_userid_fkey FOREIGN KEY (userid) REFERENCES public.login(userid);


--
-- Name: registration registration_security_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registration
    ADD CONSTRAINT registration_security_id_fkey FOREIGN KEY (security_id) REFERENCES public.security_question(security_id);


--
-- Name: spring_session_attributes spring_session_attributes_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spring_session_attributes
    ADD CONSTRAINT spring_session_attributes_fk FOREIGN KEY (session_primary_id) REFERENCES public.spring_session(primary_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           