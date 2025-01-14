PGDMP                         z         
   Projet-Web    14.2    14.2 )                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16394 
   Projet-Web    DATABASE     h   CREATE DATABASE "Projet-Web" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE "Projet-Web";
                postgres    false            $           0    0    DATABASE "Projet-Web"    ACL     m   REVOKE CONNECT,TEMPORARY ON DATABASE "Projet-Web" FROM PUBLIC;
GRANT ALL ON DATABASE "Projet-Web" TO PUBLIC;
                   postgres    false    3363            �            1259    16433    albums    TABLE     �   CREATE TABLE public.albums (
    id_album integer NOT NULL,
    title text NOT NULL,
    artist integer NOT NULL,
    cover text,
    release date NOT NULL
);
    DROP TABLE public.albums;
       public         heap    postgres    false            �            1259    16432    Albums_id_album_seq    SEQUENCE     �   ALTER TABLE public.albums ALTER COLUMN id_album ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Albums_id_album_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16412    artists    TABLE     �   CREATE TABLE public.artists (
    id_artist integer NOT NULL,
    name text NOT NULL,
    other_names text[],
    genre integer,
    image text
);
    DROP TABLE public.artists;
       public         heap    postgres    false            �            1259    16411    Artists_id_arstist_seq    SEQUENCE     �   ALTER TABLE public.artists ALTER COLUMN id_artist ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Artists_id_arstist_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            �            1259    16425    comments    TABLE     �   CREATE TABLE public.comments (
    id_comment integer NOT NULL,
    author text NOT NULL,
    content text NOT NULL,
    album integer NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    16424    Comments_id_seq    SEQUENCE     �   ALTER TABLE public.comments ALTER COLUMN id_comment ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Comments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    16468 
   featurings    TABLE     ]   CREATE TABLE public.featurings (
    song integer NOT NULL,
    f_artist integer NOT NULL
);
    DROP TABLE public.featurings;
       public         heap    postgres    false            �            1259    16404    genres    TABLE     m   CREATE TABLE public.genres (
    id_genre integer NOT NULL,
    genre text NOT NULL,
    description text
);
    DROP TABLE public.genres;
       public         heap    postgres    false            �            1259    16403    genres_idGenre_seq    SEQUENCE     �   ALTER TABLE public.genres ALTER COLUMN id_genre ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."genres_idGenre_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            �            1259    16451    songs    TABLE     m   CREATE TABLE public.songs (
    id_song integer NOT NULL,
    song_title text NOT NULL,
    album integer
);
    DROP TABLE public.songs;
       public         heap    postgres    false            �            1259    16450    songs_id_song_seq    SEQUENCE     �   ALTER TABLE public.songs ALTER COLUMN id_song ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.songs_id_song_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218                      0    16433    albums 
   TABLE DATA           I   COPY public.albums (id_album, title, artist, cover, release) FROM stdin;
    public          postgres    false    216   �,                 0    16412    artists 
   TABLE DATA           M   COPY public.artists (id_artist, name, other_names, genre, image) FROM stdin;
    public          postgres    false    212   y-                 0    16425    comments 
   TABLE DATA           F   COPY public.comments (id_comment, author, content, album) FROM stdin;
    public          postgres    false    214   l.                 0    16468 
   featurings 
   TABLE DATA           4   COPY public.featurings (song, f_artist) FROM stdin;
    public          postgres    false    219   
