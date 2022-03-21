PGDMP     %                    z         
   Projet-Web    14.2    14.2 &               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    16394 
   Projet-Web    DATABASE     h   CREATE DATABASE "Projet-Web" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE "Projet-Web";
                postgres    false            �            1259    16433    albums    TABLE     �   CREATE TABLE public.albums (
    id_album integer NOT NULL,
    title text NOT NULL,
    release date NOT NULL,
    artist integer NOT NULL
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
   featurings    TABLE     [   CREATE TABLE public.featurings (
    song integer NOT NULL,
    artist integer NOT NULL
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
            public          postgres    false    218                      0    16433    albums 
   TABLE DATA           B   COPY public.albums (id_album, title, release, artist) FROM stdin;
    public          postgres    false    216   *                 0    16412    artists 
   TABLE DATA           M   COPY public.artists (id_artist, name, other_names, genre, image) FROM stdin;
    public          postgres    false    212   h*                 0    16425    comments 
   TABLE DATA           F   COPY public.comments (id_comment, author, content, album) FROM stdin;
    public          postgres    false    214   V+                 0    16468 
   featurings 
   TABLE DATA           2   COPY public.featurings (song, artist) FROM stdin;
    public          postgres    false    219   �+                 0    16404    genres 
   TABLE DATA           >   COPY public.genres (id_genre, genre, description) FROM stdin;
    public          postgres    false    210   �+                 0    16451    songs 
   TABLE DATA           ;   COPY public.songs (id_song, song_title, album) FROM stdin;
    public          postgres    false    218   -       "           0    0    Albums_id_album_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Albums_id_album_seq"', 10, true);
          public          postgres    false    215            #           0    0    Artists_id_arstist_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Artists_id_arstist_seq"', 67, true);
          public          postgres    false    211            $           0    0    Comments_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Comments_id_seq"', 7, true);
          public          postgres    false    213            %           0    0    genres_idGenre_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."genres_idGenre_seq"', 56, true);
          public          postgres    false    209            &           0    0    songs_id_song_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.songs_id_song_seq', 6, true);
          public          postgres    false    217            {           2606    16439    albums Albums_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT "Albums_pkey" PRIMARY KEY (id_album);
 >   ALTER TABLE ONLY public.albums DROP CONSTRAINT "Albums_pkey";
       public            postgres    false    216            w           2606    16418    artists Artists_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.artists
    ADD CONSTRAINT "Artists_pkey" PRIMARY KEY (id_artist);
 @   ALTER TABLE ONLY public.artists DROP CONSTRAINT "Artists_pkey";
       public            postgres    false    212            y           2606    16431    comments Comments_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY (id_comment);
 B   ALTER TABLE ONLY public.comments DROP CONSTRAINT "Comments_pkey";
       public            postgres    false    214                       2606    16488    featurings featurings_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.featurings
    ADD CONSTRAINT featurings_pkey PRIMARY KEY (song, artist);
 D   ALTER TABLE ONLY public.featurings DROP CONSTRAINT featurings_pkey;
       public            postgres    false    219    219            u           2606    16410    genres genres_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id_genre);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    210            }           2606    16457    songs songs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id_song);
 :   ALTER TABLE ONLY public.songs DROP CONSTRAINT songs_pkey;
       public            postgres    false    218            �           2606    16445    comments album    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT album FOREIGN KEY (album) REFERENCES public.albums(id_album) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 8   ALTER TABLE ONLY public.comments DROP CONSTRAINT album;
       public          postgres    false    3195    214    216            �           2606    16463    songs album    FK CONSTRAINT     �   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT album FOREIGN KEY (album) REFERENCES public.albums(id_album) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 5   ALTER TABLE ONLY public.songs DROP CONSTRAINT album;
       public          postgres    false    218    216    3195            �           2606    16440    albums artist    FK CONSTRAINT     �   ALTER TABLE ONLY public.albums
    ADD CONSTRAINT artist FOREIGN KEY (artist) REFERENCES public.artists(id_artist) ON UPDATE CASCADE ON DELETE RESTRICT;
 7   ALTER TABLE ONLY public.albums DROP CONSTRAINT artist;
       public          postgres    false    212    3191    216            �           2606    16476    featurings artist    FK CONSTRAINT     �   ALTER TABLE ONLY public.featurings
    ADD CONSTRAINT artist FOREIGN KEY (artist) REFERENCES public.artists(id_artist) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.featurings DROP CONSTRAINT artist;
       public          postgres    false    212    219    3191            �           2606    16419    artists genres    FK CONSTRAINT     �   ALTER TABLE ONLY public.artists
    ADD CONSTRAINT genres FOREIGN KEY (genre) REFERENCES public.genres(id_genre) ON UPDATE CASCADE ON DELETE SET NULL;
 8   ALTER TABLE ONLY public.artists DROP CONSTRAINT genres;
       public          postgres    false    212    210    3189            �           2606    16471    featurings song    FK CONSTRAINT     �   ALTER TABLE ONLY public.featurings
    ADD CONSTRAINT song FOREIGN KEY (song) REFERENCES public.songs(id_song) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.featurings DROP CONSTRAINT song;
       public          postgres    false    218    3197    219               H   x�3���/�I,H�4202�50"NC.#NG�P_�����������gIqI~1T�@��(���� q�q         �   x�m�;o�@��_a�rg���GH�&� �9��c�Mt6���{��(E������j���˩��6H/��p��*���5E��O��\hi�L�	_�?s�#�k	�Qk]�cV���ݛ.A���8zx-W*��_w��>}[�����K##5%k�[�d+�^�*�{�hsg�l�����J*�� F)��%AY�%�YK�#Gb�x\0�~ yf\�         P   x�3��QO,-I--�.-H-RH�I*�UPT�JU(JM���M�KIUP�4�2�*�0���/M��Q(H,VHK�����qqq bE�            x�3�4����� �#            x�5��NC1���)���U�� C�
���$n��_��>=�Td��;�x�uBC ��R;e�64C��v,��d��AAH�Fn<�Pb�m �u�A(7�8r�"������ � `��oT82ϗ���WpVPꐮ�z`A�Z@S��<7��Y��͚�Ќg�ToLJ&x���B�]��-+��:}R��-�=\j�frdv,)��S�ߐR8�Q�̆�a�B'�u{n�}m���������b��t�ۍ{���=!��R	����a����Y_�����	'�         4   x�3��ITH�,I�4�2Bb#�M9sR���l3ΤļļTN#�=... ��     