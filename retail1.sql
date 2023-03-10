PGDMP     +    6                {            postgres    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3355                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16443    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying,
    harga integer,
    stok character varying,
    id_suplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16462 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tgl_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16450    pembeli    TABLE     x   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying,
    no_hp integer
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16436    suplier    TABLE     ?   CREATE TABLE public.suplier (
    id_suplier integer NOT NULL,
    nama_suplier character varying,
    no_hp integer,
    alamat character varying
);
    DROP TABLE public.suplier;
       public         heap    postgres    false            ?            1259    16467 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    ket character varying
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16443    barang 
   TABLE DATA           Q   COPY public.barang (id_barang, nama_barang, harga, stok, id_suplier) FROM stdin;
    public          postgres    false    216   ?                 0    16462 
   pembayaran 
   TABLE DATA           Y   COPY public.pembayaran (id_pembayaran, tgl_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    218   f                 0    16450    pembeli 
   TABLE DATA           B   COPY public.pembeli (id_pembeli, nama_pembeli, no_hp) FROM stdin;
    public          postgres    false    217   f                 0    16436    suplier 
   TABLE DATA           J   COPY public.suplier (id_suplier, nama_suplier, no_hp, alamat) FROM stdin;
    public          postgres    false    215   ?                  0    16467 	   transaksi 
   TABLE DATA           V   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, ket) FROM stdin;
    public          postgres    false    219   '"       x           2606    16449    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    216            |           2606    16466    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            z           2606    16456    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    217            v           2606    16442    suplier suplier_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.suplier
    ADD CONSTRAINT suplier_pkey PRIMARY KEY (id_suplier);
 >   ALTER TABLE ONLY public.suplier DROP CONSTRAINT suplier_pkey;
       public            postgres    false    215            ~           2606    16473    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    219            ?           2606    16484 "   pembayaran fk_pembayaran_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_pembayaran_transaksi FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_pembayaran_transaksi;
       public          postgres    false    218    3198    219                       2606    16489    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    3192    216    216            ?           2606    16474    transaksi fk_transaksi_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_transaksi_barang FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_transaksi_barang;
       public          postgres    false    219    216    3192            ?           2606    16479    transaksi fk_transaksi_pembeli    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_transaksi_pembeli FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_transaksi_pembeli;
       public          postgres    false    217    3194    219               ?  x?e?M??0???)t?)$??9???̄$`
j??ohp?{?e}~??q?Z?6??ϔ???<F0??i?+?m?P\?a?ɀ???U????4??f^????????&???<σ2? ????
*g?Ï4=?>???5ԉ??}s`???a????????|(?>W??ckׯ??>??xP??vׇL??\?@ɮz?	?F?W!?uˈ˒???i?!4n?'???????{;?Z????vF??? ??n?p!c??7?țw??,r8_b??{?C??
emsV<r?Wn?z0rT?^@??Z~??Y??Y{l?r???
?8????Ҩ???=?:??????j?Q???P?DJ	?Km??&? ?N?f?h????_??2???????ԓ?B?9??7??:(?D2?݆h4?.?̈́=2?L?<?QX.?ji???h?????x??2??!???A?`         ?   x?m?Kr? ?5??S??.??9??Rv??Yr#ܹH?ˋ??SS?/??1!?F??^ⅳ?;???x5{?~Kz??@q?]?Y?? ف%??r4?l??%?;?????o/???G??$??`? O??? NR?}#M2??U?{USPI??c?I8?V?*c?>VL*?w?>???A???zW	H??PAvRV?w?7?Zw??&5P?)/ޤ??>?^??? N
?8b????!??????         ^  x?U??N?0D??W???c?=???r	겔ݖK?~???D?^^'3??2=\??I?H?g[?9KQ????S;????X?Z?z?Y??i??ئymo7?9?0P[?>ȵ??R(?lcɠ??^?)P1??$?o*t?N?{[??p??b\Ssپ>??J?0w?:?p@?[??[?.D?2???|??N??^??؊y`???kE1?48??Z眃???֕q??o???|?F?????nF???%?????g??????(?X܅???i?6?ީI\:~\?9?*? ??4քU?P??4,V??U5?QA??
??@n??>5#B??5?-?K?5վ?e?=?Bj??|?R??f??         C  x???_k?0şo>E>A??O??b?f?`c?җ`?d֤???/ն??=O!?w?E?? ^?iY???ԪJ?J???5?E??JU??0Ƕ3?ȋ??fgM?hE?q?΂???,??Cqϒ]ŧ???????ѹj?5Ͱ2??sd?????m?????-??,䝠???%8W1?????n???Ө?9?=-E???E7?}\?zkFx??zkz>
? ?-??)0??)??????9ݬ?'?f˗l??. ?5$??d4??ǒ2Kr Q?{?	pvY??%rw???gr?)|???s????gƏM??딂??랺?ܗ?$?!?oGW?         ?   x?m????0г?/EqRO???	i???kǰ-??9Їk????V[ۜO???v?=??K[?-???m??[;g??????^鰰5???8???m}?vJ??????]?n?GuAa?g?????qT???=U???y??\??R?J?6?T?GjH??L?T??!5?K???$&?l?o??P_?2?x}4??.?@S?*?@W?&????E0?P?? ?&0?>&0?=&?????6?G	?z)??(O??     