/                 0    16404    genres 
   TABLE DATA           >   COPY public.genres (id_genre, genre, description) FROM stdin;
    public          postgres    false    210   7/                 0    16451    songs 
   TABLE DATA           ;   COPY public.songs (id_song, song_title, album) FROM stdin;
    public          postgres    false    218   =6       %           0    0    Albums_id_album_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Albums_id_album_seq"', 34, true);
          public          postgres    false    215            &           0    0    Artists_id_arstist_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Artists_id_arstist_seq"', 70, true);
          public          postgres    false    211            '           0    0    Comments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Comments_id_seq"', 12, true);
          public          postgres    false    213            (           0    0    genres_idGenre_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."genres_idGenre_seq"', 58, true);
          public          postgres    false    209            )           0    0    songs_id_song_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.songs_id_song_seq', 39, true);
          public          postgres    false    217            }           2606    16439    albums Albums_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT "Albums_pkey" PRIMARY KEY (id_album);
 >   ALTER TABLE ONLY public.albums DROP CONSTRAINT "Albums_pkey";
       public            postgres    false    216            y           2606    16418    artists Artists_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.artists
    ADD CONSTRAINT "Artists_pkey" PRIMARY KEY (id_artist);
 @   ALTER TABLE ONLY public.artists DROP CONSTRAINT "Artists_pkey";
       public            postgres    false    212            {           2606    16431    comments Comments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY (id_comment);
 B   ALTER TABLE ONLY public.comments DROP CONSTRAINT "Comments_pkey";
       public            postgres    false    214            �           2606    16488    featurings featurings_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.featurings
    ADD CONSTRAINT featurings_pkey PRIMARY KEY (song, f_artist);
 D   ALTER TABLE ONLY public.featurings DROP CONSTRAINT featurings_pkey;
       public            postgres    false    219    219            w           2606    16410    genres genres_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id_genre);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    210                       2606    16457    songs songs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id_song);
 :   ALTER TABLE ONLY public.songs DROP CONSTRAINT songs_pkey;
       public            postgres    false    218            �           2606    16445    comments album    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT album FOREIGN KEY (album) REFERENCES public.albums(id_album) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 8   ALTER TABLE ONLY public.comments DROP CONSTRAINT album;
       public          postgres    false    3197    214    216            �           2606    16463    songs album    FK CONSTRAINT     �   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT album FOREIGN KEY (album) REFERENCES public.albums(id_album) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 5   ALTER TABLE ONLY public.songs DROP CONSTRAINT album;
       public          postgres    false    218    3197    216            �           2606    16440    albums artist    FK CONSTRAINT     �   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT artist FOREIGN KEY (artist) REFERENCES public.artists(id_artist) ON UPDATE CASCADE ON DELETE RESTRICT;
 7   ALTER TABLE ONLY public.albums DROP CONSTRAINT artist;
       public          postgres    false    212    216    3193            �           2606    16476    featurings artist    FK CONSTRAINT     �   ALTER TABLE ONLY public.featurings
    ADD CONSTRAINT artist FOREIGN KEY (f_artist) REFERENCES public.artists(id_artist) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.featurings DROP CONSTRAINT artist;
       public          postgres    false    212    219    3193            �           2606    16419    artists genres    FK CONSTRAINT     �   ALTER TABLE ONLY public.artists
    ADD CONSTRAINT genres FOREIGN KEY (genre) REFERENCES public.genres(id_genre) ON UPDATE CASCADE ON DELETE SET NULL;
 8   ALTER TABLE ONLY public.artists DROP CONSTRAINT genres;
       public          postgres    false    3191    212    210            �           2606    16471    featurings song    FK CONSTRAINT     �   ALTER TABLE ONLY public.featurings
    ADD CONSTRAINT song FOREIGN KEY (song) REFERENCES public.songs(id_song) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.featurings DROP CONSTRAINT song;
       public          postgres    false    3199    219    218                       826    24807     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     N   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES  TO PUBLIC;
                   postgres    false                       826    24806    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     K   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO PUBLIC;
                   postgres    false               z   x�Uͱ�@E�z�_����Pb���v6��Av_���'�Ϲ��P����lP[�ڊ�We���j�`��w���#]�.�LS4[��A���;��j�{4 bLV����"��b��&:         �   x�m�?k�0�����q%Y:�s��4dq;��T(*�l%PD�{;��rwo��{w��y<�9;@��0�+p�Ss�9JmC��������1@��ޖ��� �2� h�}��0��0��.�a���;K�;ۻ<.a�b��ލ�ƈZ�ջ�Ik/�;H���������[>�np�L�P�{4O�{
