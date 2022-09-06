PGDMP                         z           NBAinUA    14.4    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    73860    NBAinUA    DATABASE     i   CREATE DATABASE "NBAinUA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE "NBAinUA";
                postgres    false            �            1259    82151    article_tags    TABLE     ^   CREATE TABLE public.article_tags (
    id bigint NOT NULL,
    tags character varying(255)
);
     DROP TABLE public.article_tags;
       public         heap    postgres    false            �            1259    73959    articles    TABLE     +  CREATE TABLE public.articles (
    id bigint NOT NULL,
    content character varying,
    date character varying(255),
    snippet character varying(255),
    title character varying(255),
    author character varying(255),
    image character varying(255),
    main_image character varying(255)
);
    DROP TABLE public.articles;
       public         heap    postgres    false            �            1259    73966    games    TABLE     |  CREATE TABLE public.games (
    id bigint NOT NULL,
    first_team_score character varying(255),
    location character varying(255),
    second_team_score character varying(255),
    "time" character varying(255),
    winner character varying(255),
    first_team_id bigint,
    second_team_id bigint,
    date timestamp without time zone,
    has_ended boolean DEFAULT false
);
    DROP TABLE public.games;
       public         heap    postgres    false            �            1259    73875    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    73925    players    TABLE     �  CREATE TABLE public.players (
    id bigint NOT NULL,
    first_name character varying(255),
    from_or_attended character varying(255),
    height character varying(255),
    number character varying(255),
    "position" character varying(255),
    second_name character varying(255),
    weight character varying(255),
    team_id bigint NOT NULL,
    assists character varying(255),
    points character varying(255),
    rebounds character varying(255)
);
    DROP TABLE public.players;
       public         heap    postgres    false            �            1259    73868    team    TABLE       CREATE TABLE public.team (
    id bigint NOT NULL,
    full_name character varying(255),
    name character varying(255),
    standings character varying(255),
    logo character varying(255),
    conference character varying(255),
    division character varying(255),
    games_lost character varying(255) DEFAULT 0,
    games_won character varying(255) DEFAULT 0,
    abbreviation character varying(255),
    assists_leader character varying(255),
    points_leader character varying(255),
    rebounds_leader character varying(255)
);
    DROP TABLE public.team;
       public         heap    postgres    false                      0    82151    article_tags 
   TABLE DATA                 public          postgres    false    214   �       	          0    73959    articles 
   TABLE DATA                 public          postgres    false    212   �       
          0    73966    games 
   TABLE DATA                 public          postgres    false    213   u$                 0    73925    players 
   TABLE DATA                 public          postgres    false    211   r%                 0    73868    team 
   TABLE DATA                 public          postgres    false    209   i                  0    0    hibernate_sequence    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hibernate_sequence', 2380, true);
          public          postgres    false    210            t           2606    73965    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    212            v           2606    73972    games games_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
       public            postgres    false    213            r           2606    73931    players players_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.players DROP CONSTRAINT players_pkey;
       public            postgres    false    211            p           2606    73874    team team_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public            postgres    false    209            x           2606    73973 !   games fk86x0u79kyqy42x65okep9yupw    FK CONSTRAINT     �   ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk86x0u79kyqy42x65okep9yupw FOREIGN KEY (first_team_id) REFERENCES public.team(id);
 K   ALTER TABLE ONLY public.games DROP CONSTRAINT fk86x0u79kyqy42x65okep9yupw;
       public          postgres    false    3184    213    209            z           2606    82154 (   article_tags fkjtslnyg6g9r6n8s0gbomrvbv1    FK CONSTRAINT     �   ALTER TABLE ONLY public.article_tags
    ADD CONSTRAINT fkjtslnyg6g9r6n8s0gbomrvbv1 FOREIGN KEY (id) REFERENCES public.articles(id);
 R   ALTER TABLE ONLY public.article_tags DROP CONSTRAINT fkjtslnyg6g9r6n8s0gbomrvbv1;
       public          postgres    false    3188    212    214            y           2606    73978 !   games fkmrsvu2p51a1aeji1cvo5v1ltg    FK CONSTRAINT     �   ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkmrsvu2p51a1aeji1cvo5v1ltg FOREIGN KEY (second_team_id) REFERENCES public.team(id);
 K   ALTER TABLE ONLY public.games DROP CONSTRAINT fkmrsvu2p51a1aeji1cvo5v1ltg;
       public          postgres    false    213    3184    209            w           2606    73932 #   players fktj6qbvs84bdv8oquqgob0o44u    FK CONSTRAINT     �   ALTER TABLE ONLY public.players
    ADD CONSTRAINT fktj6qbvs84bdv8oquqgob0o44u FOREIGN KEY (team_id) REFERENCES public.team(id);
 M   ALTER TABLE ONLY public.players DROP CONSTRAINT fktj6qbvs84bdv8oquqgob0o44u;
       public          postgres    false    3184    211    209               
   x���          	   |  x��W�n��}�W4� �$�fً`��=^o,��K��E6ɶ�nnwӔ�4� �����jR��� ٗ}�HvW�:Uu�|3��d7�Ǐ�(���:�8�²Lo��؟����6k]�7�R��W�X�-˥Z��9͞�TR��e��N�E.�B����^�$	��V�6[��e�ղL�a����B��b|�qB:�R9�3����ɡo��RXǴb¤��,����V�]�_J��-��>��b6�U�U������Jk	>��0R���Z���t[ �^Xm�U�2iY��[�V�U�e쎗9�� ���Ce�Z/�-�b�e��\
Ӧ(���J0��aO��2�0�b��P;=���O���y�1}��5��LF<՝N��0��&ew�{�A���t����w���h�ȴ���N�Ś��c�����;$Yĵӥh��t��,Ī�r,����Zk�&7'�%��J@���$����-���.�np����ƕ����?-�#ٴLY���y/<���G����t�׃ؗum�[E��}�tNZ��5���s{X$���r��5�DN��������2�
{��VUձ��u�#�<]n�y���E�Hd����&]�W�/
�S# �E��o^:}�j�Z��^�;{\m�O���j8M���h�x��(o+�$�FóE8�&�Ao��u���"m����p��X"�)QYպ-d��P�N�E�ML�7�׵�.�0��b�MC��E8�_Ԓ� u�A�̢�O�p3VNG��㲗��d��O���_�6��4n��Ǔ��O�&��S&s��=�yJ��l%Da����x�Iv+�B ^��F'�-�h����{�8�ٝ�D��b�	�*�WHJ�:����P$�ګA,5ڝ'`�����̶��"�β���BIIJ�H9�5G�
	s<rl+���ϵ�=n�m)�1�1�iǍ.UL���(CI�~�t^{wz-�S>X0b]�$�w�J\�Y��-�ݻ�R�fr�H��NN�^BNS�;6�@��\�)�x.�ElE���,��ܲGX2l�
