PGDMP         2                {            BD_semillero    13.8    13.8 !    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49162    BD_semillero    DATABASE     m   CREATE DATABASE "BD_semillero" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "BD_semillero";
                postgres    false            �            1259    49250    docentes    TABLE       CREATE TABLE public.docentes (
    idcoord character varying(10) NOT NULL,
    nomcoord character varying(45),
    correocoord character varying(45),
    telcoord character varying(45),
    rol_semillero character varying(45),
    usuarios_id_usu character varying(10) NOT NULL
);
    DROP TABLE public.docentes;
       public         heap    postgres    false            �            1259    49245    evento    TABLE     W  CREATE TABLE public.evento (
    idevento character varying(10) NOT NULL,
    nomevento character varying(45) NOT NULL,
    tipoevento character varying(45) NOT NULL,
    fechaevento date NOT NULL,
    lugarevento character varying(45) NOT NULL,
    estadoevento character varying(45) NOT NULL,
    modalidad character varying(45) NOT NULL
);
    DROP TABLE public.evento;
       public         heap    postgres    false            �            1259    49300    evento_has_proyecto    TABLE     �   CREATE TABLE public.evento_has_proyecto (
    evento_idevento character varying(10) NOT NULL,
    proyecto_idpro character varying(10) NOT NULL
);
 '   DROP TABLE public.evento_has_proyecto;
       public         heap    postgres    false            �            1259    49240    proyecto    TABLE     �   CREATE TABLE public.proyecto (
    idpro character varying(10) NOT NULL,
    nompro character varying(100) NOT NULL,
    tipopro character varying(30) NOT NULL,
    estpro character varying(30) NOT NULL
);
    DROP TABLE public.proyecto;
       public         heap    postgres    false            �            1259    49337    semillerista    TABLE     �  CREATE TABLE public.semillerista (
    idsemta character varying(10) NOT NULL,
    nomsemta character varying(45) NOT NULL,
    semestre character varying(10) NOT NULL,
    correosemta character varying(45),
    telsemta character varying(45) NOT NULL,
    proyecto_idpro character varying(10) NOT NULL,
    semillero_idsemro character varying(10) NOT NULL,
    usuarios_id_usu character varying(10) NOT NULL
);
     DROP TABLE public.semillerista;
       public         heap    postgres    false            �            1259    49325 	   semillero    TABLE     '  CREATE TABLE public.semillero (
    idsemro character varying(10) NOT NULL,
    nomsemro character varying(45) NOT NULL,
    sedesemro character varying(45),
    correosemro character varying(45),
    semillerocol character varying(45),
    coordinador_idcoord character varying(10) NOT NULL
);
    DROP TABLE public.semillero;
       public         heap    postgres    false            �            1259    49234    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usu character varying(10) NOT NULL,
    nom_usu character varying(45),
    "contraseña" character varying(45) NOT NULL,
    rol character varying(45) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �          0    49250    docentes 
   TABLE DATA           l   COPY public.docentes (idcoord, nomcoord, correocoord, telcoord, rol_semillero, usuarios_id_usu) FROM stdin;
    public          postgres    false    203   �,       �          0    49245    evento 
   TABLE DATA           t   COPY public.evento (idevento, nomevento, tipoevento, fechaevento, lugarevento, estadoevento, modalidad) FROM stdin;
    public          postgres    false    202   �,       �          0    49300    evento_has_proyecto 
   TABLE DATA           N   COPY public.evento_has_proyecto (evento_idevento, proyecto_idpro) FROM stdin;
    public          postgres    false    204   -       �          0    49240    proyecto 
   TABLE DATA           B   COPY public.proyecto (idpro, nompro, tipopro, estpro) FROM stdin;
    public          postgres    false    201   -       �          0    49337    semillerista 
   TABLE DATA           �   COPY public.semillerista (idsemta, nomsemta, semestre, correosemta, telsemta, proyecto_idpro, semillero_idsemro, usuarios_id_usu) FROM stdin;
    public          postgres    false    206   <-       �          0    49325 	   semillero 
   TABLE DATA           q   COPY public.semillero (idsemro, nomsemro, sedesemro, correosemro, semillerocol, coordinador_idcoord) FROM stdin;
    public          postgres    false    205   Y-       �          0    49234    usuarios 
   TABLE DATA           G   COPY public.usuarios (id_usu, nom_usu, "contraseña", rol) FROM stdin;
    public          postgres    false    200   v-       @           2606    49254    docentes docentes_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_pkey PRIMARY KEY (idcoord);
 @   ALTER TABLE ONLY public.docentes DROP CONSTRAINT docentes_pkey;
       public            postgres    false    203            B           2606    49304 ,   evento_has_proyecto evento_has_proyecto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.evento_has_proyecto
    ADD CONSTRAINT evento_has_proyecto_pkey PRIMARY KEY (evento_idevento, proyecto_idpro);
 V   ALTER TABLE ONLY public.evento_has_proyecto DROP CONSTRAINT evento_has_proyecto_pkey;
       public            postgres    false    204    204            >           2606    49249    evento evento_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT evento_pkey PRIMARY KEY (idevento);
 <   ALTER TABLE ONLY public.evento DROP CONSTRAINT evento_pkey;
       public            postgres    false    202            <           2606    49244    proyecto proyecto_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (idpro);
 @   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_pkey;
       public            postgres    false    201            H           2606    49341    semillerista semillerista_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.semillerista
    ADD CONSTRAINT semillerista_pkey PRIMARY KEY (idsemta, proyecto_idpro, usuarios_id_usu);
 H   ALTER TABLE ONLY public.semillerista DROP CONSTRAINT semillerista_pkey;
       public            postgres    false    206    206    206            D           2606    49331    semillero semillero_idsemro_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.semillero
    ADD CONSTRAINT semillero_idsemro_key UNIQUE (idsemro);
 I   ALTER TABLE ONLY public.semillero DROP CONSTRAINT semillero_idsemro_key;
       public            postgres    false    205            F           2606    49329    semillero semillero_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.semillero
    ADD CONSTRAINT semillero_pkey PRIMARY KEY (idsemro, coordinador_idcoord);
 B   ALTER TABLE ONLY public.semillero DROP CONSTRAINT semillero_pkey;
       public            postgres    false    205    205            :           2606    49239    usuarios usuarios_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usu);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    200            I           2606    49255 &   docentes docentes_usuarios_id_usu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.docentes
    ADD CONSTRAINT docentes_usuarios_id_usu_fkey FOREIGN KEY (usuarios_id_usu) REFERENCES public.usuarios(id_usu);
 P   ALTER TABLE ONLY public.docentes DROP CONSTRAINT docentes_usuarios_id_usu_fkey;
       public          postgres    false    2874    203    200            J           2606    49305 <   evento_has_proyecto evento_has_proyecto_evento_idevento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evento_has_proyecto
    ADD CONSTRAINT evento_has_proyecto_evento_idevento_fkey FOREIGN KEY (evento_idevento) REFERENCES public.evento(idevento);
 f   ALTER TABLE ONLY public.evento_has_proyecto DROP CONSTRAINT evento_has_proyecto_evento_idevento_fkey;
       public          postgres    false    204    2878    202            K           2606    49310 ;   evento_has_proyecto evento_has_proyecto_proyecto_idpro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evento_has_proyecto
    ADD CONSTRAINT evento_has_proyecto_proyecto_idpro_fkey FOREIGN KEY (proyecto_idpro) REFERENCES public.proyecto(idpro);
 e   ALTER TABLE ONLY public.evento_has_proyecto DROP CONSTRAINT evento_has_proyecto_proyecto_idpro_fkey;
       public          postgres    false    201    2876    204            M           2606    49342 -   semillerista semillerista_proyecto_idpro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.semillerista
    ADD CONSTRAINT semillerista_proyecto_idpro_fkey FOREIGN KEY (proyecto_idpro) REFERENCES public.proyecto(idpro);
 W   ALTER TABLE ONLY public.semillerista DROP CONSTRAINT semillerista_proyecto_idpro_fkey;
       public          postgres    false    201    206    2876            N           2606    49347 0   semillerista semillerista_semillero_idsemro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.semillerista
    ADD CONSTRAINT semillerista_semillero_idsemro_fkey FOREIGN KEY (semillero_idsemro) REFERENCES public.semillero(idsemro);
 Z   ALTER TABLE ONLY public.semillerista DROP CONSTRAINT semillerista_semillero_idsemro_fkey;
       public          postgres    false    2884    206    205            O           2606    49352 .   semillerista semillerista_usuarios_id_usu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.semillerista
    ADD CONSTRAINT semillerista_usuarios_id_usu_fkey FOREIGN KEY (usuarios_id_usu) REFERENCES public.usuarios(id_usu);
 X   ALTER TABLE ONLY public.semillerista DROP CONSTRAINT semillerista_usuarios_id_usu_fkey;
       public          postgres    false    200    2874    206            L           2606    49332 ,   semillero semillero_coordinador_idcoord_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.semillero
    ADD CONSTRAINT semillero_coordinador_idcoord_fkey FOREIGN KEY (coordinador_idcoord) REFERENCES public.docentes(idcoord);
 V   ALTER TABLE ONLY public.semillero DROP CONSTRAINT semillero_coordinador_idcoord_fkey;
       public          postgres    false    2880    203    205            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     