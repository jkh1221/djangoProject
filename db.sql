toc.dat                                                                                             0000600 0004000 0002000 00000132527 13557622104 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       
    w            django_board    11.5    11.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         �           1262    16393    django_board    DATABASE     �   CREATE DATABASE django_board WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.949' LC_CTYPE = 'English_United States.949';
    DROP DATABASE django_board;
             postgres    false         �            1259    16425 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false         �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203         �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202         �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false         �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205         �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204         �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false         �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201         �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200         �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false         �            1259    16453    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false         �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209         �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208         �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207         �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206         �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false         �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211         �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210         �            1259    16554    boards_board    TABLE     �   CREATE TABLE public.boards_board (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(100) NOT NULL
);
     DROP TABLE public.boards_board;
       public         postgres    false         �            1259    16552    boards_board_id_seq    SEQUENCE     �   CREATE SEQUENCE public.boards_board_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.boards_board_id_seq;
       public       postgres    false    215         �           0    0    boards_board_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.boards_board_id_seq OWNED BY public.boards_board.id;
            public       postgres    false    214         �            1259    16572    boards_post    TABLE       CREATE TABLE public.boards_post (
    id integer NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone,
    created_by_id integer NOT NULL,
    topic_id integer NOT NULL,
    updated_by_id integer
);
    DROP TABLE public.boards_post;
       public         postgres    false         �            1259    16570    boards_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.boards_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.boards_post_id_seq;
       public       postgres    false    219         �           0    0    boards_post_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.boards_post_id_seq OWNED BY public.boards_post.id;
            public       postgres    false    218         �            1259    16564    boards_topic    TABLE     9  CREATE TABLE public.boards_topic (
    id integer NOT NULL,
    subject character varying(255) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    board_id integer NOT NULL,
    starter_id integer NOT NULL,
    views integer NOT NULL,
    CONSTRAINT boards_topic_views_check CHECK ((views >= 0))
);
     DROP TABLE public.boards_topic;
       public         postgres    false         �            1259    16562    boards_topic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.boards_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.boards_topic_id_seq;
       public       postgres    false    217         �           0    0    boards_topic_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.boards_topic_id_seq OWNED BY public.boards_topic.id;
            public       postgres    false    216         �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false         �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213         �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212         �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false         �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199         �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198         �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false         �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197         �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196         �            1259    16631    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false         �            1259    16616    myBlog_post    TABLE       CREATE TABLE public."myBlog_post" (
    id integer NOT NULL,
    title character varying(220) NOT NULL,
    text text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    published_date timestamp with time zone,
    author_id integer NOT NULL
);
 !   DROP TABLE public."myBlog_post";
       public         postgres    false         �            1259    16614    myBlog_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public."myBlog_post_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."myBlog_post_id_seq";
       public       postgres    false    221         �           0    0    myBlog_post_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."myBlog_post_id_seq" OWNED BY public."myBlog_post".id;
            public       postgres    false    220         �
           2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203         �
           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205         �
           2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201         �
           2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207         �
           2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209         �
           2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211         �
           2604    16557    boards_board id    DEFAULT     r   ALTER TABLE ONLY public.boards_board ALTER COLUMN id SET DEFAULT nextval('public.boards_board_id_seq'::regclass);
 >   ALTER TABLE public.boards_board ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215         �
           2604    16575    boards_post id    DEFAULT     p   ALTER TABLE ONLY public.boards_post ALTER COLUMN id SET DEFAULT nextval('public.boards_post_id_seq'::regclass);
 =   ALTER TABLE public.boards_post ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219         �
           2604    16567    boards_topic id    DEFAULT     r   ALTER TABLE ONLY public.boards_topic ALTER COLUMN id SET DEFAULT nextval('public.boards_topic_id_seq'::regclass);
 >   ALTER TABLE public.boards_topic ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217         �
           2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213         �
           2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199         �
           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197         �
           2604    16619    myBlog_post id    DEFAULT     t   ALTER TABLE ONLY public."myBlog_post" ALTER COLUMN id SET DEFAULT nextval('public."myBlog_post_id_seq"'::regclass);
 ?   ALTER TABLE public."myBlog_post" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221         �          0    16425 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203       2989.dat �          0    16435    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205       2991.dat �          0    16417    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201       2987.dat �          0    16443 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207       2993.dat �          0    16453    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209       2995.dat �          0    16461    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211       2997.dat �          0    16554    boards_board 
   TABLE DATA               =   COPY public.boards_board (id, name, description) FROM stdin;
    public       postgres    false    215       3001.dat �          0    16572    boards_post 
   TABLE DATA               r   COPY public.boards_post (id, message, created_at, updated_at, created_by_id, topic_id, updated_by_id) FROM stdin;
    public       postgres    false    219       3005.dat �          0    16564    boards_topic 
   TABLE DATA               ^   COPY public.boards_topic (id, subject, last_updated, board_id, starter_id, views) FROM stdin;
    public       postgres    false    217       3003.dat �          0    16521    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213       2999.dat �          0    16407    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199       2985.dat �          0    16396    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197       2983.dat �          0    16631    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    222       3008.dat �          0    16616    myBlog_post 
   TABLE DATA               a   COPY public."myBlog_post" (id, title, text, created_date, published_date, author_id) FROM stdin;
    public       postgres    false    221       3007.dat �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202         �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204         �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
            public       postgres    false    200         �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208         �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
            public       postgres    false    206         �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210         �           0    0    boards_board_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.boards_board_id_seq', 3, true);
            public       postgres    false    214         �           0    0    boards_post_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.boards_post_id_seq', 106, true);
            public       postgres    false    218         �           0    0    boards_topic_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.boards_topic_id_seq', 102, true);
            public       postgres    false    216         �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
            public       postgres    false    212         �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
            public       postgres    false    198         �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
            public       postgres    false    196         �           0    0    myBlog_post_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."myBlog_post_id_seq"', 1, false);
            public       postgres    false    220         �
           2606    16550    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203         �
           2606    16487 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205         �
           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205         �
           2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203         �
           2606    16473 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201         �
           2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201         �
           2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209         �
           2606    16502 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209         �
           2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207                    2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211                    2606    16516 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211         �
           2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207                    2606    16561 "   boards_board boards_board_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.boards_board
    ADD CONSTRAINT boards_board_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.boards_board DROP CONSTRAINT boards_board_name_key;
       public         postgres    false    215                    2606    16559    boards_board boards_board_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.boards_board
    ADD CONSTRAINT boards_board_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.boards_board DROP CONSTRAINT boards_board_pkey;
       public         postgres    false    215                    2606    16580    boards_post boards_post_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.boards_post DROP CONSTRAINT boards_post_pkey;
       public         postgres    false    219                    2606    16569    boards_topic boards_topic_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.boards_topic DROP CONSTRAINT boards_topic_pkey;
       public         postgres    false    217                    2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213         �
           2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199         �
           2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199         �
           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197                    2606    16638 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    222                    2606    16624    myBlog_post myBlog_post_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."myBlog_post"
    ADD CONSTRAINT "myBlog_post_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."myBlog_post" DROP CONSTRAINT "myBlog_post_pkey";
       public         postgres    false    221         �
           1259    16551    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203         �
           1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205         �
           1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205         �
           1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201         �
           1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209         �
           1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209         �
           1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211                    1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211         �
           1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207         	           1259    16581    boards_board_name_08f3d006_like    INDEX     l   CREATE INDEX boards_board_name_08f3d006_like ON public.boards_board USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.boards_board_name_08f3d006_like;
       public         postgres    false    215                    1259    16609 "   boards_post_created_by_id_0b841038    INDEX     c   CREATE INDEX boards_post_created_by_id_0b841038 ON public.boards_post USING btree (created_by_id);
 6   DROP INDEX public.boards_post_created_by_id_0b841038;
       public         postgres    false    219                    1259    16610    boards_post_topic_id_f477c024    INDEX     Y   CREATE INDEX boards_post_topic_id_f477c024 ON public.boards_post USING btree (topic_id);
 1   DROP INDEX public.boards_post_topic_id_f477c024;
       public         postgres    false    219                    1259    16611 "   boards_post_updated_by_id_76d3c48f    INDEX     c   CREATE INDEX boards_post_updated_by_id_76d3c48f ON public.boards_post USING btree (updated_by_id);
 6   DROP INDEX public.boards_post_updated_by_id_76d3c48f;
       public         postgres    false    219                    1259    16592    boards_topic_board_id_4462fe82    INDEX     [   CREATE INDEX boards_topic_board_id_4462fe82 ON public.boards_topic USING btree (board_id);
 2   DROP INDEX public.boards_topic_board_id_4462fe82;
       public         postgres    false    217                    1259    16593     boards_topic_starter_id_60e98681    INDEX     _   CREATE INDEX boards_topic_starter_id_60e98681 ON public.boards_topic USING btree (starter_id);
 4   DROP INDEX public.boards_topic_starter_id_60e98681;
       public         postgres    false    217                    1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213                    1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213                    1259    16640 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    222                    1259    16639 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    222                    1259    16630    myBlog_post_author_id_2889d508    INDEX     _   CREATE INDEX "myBlog_post_author_id_2889d508" ON public."myBlog_post" USING btree (author_id);
 4   DROP INDEX public."myBlog_post_author_id_2889d508";
       public         postgres    false    221                     2606    16481 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    205    2792                    2606    16476 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    2797    203                    2606    16467 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2787    201    199         "           2606    16496 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    209    2797    203         !           2606    16491 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    207    209    2805         $           2606    16510 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    211    2792    201         #           2606    16505 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    207    2805    211         )           2606    16594 >   boards_post boards_post_created_by_id_0b841038_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_created_by_id_0b841038_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.boards_post DROP CONSTRAINT boards_post_created_by_id_0b841038_fk_auth_user_id;
       public       postgres    false    2805    207    219         *           2606    16599 <   boards_post boards_post_topic_id_f477c024_fk_boards_topic_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_topic_id_f477c024_fk_boards_topic_id FOREIGN KEY (topic_id) REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.boards_post DROP CONSTRAINT boards_post_topic_id_f477c024_fk_boards_topic_id;
       public       postgres    false    2832    219    217         +           2606    16604 >   boards_post boards_post_updated_by_id_76d3c48f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_updated_by_id_76d3c48f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.boards_post DROP CONSTRAINT boards_post_updated_by_id_76d3c48f_fk_auth_user_id;
       public       postgres    false    2805    207    219         '           2606    16582 >   boards_topic boards_topic_board_id_4462fe82_fk_boards_board_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_board_id_4462fe82_fk_boards_board_id FOREIGN KEY (board_id) REFERENCES public.boards_board(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.boards_topic DROP CONSTRAINT boards_topic_board_id_4462fe82_fk_boards_board_id;
       public       postgres    false    215    2829    217         (           2606    16587 =   boards_topic boards_topic_starter_id_60e98681_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_starter_id_60e98681_fk_auth_user_id FOREIGN KEY (starter_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.boards_topic DROP CONSTRAINT boards_topic_starter_id_60e98681_fk_auth_user_id;
       public       postgres    false    217    207    2805         %           2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    2787    213         &           2606    16536 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    207    213    2805         ,           2606    16625 :   myBlog_post myBlog_post_author_id_2889d508_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."myBlog_post"
    ADD CONSTRAINT "myBlog_post_author_id_2889d508_fk_auth_user_id" FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public."myBlog_post" DROP CONSTRAINT "myBlog_post_author_id_2889d508_fk_auth_user_id";
       public       postgres    false    207    2805    221                                                                                                                                                                                 2989.dat                                                                                            0000600 0004000 0002000 00000000005 13557622104 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2991.dat                                                                                            0000600 0004000 0002000 00000000005 13557622104 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2987.dat                                                                                            0000600 0004000 0002000 00000002604 13557622104 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add post	7	add_post
26	Can change post	7	change_post
27	Can delete post	7	delete_post
28	Can view post	7	view_post
29	Can add board	8	add_board
30	Can change board	8	change_board
31	Can delete board	8	delete_board
32	Can view board	8	view_board
33	Can add topic	9	add_topic
34	Can change topic	9	change_topic
35	Can delete topic	9	delete_topic
36	Can view topic	9	view_topic
37	Can add post	10	add_post
38	Can change post	10	change_post
39	Can delete post	10	delete_post
40	Can view post	10	view_post
\.


                                                                                                                            2993.dat                                                                                            0000600 0004000 0002000 00000000507 13557622104 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	pbkdf2_sha256$150000$Bw56fjmQXjUF$+H/aZXKcvIuMyUJKSvaWMlaosUc5C1e1dHZvH9Jv3hI=	2019-09-12 16:59:21.989489+08	f	user2				f	t	2019-08-31 22:16:01.02588+08
2	pbkdf2_sha256$150000$kCJ68lPNJBBx$cPUuQb9/Hg74o7kamZFCt68w2BaRqWqiMl+5rOKjMWA=	2019-09-25 21:54:54.302539+08	t	admin			admin@11.11	t	t	2019-08-31 22:13:19.682776+08
\.


                                                                                                                                                                                         2995.dat                                                                                            0000600 0004000 0002000 00000000005 13557622104 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2997.dat                                                                                            0000600 0004000 0002000 00000000005 13557622104 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3001.dat                                                                                            0000600 0004000 0002000 00000000165 13557622104 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Python	this is Python Description
2	Django	this is Django Description
3	Empty Board	This is test Board Empty.
\.


                                                                                                                                                                                                                                                                                                                                                                                                           3005.dat                                                                                            0000600 0004000 0002000 00000014144 13557622104 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ddddddddddddddd	2019-08-31 22:19:44.431021+08	\N	2	1	\N
2	ddddddddddddddd	2019-08-31 22:19:53.714251+08	\N	2	2	\N
3	# dddddddddd****	2019-08-31 22:20:16.392478+08	\N	2	2	\N
4	Lorem ipsum...	2019-08-31 22:35:59.808385+08	\N	2	3	\N
5	Lorem ipsum...	2019-08-31 22:35:59.813372+08	\N	2	4	\N
6	Lorem ipsum...	2019-08-31 22:35:59.815366+08	\N	2	5	\N
7	Lorem ipsum...	2019-08-31 22:35:59.818357+08	\N	2	6	\N
8	Lorem ipsum...	2019-08-31 22:35:59.821351+08	\N	2	7	\N
9	Lorem ipsum...	2019-08-31 22:35:59.824342+08	\N	2	8	\N
10	Lorem ipsum...	2019-08-31 22:35:59.827334+08	\N	2	9	\N
11	Lorem ipsum...	2019-08-31 22:35:59.830325+08	\N	2	10	\N
12	Lorem ipsum...	2019-08-31 22:35:59.833318+08	\N	2	11	\N
13	Lorem ipsum...	2019-08-31 22:35:59.83631+08	\N	2	12	\N
14	Lorem ipsum...	2019-08-31 22:35:59.838304+08	\N	2	13	\N
15	Lorem ipsum...	2019-08-31 22:35:59.840314+08	\N	2	14	\N
16	Lorem ipsum...	2019-08-31 22:35:59.843296+08	\N	2	15	\N
17	Lorem ipsum...	2019-08-31 22:35:59.846283+08	\N	2	16	\N
18	Lorem ipsum...	2019-08-31 22:35:59.849275+08	\N	2	17	\N
19	Lorem ipsum...	2019-08-31 22:35:59.85127+08	\N	2	18	\N
20	Lorem ipsum...	2019-08-31 22:35:59.854262+08	\N	2	19	\N
21	Lorem ipsum...	2019-08-31 22:35:59.856257+08	\N	2	20	\N
22	Lorem ipsum...	2019-08-31 22:35:59.858262+08	\N	2	21	\N
23	Lorem ipsum...	2019-08-31 22:35:59.861268+08	\N	2	22	\N
24	Lorem ipsum...	2019-08-31 22:35:59.863247+08	\N	2	23	\N
25	Lorem ipsum...	2019-08-31 22:35:59.865234+08	\N	2	24	\N
26	Lorem ipsum...	2019-08-31 22:35:59.867227+08	\N	2	25	\N
27	Lorem ipsum...	2019-08-31 22:35:59.869244+08	\N	2	26	\N
28	Lorem ipsum...	2019-08-31 22:35:59.87022+08	\N	2	27	\N
29	Lorem ipsum...	2019-08-31 22:35:59.872214+08	\N	2	28	\N
30	Lorem ipsum...	2019-08-31 22:35:59.874208+08	\N	2	29	\N
31	Lorem ipsum...	2019-08-31 22:35:59.877201+08	\N	2	30	\N
32	Lorem ipsum...	2019-08-31 22:35:59.87922+08	\N	2	31	\N
33	Lorem ipsum...	2019-08-31 22:35:59.880192+08	\N	2	32	\N
34	Lorem ipsum...	2019-08-31 22:35:59.882188+08	\N	2	33	\N
35	Lorem ipsum...	2019-08-31 22:35:59.885179+08	\N	2	34	\N
36	Lorem ipsum...	2019-08-31 22:35:59.887174+08	\N	2	35	\N
37	Lorem ipsum...	2019-08-31 22:35:59.890166+08	\N	2	36	\N
38	Lorem ipsum...	2019-08-31 22:35:59.892162+08	\N	2	37	\N
39	Lorem ipsum...	2019-08-31 22:35:59.894155+08	\N	2	38	\N
40	Lorem ipsum...	2019-08-31 22:35:59.89615+08	\N	2	39	\N
41	Lorem ipsum...	2019-08-31 22:35:59.897146+08	\N	2	40	\N
42	Lorem ipsum...	2019-08-31 22:35:59.899142+08	\N	2	41	\N
43	Lorem ipsum...	2019-08-31 22:35:59.901137+08	\N	2	42	\N
44	Lorem ipsum...	2019-08-31 22:35:59.903131+08	\N	2	43	\N
45	Lorem ipsum...	2019-08-31 22:35:59.904153+08	\N	2	44	\N
46	Lorem ipsum...	2019-08-31 22:35:59.906123+08	\N	2	45	\N
47	Lorem ipsum...	2019-08-31 22:35:59.90712+08	\N	2	46	\N
48	Lorem ipsum...	2019-08-31 22:35:59.909115+08	\N	2	47	\N
49	Lorem ipsum...	2019-08-31 22:35:59.913128+08	\N	2	48	\N
50	Lorem ipsum...	2019-08-31 22:35:59.914101+08	\N	2	49	\N
51	Lorem ipsum...	2019-08-31 22:35:59.916097+08	\N	2	50	\N
52	Lorem ipsum...	2019-08-31 22:35:59.917118+08	\N	2	51	\N
53	Lorem ipsum...	2019-08-31 22:35:59.919088+08	\N	2	52	\N
54	Lorem ipsum...	2019-08-31 22:35:59.921083+08	\N	2	53	\N
55	Lorem ipsum...	2019-08-31 22:35:59.923101+08	\N	2	54	\N
56	Lorem ipsum...	2019-08-31 22:35:59.924102+08	\N	2	55	\N
57	Lorem ipsum...	2019-08-31 22:35:59.927091+08	\N	2	56	\N
58	Lorem ipsum...	2019-08-31 22:35:59.928064+08	\N	2	57	\N
59	Lorem ipsum...	2019-08-31 22:35:59.93006+08	\N	2	58	\N
60	Lorem ipsum...	2019-08-31 22:35:59.932421+08	\N	2	59	\N
61	Lorem ipsum...	2019-08-31 22:35:59.933871+08	\N	2	60	\N
62	Lorem ipsum...	2019-08-31 22:35:59.934871+08	\N	2	61	\N
63	Lorem ipsum...	2019-08-31 22:35:59.936865+08	\N	2	62	\N
64	Lorem ipsum...	2019-08-31 22:35:59.937887+08	\N	2	63	\N
65	Lorem ipsum...	2019-08-31 22:35:59.940869+08	\N	2	64	\N
66	Lorem ipsum...	2019-08-31 22:35:59.942852+08	\N	2	65	\N
67	Lorem ipsum...	2019-08-31 22:35:59.944843+08	\N	2	66	\N
68	Lorem ipsum...	2019-08-31 22:35:59.94584+08	\N	2	67	\N
69	Lorem ipsum...	2019-08-31 22:35:59.947836+08	\N	2	68	\N
70	Lorem ipsum...	2019-08-31 22:35:59.950827+08	\N	2	69	\N
71	Lorem ipsum...	2019-08-31 22:35:59.951825+08	\N	2	70	\N
72	Lorem ipsum...	2019-08-31 22:35:59.953819+08	\N	2	71	\N
73	Lorem ipsum...	2019-08-31 22:35:59.956811+08	\N	2	72	\N
74	Lorem ipsum...	2019-08-31 22:35:59.959824+08	\N	2	73	\N
75	Lorem ipsum...	2019-08-31 22:35:59.961802+08	\N	2	74	\N
76	Lorem ipsum...	2019-08-31 22:35:59.963802+08	\N	2	75	\N
77	Lorem ipsum...	2019-08-31 22:35:59.965812+08	\N	2	76	\N
78	Lorem ipsum...	2019-08-31 22:35:59.966786+08	\N	2	77	\N
79	Lorem ipsum...	2019-08-31 22:35:59.96878+08	\N	2	78	\N
80	Lorem ipsum...	2019-08-31 22:35:59.970785+08	\N	2	79	\N
81	Lorem ipsum...	2019-08-31 22:35:59.972793+08	\N	2	80	\N
82	Lorem ipsum...	2019-08-31 22:35:59.97479+08	\N	2	81	\N
83	Lorem ipsum...	2019-08-31 22:35:59.976758+08	\N	2	82	\N
84	Lorem ipsum...	2019-08-31 22:35:59.978753+08	\N	2	83	\N
85	Lorem ipsum...	2019-08-31 22:35:59.979751+08	\N	2	84	\N
86	Lorem ipsum...	2019-08-31 22:35:59.981745+08	\N	2	85	\N
87	Lorem ipsum...	2019-08-31 22:35:59.983739+08	\N	2	86	\N
88	Lorem ipsum...	2019-08-31 22:35:59.985735+08	\N	2	87	\N
89	Lorem ipsum...	2019-08-31 22:35:59.987729+08	\N	2	88	\N
90	Lorem ipsum...	2019-08-31 22:35:59.988726+08	\N	2	89	\N
91	Lorem ipsum...	2019-08-31 22:35:59.990721+08	\N	2	90	\N
92	Lorem ipsum...	2019-08-31 22:35:59.992724+08	\N	2	91	\N
93	Lorem ipsum...	2019-08-31 22:35:59.995725+08	\N	2	92	\N
94	Lorem ipsum...	2019-08-31 22:35:59.997726+08	\N	2	93	\N
95	Lorem ipsum...	2019-08-31 22:35:59.998699+08	\N	2	94	\N
96	Lorem ipsum...	2019-08-31 22:36:00.001691+08	\N	2	95	\N
97	Lorem ipsum...	2019-08-31 22:36:00.003687+08	\N	2	96	\N
98	Lorem ipsum...	2019-08-31 22:36:00.005683+08	\N	2	97	\N
99	Lorem ipsum...	2019-08-31 22:36:00.007676+08	\N	2	98	\N
100	Lorem ipsum...	2019-08-31 22:36:00.010668+08	\N	2	99	\N
101	Lorem ipsum...	2019-08-31 22:36:00.013682+08	\N	2	100	\N
102	Lorem ipsum...	2019-08-31 22:36:00.014657+08	\N	2	101	\N
103	Lorem ipsum...	2019-08-31 22:36:00.016664+08	\N	2	102	\N
104	# dddddddddddd	2019-08-31 22:38:49.415893+08	\N	3	102	\N
105	## **eeeeeeeee**	2019-09-12 23:23:40.868216+08	\N	3	1	\N
106	# kkkkkkkkkkk	2019-09-12 23:38:00.023198+08	\N	3	2	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                            3003.dat                                                                                            0000600 0004000 0002000 00000012563 13557622104 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	sssssss subject	2019-09-12 23:23:40.872199+08	1	2	5
95	Topic test #92	2019-08-31 22:36:00.000715+08	2	2	0
2	sssssss subject	2019-09-12 23:38:00.028157+08	1	2	5
3	Topic test #0	2019-08-31 22:35:59.804395+08	2	2	0
4	Topic test #1	2019-08-31 22:35:59.812373+08	2	2	0
5	Topic test #2	2019-08-31 22:35:59.814369+08	2	2	0
6	Topic test #3	2019-08-31 22:35:59.817361+08	2	2	0
7	Topic test #4	2019-08-31 22:35:59.820352+08	2	2	0
8	Topic test #5	2019-08-31 22:35:59.823346+08	2	2	0
9	Topic test #6	2019-08-31 22:35:59.826336+08	2	2	0
10	Topic test #7	2019-08-31 22:35:59.829328+08	2	2	0
11	Topic test #8	2019-08-31 22:35:59.83232+08	2	2	0
12	Topic test #9	2019-08-31 22:35:59.834316+08	2	2	0
13	Topic test #10	2019-08-31 22:35:59.837306+08	2	2	0
14	Topic test #11	2019-08-31 22:35:59.839311+08	2	2	0
15	Topic test #12	2019-08-31 22:35:59.842294+08	2	2	0
16	Topic test #13	2019-08-31 22:35:59.84529+08	2	2	0
17	Topic test #14	2019-08-31 22:35:59.848277+08	2	2	0
18	Topic test #15	2019-08-31 22:35:59.850272+08	2	2	0
19	Topic test #16	2019-08-31 22:35:59.852297+08	2	2	0
20	Topic test #17	2019-08-31 22:35:59.855259+08	2	2	0
21	Topic test #18	2019-08-31 22:35:59.857253+08	2	2	0
22	Topic test #19	2019-08-31 22:35:59.860246+08	2	2	0
23	Topic test #20	2019-08-31 22:35:59.862266+08	2	2	0
24	Topic test #21	2019-08-31 22:35:59.864263+08	2	2	0
25	Topic test #22	2019-08-31 22:35:59.86623+08	2	2	0
26	Topic test #23	2019-08-31 22:35:59.868224+08	2	2	0
27	Topic test #24	2019-08-31 22:35:59.87022+08	2	2	0
28	Topic test #25	2019-08-31 22:35:59.871241+08	2	2	0
29	Topic test #26	2019-08-31 22:35:59.87321+08	2	2	0
30	Topic test #27	2019-08-31 22:35:59.875205+08	2	2	0
31	Topic test #28	2019-08-31 22:35:59.878197+08	2	2	0
32	Topic test #29	2019-08-31 22:35:59.880192+08	2	2	0
33	Topic test #30	2019-08-31 22:35:59.881219+08	2	2	0
34	Topic test #31	2019-08-31 22:35:59.884181+08	2	2	0
35	Topic test #32	2019-08-31 22:35:59.8862+08	2	2	0
36	Topic test #33	2019-08-31 22:35:59.889168+08	2	2	0
37	Topic test #34	2019-08-31 22:35:59.891162+08	2	2	0
38	Topic test #35	2019-08-31 22:35:59.893189+08	2	2	0
39	Topic test #36	2019-08-31 22:35:59.895161+08	2	2	0
40	Topic test #37	2019-08-31 22:35:59.89615+08	2	2	0
41	Topic test #38	2019-08-31 22:35:59.898169+08	2	2	0
42	Topic test #39	2019-08-31 22:35:59.900139+08	2	2	0
43	Topic test #40	2019-08-31 22:35:59.902134+08	2	2	0
44	Topic test #41	2019-08-31 22:35:59.903131+08	2	2	0
45	Topic test #42	2019-08-31 22:35:59.905126+08	2	2	0
46	Topic test #43	2019-08-31 22:35:59.906123+08	2	2	0
47	Topic test #44	2019-08-31 22:35:59.908137+08	2	2	0
48	Topic test #45	2019-08-31 22:35:59.912107+08	2	2	0
49	Topic test #46	2019-08-31 22:35:59.913128+08	2	2	0
50	Topic test #47	2019-08-31 22:35:59.915099+08	2	2	0
51	Topic test #48	2019-08-31 22:35:59.916097+08	2	2	0
52	Topic test #49	2019-08-31 22:35:59.918111+08	2	2	0
53	Topic test #50	2019-08-31 22:35:59.920086+08	2	2	0
54	Topic test #51	2019-08-31 22:35:59.922081+08	2	2	0
55	Topic test #52	2019-08-31 22:35:59.923101+08	2	2	0
56	Topic test #53	2019-08-31 22:35:59.925108+08	2	2	0
57	Topic test #54	2019-08-31 22:35:59.928064+08	2	2	0
58	Topic test #55	2019-08-31 22:35:59.929086+08	2	2	0
59	Topic test #56	2019-08-31 22:35:59.931057+08	2	2	0
60	Topic test #57	2019-08-31 22:35:59.933236+08	2	2	0
61	Topic test #58	2019-08-31 22:35:59.934871+08	2	2	0
62	Topic test #59	2019-08-31 22:35:59.935891+08	2	2	0
63	Topic test #60	2019-08-31 22:35:59.937887+08	2	2	0
64	Topic test #61	2019-08-31 22:35:59.938884+08	2	2	0
65	Topic test #62	2019-08-31 22:35:59.941851+08	2	2	0
66	Topic test #63	2019-08-31 22:35:59.943846+08	2	2	0
67	Topic test #64	2019-08-31 22:35:59.944843+08	2	2	0
68	Topic test #65	2019-08-31 22:35:59.946863+08	2	2	0
69	Topic test #66	2019-08-31 22:35:59.948836+08	2	2	0
70	Topic test #67	2019-08-31 22:35:59.951825+08	2	2	0
71	Topic test #68	2019-08-31 22:35:59.952846+08	2	2	0
72	Topic test #69	2019-08-31 22:35:59.955814+08	2	2	0
73	Topic test #70	2019-08-31 22:35:59.958809+08	2	2	0
74	Topic test #71	2019-08-31 22:35:59.960801+08	2	2	0
75	Topic test #72	2019-08-31 22:35:59.962796+08	2	2	0
76	Topic test #73	2019-08-31 22:35:59.964791+08	2	2	0
77	Topic test #74	2019-08-31 22:35:59.965812+08	2	2	0
78	Topic test #75	2019-08-31 22:35:59.967808+08	2	2	0
79	Topic test #76	2019-08-31 22:35:59.969801+08	2	2	0
80	Topic test #77	2019-08-31 22:35:59.971771+08	2	2	0
81	Topic test #78	2019-08-31 22:35:59.973767+08	2	2	0
82	Topic test #79	2019-08-31 22:35:59.975761+08	2	2	0
83	Topic test #80	2019-08-31 22:35:59.977756+08	2	2	0
84	Topic test #81	2019-08-31 22:35:59.979751+08	2	2	0
85	Topic test #82	2019-08-31 22:35:59.980772+08	2	2	0
86	Topic test #83	2019-08-31 22:35:59.982769+08	2	2	0
87	Topic test #84	2019-08-31 22:35:59.984738+08	2	2	0
88	Topic test #85	2019-08-31 22:35:59.986732+08	2	2	0
89	Topic test #86	2019-08-31 22:35:59.988726+08	2	2	0
90	Topic test #87	2019-08-31 22:35:59.989748+08	2	2	0
91	Topic test #88	2019-08-31 22:35:59.991718+08	2	2	0
93	Topic test #90	2019-08-31 22:35:59.996705+08	2	2	0
94	Topic test #91	2019-08-31 22:35:59.997726+08	2	2	0
96	Topic test #93	2019-08-31 22:36:00.002689+08	2	2	0
97	Topic test #94	2019-08-31 22:36:00.004683+08	2	2	0
98	Topic test #95	2019-08-31 22:36:00.006679+08	2	2	0
100	Topic test #97	2019-08-31 22:36:00.011665+08	2	2	0
101	Topic test #98	2019-08-31 22:36:00.014657+08	2	2	0
99	Topic test #96	2019-08-31 22:36:00.009675+08	2	2	1
92	Topic test #89	2019-08-31 22:35:59.994715+08	2	2	1
102	Topic test #99	2019-08-31 22:38:49.418885+08	2	2	2
\.


                                                                                                                                             2999.dat                                                                                            0000600 0004000 0002000 00000000405 13557622104 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2019-08-31 22:16:01.189442+08	3	user2	1	[{"added": {}}]	4	2
2	2019-08-31 22:18:01.843554+08	1	Python	1	[{"added": {}}]	8	2
3	2019-08-31 22:18:32.985147+08	2	Django	1	[{"added": {}}]	8	2
4	2019-08-31 22:19:07.316319+08	3	Empty Board	1	[{"added": {}}]	8	2
\.


                                                                                                                                                                                                                                                           2985.dat                                                                                            0000600 0004000 0002000 00000000252 13557622104 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	myBlog	post
8	boards	board
9	boards	topic
10	boards	post
\.


                                                                                                                                                                                                                                                                                                                                                      2983.dat                                                                                            0000600 0004000 0002000 00000002445 13557622104 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2019-08-31 22:03:03.840422+08
2	auth	0001_initial	2019-08-31 22:03:03.895346+08
3	admin	0001_initial	2019-08-31 22:03:03.97125+08
4	admin	0002_logentry_remove_auto_add	2019-08-31 22:03:03.98935+08
5	admin	0003_logentry_add_action_flag_choices	2019-08-31 22:03:03.997328+08
6	contenttypes	0002_remove_content_type_name	2019-08-31 22:03:04.015281+08
7	auth	0002_alter_permission_name_max_length	2019-08-31 22:03:04.021266+08
8	auth	0003_alter_user_email_max_length	2019-08-31 22:03:04.029267+08
9	auth	0004_alter_user_username_opts	2019-08-31 22:03:04.037222+08
10	auth	0005_alter_user_last_login_null	2019-08-31 22:03:04.045226+08
11	auth	0006_require_contenttypes_0002	2019-08-31 22:03:04.047194+08
12	auth	0007_alter_validators_add_error_messages	2019-08-31 22:03:04.055202+08
13	auth	0008_alter_user_username_max_length	2019-08-31 22:03:04.069157+08
14	auth	0009_alter_user_last_name_max_length	2019-08-31 22:03:04.077149+08
15	auth	0010_alter_group_name_max_length	2019-08-31 22:03:04.087109+08
16	auth	0011_update_proxy_permissions	2019-08-31 22:03:04.095088+08
17	boards	0001_initial	2019-08-31 22:03:04.134905+08
18	boards	0002_topic_views	2019-08-31 22:03:04.177819+08
19	myBlog	0001_initial	2019-08-31 22:03:04.198735+08
20	sessions	0001_initial	2019-08-31 22:03:04.218709+08
\.


                                                                                                                                                                                                                           3008.dat                                                                                            0000600 0004000 0002000 00000002521 13557622104 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1kvu24j6anxm16bn94ux751upka4c4m2	Y2MwZGI2YWQ3YzViNDc0Yzc5NDZiYmFmMDQ3NzEzZGYzYzgxMmE0Yjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MzM0ZGQwNWY4ZjEzYjg0ZmQ2NjBkZjQ5N2Q5NDAwODAwMzgwM2IyIiwidmlld2VkX3RvcGljXzEwMiI6dHJ1ZX0=	2019-09-14 22:38:34.756999+08
l4fuxkaek9yfxtzrkm20c8wdol4mc1py	NjVmOTcxM2JlY2Q5MDk4MTg4ZmJkNjFmZjAyMTQ2ZmQ4YzQ1MzdkMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjJmYjZhNWY2NzhjMzEzNDVjNjAzNGVlZTFhMTQ4MDFkMmNlOGU2In0=	2019-09-30 16:49:43.232135+08
e70z0j4fapx64ewe2xm73skmcbtzcafv	NjVmOTcxM2JlY2Q5MDk4MTg4ZmJkNjFmZjAyMTQ2ZmQ4YzQ1MzdkMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjJmYjZhNWY2NzhjMzEzNDVjNjAzNGVlZTFhMTQ4MDFkMmNlOGU2In0=	2019-10-09 21:35:23.637499+08
k1lmcgyqfr8ctg41h8rwbsrvosi2m1ts	NTFkYWI1NTdkZmMxYTAxOTRjZDg2NmNhZTk2YjQzOTI3NWMzOWY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjJmYjZhNWY2NzhjMzEzNDVjNjAzNGVlZTFhMTQ4MDFkMmNlOGU2Iiwidmlld2VkX3RvcGljXzIiOnRydWUsInZpZXdlZF90b3BpY18xIjp0cnVlfQ==	2019-10-18 18:17:20.068112+08
\.


                                                                                                                                                                               3007.dat                                                                                            0000600 0004000 0002000 00000000005 13557622104 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000105326 13557622104 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

DROP DATABASE django_board;
--
-- Name: django_board; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE django_board WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.949' LC_CTYPE = 'English_United States.949';


ALTER DATABASE django_board OWNER TO postgres;

\connect django_board

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: boards_board; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_board (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(100) NOT NULL
);


ALTER TABLE public.boards_board OWNER TO postgres;

--
-- Name: boards_board_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_board_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_board_id_seq OWNER TO postgres;

--
-- Name: boards_board_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_board_id_seq OWNED BY public.boards_board.id;


--
-- Name: boards_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_post (
    id integer NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone,
    created_by_id integer NOT NULL,
    topic_id integer NOT NULL,
    updated_by_id integer
);


ALTER TABLE public.boards_post OWNER TO postgres;

--
-- Name: boards_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_post_id_seq OWNER TO postgres;

--
-- Name: boards_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_post_id_seq OWNED BY public.boards_post.id;


--
-- Name: boards_topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_topic (
    id integer NOT NULL,
    subject character varying(255) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    board_id integer NOT NULL,
    starter_id integer NOT NULL,
    views integer NOT NULL,
    CONSTRAINT boards_topic_views_check CHECK ((views >= 0))
);


ALTER TABLE public.boards_topic OWNER TO postgres;

--
-- Name: boards_topic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_topic_id_seq OWNER TO postgres;

--
-- Name: boards_topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_topic_id_seq OWNED BY public.boards_topic.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: myBlog_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."myBlog_post" (
    id integer NOT NULL,
    title character varying(220) NOT NULL,
    text text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    published_date timestamp with time zone,
    author_id integer NOT NULL
);


ALTER TABLE public."myBlog_post" OWNER TO postgres;

--
-- Name: myBlog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."myBlog_post_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."myBlog_post_id_seq" OWNER TO postgres;

--
-- Name: myBlog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."myBlog_post_id_seq" OWNED BY public."myBlog_post".id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: boards_board id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_board ALTER COLUMN id SET DEFAULT nextval('public.boards_board_id_seq'::regclass);


--
-- Name: boards_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post ALTER COLUMN id SET DEFAULT nextval('public.boards_post_id_seq'::regclass);


--
-- Name: boards_topic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic ALTER COLUMN id SET DEFAULT nextval('public.boards_topic_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: myBlog_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."myBlog_post" ALTER COLUMN id SET DEFAULT nextval('public."myBlog_post_id_seq"'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/2989.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/2991.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/2987.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/2993.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/2995.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/2997.dat';

--
-- Data for Name: boards_board; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_board (id, name, description) FROM stdin;
\.
COPY public.boards_board (id, name, description) FROM '$$PATH$$/3001.dat';

--
-- Data for Name: boards_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_post (id, message, created_at, updated_at, created_by_id, topic_id, updated_by_id) FROM stdin;
\.
COPY public.boards_post (id, message, created_at, updated_at, created_by_id, topic_id, updated_by_id) FROM '$$PATH$$/3005.dat';

--
-- Data for Name: boards_topic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_topic (id, subject, last_updated, board_id, starter_id, views) FROM stdin;
\.
COPY public.boards_topic (id, subject, last_updated, board_id, starter_id, views) FROM '$$PATH$$/3003.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/2999.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/2985.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/2983.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3008.dat';

--
-- Data for Name: myBlog_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."myBlog_post" (id, title, text, created_date, published_date, author_id) FROM stdin;
\.
COPY public."myBlog_post" (id, title, text, created_date, published_date, author_id) FROM '$$PATH$$/3007.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: boards_board_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_board_id_seq', 3, true);


--
-- Name: boards_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_post_id_seq', 106, true);


--
-- Name: boards_topic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_topic_id_seq', 102, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: myBlog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."myBlog_post_id_seq"', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: boards_board boards_board_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_board
    ADD CONSTRAINT boards_board_name_key UNIQUE (name);


--
-- Name: boards_board boards_board_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_board
    ADD CONSTRAINT boards_board_pkey PRIMARY KEY (id);


--
-- Name: boards_post boards_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_pkey PRIMARY KEY (id);


--
-- Name: boards_topic boards_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: myBlog_post myBlog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."myBlog_post"
    ADD CONSTRAINT "myBlog_post_pkey" PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: boards_board_name_08f3d006_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_board_name_08f3d006_like ON public.boards_board USING btree (name varchar_pattern_ops);


--
-- Name: boards_post_created_by_id_0b841038; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_post_created_by_id_0b841038 ON public.boards_post USING btree (created_by_id);


--
-- Name: boards_post_topic_id_f477c024; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_post_topic_id_f477c024 ON public.boards_post USING btree (topic_id);


--
-- Name: boards_post_updated_by_id_76d3c48f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_post_updated_by_id_76d3c48f ON public.boards_post USING btree (updated_by_id);


--
-- Name: boards_topic_board_id_4462fe82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_board_id_4462fe82 ON public.boards_topic USING btree (board_id);


--
-- Name: boards_topic_starter_id_60e98681; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_starter_id_60e98681 ON public.boards_topic USING btree (starter_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: myBlog_post_author_id_2889d508; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "myBlog_post_author_id_2889d508" ON public."myBlog_post" USING btree (author_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_post boards_post_created_by_id_0b841038_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_created_by_id_0b841038_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_post boards_post_topic_id_f477c024_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_topic_id_f477c024_fk_boards_topic_id FOREIGN KEY (topic_id) REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_post boards_post_updated_by_id_76d3c48f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_updated_by_id_76d3c48f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic boards_topic_board_id_4462fe82_fk_boards_board_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_board_id_4462fe82_fk_boards_board_id FOREIGN KEY (board_id) REFERENCES public.boards_board(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic boards_topic_starter_id_60e98681_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_starter_id_60e98681_fk_auth_user_id FOREIGN KEY (starter_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: myBlog_post myBlog_post_author_id_2889d508_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."myBlog_post"
    ADD CONSTRAINT "myBlog_post_author_id_2889d508_fk_auth_user_id" FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          