HkK�:�ϔ�7�R�6ȫӐ�j��ؿ@��b��e��Z����(� ��g         �   x��1�0k�KER$�(RD��9�,%��;?*���0����%�G��ZB/r^O��h���7�e!�����J����\�����4�.bx�b�X��(ˊE�a&<y!F��⒴��1������oF6G������}93            x�3�4�22�4��2��43����� "�         �  x��W˒�6<k����B�v��]>z���8����!� �#	0 (-}�?��%���Q���D�����3zv�z����}3ƦS�Vj�
����@6���ۭ��ё*���z�z��>�.�	J���'�v�w��j��!�R�FG,5����X�z�M���uG�A���k����cC����E�|��H�SGܙi�f8i;*O������ѩ�B�͖�Kc�:��ķ��*��	
���3"5!B�@�U4�cCV��B*�w�g���Em5#I�Ml��!}��&D�����D�"\^�΁���F��BfȗF���K����]�$'��_ �ƻ�n�����
 j�J��T� ��+���9�G���D����o�.�lз�o�����:bv�.�5 ����	H;z�8���@�"[�> �H����',Kb�_�k!����LN����@7�=R���ћ�� /wڴ�Ϻ�����(iL�x����94z���������o]�����9����������uG� ��_�WuTt����.8ď(|���'�č��ץ��c*�	8�;=� �h��[������ު�K����~s~���s�AF�e�t#�i�ؚ/���	��g�:�VQ��4�R-���!�B��& ���I������Wp�_k.`;W��,�NU��8��T�T3��=�,?}�m��FM&�]���YZ��Ŝ��NMz۲@���u����V��!�EH�t�bl�ۀ���L����|��)�o�|�����%�y	�],%�q���G7�f�����t<�l%Y������=u(S9Ba�Ύ��@6� %%�Qi0����s��Vp�LMF�tA	��8��&Q�=[��R�eI!�mK(܋#�?�Q��;]�_=���;T�?.��0Gx�3@ڃ�H1U:�	�p\,�P�ݎ<���q���|�O��)s;~��Q΍R ޹(ל�&��	��%O����+*��ʽs�a��h�A墾۵�e�.*!9�D��~L�����U�:D�W=]���-D��p��0@S��Z �e�;����Ϯ������U�P#���#�!��Ҧ��} �>�a"�4҈ T�\G��n��)��bn�X�yM.+۹���N�,��`Z6h��< }Lgf�| k�G��O�*M8���;�$ �@�:�(�篿��y1���!J�x�i�A\�@-{��ܨ�̞NQ�Y`��� �g�j݁�tI��*y��"u@7#��9�y�M��.�Tq��9�]�y�ڜ=�z����I��;0�)���z���Rݪvȴ}���cL�C�\�\�m;�5�,�4I8MML����*f�X���RE�Dem�m��Z;tQ~Fu�1�&�8�ㅆ����\cI:��E���`g�^W�e�79���l�ߟ�!�P$�l�y$M�'ד�O�N�C�hiZ�ix��%�O�e�U7��m>�}��P$�z�Tz��Kn�����.�ӛ� R�gx�J����A'�0ط<�a�{����DK<	<6E��_&OSf����b�#�&����D�#�̣3��S�~�-���&`���ݾP��R�s�zz��lW�$x�0x�S,l^��ucxHOS�S4��u������?�j+c��x�g�hf�o{.z��\�0��Bm�ݧ���&l�:���X���<��磆Y85�������-�qM8�-�Ʀ�>y�j�V�IV�]�Y
���)� �!�'�1Qh�޻�	"�|/6�=��S��F�5���$�M���Wʧ���ٿ���         K  x�%PAn�0</�pUNEBN�CL�ld!�\�j"�G.�Q�яո�������pk�v�zArj�{��w�/�C��$�,0\��陣��#>�K$SAj�l@�Ʌ(Τ�[�񙠪t(��+R�)��R	���X�hm�J!���s����G�p��""�4�dIݩ(�ܾi]3.M���9a��:��A��s�K߂���1�7il\� FO��19?f������,g��}7�)���Ƕ��۲��ď�!2|��V��r4�4�Y��5b��=4\��*Wb��QOpe^���H��B���*���섔] �ď�x�=��w�k[     