��v�����q�%� T5�o�V*�����u����	i n/�?���&����am������x9�^�#�?�z"�n.�pt���m���b�C'g���0�E�tx?���h�ȹTA���d08�q(���ς�ވ��89��d8�A4-��_oo_?��w���Z�:N��ہ_b�Xt�D&���������+�|���i�i(um:lj������	*U��<"���/����cs��P�7S������f��Na&�r�n�$P�hǂ�|n�hʴ���a3�%\{�[_�6�#2$s���bl
�b1ҤC�U8�?Y/"Zp$#Y�u��2�\=2q���'6�"m�fm�ޭTD,1zͮ�攘�ٚ�5���-Wm���Sި��)�SA����X�氎M��![�Z��m�S�\�m��H��x!j�:�����E)���^�pP��*B�Ț#fo�Dl��ЁlP�J������RJp������j�E�oa���g�-�Vv 5��v-(�9�K��p0��GԱ�8ޓ���y�1���dL�`�/v>�M�kOkSF�׋�}\��JΩ��KF�w>����[ob��#o,�+�W�fY�i�:.����!	&����q�B5~p��Clx�e�I�]����P*T�L������W��x��:���Q+|���!�a~^��v���x�q�X�)��ה�jh����;��� ��
�F�GEX;���2���|�ܽ�|�.���}��L�NrG~n&���7���aG��Y8{�<�x�y3�|��+����CrD?�Z.���d2��w��TfU�� �nY�Ƕ������퍻�(8v�{Ez�[''��BR7      
   �   x���;�0 ཿ�(T�]lR��СP*hu��"T[|�O�ⳘL!��+I�Y<�!��	ԗe�[���~}��8��3��Ƈl��>��Z�]u͉���zqޜ>(��l���'luԻC��8CK��R�����]�s8}r鏡'���A@�eg��4h�P~J��S�K�82
\�;�݈(�zZ��T��1$H�d�#h�F�����x�O�_0��8�����yW�A5�            x��}[w�8����z:=���ŋD��<�;Nl''v'{���m���D��_��P�(oÞ�f:Iwl��B]���������������c_W���ؕ�f����Ϗ���Y�i2�q��Ͷ���]��m��T�ˮm���G��E��T��K[���]�F��~#����������������y��/�ܮ��.���F}�E_���n;�)vM9���X���h�~�d�(R3_�d��L�T�1�����^/V���Ou�wt8�X�u?���܌��.w(N�~I#�����7%��R��C� �'!�&i&��(���͢��z�&?J�IN�$M��Ϛ�ے�� �T��#��I�>��o�oщe�[���r�}/��d�ԓ�^TW�5�����&�ǒ}�� �0	P�h���6m��;�qR���]U�U/�J�01��Ȅg�����[*H���5Y�<���	mW�47'ǣ�&Q�>~]5K��D�F���iR<�4@I�B��eW����+�n໦)����>?��O#�Dx5q���L���g'�ү�����U��r��r̴A)��w񄗔�S�z�tI�Ί4s��38�:�lǌ��+�jJT�B�`,�&����C*B���خ��ď�[�;�̻�+��ǫ���È�D��y�L����5Hp�6M9�V�~�F�9ǁr�3c.2�c�v+E�1x�1�$�������q��v�6�t,�s%�@�M��JL��'3^�"�(!���e^�;�t�D���vt+�$AH'��Bh���>�E����=�ؚ�+�[�-�F*��t4�q��c�
��A�j��������R*0��H_I'�����T�B�bugb]a�q֕��w%1�����x�
z"9�C*]H�+S��VܗͰO�Ч�3v%����(�@%�ګ���w:���<�˿]}x�٥�(��`���\:���h���Z��!JV(��E<��;�JU8��e;�݊-����%V7K���X��I$d=g(S��s0�NT����vO&�3*r2�2�f?>�՗������+8�ۮZ��"�!�� �MY$���_�d�g�|�:��ǵ�k& ��8u}�>�{4Q0jg��Y���dY�����3|㯫jX'�UT�EY�x�o���,&3�f�gy_v��m�=���I1Y�9[6	}%�DTls#6�
�����d�Եu��LȆ�@�-��$���(O��dt7Sp�Q��f<f�z���Hf�b��2mC���o
�Z��bb\�}��z�R�C���ڶ���$�'o(���yB���~h��m�9��Yy�M�%ӎ��=��)|��L�!ؑZڨ¦h�o�֔��%&�3#CnMF��P���\
�������!0�􅈙w��Ҁ4��ˤ>VqV-С��G_d³�t�wU��Ba��o�hIg��Pƚj#�ڌU�G��RTJ13����㉂O~	:�8E1�W�2��3���P��i���@=c�����v�3��C�$�	?_o,�B=�q�U%��l֢{@0�,�}��vv	'�<�J�V����y>S��Z����R�N��܎�;��Kf,�H(���st*�`׵���h�Yv0	�r�l��uh�-��󇝴�)#�Il���N����(,�<p0ʢ+9��C��S�,��������� u)�<_����5�ǿ#�Q�WF�����R��O��Ge�-+~&�	{<�b�?��ج���BOص/+	�4��B"yW5�a��+�0�M�iL:�oH�0�LPg�$F�2l|�%�sc�bkbc�(��B\�%�p'�=��i�TJ�������D%2�=�1�NG�)�u���x�!Bs�S���n�Br{%��^דϫF%5��1���5�Ãh(�1
��	Ř�+z�8��������o�T��эGl9P
�Y	
]'t��H}�8�j[�j�%�Un�'iR���M;�MhQ(���v�YA
]'0�Re[N������@@�A��.�˻�u�^�`]*����ñ�o�Ӧ1��������X�����W��nƿ�Zib��3�Cjd9���ڪ�tU=n����/�MٱH���$"��Z�4�@aOT<���[��ݧ�F�z�%�z�w\��,�*����X��AcG�ƪ�� �L������"&{�~k/&�_����������1Qʡ$�Z�M�)lC���U��4ov56�l��9aQ�0��g�Ƭ�Dt��k�}W�-6^��6҆���Ӻo ��Uj�L�!�O~�~L&S�p�>��P�\s��C'�3���L����i�R��I4[P��v�B�?H����3#�D�k����X�4�X������@�e���L42)��gP�v�$@Ue�i�g�y1>T�,��'3�r=�)����%��9�vX��Ś�J�-,���}�y27^]��ݧ�6`F��sGZ���u5��� [�G�;||���[[m+�W(�eNB��I�\�y�w�:�p�wd>2��D���cѡ#޷�N�����\���jU	��	t��{��H�M��w9��\��誒	��{�辶�Ә�˓)]]z�����9��-at�
����:��dE���J�V��c�.���J�	���TW=C�� 6A;��_&0�\���̮\�_��h����@���[3���u�~���RU���VԄS�pi��VekLՒ�t8�6-�u�t4�S9�߸�5�U���ꌌ|u�	��f�H� �Mg��s��wE؜�Bt2��4%�8%~K�6����熺��KQ���B�����Hk�|f�r�������SJא ��U������G*�#�MF)�o`�[�tS�弾.�S�[���a@�̪��	����Yp�C�� ��l-����W��������I�-���n�J���ħ�%��<�L�$�\��Y�Clzڕ�r�XX��872� E�IHUM�~0]0�5< �{1���� ��@����]�/�3o���ՔB��*7q�1+�I��NF�`�`~�>�F�9���uD��]P��L�P����~HRX?�u��@V�_]�thB��]3:u%=��U-Ҕ�k�J��U����)�Ju��/�d͒7��^�s~U�[,�zY:`�<gqҭX�/����I�uU�If��D�rAQ�P�j]�F��WD��fJ8�m�=�[9.	x��z�X�x�Z��c[W��1�':(ۈ�,���8���U�"�&������؆�u�XԪ����i������@e��;w[�G2�n6�mǪ��ڄ�$O:�ʽ�pe��C������贕�,�3G��+EJf� u�^KQ�B�q�/}��Ϫ�J��MC!፴���_B���+B˙W%̪]T�sd�I+�}�x8��`q�8+�oqQ�W�	����i���w`�e7�h��0s'b'�wOGcf��|��8��1Kkc�ś�P�<kU�1j�ބ�Oc*��M)Z!�RH�GJ�~]Gx���w�`����
�V�̪H<�&8$�Ȣȱ-/J4�7v�I�ΘDo���PQ�	"Z+ÑR���Z���vMXE�4���R�;o�(�J�k)��V�.H�T^�H�K��4����$����n��ܶ��p.�]t�t-�B"��c��&>����`�o��05�J�Aݻ$6�,Ї��1�3�:bo?�+W�X�%�e���8�Z�T �2�'��Y6Ax�?�m}��]9Љ{�(R�b�w���ǀ��01:���8�%��e����5�$+�1�ݪ��/x(C�%�}ۮ�����˼���R�r��R�ת��h8R���Fq��e����CU���Y�n�f�\��ɮ��\�G�(�U���My�Ly�=�v���K�`���Q(!(a�9L`���=]���,{���x7��O�y�i�W�	��y[Cv�j�-��r61���
��Zf2� P�_�ZԎS��-/�Ӱ�c66��I�;N!؆�(���%�"n�͋� n��f�T����Ď�2����=�DUW=�X#����q(�.��!���U�n�y:���1��Z����X��LhLI    r�,��~��-��Q�ٹܔ����_�4C���������σ�T�9���t���'�A G�[Cuy<��9�ͺB`7����}��K����)ŔOa.�(��c)ءl[�tec�>�-.6<�� ���osȿ���a��#$6u �Oef�~s+.:��1|j�j��8RPؕi�^ :�@�����ǣՌ�>�e�9|2j�%x=6YjC����rfXJF{�nG�\�+�A@`ȯ�W��1�n�ke�� �g�P%�Yk<�Wģ^�������+D<i���᧥J��b�aM��~k!�����ݘ|f��B��b�3r�H�糖�z���	x�e�h�3�O��h��s�$Αt��:�#���ׅ�<��8v�-��Y�rH�>����k�|aBFcl1{!��$�A1�L4=v�*�� L��o��M<��G��Jd	d�j�.��ά�բl�_�{��Mr��ϞU#M}����񶖉�����<�QF��"J CӚ�	��D�&]��ځ�g5]m6m�U�ָE�O�B�^}7~�U��Q��l�7����T�.fܶi�M�PP~�@��d�XGR�z?��	�y���Db\��SJ���2ݮs�$��r��c�*=��;�D�HЄ%՜���_�q���ٙP���zg%�[*������F��pS��P�j�J�A���R z#U��m�ȍ��z�6ϥ��{hO{U;�'�
����B�6��-��&��v5�MWn��J ��������8��ȼ*� Zj�?`>��讬G�OՓϮ��m|��Y��%��jP`_8�(��k�Q+H:��2,��M%'��2�*���]�X��;�\u�I+�t_P:6�K]�×�8��H`@,QY�k��A����@�Ë�΄D�������O��=�7C础mq�|��	D�Y�6~��A}�(��
��wb��{��� ���&�	����E���`s��G)�|"�uÀ�CQ�{�\V$N�e��;|5NPOŲ8�]���(ĸR�r3�*�@�Xd`S{@1��6'���튷F?�f.��H��ahq�E�}S'.�q�4!�F����7�0��W����b���k�G�*�흶X��t�����j<crl�G���UaE��y� (X���M����l��t��u�������)�V9��������C���8����4���G�'�b)�`=�{�aYi�1�?�ͼm6U�U f�mJ)d��%��[���v��3,���_�H���R����s( W����>z�>�1�8���;O��Ä���]�T;8�����%�	�fC�$[H�"F	�d��7Aje�����̛纻�^��h��{�0]�Q�j�Y�noZ]o(�N��_����r������F���E٭E���'6��R+��a b�
P��2ɪt�Ƅ�?�ZF������~/��^�K��#�T�j�X���C�$��Յ�x+w�����{D�ј+J�����}�"�"g�`��v��R�ڊ�o�X��CQ����<m%�82�����F\�^��ljq�	U��~���<�j׮�r�'��X� z�b����BP�l�q��I���k�@�oL��H}��~���J��K:i�UY�Q�w�*��m�vI��A�X�K'��3h�/0!��@c�0�s!�x����=iN�Vl�8X��cq�ɸ��m33�,A�	B�v�RF�f�xgc>@�U�Y��P��c�,W�!%9?�������=���T���L��ULi
��d�P�A�1kW3�U��L��n�:� I{�����#�߃�w2bN�����*��nG�pL��Ad�w#��:p5+�ˁ1 �cC�C��F�FS�T' �9�ps���j���~��$�w���>���)t�5�0�)a��FR��m��!C%�����|8��f� �P�W���JOaߞ\) &�o?�Y�ׂ�CzR���F�#�5>b3K!��#��C�~<�҆Ί�L��Nǌ�"�  d���Z<@�9D�hr-F�����&�[/�d�_����V�z���k�߇Ƅ�{�l��{���Y������*?D�Shc�fdd����Af,n�Ê�T����/�qM�Q8���@uEU�Cu���͞0&N��-Wd�� �_7+�fD�m���E�����l��m<gz�'�Y9�W����9*v8��ʈI��[�T#GH�we�3� �����Ix@�]|�� k������e�5�k�V��b�J�L�ބ��D�
q��4 bxy�|I[]l�öY�cI���Ŏ�C����0�����ɒT�B8@��I�9����_x7�4#�nT��ꦙ^���ȩ��������=l����eWS����$��O�HA�j�D�� �Q�Z����)6�	������tТn?�����f�o����qP�P��0�[�Q�L8�*���t_�{Q��;���1Ӓ��3%�]��EdX��< ����:S�?�5�|zni���0>�Ƽ�F��ݥ�N�U��io��`ĺ���R�L�i�����E:�.��,
�Y�����nr���YUtf�5�GG�p�VV���ݨ]>�c�ܦ�zr���!X�'�%TN[i��b�hq�@�"]�.�&y�4,A�aTu1�hR_C���g.R^"����:@U���w�?�m��-����K	x&Ҭ�̓�q(��Ϫ^�����̑ԛ�H�2�T�B����fr�x��M'L�q�3	�H��Ɍ�۷j����D~��%C��sY�G��GZ�3a�bl3W9�x?���*�]y�j�U���u?�!H��i��3S������V�R�g��N���v�d* �pR�ɽ�����S��\�F]��T��sñBF�����h
�������ZE�>s�Q#, YD<>�ob� ��8�й����o��9��L�������l;j4��	��kq�f�ɜ��ؚ<����ސ�wHv�_���O���T0��]��g�8��H��c�ܭ�bQ��ۡ$����׳4N�g�/�%E
vס��*��
���̖����;#��L�D:Й�ktcl���D�����vS>�݆�f���R�A����5CY/��T��wO`Dkְ�)�	��.�b� kv>'���FW�FC���OzOQ���'H��T����|�:.I���
׀䭔MAg��p�*
?���ʠ���_��x`�'�8�\?��bS����lJ�:���`��S+�A3�G�/jm
��=Z_>Ӽ ����AP����C��O���3a�^�5~��F6PA2G�i��9�k��<yY����K�e�Ì	|���7����'����H	n�DPb��7����r��4Ѿ���R���nb|6�y^H�(�����#��lU=�<c�ᥰ�U�|c�8��E��6�II[/����Ϭx"����j�E���tzE!�f ��5VI�J5��q��(�y},[�/X&���l`��WL�ɔ�+�I��9�=ֆ�� w���I�@�Q�bYZ�u
�{^�����~8�[�nyF�6�_��D�(�ک{+U<z��R�U��R��.Q��9P�z�����\���H��=�id@&q-��h3��J��Wb��
b��77U��6�E�U͒+�}r��~$�D�xv��f;fHD����~��x�.
Z��ƔY���I�E�>���vV)���Tn`2<��Db�P����w�.�����:��`է6�m���H�L�)�J$�T%��Y�eW;�:����N�lj��0�n�;WCsf�����:,��k���� �C�"0&I[�+̴k�K��0kI�$L�3ޤ�C�8	�����5j�ʳ�
�߼D�Ȁ�LY���뭹�Y5S_�/����zae2l�^�f ���6;\�}�L��p��R�P�A=�ِ/=8��:%���^�N!�-���t��fU�;��=3���o<c+�F��$��<ǿ�6p/q*��Լ?�粅��Ό0    ���s7��7����r0TDsӖb��6��ɒ*v����]y�>�NS�g �����������vbs���rty�xR�}��dD�Z��d͹��z�2�)5ڥ�=P�G���uJ���k%	H�q�4=�
����I�*��v�%Χ��].�'�*�z�-���݃�C/᠝�i�����7SY�Tԣom�x��gA�|XY5�gr�9Ιk������Nw��v(�1�֞��9�1�_��^�OE��)|��Mx�p7�ۍ���ي�d	?�[����}�%��H$��gm`��i���m�;��zdsu��B��`�[�U,&���<��ec;�����B����CK�$v��Fڪ�op7�2���J�Yx�.'^�25���u?���X�L��7s�����H)h8����FfK=\�ǘ!̬��Q9��U�w��kq���߶�X^����/Kd!$��>�pa1�_�m��h-͔L�,�%R>�	z\M*O�����_���̠��zq�-aU��&d���\� ��A�~��٭�;��d�Մ��2�S}�Љ�4[��Ml�fG��E�S��ૉ�82Hs��?���[�o� fG���e�"�g+������M{j��Λɲk?�ص�麇?�W�տ:֚R��/���{��	G'�s8feP�x������!j�(�!��֏����h2��i�'��/����A|ӫ�X�m�4$6�
��!s�4S�Bh�C��B�����,�ʜ�݈4�
C�w��8�b3_G$�m"� �B�0�z! �S�7��^좠!V?����Vs'�;�	+��������ou��i{�t��j�yV̪��9*�Cx�R*"�mg��Bf�[��v`��b�E�	6��2ܔ�íwj9�\m�b����X��}�7����`�F��J�>h�=a���wyj�f$��665
4 ����(��My=���f�~���mM�SCD�.����DL<qF�_�\�<�[Eɷ@�GЙx��6BĊ��#!��Tx����0�3<`���B�8`Q�n�m,��� ��%�[_B�+<d��`��|�$4�f�X�$6����@Q@�h�{m��c��>XF�2ХVD�S@�R8T<��2��>�j(o�hF����wi�9e���T<���L3'���h,QJHҥ������~�Qz�rgT6��#amoئ�ŭ�?�C���R��?mL�Bm��-�d��i*�IG�V��3!uq+ZAc�y}U��F���N?g�O���֑�5�����W���s_�GkV��9DOr���b�躅����/���j�����;cȃ6O;t����KH)�t%��b��eWc������ظ�=���:J&	�����d��߸��&�qd]�6p!6�Sd�Q�
���5|�5H���V�X�bbg�C������	w�2�^ 0N��$�. �`��8��!bcY1����4>��TN(�N�\ϩ��:�PM�eP���c�zl�Qg�86;y>A����~cF_|���F)�|CcNo��MS�I~6!�kq/�> ���i!�]4f��d�!ӓ�'-*c���䉐W�g��ܬ4fJ�����BFq��]7���@^�3'�Ju�
Au=Ќ�v����o|~�$64�0�uŐ�@���t����d�`�vwG켾o��v�Z��o�v���Щ��^gM�����%Hܸ!MlD��,�7���Qs�؉��:��I���٩��+�o+���\���m+����7�G�A���5��� H��P8>����s	P��Sp?Ʉ�ɪ� ��vo1���,��mA����w���T�%6m-��r,󖣾��
7�oT��1#�"k�_>`U���h���c�q�`�bp>G*��jߴ�A�6�X��j�,��[������M�M�ZV�o�s����E�YJƤ�����l(F���A2�N�$�^1�q�J�])���VKxf؛A�r�0�yY%��3�s����b;�봌��6UW�� �	����*�<7�܊���@��u��»���}��ЊW��%mW�)�G����|���p���/��q�^�ʵ"��ћ��q)�#�]���%�]�K�Q���V�S�M�PZ�/�k������);�hܬK��Eb=�`<���LE���HA)�xn��4j�p�������̈��d�l�i�	�H��A���<6Ň�!I��1��O:T���e�lH�G���)ˆvJay��$X,�����Q�� q��ʼ4%�;u{]v���d���G�f��m��\=�g��T��j]o>?��} (�b������y�LWa�9%n�ˊ%M�K���,��D������QD]*u|_��҂�;
PʫA_�2'�@9��F�m.â�n�%�l/�i�u
����y4fZ
=���^xC���m�䬭p���3�߫'���1�go8����f~�W�5��|o�Y{�Ġ������k͒"7�w��ڹ4N�Ñj��H7�� p$db_��B2����gZX��Ҥ��=F���s٩ 4w O�p�hﲎ>���ˏ�,L%���F������qt%c������FJ��C��];�0�$�}ԫ�tIb�f`��9�.�����t��%�%�mt��9S�,��A�4�ҩ-P��b�+g"lJϨ��;�45ȡ�%�F�����"E�j����5
�)Y�%�,;ヽr��T��]�1NL-��K��z�^�v8�ڷ�D9DWS�����ZW�llF6�T����,�a��L��[J�7���D�G�ɖ�*�v&��p|����
Dm?|t���J�v���å��̃I9V�/�]�7[��t��ڮz�x}�G܊���+T	�j%t:=���Lp�=T���ͨ 62��R�^��}�T���AE0�C�Om�8:����DR��4�ԗ�-A�����Ϫr9l�(�VFn4y44��7t�ネҋuՉ�Q�џM�-�/��-�5����s���U�5������C���q�dC�lћ�깬�����s~H�����l�5ⱥ?Ou�*h�$�S�X���rS=���R��
�r�m�,��z����_�X]O��J��<��}[�mP�..]o?�BD	�b�+�b~��*��Ͽ��I߮ĺ�(��I��/*g����L���>�E�¾�S�#j:�M�TQ& ֌��;�>G��?-G��HQ
[�
���z�ވ���6�¤�aW�Ax��%#��$�'!؞�('�cUo'�NV�Vj���?�{Ҥ( \Ȁ�L��X@��Ԣ��)�8rcd�ɑ��e[Tx_TeB��`�"(�7�dƈx㏋e�,�J1n�_��oiXM��نh�&�1e�0@����ZtC��X�����ۚe�I8���&����drD-U���ͨ�){,3ɦ�7~��cI�Rx[uO�E�q�_��"��7Em�c���L�cjal�k������Sn�CB�3���3������y-����S��2�9(*
�-������d
���&�X�!J�,�*GR��ː��7j,йa��{���jU�����y=(4�5��#����ƔsM��}"&n��o�N��R7+L�k��OfVӪ5q�3�2��.� ��
rP��[k�.7�m;_�v�\\�*mñ�2U�+��k�������Bw�BY����������7� �g*��}T�	�?gB�N�P���k��>v2Q�R�m���K��.{�Rۇ��r�I�N�v��17��0�Lw?��X�3��{��߀�ꖲ<k�n.�=
�V2 ��=��!��^�-��z`�K�J)�"l�X��xJ7ڭ_�������_�_�#H�qar�!�������������o딌��Jgz�M�ȣE��d0��6Jx��Sǖ%V�qHf��u�s|]!k���-N[�[ɦc�#�T'�E��]��v��Lf~}��hD�\iU�f�X/R��2l���v�@�l���c|�%�vSAG���'��a,I}��Ŷvt���؞**��    �q��8f�����&�ܵ-<�I2�'?n^�uډ
y���,�L��Y@��h����<���e����>/4��W���@�!�qK�!�D$��J��K�v���t��i�2 ���l`�A�^x��ƾ��i���^7�����q�O&d?��nK��ݦ�� YO�	�P5�;姺��zlc��F�G��
�b�����������~7!YL`��A�Z�[�9�Y'�g���9�V�ٮ(d�����b%#��̦�5���!A*�������jlb%1���V�aY�XE_5��}���w#�}���)"h?ݕ�5��C���$iW�Y�3�N@E��g�+�j���)�1>���^��=�r�^gb�!a޳�$.&8�z�y���rg������q�BO a6z�~�YS~� T�G>�񖋵F�8'dҘ%
��L&���U	�������U<Z.K�3,�9���x*�B?#�38�ռp��Ym�3UfU_<��ڷg��Rn~ӆ攛���&2!Լn�2��C kfQo*�ض�v�Zy J�Ob]-�~��{�R����H���&��h��ͅ�.�c����.j�tb�O9�JZ�a���B�6FU�}��.d*�G�.�O�R&~�K��7��;b��7W�T��<Vw9��+���<W�E�M��c�ZO�@(��/+eS@q/:Z{�I��ޖKzg����;0]j��Һ��վ��]�EW-F�u�T6�&��&Q�h�fNS�Q���h�J��l;��?w�������n��0�i�L#"�0�;_��^�a κ�e��֜��u%al�q�X�  Bs��R�Z��?�M߬{��c#���Y�[�h�Y��4�;�ܸ4[�,�	S��� Ն1��Yg�ጝ|�8���_�j�X�%<����K�V[��X��n� 0�A��LAn{G��,m׫f(6�	b����84�'���o��+�K�b�Xp�+V�d����[`^j��a8�ֵ�w��z��L��R�̈́���&�E-��!��?��Jҙ��n��Oa�h�����;j>,�7�=!Vl��=�L����R�`��ni�(�Q��j�!-"ˈ�j�hόR|\<����e��$�p� ��w�l6�h����e��?���|��D���
澕�6��FD�R*Ŝ�������C��6�q����O���x��'٢�3?d�"~
 3d�j��Rn�F	�u[����Q�2�:�{��~��~\�W47c�B�cC��|a	"C;���23r.B�#}��E��e�D�O�
j"�~;D�&���"@?�
��xjin$s"#�rRm�r.h$��� ���fIL&C��s���I�=*��PeUK�������co�> [�?W��ݑ�L$n�J3Y:[O��Z�\X}�A�������}EhS�C@���}"�����򭭶���ԚeNHHO���y�wM�w�,`x2	mCA��8�74Q��|��t�]AՀ6J$=��
Vhz޽�ީ�� �.=���6���v}�zB�x��|�'��htw�t��X�	<��`L��a��XÆB�r����,�1�S��0~x _tr��ۅ �;{8�L��`�M�|H��G(G�L������aDߙ�}'�̰��0���j�sC���R��:��R�t���c3�jVW�Pd�K:�E<^�s�k��+�K�&�z�'�"���=�<���v֥�Xc��=�J��Z`��u�V����z~"o�Wg�3^#����#����Qb�*���Hk�̙��z��қ"�⤟?(�^ˍ�ܮ{��&���Phd3|
m
׏j�m�A��Z�E����E�ecۏN޲�:.hW�H��a&5c'�1PNjxf���f0`B|w�4<V%x�v����b�M� ��.����4|�3u/�_.)�3�&:�8�iV���M�W|\�BBK*�m�n��Z�ۍ	����Dz|��ļ�������J�7��}3� ��a�XH�qKD7� -J�N�m��~f�2^�� L/q�G�@|$����������C;�̈Ry�[)���(��;��>P3����g�v��9X&�W��]�~�=���4���I�C��X�B3��m�i����i��p�gҵ򑜈�}�ym,"*=����IE�b�d���ew]���E����Sq5�Gl'͊k�̠��D��+�g�(hD	�;�Y�J�c����e
�K.nJ3./�[6?ӑj-�hT��Z�,�2x>��iJR�(L
y�����IV]Q�����|bP.ȣ�*�|o���N�Q5͑h:q����:��󀺹CC��0���
|O���^�A��ڶ������ݭv��^rb!H�lh�+�E�I�;T�h�g5�	������%�e����v��2���")@�YS�*����<�ds��c����&}t��⼜9�q�E��_�~w�kv��*�����{���{%/!�z
\I�{�翆����2�jڣcE��ك@O�I��]��&�5�"���e@%�R$ܐ��z��!H$�kb5���ֳ��LY��J[;��eN����6�G�t�n�:���H'�6W[����|=R>ʁi�g�������ꝼ0J&l_���o���\�j�wf����l�`� a�^��g�� ��^�"��U��1�D 3�CA��UO��vN��[��u�D#����v����\�@͏��4 ��|I�9A�h�Ҏ��ƀ�h��cG��PǶ
?�@.���X�pk��c0G$�a���fӃ�t0!��I�H$�S-�VUӎ��<!��\{KU�hik��s�kz�__�{Ĺ��ޑb}Q���^t~�"a)���=*l�N�!�%��حCe�= ��_X?/5	@�b�z\�_BΒ�XE�9<-\X/EQ�O�I��u�K�9���h �f"*��˿6��)��_��0���AU�	���{ھ$���9#��h�	^ܤQ6Äq��j`�o��j:������46B �1/���}0���)�����F�M�^�r����k�����3,[������0s��+��pXZY5�����ń�������)r���d�1?�w���x��l��e�Ny����4ӎN����ҫ5�!7l4$�����7���0�I�jf�z`����=�	J�JŎ�H����؅q9�f�9x������@"���{P���Nѧ������0�gKq�SΜ���uZf�~'��p!�����?X��v���%��Q�-
�9W<8�4Fo�x��H�v2�6���R.��S
��J ��Vjv}w���7��=��w��U�G�%ŀ�,(}|�!�w��B�Y��V�  �M��|Q���?<0��d��1xw����Ka��rMl��o�;=|9�1�JI�eÖ� S�;_�a2id
��_�c�%o`�M��o�~�1
aCR��1�"�C��8��Q�"@�c����uF
�~�#N {.�N���7�t��M�%}�T'Su��d�i*r�cOߟE)6��`�K���T�6b�j؟[��.3g%S���~tM��g!>���O��Boqߣ����@���KMt�.;��Q����k�)���50a����9.G�-gbr�7�Wj���b�'g��3�Ŭ���;̴R�)�j�q�J��4���!(��D����`e��a���=H��i
��K4�?� O	r�K����!~iƬ��Lƞ(�.ܳD-u���[�3v�D�P����)1�.4ꁍ�����0�w�?� H�(�bN��)�'N�!@P�$��FqM�+F��ų�c+���������QǦޘ��R�W����Y׹X�2x���7�աƁ�+v�l�ͽ�Dz�� �A�׸��+�*4��n��-W>�̉��A�,߿+Q!0�,�;Tw�²��e��7��)"\(�ؐ��=�M6��;1ɜ͞ƶ�D��E��&�UR��`_O[5Y�\�z���=�
s�������W-b�|�M�,;��ԖK�竪Fةe*g3���Q� ����� q  ��l��;�/�u=mL-̵ ��x�@��������yg�#�r�t.��#�A)�u��M�_<w�шM�����ʵ+�[����4��kkqdbW��Ɏky5��Z9��Ҽ��t%,��KmSg�M�#��҃�3P���(ҳT/h*qрy�0_�#Y�NC-����/�;9O��X@���m&:1�E��z����u��h����3�̺dg��S�a,�=ߔ�����Y�4<�6~�N�I�����a�J4U1������j�/;DG��A��N���llJV��H0�J��J���U-����V�ftѕ�KE����ٖ����5a��z�YF�$Y�����Vܭ�٠d��o���{�a3}A��I�0��W�#�`vNE���/��s�D�Eр�$��j�Fi����q��4�P���-XaX�I�szQ��{����#̤��*�Ᵽ���*�!��ġ�X-�TW|��[e�*�c�(r0F��7U��M"/���<xA	��Yc�RWM
��ǁm�(ΐ���}-�sq_ɣ�G�O���rӉ�f��r^?-���g{k�)'b� fT�\.����ɘM��н���gi��;C����?-�QD�B^]�D�~��=Mg%y�]4*�$�PI����tOC������D,�rg���XՐ�=B�TYk(����YH�|HΤ�2� �W&g����e]�gG�MR��tB�m˪�MZn�Ӓ�q���UKp���|����>�(ܾHp�ޠh^����Ǜ:��b�Rh�M�%.�%�yOI���|Uv��l����|yg�FϞ9�.�<'	��p�=%ttf�%�7�A-�Le��靍�e�sfPt�&�������_�Fi}�         �  x���Qs�8���)���̵��$sO�0����}܀��!$F6p�ӟve�iK������ؿ�ծVDqo��A�L�f�&��s�a���^{1�<��>ĠXGZ	������y4Zx�Q}�:՟�]��9�n=��E�	�n�K܉����}{��폛��A�	ra`�-&
�Ze�
�%�),��bQ�0�x�_Ц���,1 ${�p�.�?9���K��}ݯ�:���0��e�+�/���%����[qm8�������>��j���i�b�����~7~�����E~�wG��\n2�]f�2Z�:��A��S���R��a����R�1��;�Ax����yi�d6���0�tn�O�%�Y(�fSƯn�t\�*�2rE����s˂><��@�l��~EP�At����s�N�'�NV2���;K��ZrC�dj�t��3zꗷ��gߴY��Ɠ�:�f�}�Y�����s�8�.�V4��x���;��H]���Qe_���馜a���yyf7f;]��8�Y^�$ҽ�MI�&�'��k����Nt�XѴV^?Ap7L��8��`Sh�k&1��UK�i�h�N3PK
���e�>Y��!y�0���Y���uu�b���0Zl*r���t�N_��jW��^�'���s�⹶�L"�o���q7F��]'�9�.����,��:�r���=iƈru�mW륣�.������On1�l���_�LWNN7=��'�^0�X�)!������� �������3y�FJ��t�	aR��p��sm�B�Q�O�q�O�#X�t'�8%Ɇs���[Gvr�r6��(�U�v�t4�~4�z�����h�����G��s�;ȯw�硧����1_��Y�^�8��#�3A����4����,����e���VJB��T���B_'Id��3C.m�\y�LW�N7L����9r��6�e���2��(~a�I^W�77�k�?�     