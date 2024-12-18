PGDMP  '            
        |            EsportLeagueOfLegends    17.2    17.0 w    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            H           1262    16697    EsportLeagueOfLegends    DATABASE     �   CREATE DATABASE "EsportLeagueOfLegends" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
 '   DROP DATABASE "EsportLeagueOfLegends";
                     postgres    false                        2615    16698    esportleagueoflegends    SCHEMA     %   CREATE SCHEMA esportleagueoflegends;
 #   DROP SCHEMA esportleagueoflegends;
                     postgres    false            �            1255    16842 *   dodajdrużynę(character varying, integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."dodajdrużynę"(IN p_nazwa character varying, IN p_regionid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Drużyny (Nazwa, RegionID)
    VALUES (p_Nazwa, p_RegionID);
END;
$$;
 l   DROP PROCEDURE esportleagueoflegends."dodajdrużynę"(IN p_nazwa character varying, IN p_regionid integer);
       esportleagueoflegends               postgres    false    6            �            1255    16845 :   dodajgracza(character varying, integer, character varying) 	   PROCEDURE     <  CREATE PROCEDURE esportleagueoflegends.dodajgracza(IN p_nickname character varying, IN "p_drużynaid" integer, IN p_pozycja character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Gracze (Nickname, DrużynaID, Pozycja)
    VALUES (p_Nickname, p_DrużynaID, p_Pozycja);
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.dodajgracza(IN p_nickname character varying, IN "p_drużynaid" integer, IN p_pozycja character varying);
       esportleagueoflegends               postgres    false    6                        1255    16857 I   dodajkomentatora(character varying, character varying, character varying) 	   PROCEDURE     E  CREATE PROCEDURE esportleagueoflegends.dodajkomentatora(IN "p_imię" character varying, IN p_nazwisko character varying, IN p_nickname character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Komentatorzy (Imię, Nazwisko, Nickname)
    VALUES (p_Imię, p_Nazwisko, p_Nickname);
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.dodajkomentatora(IN "p_imię" character varying, IN p_nazwisko character varying, IN p_nickname character varying);
       esportleagueoflegends               postgres    false    6                       1255    16860    dodajmecz(integer, integer) 	   PROCEDURE       CREATE PROCEDURE esportleagueoflegends.dodajmecz(IN p_komentatorid integer, IN p_turniejid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Mecze (KomentatorID, TurniejID)
    VALUES (p_KomentatorID, p_TurniejID);
END;
$$;
 c   DROP PROCEDURE esportleagueoflegends.dodajmecz(IN p_komentatorid integer, IN p_turniejid integer);
       esportleagueoflegends               postgres    false    6                       1255    16863 2   dodajpostać(character varying, character varying) 	   PROCEDURE     	  CREATE PROCEDURE esportleagueoflegends."dodajpostać"(IN p_nazwa character varying, IN p_piktogram character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Postacie (Nazwa, Piktogram)
    VALUES (p_Nazwa, p_Piktogram);
END;
$$;
 u   DROP PROCEDURE esportleagueoflegends."dodajpostać"(IN p_nazwa character varying, IN p_piktogram character varying);
       esportleagueoflegends               postgres    false    6            �            1255    16839 1   dodajregion(character varying, character varying) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends.dodajregion(IN p_nazwa character varying, IN "p_skrót" character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Regiony (Nazwa, Skrót)
    VALUES (p_Nazwa, p_Skrót);
END;
$$;
 q   DROP PROCEDURE esportleagueoflegends.dodajregion(IN p_nazwa character varying, IN "p_skrót" character varying);
       esportleagueoflegends               postgres    false    6            �            1255    16851 1   dodajtransfer(integer, integer, integer, integer) 	   PROCEDURE     \  CREATE PROCEDURE esportleagueoflegends.dodajtransfer(IN p_graczid integer, IN "p_drużyna1" integer, IN "p_drużyna2" integer, IN p_trenerid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Transfery (GraczID, Drużyna1, Drużyna2, TrenerID)
    VALUES (p_GraczID, p_Drużyna1, p_Drużyna2, p_TrenerID);
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.dodajtransfer(IN p_graczid integer, IN "p_drużyna1" integer, IN "p_drużyna2" integer, IN p_trenerid integer);
       esportleagueoflegends               postgres    false    6            �            1255    16848 ;   dodajtrenera(character varying, character varying, integer) 	   PROCEDURE     ;  CREATE PROCEDURE esportleagueoflegends.dodajtrenera(IN "p_imię" character varying, IN p_nazwisko character varying, IN "p_drużynaid" integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Trenerzy (Imię, Nazwisko, DrużynaID)
    VALUES (p_Imię, p_Nazwisko, p_DrużynaID);
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.dodajtrenera(IN "p_imię" character varying, IN p_nazwisko character varying, IN "p_drużynaid" integer);
       esportleagueoflegends               postgres    false    6            �            1255    16854 g   dodajturniej(character varying, character varying, character varying, character varying, integer, date) 	   PROCEDURE     �  CREATE PROCEDURE esportleagueoflegends.dodajturniej(IN p_nazwaturnieju character varying, IN p_rodzaj character varying, IN p_organizator character varying, IN p_adres character varying, IN p_regionid integer, IN p_data date)
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO EsportLeagueOfLegends.Turnieje (NazwaTurnieju, Rodzaj, Organizator, Adres, RegionID, Data)
    VALUES (p_NazwaTurnieju, p_Rodzaj, p_Organizator, p_Adres, p_RegionID, p_Data);
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.dodajturniej(IN p_nazwaturnieju character varying, IN p_rodzaj character varying, IN p_organizator character varying, IN p_adres character varying, IN p_regionid integer, IN p_data date);
       esportleagueoflegends               postgres    false    6            �            1255    16844 4   edytujdrużynę(integer, character varying, integer) 	   PROCEDURE     =  CREATE PROCEDURE esportleagueoflegends."edytujdrużynę"(IN "p_drużynaid" integer, IN p_nazwa character varying, IN p_regionid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Drużyny
    SET Nazwa = p_Nazwa,
        RegionID = p_RegionID
    WHERE DrużynaID = p_DrużynaID;
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends."edytujdrużynę"(IN "p_drużynaid" integer, IN p_nazwa character varying, IN p_regionid integer);
       esportleagueoflegends               postgres    false    6            �            1255    16847 D   edytujgracza(integer, character varying, integer, character varying) 	   PROCEDURE     y  CREATE PROCEDURE esportleagueoflegends.edytujgracza(IN p_graczid integer, IN p_nickname character varying, IN "p_drużynaid" integer, IN p_pozycja character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Gracze
    SET Nickname = p_Nickname,
        DrużynaID = p_DrużynaID,
        Pozycja = p_Pozycja
    WHERE GraczID = p_GraczID;
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.edytujgracza(IN p_graczid integer, IN p_nickname character varying, IN "p_drużynaid" integer, IN p_pozycja character varying);
       esportleagueoflegends               postgres    false    6                       1255    16859 S   edytujkomentatora(integer, character varying, character varying, character varying) 	   PROCEDURE     �  CREATE PROCEDURE esportleagueoflegends.edytujkomentatora(IN p_komentatorid integer, IN "p_imię" character varying, IN p_nazwisko character varying, IN p_nickname character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Komentatorzy
    SET Imię = p_Imię,
        Nazwisko = p_Nazwisko,
        Nickname = p_Nickname
    WHERE KomentatorID = p_KomentatorID;
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.edytujkomentatora(IN p_komentatorid integer, IN "p_imię" character varying, IN p_nazwisko character varying, IN p_nickname character varying);
       esportleagueoflegends               postgres    false    6                       1255    16862 %   edytujmecz(integer, integer, integer) 	   PROCEDURE     3  CREATE PROCEDURE esportleagueoflegends.edytujmecz(IN p_meczid integer, IN p_komentatorid integer, IN p_turniejid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Mecze
    SET KomentatorID = p_KomentatorID,
        TurniejID = p_TurniejID
    WHERE MeczID = p_MeczID;
END;
$$;
 y   DROP PROCEDURE esportleagueoflegends.edytujmecz(IN p_meczid integer, IN p_komentatorid integer, IN p_turniejid integer);
       esportleagueoflegends               postgres    false    6                       1255    16865 <   edytujpostać(integer, character varying, character varying) 	   PROCEDURE     E  CREATE PROCEDURE esportleagueoflegends."edytujpostać"(IN "p_postaćid" integer, IN p_nazwa character varying, IN p_piktogram character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Postacie
    SET Nazwa = p_Nazwa,
        Piktogram = p_Piktogram
    WHERE PostaćID = p_PostaćID;
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends."edytujpostać"(IN "p_postaćid" integer, IN p_nazwa character varying, IN p_piktogram character varying);
       esportleagueoflegends               postgres    false    6            �            1255    16841 ;   edytujregion(integer, character varying, character varying) 	   PROCEDURE     5  CREATE PROCEDURE esportleagueoflegends.edytujregion(IN p_regionid integer, IN p_nazwa character varying, IN "p_skrót" character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Regiony
    SET Nazwa = p_Nazwa,
        Skrót = p_Skrót
    WHERE RegionID = p_RegionID;
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.edytujregion(IN p_regionid integer, IN p_nazwa character varying, IN "p_skrót" character varying);
       esportleagueoflegends               postgres    false    6            �            1255    16853 ;   edytujtransfer(integer, integer, integer, integer, integer) 	   PROCEDURE     �  CREATE PROCEDURE esportleagueoflegends.edytujtransfer(IN p_transferid integer, IN p_graczid integer, IN "p_drużyna1" integer, IN "p_drużyna2" integer, IN p_trenerid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Transfery
    SET GraczID = p_GraczID,
        Drużyna1 = p_Drużyna1,
        Drużyna2 = p_Drużyna2,
        TrenerID = p_TrenerID
    WHERE TransferID = p_TransferID;
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.edytujtransfer(IN p_transferid integer, IN p_graczid integer, IN "p_drużyna1" integer, IN "p_drużyna2" integer, IN p_trenerid integer);
       esportleagueoflegends               postgres    false    6            �            1255    16850 E   edytujtrenera(integer, character varying, character varying, integer) 	   PROCEDURE     {  CREATE PROCEDURE esportleagueoflegends.edytujtrenera(IN p_trenerid integer, IN "p_imię" character varying, IN p_nazwisko character varying, IN "p_drużynaid" integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Trenerzy
    SET Imię = p_Imię,
        Nazwisko = p_Nazwisko,
        DrużynaID = p_DrużynaID
    WHERE TrenerID = p_TrenerID;
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.edytujtrenera(IN p_trenerid integer, IN "p_imię" character varying, IN p_nazwisko character varying, IN "p_drużynaid" integer);
       esportleagueoflegends               postgres    false    6            �            1255    16856 q   edytujturniej(integer, character varying, character varying, character varying, character varying, integer, date) 	   PROCEDURE     -  CREATE PROCEDURE esportleagueoflegends.edytujturniej(IN p_turniejid integer, IN p_nazwaturnieju character varying, IN p_rodzaj character varying, IN p_organizator character varying, IN p_adres character varying, IN p_regionid integer, IN p_data date)
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE EsportLeagueOfLegends.Turnieje
    SET NazwaTurnieju = p_NazwaTurnieju,
        Rodzaj = p_Rodzaj,
        Organizator = p_Organizator,
        Adres = p_Adres,
        RegionID = p_RegionID,
        Data = p_Data
    WHERE TurniejID = p_TurniejID;
END;
$$;
 �   DROP PROCEDURE esportleagueoflegends.edytujturniej(IN p_turniejid integer, IN p_nazwaturnieju character varying, IN p_rodzaj character varying, IN p_organizator character varying, IN p_adres character varying, IN p_regionid integer, IN p_data date);
       esportleagueoflegends               postgres    false    6                       1255    16868    liczbadrużynwregionie(integer)    FUNCTION     >  CREATE FUNCTION esportleagueoflegends."liczbadrużynwregionie"(p_regionid integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    liczba_drużyn INT;
BEGIN
    SELECT COUNT(*) INTO liczba_drużyn
    FROM EsportLeagueOfLegends.Drużyny
    WHERE RegionID = p_RegionID;

    RETURN liczba_drużyn;
END;
$$;
 R   DROP FUNCTION esportleagueoflegends."liczbadrużynwregionie"(p_regionid integer);
       esportleagueoflegends               postgres    false    6                       1255    16867 !   najlepszygraczwdrużynie(integer)    FUNCTION     �  CREATE FUNCTION esportleagueoflegends."najlepszygraczwdrużynie"("p_drużynaid" integer) RETURNS TABLE(graczid integer, nickname character varying, eliminacje integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY
    SELECT GraczID, Nickname, Eliminacje
    FROM EsportLeagueOfLegends.Gracze
    WHERE DrużynaID = p_DrużynaID
    ORDER BY Eliminacje DESC
    LIMIT 1;
END;
$$;
 X   DROP FUNCTION esportleagueoflegends."najlepszygraczwdrużynie"("p_drużynaid" integer);
       esportleagueoflegends               postgres    false    6            �            1255    16843    usuńdrużynę(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńdrużynę"(IN "p_drużynaid" integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Drużyny
    WHERE DrużynaID = p_DrużynaID;
END;
$$;
 R   DROP PROCEDURE esportleagueoflegends."usuńdrużynę"(IN "p_drużynaid" integer);
       esportleagueoflegends               postgres    false    6            �            1255    16846    usuńgracza(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńgracza"(IN p_graczid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Gracze
    WHERE GraczID = p_GraczID;
END;
$$;
 J   DROP PROCEDURE esportleagueoflegends."usuńgracza"(IN p_graczid integer);
       esportleagueoflegends               postgres    false    6                       1255    16858    usuńkomentatora(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńkomentatora"(IN p_komentatorid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Komentatorzy
    WHERE KomentatorID = p_KomentatorID;
END;
$$;
 T   DROP PROCEDURE esportleagueoflegends."usuńkomentatora"(IN p_komentatorid integer);
       esportleagueoflegends               postgres    false    6                       1255    16861    usuńmecz(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńmecz"(IN p_meczid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Mecze
    WHERE MeczID = p_MeczID;
END;
$$;
 G   DROP PROCEDURE esportleagueoflegends."usuńmecz"(IN p_meczid integer);
       esportleagueoflegends               postgres    false    6                       1255    16864    usuńpostać(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńpostać"(IN "p_postaćid" integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Postacie
    WHERE PostaćID = p_PostaćID;
END;
$$;
 O   DROP PROCEDURE esportleagueoflegends."usuńpostać"(IN "p_postaćid" integer);
       esportleagueoflegends               postgres    false    6            �            1255    16840    usuńregion(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńregion"(IN p_regionid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Regiony
    WHERE RegionID = p_RegionID;
END;
$$;
 K   DROP PROCEDURE esportleagueoflegends."usuńregion"(IN p_regionid integer);
       esportleagueoflegends               postgres    false    6            �            1255    16852    usuńtransfer(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńtransfer"(IN p_transferid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Transfery
    WHERE TransferID = p_TransferID;
END;
$$;
 O   DROP PROCEDURE esportleagueoflegends."usuńtransfer"(IN p_transferid integer);
       esportleagueoflegends               postgres    false    6            �            1255    16849    usuńtrenera(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńtrenera"(IN p_trenerid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Trenerzy
    WHERE TrenerID = p_TrenerID;
END;
$$;
 L   DROP PROCEDURE esportleagueoflegends."usuńtrenera"(IN p_trenerid integer);
       esportleagueoflegends               postgres    false    6            �            1255    16855    usuńturniej(integer) 	   PROCEDURE     �   CREATE PROCEDURE esportleagueoflegends."usuńturniej"(IN p_turniejid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM EsportLeagueOfLegends.Turnieje
    WHERE TurniejID = p_TurniejID;
END;
$$;
 M   DROP PROCEDURE esportleagueoflegends."usuńturniej"(IN p_turniejid integer);
       esportleagueoflegends               postgres    false    6            	           1255    16866 !   Łącznaliczbaeliminacji(integer)    FUNCTION     K  CREATE FUNCTION esportleagueoflegends."Łącznaliczbaeliminacji"(p_graczid integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    liczba_eliminacji INT;
BEGIN
    SELECT SUM(Eliminacje) INTO liczba_eliminacji
    FROM EsportLeagueOfLegends.Gracze
    WHERE GraczID = p_GraczID;

    RETURN liczba_eliminacji;
END;
$$;
 S   DROP FUNCTION esportleagueoflegends."Łącznaliczbaeliminacji"(p_graczid integer);
       esportleagueoflegends               postgres    false    6                       1255    16870 (   Średniaeliminacjizgonówiasyst(integer)    FUNCTION       CREATE FUNCTION esportleagueoflegends."Średniaeliminacjizgonówiasyst"(p_graczid integer) RETURNS TABLE("Średniaeliminacji" double precision, "Średniazgonów" double precision, "Średniaasyst" double precision)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY
    SELECT 
        COALESCE(AVG(Eliminacje), 0) AS ŚredniaEliminacji,
        COALESCE(AVG(Zgony), 0) AS ŚredniaZgonów,
        COALESCE(AVG(Asysty), 0) AS ŚredniaAsyst
    FROM EsportLeagueOfLegends.Gracze
    WHERE GraczID = p_GraczID;
END;
$$;
 Z   DROP FUNCTION esportleagueoflegends."Średniaeliminacjizgonówiasyst"(p_graczid integer);
       esportleagueoflegends               postgres    false    6            �            1259    16707    drużyny    TABLE     �   CREATE TABLE esportleagueoflegends."drużyny" (
    "drużynaid" integer NOT NULL,
    nazwa character varying(100) NOT NULL,
    regionid integer NOT NULL
);
 -   DROP TABLE esportleagueoflegends."drużyny";
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16706    drużyny_drużynaid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends."drużyny_drużynaid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE esportleagueoflegends."drużyny_drużynaid_seq";
       esportleagueoflegends               postgres    false    6    221            I           0    0    drużyny_drużynaid_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE esportleagueoflegends."drużyny_drużynaid_seq" OWNED BY esportleagueoflegends."drużyny"."drużynaid";
          esportleagueoflegends               postgres    false    220            �            1259    16719    gracze    TABLE     \  CREATE TABLE esportleagueoflegends.gracze (
    graczid integer NOT NULL,
    nickname character varying(50) NOT NULL,
    "drużynaid" integer NOT NULL,
    przegrane integer DEFAULT 0,
    wygrane integer DEFAULT 0,
    eliminacje integer DEFAULT 0,
    asysty integer DEFAULT 0,
    zgony integer DEFAULT 0,
    pozycja character varying(30)
);
 )   DROP TABLE esportleagueoflegends.gracze;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16718    gracze_graczid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends.gracze_graczid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE esportleagueoflegends.gracze_graczid_seq;
       esportleagueoflegends               postgres    false    223    6            J           0    0    gracze_graczid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE esportleagueoflegends.gracze_graczid_seq OWNED BY esportleagueoflegends.gracze.graczid;
          esportleagueoflegends               postgres    false    222            �            1259    16787    komentatorzy    TABLE     �   CREATE TABLE esportleagueoflegends.komentatorzy (
    komentatorid integer NOT NULL,
    "imię" character varying(50) NOT NULL,
    nazwisko character varying(50) NOT NULL,
    nickname character varying(50) NOT NULL
);
 /   DROP TABLE esportleagueoflegends.komentatorzy;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16786    komentatorzy_komentatorid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends.komentatorzy_komentatorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE esportleagueoflegends.komentatorzy_komentatorid_seq;
       esportleagueoflegends               postgres    false    231    6            K           0    0    komentatorzy_komentatorid_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE esportleagueoflegends.komentatorzy_komentatorid_seq OWNED BY esportleagueoflegends.komentatorzy.komentatorid;
          esportleagueoflegends               postgres    false    230            �            1259    16794    mecze    TABLE     �   CREATE TABLE esportleagueoflegends.mecze (
    meczid integer NOT NULL,
    komentatorid integer NOT NULL,
    turniejid integer NOT NULL
);
 (   DROP TABLE esportleagueoflegends.mecze;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16793    mecze_meczid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends.mecze_meczid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE esportleagueoflegends.mecze_meczid_seq;
       esportleagueoflegends               postgres    false    6    233            L           0    0    mecze_meczid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE esportleagueoflegends.mecze_meczid_seq OWNED BY esportleagueoflegends.mecze.meczid;
          esportleagueoflegends               postgres    false    232            �            1259    16811    postacie    TABLE     �   CREATE TABLE esportleagueoflegends.postacie (
    "postaćid" integer NOT NULL,
    nazwa character varying(50) NOT NULL,
    piktogram character varying(200)
);
 +   DROP TABLE esportleagueoflegends.postacie;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16810    postacie_postaćid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends."postacie_postaćid_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE esportleagueoflegends."postacie_postaćid_seq";
       esportleagueoflegends               postgres    false    6    235            M           0    0    postacie_postaćid_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE esportleagueoflegends."postacie_postaćid_seq" OWNED BY esportleagueoflegends.postacie."postaćid";
          esportleagueoflegends               postgres    false    234            �            1259    16700    regiony    TABLE     �   CREATE TABLE esportleagueoflegends.regiony (
    regionid integer NOT NULL,
    nazwa character varying(100) NOT NULL,
    "skrót" character varying(10) NOT NULL
);
 *   DROP TABLE esportleagueoflegends.regiony;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16699    regiony_regionid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends.regiony_regionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE esportleagueoflegends.regiony_regionid_seq;
       esportleagueoflegends               postgres    false    219    6            N           0    0    regiony_regionid_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE esportleagueoflegends.regiony_regionid_seq OWNED BY esportleagueoflegends.regiony.regionid;
          esportleagueoflegends               postgres    false    218            �            1259    16748 	   transfery    TABLE     �   CREATE TABLE esportleagueoflegends.transfery (
    transferid integer NOT NULL,
    graczid integer NOT NULL,
    "drużyna1" integer NOT NULL,
    "drużyna2" integer NOT NULL,
    trenerid integer
);
 ,   DROP TABLE esportleagueoflegends.transfery;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16747    transfery_transferid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends.transfery_transferid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE esportleagueoflegends.transfery_transferid_seq;
       esportleagueoflegends               postgres    false    227    6            O           0    0    transfery_transferid_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE esportleagueoflegends.transfery_transferid_seq OWNED BY esportleagueoflegends.transfery.transferid;
          esportleagueoflegends               postgres    false    226            �            1259    16736    trenerzy    TABLE     �   CREATE TABLE esportleagueoflegends.trenerzy (
    trenerid integer NOT NULL,
    "imię" character varying(50) NOT NULL,
    nazwisko character varying(50) NOT NULL,
    "drużynaid" integer NOT NULL
);
 +   DROP TABLE esportleagueoflegends.trenerzy;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16735    trenerzy_trenerid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends.trenerzy_trenerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE esportleagueoflegends.trenerzy_trenerid_seq;
       esportleagueoflegends               postgres    false    225    6            P           0    0    trenerzy_trenerid_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE esportleagueoflegends.trenerzy_trenerid_seq OWNED BY esportleagueoflegends.trenerzy.trenerid;
          esportleagueoflegends               postgres    false    224            �            1259    16775    turnieje    TABLE       CREATE TABLE esportleagueoflegends.turnieje (
    turniejid integer NOT NULL,
    nazwaturnieju character varying(100) NOT NULL,
    rodzaj character varying(50),
    organizator character varying(100),
    adres character varying(200),
    regionid integer NOT NULL,
    data date
);
 +   DROP TABLE esportleagueoflegends.turnieje;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16774    turnieje_turniejid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends.turnieje_turniejid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE esportleagueoflegends.turnieje_turniejid_seq;
       esportleagueoflegends               postgres    false    229    6            Q           0    0    turnieje_turniejid_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE esportleagueoflegends.turnieje_turniejid_seq OWNED BY esportleagueoflegends.turnieje.turniejid;
          esportleagueoflegends               postgres    false    228            �            1259    16818    xyz    TABLE     �   CREATE TABLE esportleagueoflegends.xyz (
    uniqueid integer NOT NULL,
    graczid integer NOT NULL,
    meczid integer NOT NULL,
    "postaćid" integer NOT NULL,
    wynik integer
);
 &   DROP TABLE esportleagueoflegends.xyz;
       esportleagueoflegends         heap r       postgres    false    6            �            1259    16817    xyz_uniqueid_seq    SEQUENCE     �   CREATE SEQUENCE esportleagueoflegends.xyz_uniqueid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE esportleagueoflegends.xyz_uniqueid_seq;
       esportleagueoflegends               postgres    false    237    6            R           0    0    xyz_uniqueid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE esportleagueoflegends.xyz_uniqueid_seq OWNED BY esportleagueoflegends.xyz.uniqueid;
          esportleagueoflegends               postgres    false    236            o           2604    16710    drużyny drużynaid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends."drużyny" ALTER COLUMN "drużynaid" SET DEFAULT nextval('esportleagueoflegends."drużyny_drużynaid_seq"'::regclass);
 U   ALTER TABLE esportleagueoflegends."drużyny" ALTER COLUMN "drużynaid" DROP DEFAULT;
       esportleagueoflegends               postgres    false    220    221    221            p           2604    16722    gracze graczid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.gracze ALTER COLUMN graczid SET DEFAULT nextval('esportleagueoflegends.gracze_graczid_seq'::regclass);
 L   ALTER TABLE esportleagueoflegends.gracze ALTER COLUMN graczid DROP DEFAULT;
       esportleagueoflegends               postgres    false    223    222    223            y           2604    16790    komentatorzy komentatorid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.komentatorzy ALTER COLUMN komentatorid SET DEFAULT nextval('esportleagueoflegends.komentatorzy_komentatorid_seq'::regclass);
 W   ALTER TABLE esportleagueoflegends.komentatorzy ALTER COLUMN komentatorid DROP DEFAULT;
       esportleagueoflegends               postgres    false    231    230    231            z           2604    16797    mecze meczid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.mecze ALTER COLUMN meczid SET DEFAULT nextval('esportleagueoflegends.mecze_meczid_seq'::regclass);
 J   ALTER TABLE esportleagueoflegends.mecze ALTER COLUMN meczid DROP DEFAULT;
       esportleagueoflegends               postgres    false    233    232    233            {           2604    16814    postacie postaćid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.postacie ALTER COLUMN "postaćid" SET DEFAULT nextval('esportleagueoflegends."postacie_postaćid_seq"'::regclass);
 R   ALTER TABLE esportleagueoflegends.postacie ALTER COLUMN "postaćid" DROP DEFAULT;
       esportleagueoflegends               postgres    false    234    235    235            n           2604    16703    regiony regionid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.regiony ALTER COLUMN regionid SET DEFAULT nextval('esportleagueoflegends.regiony_regionid_seq'::regclass);
 N   ALTER TABLE esportleagueoflegends.regiony ALTER COLUMN regionid DROP DEFAULT;
       esportleagueoflegends               postgres    false    219    218    219            w           2604    16751    transfery transferid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.transfery ALTER COLUMN transferid SET DEFAULT nextval('esportleagueoflegends.transfery_transferid_seq'::regclass);
 R   ALTER TABLE esportleagueoflegends.transfery ALTER COLUMN transferid DROP DEFAULT;
       esportleagueoflegends               postgres    false    226    227    227            v           2604    16739    trenerzy trenerid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.trenerzy ALTER COLUMN trenerid SET DEFAULT nextval('esportleagueoflegends.trenerzy_trenerid_seq'::regclass);
 O   ALTER TABLE esportleagueoflegends.trenerzy ALTER COLUMN trenerid DROP DEFAULT;
       esportleagueoflegends               postgres    false    224    225    225            x           2604    16778    turnieje turniejid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.turnieje ALTER COLUMN turniejid SET DEFAULT nextval('esportleagueoflegends.turnieje_turniejid_seq'::regclass);
 P   ALTER TABLE esportleagueoflegends.turnieje ALTER COLUMN turniejid DROP DEFAULT;
       esportleagueoflegends               postgres    false    228    229    229            |           2604    16821    xyz uniqueid    DEFAULT     �   ALTER TABLE ONLY esportleagueoflegends.xyz ALTER COLUMN uniqueid SET DEFAULT nextval('esportleagueoflegends.xyz_uniqueid_seq'::regclass);
 J   ALTER TABLE esportleagueoflegends.xyz ALTER COLUMN uniqueid DROP DEFAULT;
       esportleagueoflegends               postgres    false    237    236    237            2          0    16707    drużyny 
   TABLE DATA           R   COPY esportleagueoflegends."drużyny" ("drużynaid", nazwa, regionid) FROM stdin;
    esportleagueoflegends               postgres    false    221   1�       4          0    16719    gracze 
   TABLE DATA           �   COPY esportleagueoflegends.gracze (graczid, nickname, "drużynaid", przegrane, wygrane, eliminacje, asysty, zgony, pozycja) FROM stdin;
    esportleagueoflegends               postgres    false    223   N�       <          0    16787    komentatorzy 
   TABLE DATA           `   COPY esportleagueoflegends.komentatorzy (komentatorid, "imię", nazwisko, nickname) FROM stdin;
    esportleagueoflegends               postgres    false    231   k�       >          0    16794    mecze 
   TABLE DATA           O   COPY esportleagueoflegends.mecze (meczid, komentatorid, turniejid) FROM stdin;
    esportleagueoflegends               postgres    false    233   ��       @          0    16811    postacie 
   TABLE DATA           P   COPY esportleagueoflegends.postacie ("postaćid", nazwa, piktogram) FROM stdin;
    esportleagueoflegends               postgres    false    235   ��       0          0    16700    regiony 
   TABLE DATA           K   COPY esportleagueoflegends.regiony (regionid, nazwa, "skrót") FROM stdin;
    esportleagueoflegends               postgres    false    219   ��       8          0    16748 	   transfery 
   TABLE DATA           k   COPY esportleagueoflegends.transfery (transferid, graczid, "drużyna1", "drużyna2", trenerid) FROM stdin;
    esportleagueoflegends               postgres    false    227   ��       6          0    16736    trenerzy 
   TABLE DATA           \   COPY esportleagueoflegends.trenerzy (trenerid, "imię", nazwisko, "drużynaid") FROM stdin;
    esportleagueoflegends               postgres    false    225   ��       :          0    16775    turnieje 
   TABLE DATA           w   COPY esportleagueoflegends.turnieje (turniejid, nazwaturnieju, rodzaj, organizator, adres, regionid, data) FROM stdin;
    esportleagueoflegends               postgres    false    229   �       B          0    16818    xyz 
   TABLE DATA           [   COPY esportleagueoflegends.xyz (uniqueid, graczid, meczid, "postaćid", wynik) FROM stdin;
    esportleagueoflegends               postgres    false    237   6�       S           0    0    drużyny_drużynaid_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('esportleagueoflegends."drużyny_drużynaid_seq"', 1, false);
          esportleagueoflegends               postgres    false    220            T           0    0    gracze_graczid_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('esportleagueoflegends.gracze_graczid_seq', 1, false);
          esportleagueoflegends               postgres    false    222            U           0    0    komentatorzy_komentatorid_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('esportleagueoflegends.komentatorzy_komentatorid_seq', 1, false);
          esportleagueoflegends               postgres    false    230            V           0    0    mecze_meczid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('esportleagueoflegends.mecze_meczid_seq', 1, false);
          esportleagueoflegends               postgres    false    232            W           0    0    postacie_postaćid_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('esportleagueoflegends."postacie_postaćid_seq"', 1, false);
          esportleagueoflegends               postgres    false    234            X           0    0    regiony_regionid_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('esportleagueoflegends.regiony_regionid_seq', 1, false);
          esportleagueoflegends               postgres    false    218            Y           0    0    transfery_transferid_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('esportleagueoflegends.transfery_transferid_seq', 1, false);
          esportleagueoflegends               postgres    false    226            Z           0    0    trenerzy_trenerid_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('esportleagueoflegends.trenerzy_trenerid_seq', 1, false);
          esportleagueoflegends               postgres    false    224            [           0    0    turnieje_turniejid_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('esportleagueoflegends.turnieje_turniejid_seq', 1, false);
          esportleagueoflegends               postgres    false    228            \           0    0    xyz_uniqueid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('esportleagueoflegends.xyz_uniqueid_seq', 1, false);
          esportleagueoflegends               postgres    false    236            �           2606    16712    drużyny drużyny_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY esportleagueoflegends."drużyny"
    ADD CONSTRAINT "drużyny_pkey" PRIMARY KEY ("drużynaid");
 S   ALTER TABLE ONLY esportleagueoflegends."drużyny" DROP CONSTRAINT "drużyny_pkey";
       esportleagueoflegends                 postgres    false    221            �           2606    16729    gracze gracze_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY esportleagueoflegends.gracze
    ADD CONSTRAINT gracze_pkey PRIMARY KEY (graczid);
 K   ALTER TABLE ONLY esportleagueoflegends.gracze DROP CONSTRAINT gracze_pkey;
       esportleagueoflegends                 postgres    false    223            �           2606    16792    komentatorzy komentatorzy_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY esportleagueoflegends.komentatorzy
    ADD CONSTRAINT komentatorzy_pkey PRIMARY KEY (komentatorid);
 W   ALTER TABLE ONLY esportleagueoflegends.komentatorzy DROP CONSTRAINT komentatorzy_pkey;
       esportleagueoflegends                 postgres    false    231            �           2606    16799    mecze mecze_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY esportleagueoflegends.mecze
    ADD CONSTRAINT mecze_pkey PRIMARY KEY (meczid);
 I   ALTER TABLE ONLY esportleagueoflegends.mecze DROP CONSTRAINT mecze_pkey;
       esportleagueoflegends                 postgres    false    233            �           2606    16816    postacie postacie_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY esportleagueoflegends.postacie
    ADD CONSTRAINT postacie_pkey PRIMARY KEY ("postaćid");
 O   ALTER TABLE ONLY esportleagueoflegends.postacie DROP CONSTRAINT postacie_pkey;
       esportleagueoflegends                 postgres    false    235            ~           2606    16705    regiony regiony_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY esportleagueoflegends.regiony
    ADD CONSTRAINT regiony_pkey PRIMARY KEY (regionid);
 M   ALTER TABLE ONLY esportleagueoflegends.regiony DROP CONSTRAINT regiony_pkey;
       esportleagueoflegends                 postgres    false    219            �           2606    16753    transfery transfery_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY esportleagueoflegends.transfery
    ADD CONSTRAINT transfery_pkey PRIMARY KEY (transferid);
 Q   ALTER TABLE ONLY esportleagueoflegends.transfery DROP CONSTRAINT transfery_pkey;
       esportleagueoflegends                 postgres    false    227            �           2606    16741    trenerzy trenerzy_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY esportleagueoflegends.trenerzy
    ADD CONSTRAINT trenerzy_pkey PRIMARY KEY (trenerid);
 O   ALTER TABLE ONLY esportleagueoflegends.trenerzy DROP CONSTRAINT trenerzy_pkey;
       esportleagueoflegends                 postgres    false    225            �           2606    16780    turnieje turnieje_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY esportleagueoflegends.turnieje
    ADD CONSTRAINT turnieje_pkey PRIMARY KEY (turniejid);
 O   ALTER TABLE ONLY esportleagueoflegends.turnieje DROP CONSTRAINT turnieje_pkey;
       esportleagueoflegends                 postgres    false    229            �           2606    16823    xyz xyz_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY esportleagueoflegends.xyz
    ADD CONSTRAINT xyz_pkey PRIMARY KEY (uniqueid);
 E   ALTER TABLE ONLY esportleagueoflegends.xyz DROP CONSTRAINT xyz_pkey;
       esportleagueoflegends                 postgres    false    237            �           2606    16713    drużyny fk_drużyny_region    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends."drużyny"
    ADD CONSTRAINT "fk_drużyny_region" FOREIGN KEY (regionid) REFERENCES esportleagueoflegends.regiony(regionid);
 X   ALTER TABLE ONLY esportleagueoflegends."drużyny" DROP CONSTRAINT "fk_drużyny_region";
       esportleagueoflegends               postgres    false    221    4734    219            �           2606    16730    gracze fk_gracze_drużyny    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.gracze
    ADD CONSTRAINT "fk_gracze_drużyny" FOREIGN KEY ("drużynaid") REFERENCES esportleagueoflegends."drużyny"("drużynaid");
 T   ALTER TABLE ONLY esportleagueoflegends.gracze DROP CONSTRAINT "fk_gracze_drużyny";
       esportleagueoflegends               postgres    false    223    4736    221            �           2606    16800    mecze fk_mecze_komentatorzy    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.mecze
    ADD CONSTRAINT fk_mecze_komentatorzy FOREIGN KEY (komentatorid) REFERENCES esportleagueoflegends.komentatorzy(komentatorid);
 T   ALTER TABLE ONLY esportleagueoflegends.mecze DROP CONSTRAINT fk_mecze_komentatorzy;
       esportleagueoflegends               postgres    false    233    4746    231            �           2606    16805    mecze fk_mecze_turnieje    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.mecze
    ADD CONSTRAINT fk_mecze_turnieje FOREIGN KEY (turniejid) REFERENCES esportleagueoflegends.turnieje(turniejid);
 P   ALTER TABLE ONLY esportleagueoflegends.mecze DROP CONSTRAINT fk_mecze_turnieje;
       esportleagueoflegends               postgres    false    4744    233    229            �           2606    16759     transfery fk_transfery_drużyna1    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.transfery
    ADD CONSTRAINT "fk_transfery_drużyna1" FOREIGN KEY ("drużyna1") REFERENCES esportleagueoflegends."drużyny"("drużynaid");
 [   ALTER TABLE ONLY esportleagueoflegends.transfery DROP CONSTRAINT "fk_transfery_drużyna1";
       esportleagueoflegends               postgres    false    4736    221    227            �           2606    16764     transfery fk_transfery_drużyna2    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.transfery
    ADD CONSTRAINT "fk_transfery_drużyna2" FOREIGN KEY ("drużyna2") REFERENCES esportleagueoflegends."drużyny"("drużynaid");
 [   ALTER TABLE ONLY esportleagueoflegends.transfery DROP CONSTRAINT "fk_transfery_drużyna2";
       esportleagueoflegends               postgres    false    4736    227    221            �           2606    16754    transfery fk_transfery_gracze    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.transfery
    ADD CONSTRAINT fk_transfery_gracze FOREIGN KEY (graczid) REFERENCES esportleagueoflegends.gracze(graczid);
 V   ALTER TABLE ONLY esportleagueoflegends.transfery DROP CONSTRAINT fk_transfery_gracze;
       esportleagueoflegends               postgres    false    227    223    4738            �           2606    16769    transfery fk_transfery_trenerzy    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.transfery
    ADD CONSTRAINT fk_transfery_trenerzy FOREIGN KEY (trenerid) REFERENCES esportleagueoflegends.trenerzy(trenerid);
 X   ALTER TABLE ONLY esportleagueoflegends.transfery DROP CONSTRAINT fk_transfery_trenerzy;
       esportleagueoflegends               postgres    false    4740    227    225            �           2606    16742    trenerzy fk_trenerzy_drużyny    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.trenerzy
    ADD CONSTRAINT "fk_trenerzy_drużyny" FOREIGN KEY ("drużynaid") REFERENCES esportleagueoflegends."drużyny"("drużynaid");
 X   ALTER TABLE ONLY esportleagueoflegends.trenerzy DROP CONSTRAINT "fk_trenerzy_drużyny";
       esportleagueoflegends               postgres    false    4736    225    221            �           2606    16781    turnieje fk_turnieje_regiony    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.turnieje
    ADD CONSTRAINT fk_turnieje_regiony FOREIGN KEY (regionid) REFERENCES esportleagueoflegends.regiony(regionid);
 U   ALTER TABLE ONLY esportleagueoflegends.turnieje DROP CONSTRAINT fk_turnieje_regiony;
       esportleagueoflegends               postgres    false    219    4734    229            �           2606    16824    xyz fk_xyz_gracze    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.xyz
    ADD CONSTRAINT fk_xyz_gracze FOREIGN KEY (graczid) REFERENCES esportleagueoflegends.gracze(graczid);
 J   ALTER TABLE ONLY esportleagueoflegends.xyz DROP CONSTRAINT fk_xyz_gracze;
       esportleagueoflegends               postgres    false    4738    237    223            �           2606    16829    xyz fk_xyz_mecze    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.xyz
    ADD CONSTRAINT fk_xyz_mecze FOREIGN KEY (meczid) REFERENCES esportleagueoflegends.mecze(meczid);
 I   ALTER TABLE ONLY esportleagueoflegends.xyz DROP CONSTRAINT fk_xyz_mecze;
       esportleagueoflegends               postgres    false    233    237    4748            �           2606    16834    xyz fk_xyz_postać    FK CONSTRAINT     �   ALTER TABLE ONLY esportleagueoflegends.xyz
    ADD CONSTRAINT "fk_xyz_postać" FOREIGN KEY ("postaćid") REFERENCES esportleagueoflegends.postacie("postaćid");
 M   ALTER TABLE ONLY esportleagueoflegends.xyz DROP CONSTRAINT "fk_xyz_postać";
       esportleagueoflegends               postgres    false    4750    235    237            2      x������ � �      4      x������ � �      <      x������ � �      >      x������ � �      @      x������ � �      0      x������ � �      8      x������ � �      6      x������ � �      :      x������ � �      B      x������ � �     