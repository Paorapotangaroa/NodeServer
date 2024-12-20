PGDMP  6                
    |            postgres    17.0 (Debian 17.0-1.pgdg120+1)    17.0 
    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            $           1262    5    postgres    DATABASE     s   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                     postgres    false            %           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    3364            �            1259    24577    students    TABLE     ^   CREATE TABLE public.students (
    id bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.students;
       public         heap r       postgres    false            �            1259    24576    students_id_seq    SEQUENCE     �   ALTER TABLE public.students ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    218                      0    24577    students 
   TABLE DATA           ,   COPY public.students (id, name) FROM stdin;
    public               postgres    false    218   h	       &           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 6, true);
          public               postgres    false    217            �           2606    24583    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public                 postgres    false    218               @   x�3�t**MN�2����2�tJ,JJ,J�2��J,���2�t�I+JM�2��L�H,J����� �i     