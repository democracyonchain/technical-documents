--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

-- Started on 2024-05-14 10:35:07 -05

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
-- TOC entry 231 (class 1259 OID 24713)
-- Name: acta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acta (
    id integer NOT NULL,
    seguridad integer,
    estado boolean NOT NULL,
    usarioescaneo_id integer NOT NULL,
    fechaescaneno timestamp with time zone NOT NULL,
    usuariodigitacion_id integer,
    fechadigitacion timestamp with time zone,
    usuariocontrol_id integer,
    fechacontrol timestamp with time zone,
    peticion integer,
    sufragantesicr integer,
    sufragantesdigitacion integer,
    sufragantescontrol integer,
    sufragantes integer,
    blancosicr integer,
    blancosdigitacion integer,
    blancoscontrol integer,
    blancos integer,
    nulosicr integer,
    nulosdigitacion integer,
    nulos integer,
    junta_id integer NOT NULL,
    dignidad_id integer NOT NULL
);


ALTER TABLE public.acta OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 24718)
-- Name: acta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.acta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.acta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 24787)
-- Name: listanegratoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listanegratoken (
    id integer NOT NULL,
    token character varying(500) NOT NULL
);


ALTER TABLE public.listanegratoken OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 24792)
-- Name: blacktoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.listanegratoken ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.blacktoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 24741)
-- Name: candidato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidato (
    id integer NOT NULL,
    cedula integer NOT NULL,
    nombre character varying(150) NOT NULL,
    partido_id integer NOT NULL
);


ALTER TABLE public.candidato OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 24746)
-- Name: candidato_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.candidato ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.candidato_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 24664)
-- Name: canton; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.canton (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    provincia_id integer NOT NULL
);


ALTER TABLE public.canton OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24669)
-- Name: canton_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.canton ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.canton_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 239 (class 1259 OID 24752)
-- Name: dignidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dignidad (
    id integer NOT NULL,
    nombre character varying(200) NOT NULL,
    ambio character varying(200) NOT NULL,
    orden integer NOT NULL,
    estado boolean NOT NULL
);


ALTER TABLE public.dignidad OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 24757)
-- Name: dignidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.dignidad ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dignidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 24724)
-- Name: imagenacta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imagenacta (
    id integer NOT NULL,
    imagen integer,
    nombre character varying(150),
    pagina integer,
    hash character varying(200),
    pathipfs character varying(150),
    fecha timestamp with time zone,
    acta_id integer
);


ALTER TABLE public.imagenacta OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 24729)
-- Name: imagenacta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.imagenacta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.imagenacta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 243 (class 1259 OID 24779)
-- Name: imagensegmento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imagensegmento (
    junta_id integer NOT NULL,
    dignidad_id integer NOT NULL,
    candidato_id integer NOT NULL,
    imagen integer NOT NULL,
    nombre character varying(250) NOT NULL,
    hash character varying(250) NOT NULL,
    pathipfs character varying(250) NOT NULL,
    fecha timestamp without time zone NOT NULL
);


ALTER TABLE public.imagensegmento OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 24697)
-- Name: junta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.junta (
    id integer NOT NULL,
    junta integer NOT NULL,
    sexo character varying(10) NOT NULL,
    electores integer NOT NULL,
    estado boolean NOT NULL,
    zona_id integer
);


ALTER TABLE public.junta OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 24702)
-- Name: junta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.junta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.junta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 24593)
-- Name: menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    icono character varying(120) NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    modulo_id integer NOT NULL,
    orden integer,
    fechacreacion timestamp with time zone NOT NULL,
    fechamodificacion timestamp without time zone,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    url character varying(100) NOT NULL
);


ALTER TABLE public.menu OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24599)
-- Name: menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.menu ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 24600)
-- Name: modulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modulo (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    codigo character varying(10) NOT NULL,
    url character varying(100) NOT NULL,
    icono character varying(50),
    estado boolean NOT NULL,
    fechacreacion timestamp with time zone NOT NULL,
    fechamodificacion timestamp with time zone,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    color character varying(50)
);


ALTER TABLE public.modulo OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24605)
-- Name: modulo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.modulo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.modulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 24675)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parroquia (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    canton_id integer NOT NULL
);


ALTER TABLE public.parroquia OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24680)
-- Name: parroquia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.parroquia ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.parroquia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 24735)
-- Name: partido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partido (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    siglas character varying(20) NOT NULL,
    lista character varying(10) NOT NULL,
    orden integer NOT NULL,
    imagen integer NOT NULL
);


ALTER TABLE public.partido OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 24740)
-- Name: partido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.partido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.partido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 24618)
-- Name: permisos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permisos (
    id integer NOT NULL,
    fechacreacion timestamp with time zone NOT NULL,
    fechamodificacion timestamp with time zone,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    menu_id integer NOT NULL,
    crear boolean NOT NULL,
    editar boolean NOT NULL,
    leer boolean NOT NULL,
    eliminar boolean NOT NULL,
    imprimir boolean NOT NULL,
    estado boolean NOT NULL,
    rol_id integer NOT NULL
);


ALTER TABLE public.permisos OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24623)
-- Name: permisos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.permisos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 999999
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 24658)
-- Name: provincia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincia (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.provincia OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24663)
-- Name: provincia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.provincia ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.provincia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 24612)
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id integer NOT NULL,
    fechacreacion timestamp with time zone NOT NULL,
    fechamodificacion timestamp with time zone,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    nombre character varying(50) NOT NULL,
    descripcion character varying(250) NOT NULL,
    estado boolean NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24617)
-- Name: rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.rol ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 24635)
-- Name: rolusuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rolusuario (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    rol_id integer NOT NULL,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    fechacreacion timestamp without time zone NOT NULL,
    fechamodificacion timestamp without time zone,
    estado boolean NOT NULL
);


ALTER TABLE public.rolusuario OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24640)
-- Name: rolusuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.rolusuario ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rolusuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 16386)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    email character varying,
    nombres character varying NOT NULL,
    apellidos character varying NOT NULL,
    fechacreacion timestamp with time zone NOT NULL,
    fechamodificacion timestamp with time zone,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    estado boolean NOT NULL,
    ultimoacceso timestamp with time zone,
    provincia_id integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24590)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.usuario ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 24763)
-- Name: votos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.votos (
    id integer NOT NULL,
    acta_id integer NOT NULL,
    candidato_id integer NOT NULL,
    votos integer NOT NULL,
    votosicr integer NOT NULL,
    votosdigitacion integer NOT NULL,
    votoscontrol integer NOT NULL
);


ALTER TABLE public.votos OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 24768)
-- Name: votos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.votos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.votos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 24686)
-- Name: zona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zona (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    parroquia_id integer NOT NULL,
    codigo integer NOT NULL
);


ALTER TABLE public.zona OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24696)
-- Name: zona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.zona ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.zona_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999
    CACHE 1
);


--
-- TOC entry 3553 (class 0 OID 24713)
-- Dependencies: 231
-- Data for Name: acta; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3559 (class 0 OID 24741)
-- Dependencies: 237
-- Data for Name: candidato; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3545 (class 0 OID 24664)
-- Dependencies: 223
-- Data for Name: canton; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (5, 'TULCAN', 4);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (10, 'MONTUFAR', 4);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (11, 'ALEMANIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (15, 'ESPEJO', 4);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (20, 'MIRA', 4);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (21, 'ARGENTINA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (25, 'BOLIVAR', 4);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (30, 'IBARRA', 10);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (31, 'AUSTRALIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (35, 'OTAVALO', 10);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (40, 'COTACACHI', 10);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (41, 'AUSTRIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (45, 'ANTONIO ANTE', 10);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (50, 'PIMAMPIRO', 10);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (51, 'BELGICA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (55, 'URCUQUI', 10);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (60, 'QUITO', 17);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (61, 'BOLIVIA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (65, 'CAYAMBE', 17);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (70, 'MEJIA', 17);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (71, 'BRASIL', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (75, 'PEDRO MONCAYO', 17);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (80, 'RUMIÑAHUI', 17);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (81, 'CANADA', 27);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (85, 'SANTO DOMINGO', 23);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (90, 'TISALEO', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (91, 'COLOMBIA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (95, 'BALAO', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (100, 'LATACUNGA', 5);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (101, 'COREA (SUR) REPUBLICA DE', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (105, 'PUJILI', 5);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (110, 'SALCEDO', 5);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (111, 'COSTA RICA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (115, 'SAQUISILI', 5);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (120, 'PANGUA', 5);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (121, 'CUBA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (125, 'COLIMES', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (130, 'NANGARITZA', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (131, 'CHILE', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (135, 'AMBATO', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (140, 'PELILEO', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (141, 'CHINA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (145, 'PILLARO', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (150, 'BAÑOS', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (155, 'PATATE', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (160, 'QUERO', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (161, 'EL SALVADOR', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (165, 'GUARANDA', 2);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (170, 'CHIMBO', 2);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (171, 'ESPAÑA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (175, 'SAN MIGUEL', 2);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (180, 'CHILLANES', 2);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (181, 'ESTADOS UNIDOS DE AMERICA', 27);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (185, 'ECHEANDIA', 2);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (190, 'CHAMBO', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (191, 'FRANCIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (195, 'RIOBAMBA', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (200, 'GUANO', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (201, 'REINO UNIDO DE GRAN BRETAÑA E IRLANDA DEL NORTE', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (205, 'COLTA', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (210, 'GUAMOTE', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (211, 'GUATEMALA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (215, 'ALAUSI', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (220, 'CHUNCHI', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (221, 'HONDURAS', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (225, 'PENIPE', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (230, 'FLAVIO ALFARO', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (231, 'HUNGRIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (235, 'AZOGUES', 3);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (240, 'CAÑAR', 3);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (241, 'SUSCAL', 3);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (245, 'BIBLIAN', 3);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (250, 'LA TRONCAL', 3);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (251, 'ISRAEL', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (255, 'EL CHACO', 15);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (260, 'CUENCA', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (261, 'ITALIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (265, 'GUALACEO', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (270, 'GIRON', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (271, 'JAPON', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (275, 'PAUTE', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (280, 'SIGSIG', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (281, 'MEXICO', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (285, 'SANTA ISABEL', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (290, 'CATAMAYO', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (295, 'ZAPOTILLO', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (300, 'LOJA', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (301, 'PAISES BAJOS (HOLANDA)', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (305, 'SARAGURO', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (310, 'PALTAS', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (311, 'OLMEDO', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (312, 'PANAMA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (315, 'CELICA', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (320, 'CALVAS', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (321, 'PARAGUAY', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (325, 'MACARA', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (330, 'PUYANGO', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (331, 'PERU', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (335, 'GONZANAMA', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (340, 'ESPINDOLA', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (341, 'EGIPTO', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (345, 'SOZORANGA', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (350, 'MACHALA', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (351, 'REPUBLICA DOMINICANA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (355, 'SANTA ROSA', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (360, 'ZARUMA', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (361, 'SUECIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (365, 'PASAJE', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (370, 'PIÑAS', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (371, 'SUIZA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (375, 'ARENILLAS', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (380, 'EL GUABO', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (381, 'FEDERACION DE RUSIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (385, 'EL EMPALME', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (390, 'GUAYAQUIL', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (391, 'URUGUAY', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (395, 'YAGUACHI', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (400, 'DAULE', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (401, 'VENEZUELA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (405, 'SALINAS', 24);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (410, 'SANTA ELENA', 24);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (411, 'INDONESIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (415, 'BALZAR', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (420, 'MILAGRO', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (425, 'SAMBORONDON', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (430, 'SALITRE', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (435, 'NARANJAL', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (440, 'PORTOVIEJO', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (441, 'SUDAFRICA', 28);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (445, 'MONTECRISTI', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (446, 'JARAMIJO', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (450, 'MANTA', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (451, 'TURQUIA', 26);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (455, 'JIPIJAPA', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (460, '24 DE MAYO', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (465, 'ROCAFUERTE', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (470, 'SANTA ANA', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (475, 'SUCRE', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (476, 'JAMA', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (477, 'SAN VICENTE', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (480, 'CHONE', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (485, 'BOLIVAR', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (490, 'JUNIN', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (495, 'PAJAN', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (500, 'EL CARMEN', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (505, 'EL TRIUNFO', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (510, 'NARANJITO', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (515, 'BABAHOYO', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (516, 'VALENCIA', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (520, 'BABA', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (525, 'VINCES', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (530, 'PUEBLO VIEJO', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (535, 'URDANETA', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (540, 'QUEVEDO', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (545, 'VENTANAS', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (546, 'QUINSALOMA', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (550, 'TOSAGUA', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (555, 'PUCARA', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (556, 'CAMILO PONCE ENRIQUEZ', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (560, 'ESMERALDAS', 8);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (561, 'RIO VERDE', 8);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (565, 'ELOY ALFARO', 8);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (570, 'MUISNE', 8);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (575, 'QUININDE', 8);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (580, 'SAN LORENZO', 8);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (585, 'CHILLA', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (590, 'MORONA', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (595, 'GUALAQUIZA', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (600, 'LIMON INDANZA', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (605, 'SANTIAGO', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (610, 'SUCUA', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (611, 'LOGROÑO', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (615, 'PALORA', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (620, 'TENA', 15);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (621, 'C. J. AROSEMENA TOLA', 15);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (625, 'LAGO AGRIO', 21);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (626, 'CUYABENO', 21);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (630, 'AGUARICO', 22);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (635, 'QUIJOS', 15);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (640, 'SUCUMBIOS', 21);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (645, 'FCO.DE ORELLANA', 22);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (650, 'PUTUMAYO', 21);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (655, 'ZAMORA', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (660, 'CHINCHIPE', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (661, 'PALANDA', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (665, 'YACUAMBI', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (670, 'YANZATZA', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (675, 'PALESTINA', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (680, 'PASTAZA', 16);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (685, 'MERA', 16);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (690, 'PORTOVELO', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (695, 'HUAQUILLAS', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (700, 'ARCHIDONA', 15);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (705, 'ATAHUALPA', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (710, 'MONTALVO', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (715, 'PEDRO CARBO', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (720, 'SHUSHUFINDI', 21);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (725, 'JOYA DE LOS SACHAS', 22);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (730, 'PINDAL', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (735, 'PLAYAS', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (740, 'QUILANGA', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (745, 'CASCALES', 21);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (750, 'PALENQUE', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (755, 'LAS LAJAS', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (760, 'CALUMA', 2);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (765, 'EL TAMBO', 3);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (770, 'SAN MIGUEL DE LOS BANCOS', 17);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (775, 'EL PANGUI', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (780, 'OÑA', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (785, 'ATACAMES', 8);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (790, 'SIMON BOLIVAR', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (795, 'HUAMBOYA', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (796, 'PABLO SEXTO', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (797, 'TIWINTZA', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (800, 'SAN CRISTOBAL', 20);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (805, 'SANTA CRUZ', 20);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (810, 'ISABELA', 20);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (815, 'CHAGUARPAMBA', 11);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (820, 'DURAN', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (825, 'LA MANA', 5);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (830, 'PALLATANGA', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (835, 'A.BAQUERIZO MORENO', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (840, 'PICHINCHA', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (845, 'CEVALLOS', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (850, 'MOCHA', 18);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (855, 'SAN FERNANDO', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (860, 'MARCABELI', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (865, 'GONZALO PIZARRO', 21);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (870, 'SANTA LUCIA', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (875, 'BALSAS', 7);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (880, 'SANTA CLARA', 16);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (881, 'ARAJUNO', 16);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (885, 'NABON', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (890, 'CRNL MARCELINO MARIDUENAS', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (895, 'PEDRO VICENTE MALDONADO', 17);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (896, 'PUERTO QUITO', 17);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (900, 'CUMANDA', 6);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (905, 'DELEG', 3);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (910, 'PEDERNALES', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (915, 'CHORDELEG', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (920, 'LOMAS DE SARGENTILLO', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (925, 'SAN JUAN BOSCO', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (926, 'TAISHA', 14);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (930, 'SIGCHOS', 5);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (935, 'LORETO', 22);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (940, 'NOBOL / PIEDRAHITA', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (945, 'BUENA FE', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (946, 'MOCACHE', 12);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (950, 'LAS NAVES', 2);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (955, 'SEVILLA DE ORO', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (960, 'EL PAN', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (965, 'LA LIBERTAD', 24);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (970, 'OLMEDO', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (975, 'PUERTO LOPEZ', 13);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (980, 'CENTINELA DEL CONDOR', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (981, 'PAQUISHA', 19);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (982, 'LA CONCORDIA', 23);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (985, 'GRAL. A. ELIZALDE', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (986, 'ISIDRO AYORA', 9);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (990, 'GUACHAPALA', 1);
INSERT INTO public.canton OVERRIDING SYSTEM VALUE VALUES (995, 'SAN PEDRO DE HUACA', 4);


--
-- TOC entry 3561 (class 0 OID 24752)
-- Dependencies: 239
-- Data for Name: dignidad; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3555 (class 0 OID 24724)
-- Dependencies: 233
-- Data for Name: imagenacta; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3565 (class 0 OID 24779)
-- Dependencies: 243
-- Data for Name: imagensegmento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3551 (class 0 OID 24697)
-- Dependencies: 229
-- Data for Name: junta; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3566 (class 0 OID 24787)
-- Dependencies: 244
-- Data for Name: listanegratoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxudW5lekBtc3AuZ29iLmVjcyIsIm5vbWJyZXMiOiJMdWlzIEFuZHJlcyIsImFwZWxsaWRvcyI6Ik51w7FleiBGbG9yZXMiLCJpZCI6MTYsImlhdCI6MTcxNTI5NDAyMCwiZXhwIjoxNzE1MzgwNDIwfQ.d5-vgu2yjj9oP_amd1U-VYF5e6OD3A1WX5lkEYAj1fQ');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxudW5lekBtc3AuZ29iLmVjcyIsIm5vbWJyZXMiOiJMdWlzIEFuZHJlcyIsImFwZWxsaWRvcyI6Ik51w7FleiBGbG9yZXMiLCJpZCI6MTYsImlhdCI6MTcxNTM2MTkxMiwiZXhwIjoxNzE1NDQ4MzEyfQ.QGrMHWzC4CRQiHHwAQxa3LJPJJHNDVRPlu2LyOXlB-U');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxudW5lekBtc3AuZ29iLmVjcyIsIm5vbWJyZXMiOiJMdWlzIEFuZHJlcyIsImFwZWxsaWRvcyI6Ik51w7FleiBGbG9yZXMiLCJpZCI6MTYsImlhdCI6MTcxNTM2MTk1OSwiZXhwIjoxNzE1NDQ4MzU5fQ.ztZWtCd0Q4Nh8LvjHB4ro_LOt8MHELVym2xQjsEWDy8');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzU0NzM2LCJleHAiOjE3MTU0NDExMzZ9.KV8RArDoUCDRyeUV5RPTAqzO0Ca2mQ7V5Frtukt9sDA');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzY5NDY1LCJleHAiOjE3MTU0NTU4NjV9.MlbBNRFZo8VhSgGET41VGA1WqfIub_S1IYXssqIap1M');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzY5ODE1LCJleHAiOjE3MTU0NTYyMTV9.pAacfR45YlgJgy1-HfaqJzkJZ4cqETVnn4rOOiYJWGI');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzcyNjQ3LCJleHAiOjE3MTU0NTkwNDd9.NBYm3-XkHC1OYGDnKH5vGRcKDuutk4OjmaR66pk3P2o');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzcyNzI1LCJleHAiOjE3MTU0NTkxMjV9.gx4tBcHRGcv8Hrm9vj-mNVp4LinVhJRjOAEL2WubvD8');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzcyOTgxLCJleHAiOjE3MTU0NTkzODF9._E70yvZYtwwg0a6X7P4EVC1o1tZDPL9poATtlDgkV6g');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzczMDE1LCJleHAiOjE3MTU0NTk0MTV9.plejapnru1g4qyAv4bfz8xIwQnZppiosnB3jNLr6Z7M');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzczMTIzLCJleHAiOjE3MTU0NTk1MjN9.EALeI3VbAUkDQZ-cRv9KsIqlAJDnfHt9_hxPbx_Z_FI');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzczMTU3LCJleHAiOjE3MTU0NTk1NTd9.jXrD0GNgxk8zM6YHYKyIwAf3SMPb0C5UaTbXOlr8_14');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzczMjYyLCJleHAiOjE3MTU0NTk2NjJ9.Sxt-v5wEl9N4WEDJHd7nLPoj-e_uVCBIcQTRANhwa-8');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc2MDQ0LCJleHAiOjE3MTU0NjI0NDR9.zHWzuPeqN8EmXRi98EIYqmV7CSFTAQtOD-biyBU_td0');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc2NDI3LCJleHAiOjE3MTU0NjI4Mjd9.JGrPueGuWf1loKDsQ8WnsGXh1U02Ek--xOdrtv3Cgw4');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc2NjAwLCJleHAiOjE3MTU0NjMwMDB9._GePch2JhZcQdyrm0C5c2XGKslQVWyRw68u-W9HuibA');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc2ODQ1LCJleHAiOjE3MTU0NjMyNDV9.2n7xwwBsSv5I4JLdqkwa0xmrb1lzO8Xxlerw5rwioqA');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc3MTQ2LCJleHAiOjE3MTU0NjM1NDZ9.f5a2FCM3iVQW5nJsvKMsuGqSjv-nQeKZ4ZrMCBs9kBA');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc3MjY4LCJleHAiOjE3MTU0NjM2Njh9.1RYTq60k-67-vhbZQmEV_RbPQhDcb_qgLkvGsBt5hwU');


--
-- TOC entry 3533 (class 0 OID 24593)
-- Dependencies: 211
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (10, 'Usuarios-admin', 'pi pi-file-pdf', true, 14, 1, '2024-05-09 10:00:50.531-05', NULL, 16, NULL, 'usuarioadmin');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (9, 'Modulos', 'pi pi-database', true, 13, 1, '2024-02-28 15:58:06.435-05', '2024-05-10 08:24:41.68', 16, 16, '/app/seguridades/modulos/');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (7, 'Usuarios', 'pi pi-reddit', true, 13, 1, '2024-02-28 15:38:34.319-05', '2024-05-10 08:25:34.45', 16, 16, '/app/seguridades/usuarios/');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (8, 'Catalogos', 'pi pi-code', true, 13, 1, '2024-02-28 15:45:36.222-05', '2024-05-10 08:25:51.081', 16, 16, '/app/seguridades/catalogos/');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (11, 'Proceso 1', 'pi pi-briefcase', true, 15, 1, '2024-05-09 10:26:37.518-05', NULL, 16, NULL, '/app/procesos/proceso1/');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (12, 'Proceso 2', 'pi pi-briefcase', true, 15, 1, '2024-05-09 10:26:43.479-05', NULL, 16, NULL, '/app/procesos/proceso2/');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (13, 'Reporte 1', 'pi pi-file-pdf', true, 16, 1, '2024-05-09 10:27:00.999-05', NULL, 16, NULL, '/app/home/reporte1/');
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (14, 'Reporte 2', 'pi pi-file-pdf', true, 16, 1, '2024-05-09 10:27:05.065-05', NULL, 16, NULL, '/app/reportes/reporte2/');


--
-- TOC entry 3535 (class 0 OID 24600)
-- Dependencies: 213
-- Data for Name: modulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (13, 'Administracion', 'ADMIN', 'administracion', 'pi pi-chart-bar', true, '2024-02-28 15:37:28.051-05', '2024-05-09 12:13:06.625-05', 16, 16, 'text-indigo-400');
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (14, 'Seguridades', 'nvo', 'seguridades', 'pi pi-share-alt', true, '2024-05-09 09:59:03.863-05', '2024-05-09 12:13:23.643-05', 16, 16, 'text-blue-400');
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (15, 'Procesos', 'nvo', 'seguridades', 'pi pi-share-alt', true, '2024-05-09 10:26:12.15-05', '2024-05-09 12:13:31.57-05', 16, 16, 'text-green-400');
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (16, 'Reportes', 'nvo', 'seguridades', 'pi pi-share-alt', true, '2024-05-09 10:26:17.936-05', '2024-05-09 12:55:56.748-05', 16, 16, 'text-cyan-400');


--
-- TOC entry 3547 (class 0 OID 24675)
-- Dependencies: 225
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5, 'ABANIN', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (10, 'ABDON CALDERON', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (15, 'ABDON CALDERON / LA UNION', 285);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (20, 'ACHUPALLAS', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (25, 'AHUANO', 620);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (30, 'ALANGASI', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (35, 'ALAQUEZ', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (40, 'SANTA FE DE GALAN', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (45, 'SAN JOSE DEL CHAZO', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (50, 'ALHAJUELA /BAJO GRANDE', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (55, 'ALOAG', 70);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (60, 'ALOASI', 70);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (65, 'ALSHI /9 DE OCTUBRE', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (70, 'ALTO TAMBO/GUADAL', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (75, 'ALLURIQUIN', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (80, 'AMAGUAÑA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (85, 'AMALUZA', 955);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (90, 'AMAZONAS', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (95, 'AMBATILLO', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (100, 'AMBUQUI/CHOTA', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (105, 'AMERICA /LA CERA', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (110, 'ANCON/PALMA REAL', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (115, 'ANCONCITO', 405);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (120, 'ANCHAYACU', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (125, 'ANGAMARCA', 105);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (130, 'ANGOCHAGUA', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (135, 'ANTONIO J. HOLGUIN', 110);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (140, 'ANTONIO SOTOMAYOR', 525);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (145, 'APUELA', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (150, 'PATRICIA PILAR', 945);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (155, 'ARAPICOS', 615);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (160, 'EL INGENIO', 860);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (165, 'ASCAZUBI', 65);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (170, 'ASUNCION', 170);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (175, 'ASUNCION', 270);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (180, 'ASUNCION', 610);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (185, 'VALLE DE LA VIRGEN', 715);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (190, 'ATAHUALPA /CHIPZALATA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (195, 'ATAHUALPA /HABASPAMBA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (200, 'ATAHUALPA/CAMARONES', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (205, 'ATAHUALPA', 410);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (210, 'AUGUSTO N MARTINEZ', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (215, 'AVILA', 935);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (220, 'AYACUCHO', 470);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (225, 'AYAPAMBA', 705);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (230, 'EL REVENTADOR', 865);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (235, 'BELLA VISTA', 805);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (240, 'MEMBRILLO', 485);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (245, 'LA IBERIA', 380);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (250, 'PIARTAL', 10);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (255, 'EL RETIRO', 350);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (260, 'LIMONAL', 400);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (265, 'BACHILLERO', 550);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (270, 'EL ARENAL', 330);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (275, 'BALZAPAMBA', 175);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (280, 'LIMONES', 295);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (285, 'BAÑOS', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (290, 'GARZAREAL', 295);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (295, 'BAQUERIZO MORENO', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (300, 'BARBONES', 380);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (305, 'VALLE HERMOSO', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (310, 'SUMAYPAMBA', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (315, 'BELISARIO QUEVEDO', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (320, 'BELLAVISTA', 340);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (325, 'BELLAVISTA', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (330, 'BELLAVISTA', 460);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (335, 'BENITEZ /PACHANLICA', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (340, 'BERMEJOS', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (345, 'BILOVAN', 175);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (350, 'BOMBOIZA', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (355, 'BOLIVAR', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (360, 'FUNDOCHAMBA', 740);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (365, 'BOLIVAR', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (370, 'BORBON', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (375, 'SAN JUAN DE CERRO AZUL', 705);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (380, 'BOYACA', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (385, 'BUENAVISTA', 815);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (390, 'BUENAVISTA', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (395, 'BULAN / J. VICTOR IZQUIERDO', 275);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (400, 'SAN VICENTE DE HUATICOCHA', 935);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (405, 'CHIBUNGA', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (410, 'VALPARAISO', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (415, 'SAN CARLOS', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (420, 'CACHA', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (425, 'CAHUASQUI', 55);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (430, 'CALACALI', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (435, 'CALDERON', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (440, 'CALDERON', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (445, 'CALPI', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (450, 'CAMARONES', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (455, 'BELLAVISTA', 981);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (460, 'CAMPOZANO', 495);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (465, 'CANCHAGUA', 115);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (470, 'CANOA', 477);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (475, 'CANELOS', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (480, 'CANGAHUA', 65);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (485, 'CANGONAMA', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (490, 'ENOKANQUI', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (495, 'CANUTO', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (500, 'CANI', 205);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (505, 'CAPIRO', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (510, 'CAP. AUGUSTO RIVADENEIRA', 630);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (515, 'CAPZOL', 220);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (520, 'CARACOL', 515);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (525, 'SHIMPIS', 611);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (530, 'CAROLINA /GUALLUPI', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (535, 'CARONDELET', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (540, 'CASCOL', 495);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (545, 'SAN ANTONIO', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (550, 'MANGAHURCO', 295);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (555, 'CEBADAS', 210);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (560, 'LA UNION', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (565, 'CIANO', 330);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (570, '5 DE JUNIO/HUIMBI', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (575, 'COCHAPATA', 885);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (580, 'COJIMIES', 910);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (585, 'COJITAMBO', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (590, 'COLAIZACA', 320);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (595, 'HUASAGA /WAMPUIK', 926);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (600, 'SAN PEDRO DE LOS COFANES', 720);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (605, 'COLONCHE', 410);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (610, 'COLUMBE', 205);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (615, 'COMPUD', 220);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (620, 'CONCEPCION', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (625, 'CONOCOTO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (630, 'CONONACO', 630);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (635, 'CONSTANTINO FERNANDEZ', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (640, 'CONVENTO', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (645, 'COPAL', 605);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (650, 'CORNEJO ASTORGA /TANDAPI', 70);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (655, 'CRNL.CARLOS CONCHA TORRES', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (660, 'CRNEL. LORENZO GARAICOA', 790);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (665, 'EL GUISMI', 775);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (670, 'COSANGA', 635);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (675, 'COTALO', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (680, 'COTOGCHOA', 80);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (685, 'COTUNDO', 700);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (690, 'CRISTOBAL COLON', 10);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (695, 'CRUZPAMBA/BUSTAMANTE', 315);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (700, 'CUBE / CHANCAMA', 575);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (705, 'CUBIJIES', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (710, 'SAN JACINTO DE WAKAMBEIS', 925);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (715, 'CUMANDA', 615);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (720, 'CUMBARATZA', 655);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (725, 'CUMBAYA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (730, 'CUMBE', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (735, 'CURARAY', 881);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (740, 'CURTINCAPAC', 690);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (745, 'CUSUBAMBA', 110);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (750, 'CUTCHIL', 280);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (755, 'CUTUGLAGUA', 70);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (760, 'CUYABENO', 626);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (765, 'CUYUJA', 635);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (770, 'CRUCITA', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (775, 'CAÑAQUEMADA', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (780, 'SIETE DE JULIO', 720);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (785, 'ATAHUALPA', 910);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (790, 'EL INGENIO', 340);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (795, 'SAN LUIS DE PAMBIL', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (800, 'CUNCHIBAMBA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (805, 'CHACRAS', 375);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (810, 'UNAMUNCHO', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (815, 'PALO QUEMADO', 930);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (820, 'CHANDUY', 410);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (825, 'CHANGAIMINA /LA LIBERTAD', 335);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (830, 'CHANTILIN', 115);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (835, 'CHAQUINAL', 730);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (840, 'CHARAPOTO', 475);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (845, 'CHAUCHA / ANGAS', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (850, 'CHAUPI', 70);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (855, 'CHAVEZPAMBA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (860, 'CHECA JIDCAY', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (865, 'CHECA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (870, 'CHICAN / GUILLERMO ORTEGA', 275);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (875, 'CHIGUAZA', 795);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (880, 'CHIGUINDA', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (885, 'SAN GERARDO', 270);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (890, 'DUG-DUG', 275);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (895, 'CHINCA', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (900, 'CHIQUICHA', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (905, 'CHIQUINTAD', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (910, 'CHITAN DE NAVARRETES', 10);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (915, 'CHITO', 660);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (920, 'CHOBO', 420);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (925, 'LA CANDELARIA', 225);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (930, 'CHONTADURO', 561);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (935, 'CHONTAMARCA', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (940, 'CHONTAPUNTA', 620);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (945, 'TUNDAYME', 775);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (950, 'CHOROCOPTE', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (955, 'CHUGA', 50);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (960, 'CHUGCHILAN', 930);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (965, 'CHUMUNDE', 561);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (970, 'CHUPIANZA', 605);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (975, 'CHUQUIRIBAMBA', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (980, 'CHURA', 575);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (985, 'CHICANA', 670);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (990, 'COCHAPAMBA', 115);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (995, 'CASANGA', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1000, 'YAMANA', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1005, 'DANIEL CORDOVA TORAL', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1010, 'DAULE', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1015, 'PACHICUTZA', 775);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1020, 'GONZALO DIAZ DE PINEDA', 255);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1025, '10 DE AGOSTO', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1030, '10 DE AGOSTO', 910);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1035, '12 DE DICIEMBRE', 730);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1040, 'DR MIGUEL EGAS/PEGUCHE', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1045, 'DURENO', 625);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1050, 'PUERTO MURIALDO', 935);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1055, 'SAN RAFAEL', 25);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1060, 'SAN SEBASTIAN', 840);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1065, 'BARRAGANETE', 840);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1070, 'WILFRIDO LOOR MOREIRA', 500);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1075, 'SAN ISIDRO', 755);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1080, 'EL PARAISO', 755);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1085, 'JERUSALEN', 245);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1090, 'GONZALO PIZARRO', 865);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1095, 'SEVILLA', 745);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1100, 'LA LIBERTAD', 755);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1105, 'SAN PABLO', 470);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1110, 'EL ALTAR', 225);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1115, 'EL ANEGADO', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1120, 'NUEVO QUITO', 981);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1125, 'EL CARMELO/EL PUN/', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1130, 'EL CARMEN DE PIJILI', 556);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1135, 'EL CISNE', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1140, 'SANTA MARIANITA DE JESUS', 610);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1145, 'EL CHORRO', 660);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1150, 'EL GOALTAL / LAS JUNTAS', 15);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1155, 'EL LIMO /MARIANA DE JESUS', 330);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1160, 'ELOY ALFARO', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1165, 'EL PARAISO DE CELEN', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1170, 'EL PLAYON DE SN. FRANCISCO', 640);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1175, 'EL PROGRESO', 885);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1180, 'EL ROSARIO', 815);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1185, 'EL ROSARIO /RUMICHACA', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1190, 'EL TABLON', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1195, 'EL CHICAL', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1200, 'EL TAMBO', 290);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1205, 'TUTINENTZA', 926);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1210, 'EMILIO MARIA TERAN', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1215, 'EUGENIO ESPEJO', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1220, 'EL PROGRESO', 800);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1225, 'PROGRESO', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1230, 'EL LUCERO', 320);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1235, 'DAYUMA', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1240, 'EL PORVENIR DEL CARMEN', 661);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1245, 'TARACOA', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1250, 'CUCHAENTZA', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1255, 'FACUNDO VELA', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1260, 'FATIMA', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1265, 'FEBRES CORDERO', 515);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1270, 'FERNANDEZ SALVADOR', 10);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1275, 'EL TRIUNFO', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1280, 'FLORES', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1285, 'EL ENO', 625);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1290, 'PACAYACU', 625);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1295, 'SAN JOSE DE MORONA', 797);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1300, 'SAN JOSE DE ANCON', 410);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1305, 'GALERA', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1310, 'GARCIA MORENO / LLURIMAGUA', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1315, 'GARCIA MORENO', 25);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1320, 'GARCIA MORENO', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1325, 'BILBAO', 225);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1330, 'GENERAL FARFAN', 625);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1335, 'GRAL.MORALES / SOCARTE', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1340, 'GRAL.PEDRO MONTERO', 395);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1345, 'GRAL. PROAÑO', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1350, 'GRAL. VERNAZA', 430);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1355, 'GIMA', 280);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1360, 'GONZALEZ SUAREZ', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1365, 'SAN FCO. DE CHINIMBIMI', 605);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1370, 'GONZOL', 220);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1375, 'QUINCHICOTO', 90);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1380, 'GUACHANAMA', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1385, 'SARACAY', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1390, 'GUADALUPE', 655);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1395, 'GUALE/STO.DOMINGO', 495);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1400, 'GUALEA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1405, 'GUALEL', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1410, 'GUALLETURO', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1415, 'GUANANDO', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1420, 'GUANAZAN', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1425, 'GUIZHAGUIÑA', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1430, 'GUANGAJE', 105);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1435, 'SAN JACINTO', 125);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1440, 'GUANGOPOLO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1445, 'GUAPAN', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1450, 'AMARILLOS', 815);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1455, 'GUARAINAC', 275);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1460, 'GUARE', 520);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1465, 'GUASUNTOS', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1470, 'GUAYAS / PUERTO NUEVO', 385);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1475, 'GUAYLLABAMBA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1480, 'GUAYQUICHUMA', 290);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1485, 'GUAYTACAMA', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1490, 'GUEL', 280);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1495, 'TNTE M.RODRIGUEZ LOAYZA', 315);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1500, 'GUASAGANDA', 825);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1505, 'SAN JOSE DE CAYAPAS', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1510, 'COLON ELOY DE MARIA', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1515, 'TIMBIRE', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1520, 'MARISCAL SUCRE', 995);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1525, 'LA UNION', 515);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1530, 'LA UNION', 575);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1535, 'LA UNION', 915);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1540, 'SUSUDEL', 780);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1545, 'LA PILA', 445);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1550, 'SANGUILLIN', 320);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1555, 'AGUAS NEGRAS', 626);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1560, 'EL DORADO', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1565, 'INES ARANGO', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1570, 'ARQ.SIXTO DURAN BALLEN', 460);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1575, 'SAN MARTIN DE PUZHIO', 915);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1585, 'LUIS GALARZA O. (DELEGSOL)', 915);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1590, 'EL EDEN', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1595, 'JUNQUILLAL', 430);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1600, 'NOVILLO', 230);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1605, 'HONORATO VASQUEZ', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1610, 'HONORATO VASQUEZ', 470);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1615, 'TONSUPA', 785);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1620, 'ZAPALLO', 230);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1625, 'HUACHI GRANDE', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1630, 'HUAMBALO', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1635, 'HUAMBI', 610);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1640, 'EL ROSARIO', 385);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1645, 'EL AIRO', 340);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1650, 'SAN VICENTE', 960);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1655, 'HUERTAS', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1660, 'HUIGRA', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1665, 'BELLAMARIA', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1670, 'SABANILLA', 715);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1675, 'ZURMI', 130);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1680, 'SAN JOSE DE DAHUANO', 935);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1685, '16 DE AGOSTO', 615);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1690, 'SAN RAFAEL DE SHARUG', 555);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1695, 'CARCABON', 375);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1700, 'SINSAO', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1705, 'ILAPO', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1710, 'IMANTAG', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1715, 'IMBAYA', 45);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1720, 'INDANZA', 600);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1725, 'INGAPIRCA', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1730, 'RIO BLANCO', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1735, 'ISINLIVI', 930);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1740, 'ISLA DE BEJUCAL', 520);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1745, 'IZAMBA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1750, 'SALVIAS', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1755, 'LUZ DE AMERICA', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1760, 'LUIS CORDERO VEGA', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1765, 'SANTA MARTHA DE CUBA', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1770, 'SAN CARLOS DE LAS MINAS', 655);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1775, 'VENTURA', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1780, 'QUINARA', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1785, 'SANTIAGO DE PANANZA', 925);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1790, 'SANTA CECILIA', 625);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1795, 'JAMBELI', 625);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1800, 'SANTA MARIANITA', 450);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1805, 'JADAN', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1810, 'GARCIA MORENO', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1815, 'JAMBELI', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1820, 'LA BELLEZA', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1825, 'JAVIER LOYOLA / CHUQUIPATA', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1830, 'JESUS MARIA', 435);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1835, 'JIJON Y CAAMAÑO', 20);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1840, 'JIMBILLA', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1845, 'JIMBURA', 340);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1850, 'JOSE LUIS TAMAYO / MUEY', 405);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1855, 'JUAN BAUTISTA AGUIRRE', 400);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1860, 'JUAN BENIGNO VELA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1865, 'JUAN DE VELASCO / PONGOR', 205);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1870, 'JUAN GOMEZ RENDON', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1875, 'JUAN MONTALVO', 20);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1880, 'JULCUY', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1885, 'JULIO ANDRADE', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1890, 'JULIO E MORENO', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1895, 'DUCUR', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1900, 'JUNCAL', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1905, 'JOSEGUANGO BAJO', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1910, 'EL IDEAL', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1915, 'VIRGEN DE FATIMA', 395);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1920, 'SALANGO', 975);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1925, 'CHIRIJOS', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1930, 'TALAG', 620);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1935, 'SAN LUIS DE ARMENIA', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1940, 'NUEVO PARAISO', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1945, 'SAN JOSE DE GUAYUSA', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1950, 'RUMIPAMBA', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1955, 'TRES DE NOVIEMBRE', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1960, 'LAGO SAN PEDRO', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1965, 'UNION MILAGREÑA', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1970, 'SAN JACINTO DEL BUA', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1975, 'BELLAMARIA', 875);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1980, 'SAN PEDRO DE SUMA', 500);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1985, 'SANTA ROSA', 805);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1990, 'EL ESFUERZO', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1995, 'ALEJANDRO LABAKA', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2000, 'BOLASPAMBA', 295);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2005, 'LA AVANZADA', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2010, 'LA CONCEPCION', 20);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2015, 'LA CHONTA', 660);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2020, 'LA ESPERANZA', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2025, 'LA ESPERANZA', 75);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2030, 'ANGEL PEDRO GILER', 550);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2035, 'LAGARTO', 561);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2040, 'LA LIBERTAD', 15);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2045, 'SANTA MARIA DEL TOACHI', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2050, 'RIO BONITO', 380);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2055, 'LA MERCED', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2060, 'LA MERCED DE BUENOS AIRES', 55);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2065, 'LA PAZ', 10);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2070, 'LA PAZ', 665);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2075, 'LA PEAÑA', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2080, 'LA PROVIDENCIA', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2085, 'LA RAMA', 325);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2090, 'LASCANO', 495);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2095, 'LA SOFIA', 640);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2100, 'SAN JOSE', 880);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2105, 'LAS LOJAS', 400);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2110, 'SAN ANDRES', 660);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2115, 'LAS PAMPAS', 930);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2120, 'LA TINGUE', 311);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2125, 'LA TOLA', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2130, 'LA UNION', 785);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2135, 'LA UNION', 470);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2140, 'LAURO GUERRERO', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2145, 'LA VICTORIA', 325);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2150, 'LA VICTORIA', 105);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2155, 'LA VICTORIA DE IMBANA', 655);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2160, 'LICAN', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2165, 'LICTO', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2170, 'LA CANELA', 661);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2175, 'LIMONCOCHA', 720);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2180, 'LINARES', 255);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2185, 'LITA', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2205, 'LOS ANDES', 25);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2210, 'LOS ANDES', 155);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2215, 'LUDO', 280);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2220, 'LUIS CORDERO', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2225, 'LUIS VARGAS TORRES', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2230, 'LA BOCANA', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2240, 'LOS ENCUENTROS', 670);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2255, 'LLACAO', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2260, 'LLAGOS', 220);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2265, 'LLANO CHICO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2270, 'LLIGUA', 150);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2275, 'LLOA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2280, 'LLUZHAPA', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2285, 'MACUMA', 926);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2305, 'MACHALILLA', 975);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2310, 'MADRE TIERRA', 685);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2315, 'MAGDALENA/CHAPACOTO', 170);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2320, 'MAJUA', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2325, 'MALACATOS/VALLADOLID', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2330, 'MALCHINGUI', 75);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2335, 'MALDONADO', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2340, 'MALDONADO', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2345, 'MALIMPIA / GUAYLLABAMBA', 575);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2350, 'MALVAS', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2355, 'MANGLARALTO', 410);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2360, 'MANU', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2365, 'MANUEL J. CALLE', 250);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2375, 'MARCOS ESPINEL', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2380, 'MARIANO ACOSTA', 50);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2385, 'MARIANO MORENO/CALLASAY', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2390, 'MARISCAL SUCRE/HUAQUES', 420);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2395, 'MATAJE', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2400, 'MATUS', 225);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2405, 'MERCADILLO', 330);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2410, 'MINDO', 770);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2430, 'MOLLETURO', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2435, 'MONTALVO', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2445, 'MONTALVO / HORQUETA', 561);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2450, 'MONTALVO/ANDOAS', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2455, 'MONTEOLIVO', 25);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2460, 'MORASPUNGO', 120);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2465, 'MOROMORO', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2470, 'MORRO', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2475, 'MULALILLO', 110);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2480, 'MULALO', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2485, 'MULTITUD', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2490, 'MULLIQUINDIL', 110);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2520, 'NAMBACOLA', 335);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2525, 'NANEGAL', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2530, 'NANEGALITO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2540, 'NAYON', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2545, 'NAZON', 245);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2550, 'NIEVES', 885);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2555, 'NOBOA', 460);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2560, 'NONO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2565, 'NUEVA TARQUI', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2570, 'MULTI /  NULTI', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2575, 'NUEVA FATIMA', 345);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2595, 'OCTAVIO CORDERO PALACIOS', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2600, 'OLMEDO/PESILLO', 65);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2620, '11 DE NOVIEMBRE', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2630, 'ORIANGA', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2635, 'OTON', 65);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2640, 'OYACACHI', 255);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2670, 'PAMPANAL DE BOLIVAR', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2675, 'PABLO ARENAS', 55);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2680, 'PACCHA', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2690, 'PACTO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2710, 'PALETILLAS', 295);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2715, 'PALMALES', 375);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2720, 'PALMA ROJA', 650);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2725, 'PALMAS', 955);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2730, 'PALMIRA', 210);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2745, 'PANCHO NEGRO', 250);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2750, 'PAN DE AZUCAR', 925);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2755, 'PANO', 620);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2760, 'PANZALEO', 110);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2765, 'PANACOCHA', 720);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2770, 'PAPALLACTA', 635);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2775, 'PASA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2785, 'PATAQUI', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2795, 'PATUCA', 605);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2810, 'PEDRO PABLO GOMEZ', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2820, 'PEÑAHERRERA', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2825, 'PERUCHO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2830, 'PICAYHUA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2850, 'PIEDRAS', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2855, 'PIFO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2860, 'PILAHUIN', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2865, 'PILALO', 105);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2875, 'PIMOCHA', 515);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2885, 'PINDILIG', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2890, 'PINLLOPATA', 120);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2895, 'PINTAG', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2900, 'PIOTER', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2905, 'PISTISHI', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2915, 'PLAZA GUTIERREZ/CALVARIO', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2920, 'POALO', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2925, 'POMASQUI', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2930, 'POMPEYA', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2940, 'POSORJA', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2945, 'PRESIDENTE URBINA', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2950, 'PRINCIPAL', 915);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2955, 'PUCAPAMBA', 660);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2965, 'PUCAYACO', 825);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2970, 'PUEBLO NUEVO', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2975, 'PUELA', 225);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2980, 'PUELLARO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2985, 'PUEMBO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2990, 'PUERTO CAYO', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3000, 'PUERTO MISAHUALLI', 620);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3005, 'PUERTO BOLIVAR', 650);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3015, 'PUERTO PECHICHE', 530);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3020, 'PUERTO RODRIGUEZ', 650);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3025, 'PUMALLACTA', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3030, 'PUNA', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3035, 'PUNGALA', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3040, 'PUNIN', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3045, 'PURUNUMA /EGUIGUREN', 335);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3050, 'PUERTO NAPO', 620);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3055, 'POMONA', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3095, 'QUIMIAG', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3100, 'QUINCHE', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3105, 'QUINGEO', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3110, 'QUIROGA', 485);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3115, 'QUIROGA', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3120, 'QUISAPINCHA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3125, 'QUINGUE', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3155, 'RAMON CAMPAÑA', 120);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3160, 'REMIGIO CRESPO TORAL', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3165, 'RICAURTE', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3170, 'RICAURTE', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3175, 'RICAURTE', 535);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3180, 'RIO CORRIENTES', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3185, 'RIO CHICO', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3190, 'RIO NEGRO', 150);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3195, 'RIO TIGRE', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3200, 'RIO VERDE', 150);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3210, 'RIVERA', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3215, 'ROCAFUERTE', 561);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3220, 'ROSA FLORIDA', 640);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3225, 'ROSARIO', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3230, 'RUMIPAMBA', 80);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3235, 'ROBERTO ASTUDILLO', 420);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3250, 'SAN MIGUEL DE CONCHAY', 600);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3255, 'SABANILLA', 315);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3260, 'SABANILLA', 655);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3265, 'SABIANGO', 325);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3270, 'SACAPALCA', 335);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3275, 'SALATI', 690);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3280, 'SALIMA', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3285, 'SALINAS', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3290, 'SALINAS', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3295, 'SAN ANDRES', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3300, 'SAN ANDRES', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3305, 'SAN ANTONIO', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3315, 'SAN ANTONIO', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3320, 'SAN ANTONIO', 600);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3325, 'SAN ANTONIO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3330, 'SAN ANTONIO', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3335, 'SAN ANTONIO DE BAYUSHIG', 225);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3340, 'SAN ANTONIO DE CUMBE', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3345, 'SAN ANTONIO DE LAS ARADAS', 740);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3350, 'SAN ANTONIO / DEL PELUDO', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3355, 'SAN BARTOLOME', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3360, 'SAN BARTOLOME', 280);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3365, 'SAN BLAS', 55);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3370, 'SAN CARLOS', 435);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3375, 'SAN CRISTOBAL', 275);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3380, 'SAN FERNANDO', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3390, 'SAN FRANCISCO', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3395, 'SAN FRANCISCO DE BORJA', 635);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3400, 'SAN FCO.DE NATABUELA', 45);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3405, 'SAN FRANCISCO DE ONZOLE', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3410, 'SAN FCO. DE SAGEO', 245);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3415, 'SAN FRANCISCO DE SIGSIPAMBA', 50);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3420, 'SANGAY', 615);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3425, 'SAN GERARDO / PAQUICAHUAN', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3430, 'SAN GREGORIO', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3435, 'SAN ISIDRO', 15);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3440, 'SAN ISIDRO', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3445, 'SAN ISIDRO', 475);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3450, 'SAN ISIDRO DE PATULU', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3455, 'SAN JAVIER DE CACHABI', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3460, 'SAN JOAQUIN', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3465, 'SAN JOSE DE CHALTURA', 45);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3470, 'SAN JOSE DE CHAMANGA', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3475, 'SAN JOSE DE MINAS', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3480, 'SAN JOSE DE PAYAMINO', 935);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3485, 'SAN JOSE DE POALO', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3490, 'SAN JOSE DE QUICHINCHE', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3495, 'SAN JOSE DE RARANGA', 280);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3500, 'SAN JOSE DE TAMBO', 180);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3505, 'SAN JUAN', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3510, 'SAN JUAN', 530);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3515, 'SAN JUAN', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3525, 'SAN JUAN DE ILUMAN', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3530, 'SAN JUAN DE PASTOCALLE', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3535, 'SAN JUAN DE POZUL', 315);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3545, 'SAN LORENZO', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3550, 'SAN LORENZO', 450);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3555, 'SAN LUCAS', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3560, 'SAN LUIS', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3565, 'SAN LUIS DEL ACHO', 605);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3570, 'SAN MATEO', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3575, 'SAN MIGUEL', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3580, 'SAN MIGUEL DE CUYES', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3585, 'SAN MIGUELITO', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3590, 'SAN PABLO', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3595, 'SAN PABLO DE ATENAS', 175);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3600, 'SAN PABLO DE TENTA', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3605, 'SAN PABLO DE USHPAYACU', 700);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3610, 'SAN PEDRO DE LA BENDITA', 290);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3615, 'PUERTO LIBRE', 865);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3625, 'SAN PLACIDO', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3630, 'SAN RAFAEL', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3632, 'SANTA MARIA', 500);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3635, 'EL PARAISO / LA 14', 500);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3640, 'SAN ROQUE', 45);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3645, 'SAN ROQUE', 720);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3650, 'SAN ROQUE', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3655, 'SAN SEBASTIAN', 170);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3660, 'SAN SEBASTIAN DE COCA', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3665, 'SAN SEBASTIAN DE YULUC', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3670, 'SAN SIMON', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3680, 'SAN VICENTE DE PUSIR', 25);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3685, 'SANTA ANA', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3690, 'SANTA BARBARA', 640);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3705, 'SANTA ELENA', 650);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3710, 'SANTA FE', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3720, 'STA. MARIA DE HUIRIRIMA', 630);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3725, 'SANTA RITA', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3730, 'SANTA ROSA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3735, 'STA.ROSA DE CUSUBAMBA', 65);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3740, 'SANTA ROSA DE FLANDES', 435);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3745, 'SANTA ROSA DE QUIJOS', 255);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3750, 'SANTA ROSA DE SUCUMBIOS', 745);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3755, 'SANTA RUFINA', 815);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3760, 'SANTA SUSANA DE CHIVIAZA', 600);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3765, 'SANTA TERESITA', 340);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3770, 'SANTIAGO', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3775, 'SANTIAGO', 175);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3780, 'SIMON BOLIVAR', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3785, 'ZARAYACU', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3790, 'SARDINAS', 255);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3795, 'SAYAUSI', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3800, '6 DE JULIO DE CUELLAJE', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3805, 'SELVA ALEGRE', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3810, 'SELVA ALEGRE', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3815, 'SELVA ALEGRE', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3820, 'SEVILLA', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3830, 'SEVILLA DON BOSCO', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3835, 'SHAGLLI', 285);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3840, 'SHELL', 685);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3845, 'SIBAMBE', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3850, 'SIDCAY', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3860, 'SIMIATUG', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3870, 'SININCAY', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3875, 'SOLANO', 905);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3880, 'SUA/BOCANA', 785);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3885, 'SUCRE', 155);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3890, 'SUMACO', 635);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3900, 'SAN VICENTE', 175);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3905, 'SALASACA', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3915, 'SIMON BOLIVAR', 410);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3920, 'SAN CARLOS DE LIMON', 925);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3925, 'TABABELA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3930, 'TABIAZO', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3935, 'TACAMOROS', 345);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3940, 'TACHINA', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3945, 'TADAY', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3955, 'TAMBILLO', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3960, 'TAMBILLO', 70);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3965, 'TANICUCHI', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3970, 'TAQUIL /MIGUEL RIOFRIO', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3975, 'TARIFA', 425);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3980, 'TARQUI', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3985, 'TARQUI', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3990, 'TAURA', 435);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3995, 'TELIMBELA', 170);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4000, 'TENDALES', 380);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4005, 'TNTE. HUGO ORTIZ', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4010, 'TIMBARA', 655);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4015, 'TINGO', 105);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4030, 'TIXAN', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4035, 'TOACAZO', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4040, 'TOBAR DONOSO', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4045, 'TOCACHI', 75);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4050, 'TOMEBAMBA', 275);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4055, 'TONCHIGUE', 785);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4065, 'TOTORAS', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4070, 'TUFIÑO', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4075, 'TULULBI /RICAURTE', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4080, 'TUMBABIRO', 55);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4085, 'TUMBACO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4090, 'TUPIGACHI', 75);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4095, 'TURI', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4100, 'TURUPAMBA', 245);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4105, 'TUTUPALI', 665);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4110, 'EL TRIUNFO', 155);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4115, 'TAYUZA', 605);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4120, 'TENGUEL', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4125, 'URBINA', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4130, 'URBINA', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4135, 'ULBA', 150);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4145, 'URDANETA/PAQUISHAPA', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4150, 'UTUANA', 320);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4155, 'UYUMBICHO', 70);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4160, 'UZHCURRUMI', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4165, 'TOMAS DE BERLANGA', 810);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4170, 'TELEMBI', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4185, 'VACAS GALINDO', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4195, 'VALLADOLID', 661);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4200, 'VALLE', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4205, 'VERACRUZ', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4210, 'VICENTINO', 330);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4215, 'VICTORIA', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4220, 'VICTORIA', 430);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4225, 'VICTORIA DEL PORTETE', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4230, 'VICHE', 575);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4235, 'VILCABAMBA/VICTORIA', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4240, 'VUELTA LARGA', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4275, 'YAGUACHI VIEJO/CONE', 395);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4280, 'YANGANA / ARSENIO CASTILLO', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4290, 'YARUQUI', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4295, 'YASUNI', 630);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4300, 'YAUPI', 611);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4305, 'YUNGANZA /EL ROSARIO', 600);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4310, 'YANAYACU MOCHAPATA', 160);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4325, 'ZAMBIZA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4330, 'ZAPOTAL', 545);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4340, 'ZHIDMAD', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4345, 'ZHUD', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4360, 'ZUNAC', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4365, 'ZUMBAHUA', 105);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4385, 'TRIUNFO DORADO', 980);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4415, 'ISLA SANTA MARIA', 800);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4420, 'LA ESPERANZA', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4425, 'SAN CARLOS', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4430, 'SANTIAGO DE QUITO', 205);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4440, 'PUERTO LIMON', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4445, 'ARCAPAMBA', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4450, 'MULUNCAY GRANDE', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4455, 'ZAMBI', 290);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4460, '27 DE ABRIL /LA NARANJA', 340);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4465, 'SANTO DOMINGO DE ONZOLE', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4475, 'CHANTACO', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4480, 'CORDONCILLO', 705);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4485, 'SINAI', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4490, 'MEMBRILLAL', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4495, 'CASACAY', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4500, 'EL LAUREL', 400);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4505, 'SAN FRANCISCO DEL VERGEL', 661);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4510, 'SIMON BOLIVAR', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4515, 'REGULO DE MORA', 175);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4520, 'MORALES', 690);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4525, 'TORATA', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4530, 'SAN JOSE', 705);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4535, 'MILAGRO', 705);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4540, 'SAN PEDRO DE VILCABAMBA', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4545, 'MILAGROS', 730);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4550, 'RUMIPAMBA', 160);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4555, 'PINGUILI', 850);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4560, 'CHUMBLIN', 855);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4565, 'EL CABO', 275);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4570, 'NUEVO PARAISO', 130);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4575, 'PUMPUENTSA', 926);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4580, 'SAN JUAN DE MUYUNA', 620);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4585, 'LOS ANGELES', 545);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4590, 'CHACARITA', 545);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4595, 'SANTA LUCIA DE LAS PEÑAS', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4600, 'PANGUINTZA', 980);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4605, 'CAZADEROS', 295);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4610, 'SAN SALVADOR DE CAÑARIBAMBA', 285);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4615, 'LA ESMERALDA', 710);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4620, 'SAN JOSE DE AYORA', 65);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4625, '10 DE AGOSTO', 625);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4630, 'HATUN SUMAKU', 700);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4635, 'MONTERREY', 982);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4640, 'LA VILLEGAS', 982);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4645, 'PLAN PILOTO', 982);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4650, 'LA CUCA', 375);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4655, 'NANKAIS', 130);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4740, 'NUEVA TRONCAL', 745);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4745, 'SANSAHUARI', 650);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4750, 'SOSOTE', 465);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4755, 'LA PRIMAVERA', 720);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4760, 'LA MAGDALENA', 720);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4765, 'JUAN MONTALVO', 65);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5005, 'ALAMOR', 330);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5010, 'ALAUSI', 215);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5015, 'CHIMBACALLE', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5020, 'AMALUZA', 340);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5025, 'ANDRADE MARIN/LOURDES', 45);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5030, 'ANDRES DE VERA', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5035, 'ANGEL POLIVIO CHAVEZ', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5040, 'ARENILLAS', 375);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5045, 'ATOCHA FICOA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5050, 'ATUNTAQUI', 45);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5055, 'AYACUCHO', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5065, 'AZOGUES', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5070, 'ARCHIDONA', 700);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5075, 'BELLAVISTA', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5080, 'CAÑARIBAMBA', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5085, 'BABA', 520);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5090, 'BAEZA', 635);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5095, 'BAHIA DE CARAQUEZ', 475);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5100, 'BALZAR', 415);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5105, 'BAÑOS', 150);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5115, 'BIBLIAN', 245);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5120, 'BOCANA', 430);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5125, 'BOLIVAR/SAGRARIO', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5130, 'BALLENITA', 410);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5135, 'EL BATAN', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5140, 'MACHANGARA', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5145, 'CAJABAMBA', 205);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5150, 'CALCETA', 485);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5155, 'CANDILEJOS', 430);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5160, 'CAÑAR', 240);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5165, 'CARANQUI', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5170, 'CARBO/CONCEPCION', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5175, 'CARIAMANGA', 320);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5180, 'CATACOCHA', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5185, 'CATARAMA', 535);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5190, 'CAYAMBE', 65);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5195, 'CELICA', 315);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5200, 'SALITRE', 430);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5205, 'BARTOLOME RUIZ', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5210, '5 DE AGOSTO', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5215, 'CLEMENTE BAQUERIZO', 515);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5220, 'COTOCOLLAO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5225, 'CIUDAD NUEVA', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5230, 'CELIANO MONGE', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5240, 'CHILE', 320);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5245, 'CHILLANES', 180);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5250, 'CHONE', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5255, 'CHUNCHI', 220);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5260, 'CHILLOGALLO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5265, 'COLON', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5270, 'CATAMAYO', 290);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5275, 'DAULE', 400);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5280, '12 DE MARZO', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5285, 'DR. CAMILO PONCE E.', 515);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5290, 'MONAY', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5295, 'EL ANGEL', 15);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5300, 'EL CARMEN', 500);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5305, 'EL CORAZON', 120);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5310, 'ELOY ALFARO / SAN FELIPE', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5315, 'EL ROSARIO', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5320, 'EL SAGRARIO', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5330, 'EL VECINO', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5335, 'ESMERALDAS', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5340, 'EL GUABO', 380);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5345, 'EL TRIUNFO', 505);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5350, 'ECHEANDIA', 185);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5355, 'FEBRES CORDERO', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5360, 'TOTORACOCHA', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5365, 'COLIMES', 125);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5370, 'YANUNCAY', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5375, 'GABRIEL I VEINTIMILLA', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5380, 'GARCIA MORENO', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5385, 'GRAL.ELOY ALFARO', 325);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5390, 'GRAL. LEONIDAS PLAZA', 600);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5395, 'GIRON', 270);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5400, 'GONZANAMA', 335);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5405, 'GONZALEZ SUAREZ', 10);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5415, 'GONZALEZ SUAREZ', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5420, 'GUALACEO', 265);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5425, 'GUALAQUIZA', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5430, 'GUAMOTE', 210);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5440, 'GUAYAQUIL DE ALPACHACA', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5445, 'HUACHI LORETO', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5450, 'HUAYNACAPAC', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5455, 'HUACHI CHICO', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5465, 'IGNACIO FLORES', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5470, 'BALAO', 95);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5475, 'CHAMBO', 190);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5480, 'FLAVIO ALFARO', 230);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5485, 'JIPIJAPA', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5490, 'JORDAN', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5500, 'JUAN MONTALVO', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5505, 'JUNIN', 490);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5510, 'EL CHACO', 255);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5515, 'TISALEO', 90);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5520, 'GUAYZIMI', 130);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5525, 'LA BONITA', 640);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5535, 'LA LIBERTAD', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5540, 'LA MAGDALENA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5545, 'LA MATRIZ', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5550, 'LA MATRIZ', 200);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5555, 'LA MATRIZ', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5560, 'LA MERCED', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5565, 'LA PROVIDENCIA', 350);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5570, 'LOS ESTEROS', 450);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5580, 'LEONIDAS PLAZA G.', 475);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5585, 'LETAMENDI', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5590, 'LIZARZABURU', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5595, 'LOURDES', 310);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5600, 'LUIS TELLO / LAS PALMAS /', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5605, 'LA PENINSULA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5610, 'LA TRONCAL', 250);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5615, 'MACAS', 590);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5620, 'MACHACHI', 70);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5625, 'MACHALA', 350);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5630, 'MALDONADO', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5635, 'MANTA', 450);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5640, 'MONTALVO /SABANETA', 710);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5645, 'MENDEZ', 605);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5650, 'MERA', 685);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5655, 'MERCEDES MOLINA', 595);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5660, 'MILAGRO', 420);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5665, 'MONTECRISTI', 445);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5670, 'MUISNE', 570);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5675, 'NARANJAL', 435);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5680, 'MACARA', 325);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5685, 'MIRA', 20);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5690, 'PUCARA', 555);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5695, '9 DE OCTUBRE', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5700, 'NUEVO ROCAFUERTE', 630);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5705, 'NARANJITO', 510);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5710, 'NUEVA LOJA', 625);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5715, 'CHILLA', 585);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5720, 'OLMEDO/SAN ALEJO', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5725, 'PALESTINA', 675);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5730, 'ABRAHAM CALAZACON', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5735, 'PEDRO CARBO', 715);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5740, 'PENIPE', 225);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5745, 'PACCHA', 705);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5750, 'PIMAMPIRO', 50);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5755, 'PAJAN', 495);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5760, 'PALORA', 615);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5765, 'PARAISO', 430);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5770, 'OCHOA LEON/MATRIZ', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5775, 'PAUTE', 275);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5780, 'PELILEO', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5785, 'PILLARO', 145);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5790, 'PIÑAS', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5795, 'PORTOVIEJO', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5800, 'PUEBLO VIEJO', 530);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5805, 'PUERTO BOLIVAR', 350);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5810, 'PINDAL /FEDERICO PAEZ', 730);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5815, 'EL COCA', 645);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5820, 'PUJILI', 105);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5825, 'PUYO', 680);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5830, 'PATATE', 155);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5835, 'QUERO', 160);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5840, 'PISHILATA', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5845, 'PICOAZA', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5850, 'PORTOVELO', 690);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5855, 'QUEVEDO', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5860, 'BOMBOLI', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5865, 'RIO VERDE', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5870, 'RIO TOACHI', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5875, 'RAMIREZ DAVALOS', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5880, 'ROCA', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5885, 'ROCAFUERTE', 465);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5890, 'ROCAFUERTE', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5895, 'ROSA ZARATE', 575);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5900, 'PELILEO GRANDE /R. MINO', 140);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5905, 'SAGRARIO', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5910, 'SAGRARIO', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5915, 'SAGRARIO', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5920, 'SALINAS', 405);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5925, 'SAMBORONDON', 425);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5930, 'SAN BLAS', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5940, 'SAN BUENAVENTURA', 100);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5945, 'SAN FRANCISCO', 135);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5950, 'SAN FRANCISCO', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5955, 'SAN FRANCISCO', 40);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5960, 'SAN FRANCISCO', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5965, 'SANGOLQUI', 80);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5970, 'SAN JOSE', 10);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5975, 'SAN JOSE DE CHIMBO', 170);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5980, 'SAN LUIS', 35);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5990, 'SAN MATEO', 430);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5995, 'SAN MIGUEL', 175);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6000, 'SAN MIGUEL DE SALCEDO', 110);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6010, 'SAN SEBASTIAN', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6015, 'SAN SEBASTIAN', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6025, 'SAN VICENTE', 320);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6030, 'SANTA ANA', 470);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6040, 'SANTA ELENA', 410);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6045, 'SANTA ISABEL', 285);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6055, 'SANTA RITA', 480);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6060, 'SANTA ROSA', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6065, 'SANTO DOMINGO', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6070, 'SAQUISILI', 115);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6075, 'SARAGURO', 305);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6080, 'SICALPA', 205);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6085, 'SIGSIG', 280);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6090, 'SUCRE', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6095, 'SUCRE', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6100, 'SUCRE', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6105, 'SUCRE', 460);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6110, 'SUCUA', 610);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6115, 'SAN CAMILO', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6120, 'SOZORANGA', 345);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6125, 'PUERTO QUITO', 896);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6130, 'SAN LORENZO', 580);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6135, 'SAN MATEO', 450);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6140, 'SHUSHUFINDI CENTRAL', 720);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6145, 'TABACUNDO', 75);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6150, 'TARQUI', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6155, 'TARQUI', 450);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6160, 'TENA', 620);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6165, 'TULCAN', 5);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6170, 'TOSAGUA', 550);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6175, 'CHIGUILPE', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6180, 'ZARACAY', 85);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6185, 'URDANETA', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6190, 'URCUQUI', 55);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6195, '4 DE DICIEMBRE', 500);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6200, 'LA JOYA DE LOS SACHAS', 725);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6205, 'VALDEZ/LIMONES/', 565);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6210, 'EL VALLE', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6215, '28 DE MAYO', 665);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6220, 'VELASCO', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6225, 'VELASCO IBARRA', 385);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6230, 'VELOZ', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6235, 'VENTANAS', 545);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6245, 'VINCES', 525);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6250, '27 DE SEPTIEMBRE', 15);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6255, 'GRAL.VILLAMIL / PLAYAS', 735);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6260, 'QUILANGA /LA PAZ', 740);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6265, 'XIMENA', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6270, 'GRAL. A. E. GALLO', 405);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6275, 'VICENTE ROCAFUERTE', 405);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6280, 'CARLOS ESPINOZA LARREA', 405);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6285, 'YAGUACHI NUEVO', 395);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6290, 'YARUQUIES', 195);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6295, 'YANZATZA', 670);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6300, 'LUMBAQUI', 865);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6305, 'ZAMORA', 655);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6310, 'ZARUMA', 360);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6315, 'ZUMBA', 660);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6320, 'ZAPOTILLO', 295);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6325, 'EL DORADO DE CASCALES', 745);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6330, 'PALENQUE', 750);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6335, 'LA VICTORIA/LAS LAJAS', 755);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6340, 'CALUMA / SAN ANTONIO/', 760);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6345, 'EL TAMBO', 765);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6350, 'S. MIGUEL DE LOS BANCOS', 770);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6355, 'EL PANGUI', 775);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6360, 'OÑA', 780);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6365, 'LOMA DE FRANCO', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6370, 'BOLIVAR', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6375, 'TRES CERRITOS', 365);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6380, 'ATACAMES', 785);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6385, 'SIMON BOLIVAR', 790);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6390, 'HUAMBOYA', 795);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6395, 'SANTA CLARA', 880);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6405, 'PASCUALES', 390);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6410, 'CRNL MARCELINO MARIDUENAS', 890);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6415, 'PEDRO VICENTE MALDONADO', 895);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6420, 'CUMANDA', 900);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6425, 'DELEG', 905);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6430, 'PEDERNALES', 910);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6435, 'CHORDELEG', 915);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6440, 'LOMAS DE SARGENTILLO', 920);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6445, 'SAN JUAN BOSCO', 925);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6450, 'SIGCHOS', 930);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6455, 'LORETO', 935);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6460, 'NARCISA DE JESUS', 940);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6465, 'SN JACINTO DE BUENA FE', 945);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6470, 'LAS NAVES', 950);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6475, 'LAS MERCEDES', 950);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6480, 'SEVILLA DE ORO', 955);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6485, 'EL PAN', 960);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6490, '9 DE MAYO', 350);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6495, 'OLMEDO /PUCA', 970);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6500, 'EL CARMEN DE PUTUMAYO', 650);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6505, 'PUERTO AYORA', 805);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6510, 'PTO. BAQUERIZO MORENO', 800);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6515, 'PUERTO VILLAMIL', 810);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6520, 'BOLIVAR', 25);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6525, 'ELOY ALFARO /DURAN', 820);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6530, 'CHAGUARPAMBA', 815);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6535, 'LA MANA', 825);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6540, 'PALLATANGA', 830);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6545, 'A.BAQUERIZO M /JUJAN', 835);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6550, 'PICHINCHA /GERMUD', 840);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6555, 'CEVALLOS', 845);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6560, 'MOCHA', 850);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6565, 'SAN FERNANDO', 855);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6570, 'MARCABELI', 860);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6575, 'PUERTO LOPEZ', 975);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6580, 'SANTA LUCIA', 870);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6585, 'SAN PABLO', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6590, 'BALSAS', 875);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6595, 'NABON', 885);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6600, 'SAN RAFAEL', 80);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6605, 'SAN PEDRO DE TABOADA', 80);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6610, 'LA LIBERTAD', 965);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6615, 'GUACHAPALA', 990);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6620, 'GRAL.ELIZALDE /BUCAY', 985);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6625, 'ZUMBI', 980);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6630, 'GUANUJO', 165);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6635, 'SAN CRISTOBAL', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6640, 'VENUS DEL RIO QUEVEDO', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6645, 'NICOLAS INFANTE DIAZ', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6650, 'GUAYACAN', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6655, 'SIETE DE OCTUBRE', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6660, 'VIVA ALFARO', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6665, 'HUACA', 995);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6670, 'PUERTO JELI', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6675, 'PIÑAS GRANDE', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6680, 'LA SUSAYA', 370);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6685, 'VALENCIA', 516);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6690, '24 DE MAYO', 540);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6695, 'MOCACHE', 946);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6700, 'TAISHA', 926);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6705, 'ARAJUNO', 881);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6710, 'ISIDRO AYORA', 986);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6715, 'SUSCAL', 241);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6720, 'RIO VERDE', 561);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6725, 'LODANA', 470);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6730, 'OLMEDO', 311);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6735, 'LOGROÑO', 611);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6740, 'PALANDA', 661);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6745, 'ELOY ALFARO', 450);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6750, 'JAMA', 476);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6755, 'JARAMIJO', 446);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6760, 'CARLOS J. AROSEMENA TOLA', 621);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6765, 'TARAPOA', 626);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6770, '18 DE OCTUBRE', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6775, 'FRANCISCO PACHECO', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6780, 'LA DOLOROSA DEL PRIORATO', 30);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6785, 'SAN VICENTE', 477);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6790, 'BORRERO', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6795, 'EL CAMBIO', 350);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6800, 'HUALTACO', 695);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6805, 'MILTON REYES', 695);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6810, 'EL PARAISO', 695);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6815, 'ECUADOR', 695);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6820, 'UNION LOJANA', 695);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6825, 'SAN JOSE', 290);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6830, 'BARREIRO /SANTA RITA', 515);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6835, 'EL SALTO', 515);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6840, 'EL LIMON', 655);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6845, 'AURELIO BAYAS MARTINEZ', 235);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6850, 'LA AURORA', 400);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6865, 'HERMANO MIGUEL', 260);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6870, 'PABLO SEXTO', 796);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6875, 'CAMILO PONCE ENRIQUEZ', 556);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6880, 'EL CARMEN', 825);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6885, 'PAQUISHA', 981);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6890, 'SANTIAGO', 797);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6895, 'EL TRIUNFO', 825);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6900, 'BALNEARIO JAMBELI', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6905, 'SIMON PLATA TORRES', 560);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6910, 'SIMON BOLIVAR', 440);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6915, 'QUINSALOMA', 546);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6925, 'SANTA ROSA', 405);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6950, 'PLATANILLOS', 755);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6985, 'JUMON', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6990, 'NUEVO SANTA ROSA', 355);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7130, 'BELISARIO QUEVEDO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7135, 'CARCELEN', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7140, 'CENTRO HISTORICO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7145, 'COCHAPAMBA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7150, 'COMITE DEL PUEBLO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7155, 'CHILIBULO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7160, 'EL CONDADO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7165, 'GUAMANI', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7170, 'IÑAQUITO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7175, 'ITCHIMBIA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7180, 'JIPIJAPA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7185, 'KENNEDY', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7190, 'LA ARGELIA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7195, 'LA CONCEPCION', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7200, 'LA ECUATORIANA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7205, 'LA FERROVIARIA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7210, 'LA MENA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7215, 'MARISCAL SUCRE', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7220, 'PONCEANO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7225, 'PUENGASI', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7230, 'QUITUMBE', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7235, 'RUMIPAMBA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7240, 'SAN BARTOLO', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7245, 'SAN ISIDRO DEL INCA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7250, 'SAN JUAN', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7255, 'SOLANDA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7260, 'TURUBAMBA', 60);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7425, 'MAGRO', 400);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7445, 'LA PUNTILLA(SATELITE)', 425);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7455, 'EL RECREO', 820);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7460, 'ANIBAL SAN ANDRES', 445);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7465, 'DR. MIGUEL MORAN LUCIO', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7470, 'MANUEL INOCENCIO PARRALES', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7475, 'SAN LORENZO DE JIPIJAPA', 455);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7480, '10/11/24', 545);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7485, 'TIPUTINI', 630);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7490, 'COLORADO', 445);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7495, 'LEONIDAS PROAÑO', 445);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7500, 'GENERAL ELOY ALFARO DELGA', 445);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7505, 'JUBONES', 350);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7510, 'JAMBELI', 350);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7515, 'DIVINO NIÑO', 820);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7520, 'LA CONCORDIA', 982);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7525, 'CARIGAN', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7530, 'PUNZARA', 300);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7535, 'FAJARDO', 80);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9001, 'C. E. EN BERLIN', 11);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9002, 'C. E. EN HAMBURGO', 11);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9003, 'C. E. EN BUENOS AIRES', 21);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9005, 'C. E. EN CAMBERRA', 31);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9006, 'C. E. EN VIENA', 41);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9007, 'C. E. EN BRUSELAS', 51);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9008, 'C. E. EN LA PAZ', 61);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9009, 'C. E. EN BRASILIA', 71);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9011, 'C. E. EN TORONTO', 81);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9012, 'C. E. EN OTTAWA', 81);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9013, 'C. E. EN BOGOTA', 91);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9015, 'C. E. EN IPIALES', 91);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9016, 'C. E. EN SEUL', 101);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9017, 'C. E. EN SAN JOSE', 111);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9018, 'C. E. EN LA HABANA', 121);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9019, 'C. E. EN SANTIAGO', 131);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9020, 'C. E. EN BEIJING', 141);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9021, 'C. E. EN PALMA DE MALLORCA', 171);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9022, 'C. E. EN SAN SALVADOR', 161);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9023, 'C. E. EN BARCELONA', 171);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9024, 'C. E. EN MADRID', 171);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9025, 'C. E. EN VALENCIA', 171);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9026, 'C. E. EN MURCIA', 171);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9027, 'C. E. EN CHICAGO', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9028, 'C. E. EN MIAMI', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9029, 'C. E. EN NUEVA YORK', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9031, 'C. E. EN WASHINGTON', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9032, 'C. E. EN LOS ANGELES', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9033, 'C. E. EN CONNECTICUT', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9034, 'C. E. EN HOUSTON', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9035, 'C. E. EN NEW JERSEY', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9036, 'C. E. EN PARIS', 191);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9037, 'C. E. EN LONDRES', 201);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9038, 'C. E. EN GUATEMALA', 211);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9039, 'C. E. EN TEGUCIGALPA', 221);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9040, 'C. E. EN BUDAPEST', 231);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9042, 'C. E. EN TEL AVIV', 251);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9043, 'C. E. EN MILAN', 261);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9044, 'C. E. EN GENOVA', 261);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9045, 'C. E. EN ROMA', 261);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9046, 'C. E. EN TOKIO', 271);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9047, 'C. E. EN MEXICO', 281);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9049, 'C. E. EN LA HAYA', 301);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9050, 'C. E. EN PANAMA', 312);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9051, 'C. E. EN ASUNCION', 321);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9052, 'C. E. EN LIMA', 331);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9054, 'C. E. EN TUMBES', 331);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9055, 'C. E. EN EL CAIRO', 341);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9056, 'C. E. EN SANTO DOMINGO', 351);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9057, 'C. E. EN ESTOCOLMO', 361);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9058, 'C. E. EN BERNA', 371);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9060, 'C. E. EN MOSCU', 381);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9061, 'C. E. EN MONTEVIDEO', 391);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9062, 'C. E. EN CARACAS', 401);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9063, 'C. E. EN YAKARTA', 411);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9066, 'C. E. EN MALAGA', 171);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9067, 'C. E. EN SAO PAULO', 71);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9068, 'C. E. EN SHANGAI', 141);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9069, 'C. E. EN MINNEAPOLIS', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9071, 'C. E. EN ATLANTA', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9073, 'C. E. EN PHOENIX', 181);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9075, 'C. E. EN GUANGZHOU', 141);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9077, 'C. E. EN PRETORIA', 441);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9078, 'C. E. EN ANKARA', 451);
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9086, 'C. E. EN MONTERREY', 281);


--
-- TOC entry 3557 (class 0 OID 24735)
-- Dependencies: 235
-- Data for Name: partido; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3539 (class 0 OID 24618)
-- Dependencies: 217
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (10, '2024-03-04 10:02:14.675-05', NULL, 16, NULL, 7, true, true, true, true, true, true, 10);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (11, '2024-03-04 10:02:25.218-05', NULL, 16, NULL, 8, true, true, true, true, true, true, 11);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (12, '2024-05-09 10:58:46.968-05', NULL, 16, NULL, 11, true, true, true, true, true, true, 9);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (13, '2024-05-09 10:58:46.968-05', NULL, 16, NULL, 12, true, true, true, true, true, true, 9);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (14, '2024-05-09 10:58:46.968-05', NULL, 16, NULL, 13, true, true, true, true, true, true, 9);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (15, '2024-05-09 10:58:46.968-05', NULL, 16, NULL, 14, true, true, true, true, true, true, 9);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (7, '2024-02-28 16:37:15.123-05', '2024-05-09 10:58:46.968-05', 16, 16, 9, true, true, true, true, true, false, 9);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (9, '2024-02-28 16:39:27.895-05', '2024-05-09 10:58:46.968-05', 16, 16, 8, true, true, true, true, true, false, 9);


--
-- TOC entry 3543 (class 0 OID 24658)
-- Dependencies: 221
-- Data for Name: provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (1, 'AZUAY');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (2, 'BOLIVAR');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (3, 'CAÑAR');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (4, 'CARCHI');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (5, 'COTOPAXI');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (6, 'CHIMBORAZO');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (7, 'EL ORO');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (8, 'ESMERALDAS');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (9, 'GUAYAS');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (10, 'IMBABURA');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (11, 'LOJA');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (12, 'LOS RIOS');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (13, 'MANABI');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (14, 'MORONA SANTIAGO');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (15, 'NAPO');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (16, 'PASTAZA');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (17, 'PICHINCHA');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (18, 'TUNGURAHUA');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (19, 'ZAMORA CHINCHIPE');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (20, 'GALAPAGOS');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (21, 'SUCUMBIOS');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (22, 'ORELLANA');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (23, 'STO DGO TSACHILAS');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (24, 'SANTA ELENA');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (26, 'EUROPA');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (27, 'CANADÁ Y ESTADOS UNIDOS');
INSERT INTO public.provincia OVERRIDING SYSTEM VALUE VALUES (28, 'LATINOAMÉRICA');


--
-- TOC entry 3537 (class 0 OID 24612)
-- Dependencies: 215
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (10, '2024-03-04 10:02:14.675-05', NULL, 16, NULL, 'Administrador', 'pruebas', true);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (11, '2024-03-04 10:02:25.218-05', NULL, 16, NULL, 'Administrador central', 'pruebas', true);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (9, '2024-02-28 15:52:37.723-05', '2024-02-28 16:51:24.049-05', 16, 16, 'Super administrador', 'Rol de administrador central', true);


--
-- TOC entry 3541 (class 0 OID 24635)
-- Dependencies: 219
-- Data for Name: rolusuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (79, 16, 9, 16, 16, '2024-03-04 09:55:24.775', '2024-03-04 11:52:50', false);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (94, 16, 10, 16, 16, '2024-03-04 11:45:15.728', '2024-03-04 12:03:20', false);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (95, 16, 11, 16, 16, '2024-03-04 11:45:15.728', '2024-03-04 12:03:20', false);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (97, 84, 9, 16, NULL, '2024-04-24 15:03:50.103', NULL, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (99, 87, 9, 16, NULL, '2024-05-06 17:01:20.689', NULL, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (100, 87, 10, 87, NULL, '2024-05-08 09:52:10.526', NULL, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (101, 87, 11, 87, NULL, '2024-05-08 09:52:10.526', NULL, true);


--
-- TOC entry 3531 (class 0 OID 16386)
-- Dependencies: 209
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (19, 'andy21101', '$2a$10$oOFl1MC9OnaYnv5nVDPEkeXyWD.V32ZzIi6uo9BoHF53.tNu32o9i', 'pruebas@gmail.com', 'Andres', 'Flor', '2024-02-27 10:42:26.687-05', '2024-03-07 09:49:30.744-05', 16, 16, false, NULL, NULL);
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (83, 'pruebas', '$2a$10$TuwuzGPT3.ulNHT5NFajjejtNRh7.sLwufQCuWzkxFEQTdKNo3c36', 'pruebas', 'pruebas', 'otras pruebas12', '2024-03-04 09:55:24.774-05', '2024-03-07 09:50:29.272-05', 16, 16, false, NULL, NULL);
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (17, 'andy2110', '$2a$10$WXnPqCwESnx91.4F0cbPUeWqF9EoEkTBiOEQ1.yPQaTvzsgYXJ916', 'pruebas@gmail.com', 'Andres', 'flores', '2024-02-27 09:57:40.268-05', '2024-03-07 09:51:15.424-05', 16, NULL, true, NULL, NULL);
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (84, 'luis.nunez', '$2a$10$ny8y/Q1n9yADBVDWzafJKOpWXHmIA6cOHkHKUHp61Las88Los8Z1a', 'correo@gmail.com', 'Luis Andrés', 'Nuñez Flores', '2024-04-24 15:03:50.091-05', NULL, 16, NULL, true, NULL, NULL);
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (87, 'admin', '$2a$10$68lVCCLXeAmyUxXNsVWrzO8A5Rg4FE0iHPbYWvwV4n4OdgpuwugX2', 'gabriel.ledesma@algo.com', 'Gabriel Ledesma', 'admin', '2024-05-06 17:01:20.685-05', '2024-05-10 16:49:10.685-05', 16, 87, true, '2024-05-10 16:49:10.684-05', NULL);
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (16, 'Andres1724', '$2a$10$bhavm4skTVp0Czt7ipc1Hep7kk7GzLUBVeJZOrLot5I7NNrXWpzGi', 'lnunez@msp.gob.ecs', 'Luis Andres', 'Nuñez Flores', '2024-02-27 09:57:40.268-05', '2024-05-10 12:25:59.501-05', 16, 16, true, '2024-05-10 12:25:59.498-05', NULL);


--
-- TOC entry 3563 (class 0 OID 24763)
-- Dependencies: 241
-- Data for Name: votos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3549 (class 0 OID 24686)
-- Dependencies: 227
-- Data for Name: zona; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1, 'ABANIN', 5, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2, 'DALIGSHI', 5, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3, 'TUNUYUNGA', 5, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (4, 'SIN ZONA', 10, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (5, 'SIN ZONA', 15, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (6, 'ACHUPALLAS', 20, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (7, 'TOTORAS', 20, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (8, 'JUVAL', 20, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (9, 'AHUANO', 25, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (10, 'CAMPANA COCHA', 25, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (11, 'CAMPO COCHA', 25, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (12, 'NUEVO PARAISO', 25, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (13, 'ZANCUDO', 25, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (14, 'RIO BLANCO', 25, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (15, 'TAMIA URCO', 25, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (16, 'SANTA BARBARA', 25, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (17, 'SANTA ROSA', 25, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (18, 'ALANGASI', 30, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (19, 'EL TINGO', 30, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (20, 'SIN ZONA', 35, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (21, 'SIN ZONA', 40, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (22, 'SIN ZONA', 45, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (23, 'ALHAJUELA /BAJO GRANDE', 50, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (24, 'TABLADA DE LAS CRUCES', 50, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (25, 'SIN ZONA', 55, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (26, 'SIN ZONA', 60, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (27, 'SIN ZONA', 65, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (28, 'ALTO TAMBO /GUADAL', 70, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (29, 'CRISTAL ALTO', 70, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (30, 'ALLURIQUIN', 75, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (31, 'LA FLORIDA', 75, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (32, 'MAR DE LA TRANQUILIDAD', 75, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (33, 'AMAGUAÑA', 80, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (34, 'CHAUPITENA', 80, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (35, 'AMALUZA', 85, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (36, 'SANTA RITA', 85, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (37, 'SIN ZONA', 90, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (38, 'AMBATILLO', 95, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (39, 'AMBATILLO ALTO', 95, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (40, 'AMBUQUI / CHOTA', 100, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (41, 'JUNCAL', 100, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (42, 'CHOTA', 100, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (43, 'CARPUELA', 100, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (44, 'CHAUPI GUARANGUI', 100, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (45, 'SAN CLEMENTE', 100, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (46, 'SIN ZONA', 105, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (47, 'ANCON/PALMA REAL', 110, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (48, 'CAUCHAL', 110, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (49, 'SIN ZONA', 115, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (50, 'SIN ZONA', 120, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (51, 'ANGAMARCA', 125, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (52, 'CHINE ALTO', 125, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (53, 'MOCATA', 125, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (54, 'PIGUA-QUINDIGUA', 125, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (55, 'ANGOCHAGUA', 130, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (56, 'ZULETA', 130, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (57, 'LA MERCED', 130, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (58, 'SIN ZONA', 135, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (59, 'ANTONIO SOTOMAYOR', 140, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (60, 'BAGATELA', 140, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (61, 'CLARIZA', 140, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (62, 'SIN ZONA', 145, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (63, 'PATRICIA PILAR', 150, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (64, 'LOS ANGELES', 150, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (65, 'SIN ZONA', 155, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (66, 'SIN ZONA', 160, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (67, 'SIN ZONA', 165, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (68, 'SIN ZONA', 170, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (69, 'LA ASUNCION', 175, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (70, 'LENTAG', 175, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (71, 'ASUNCION', 180, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (72, 'SAN JOSE SUR', 180, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (73, 'SUNKANTS', 180, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (74, 'SIN ZONA', 185, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (75, 'SIN ZONA', 190, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (76, 'SIN ZONA', 195, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (77, 'ATAHUALPA/CAMARONES', 200, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (78, 'JUAN MONTALVO', 200, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (79, 'SIN ZONA', 205, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (80, 'AUGUSTO N. MARTINEZ', 210, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (81, 'LLATANTOMA', 210, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (82, 'SAMANGA', 210, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (83, 'LAQUIGO', 210, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (84, 'AVILA', 215, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (85, 'AVILA VIEJO', 215, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (86, 'PUSCO COCHA', 215, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (87, 'SAN BARTOLO', 215, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (88, 'SIN ZONA', 220, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (89, 'SIN ZONA', 225, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (90, 'EL REVENTADOR', 230, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (91, 'SIMÓN BOLÍVAR', 230, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (92, 'BELLA VISTA', 235, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (93, 'EL CASCAJO EL CAMOTE', 235, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (94, 'SIN ZONA', 240, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (95, 'SIN ZONA', 245, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (96, 'SIN ZONA', 250, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (97, 'EL RETIRO', 255, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (98, 'NUEVA ESPERANZA', 255, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (99, 'GUARUMAL 2', 255, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (100, 'LA MARÍA', 255, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (101, 'SIN ZONA', 260, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (102, 'SIN ZONA', 265, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (103, 'SIN ZONA', 270, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (104, 'SIN ZONA', 275, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (105, 'LIMONES', 280, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (106, 'TRONCO QUEMADO', 280, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (107, 'BAÑOS', 285, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (108, 'COCHAPAMBA', 285, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (109, 'GARZAREAL', 290, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (110, 'COCHAS DEL ALMENDRO', 290, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (111, 'SIN ZONA', 295, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (112, 'SIN ZONA', 300, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (113, 'VALLE HERMOSO', 305, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (114, 'CRISTOBAL COLON', 305, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (115, 'LA MARIANITA', 305, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (116, 'CHIGUILPE', 305, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (117, 'EL RECREO', 305, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (118, 'LA ASUNCION', 305, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (119, 'AUTENTICOS CAMPESINOS', 305, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (120, 'UNION GANADERA', 305, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (121, 'SUMAYPAMBA', 310, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (122, 'MOSTAZAPAMBA', 310, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (123, 'SIN ZONA', 315, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (124, 'BELLAVISTA', 320, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (125, 'JIBIRUCHE', 320, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (126, 'BELLAVISTA', 325, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (127, 'SAN AGUSTIN', 325, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (128, 'SAN JOSÉ', 325, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (129, 'BELLAVISTA', 330, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (130, 'EL ESFUERZO', 330, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (131, 'SIN ZONA', 335, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (132, 'SIN ZONA', 340, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (133, 'BILOVAN', 345, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (134, 'LAS GUARDIAS', 345, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (135, 'MATAPALO', 345, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (136, 'SAN JORGE', 345, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (137, 'BOMBOIZA', 350, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (138, 'TINK', 350, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (139, 'AYANTAS', 350, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (140, 'CHUMPIAS', 350, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (141, 'MONTERREY', 350, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (142, 'SHUAR SAKANAS', 350, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (143, 'SHAIME', 350, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (144, 'KAYAMAS', 350, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (145, 'BOLIVAR', 355, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (146, 'MOMPICHE', 355, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (147, 'SIN ZONA', 360, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (148, 'SIN ZONA', 365, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (149, 'SIN ZONA', 370, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (150, 'SIN ZONA', 375, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (151, 'SIN ZONA', 380, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (152, 'SIN ZONA', 385, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (153, 'SIN ZONA', 390, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (154, 'SIN ZONA', 395, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (155, 'SIN ZONA', 400, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (156, 'CHIBUNGA', 405, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (157, 'SAN JUAN DE BUA', 405, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (158, 'SAN FRANCISCO DE YAHUILA', 405, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (159, 'BOCA DE BARBUDAL', 405, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (160, 'SANTA ROSA DE CUCHARA', 405, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (161, 'SIN ZONA', 410, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (162, 'SIN ZONA', 415, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (163, 'SIN ZONA', 420, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (164, 'SIN ZONA', 425, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (165, 'SIN ZONA', 430, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (166, 'SIN ZONA', 435, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (167, 'CALDERON', 440, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (168, 'CARAPUNGO', 440, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (169, 'SAN MIGUEL DEL COMÚN', 440, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (170, 'MARIANITAS', 440, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (171, 'SAN JUAN DE CALDERON', 440, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (172, 'SAN JOSE DE MORAN', 440, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (173, 'LLANO GRANDE', 440, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (174, 'BICENTENARIO', 440, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (175, 'CALPI', 445, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (176, 'NITILUISA', 445, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (177, 'SIN ZONA', 450, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (178, 'SIN ZONA', 455, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (179, 'CAMPOZANO', 460, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (180, 'SANTA BÁRBARA', 460, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (181, 'SIN ZONA', 465, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (182, 'SIN ZONA', 470, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (183, 'CANELOS', 475, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (184, 'CHONTOA', 475, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (185, 'EL NARANJAL', 475, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (186, 'CANGAHUA', 480, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (187, 'CHUMILLOS', 480, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (188, 'SAN ANTONIO', 480, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (189, 'PISAMBILLA', 480, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (190, 'SANTA ROSA DE PACCHA', 480, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (191, 'SAN LUIS DE GUACHALÁ', 480, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (192, 'SIN ZONA', 485, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (193, 'SIN ZONA', 490, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (194, 'CANUTO', 495, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (195, 'SAN PABLO DE TARUGO', 495, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (196, 'SIN ZONA', 500, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (197, 'CAPIRO', 505, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (198, 'GUERRAS', 505, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (199, 'TINAJAS', 505, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (200, 'LOS AMARILLOS', 505, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (201, 'CONCHICOLA', 505, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (202, 'SIN ZONA', 510, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (203, 'SIN ZONA', 515, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (204, 'SIN ZONA', 520, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (205, 'SHIMPIS', 525, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (206, 'COMUNA GRANDE', 525, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (207, 'CAROLINA /GUALLUPI', 530, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (208, 'CUAJARA', 530, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (209, 'CARONDELET', 535, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (210, 'LA BOCA', 535, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (211, 'SIN ZONA', 540, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (212, 'SIN ZONA', 545, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (213, 'MANGAHURCO', 550, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (214, 'LA LEONERA', 550, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (215, 'CEBADAS', 555, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (216, 'TRANCA SAN LUIS', 555, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (217, 'SIN ZONA', 560, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (218, 'CIANO', 565, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (219, 'LAS COCHAS', 565, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (220, 'SIN ZONA', 570, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (221, 'COCHAPATA', 575, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (222, 'ÑAMARIN', 575, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (223, 'COJIMIES', 580, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (224, 'BECHE', 580, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (225, 'ELOY ALFARO', 580, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (226, 'CHEVE ARRIBA', 580, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (227, 'LOS ZENGUES', 580, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (228, 'CORAZÓN DE BORDONES', 580, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (229, 'PAVÓN', 580, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (230, 'SIN ZONA', 585, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (231, 'COLAIZACA', 590, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (232, 'CHINCHANGA CENTRO', 590, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (233, 'HUASAGA /WAMPUIK', 595, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (234, 'KAIPTASH', 595, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (235, 'ACHUAR WACHIRPAS', 595, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (236, 'IPIAK', 595, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (237, 'PAKINTS', 595, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (238, 'COMUNIDAD ACHUAR SHUIN MAMUS', 595, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (239, 'SAN PEDRO DE LOS COFANES', 600, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (240, 'JIVINO VERDE', 600, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (241, 'COLONCHE', 605, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (242, 'PALMAR', 605, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (243, 'MANANTIAL DE GUANGALA', 605, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (244, 'MONTEVERDE', 605, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (245, 'BAMBIL DESECHO', 605, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (246, 'LOMA ALTA', 605, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (247, 'LAS BALSAS', 605, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (248, 'SALANGUILLO', 605, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (249, 'AYANGUE', 605, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (250, 'AGUADITA', 605, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (251, 'MANANTIAL DE COLONCHE', 605, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (252, 'COLUMBE', 610, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (253, 'PULUCATES', 610, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (254, 'LLINLLIN', 610, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (255, 'SAN GUISEL ALTO', 610, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (256, 'SIN ZONA', 615, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (257, 'CONCEPCION', 620, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (258, 'GUAYABAL', 620, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (259, '19 DE MARZO', 620, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (260, 'YALARE', 620, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (261, 'CONOCOTO', 625, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (262, 'LA ARMENIA', 625, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (263, 'HOSPITALARIA', 625, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (264, 'SANTA MONICA', 625, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (265, 'ONTANEDA LA SALLE', 625, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (266, 'CAI FEMENINO - QUITO', 625, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (267, 'CONONACO - KAWIMENO', 630, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (268, 'DIKARO', 630, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (269, 'BAMENO', 630, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (270, 'SIN ZONA', 635, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (271, 'CONVENTO', 640, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (272, 'JAMITA', 640, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (273, 'SIN ZONA', 645, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (274, 'SIN ZONA', 650, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (275, 'SIN ZONA', 655, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (276, 'CRNEL. LORENZO GARAICOA', 660, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (277, 'INÉS MARIA', 660, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (278, 'EL GUISMI', 665, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (279, 'LA ARGELIA', 665, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (280, 'MIASI', 665, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (281, 'CHUCHUMBLETZA', 665, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (282, 'SIN ZONA', 670, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (283, 'SIN ZONA', 675, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (284, 'SIN ZONA', 680, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (285, 'COTUNDO', 685, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (286, 'KM 18', 685, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (287, 'PAPANKU', 685, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (288, 'SIN ZONA', 690, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (289, 'SIN ZONA', 695, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (290, 'CUBE / CHANCAMA', 700, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (291, 'CHUCAPLE', 700, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (292, 'TAHUALES', 700, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (293, 'ACHICUBE', 700, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (294, 'SIN ZONA', 705, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (295, 'SIN ZONA', 710, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (296, 'CUMANDA', 715, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (297, 'OTO AROSEMENA 1', 715, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (298, 'CUMBARATZA', 720, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (299, 'NAMBIJA BAJO', 720, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (300, 'LA QUEBRADA DE CUMBARATZA', 720, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (301, 'CUMBAYA', 725, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (302, 'COLEGIO MENOR', 725, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (303, 'LUMBISÍ', 725, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (304, 'SIN ZONA', 730, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (305, 'CURARAY', 735, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (306, 'VILLANO', 735, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (307, 'TOÑAMPARI', 735, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (308, 'TIWINO', 735, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (309, 'CHUYAYACU', 735, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (310, 'JAIME ROLDOS', 735, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (311, 'MEÑEMPARE', 735, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (312, 'LIKINO', 735, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (313, 'SIN ZONA', 740, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (314, 'SIN ZONA', 745, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (315, 'SIN ZONA', 750, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (316, 'CUTUGLAGUA', 755, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (317, 'SANTA ROSA', 755, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (318, 'CUYABENO', 760, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (319, 'ZABALO', 760, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (320, 'SIN ZONA', 765, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (321, 'CRUCITA', 770, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (322, 'LOS RANCHOS - ARENALES', 770, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (323, 'SAN SILVESTRE', 770, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (324, 'SIN ZONA', 775, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (325, 'SIETE DE JULIO', 780, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (326, 'LUZ DE AMERICA', 780, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (327, 'SIN ZONA', 785, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (328, 'EL INGENIO', 790, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (329, 'GRANADILLO', 790, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (330, 'CONSAGUANA', 790, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (331, 'SAN LUIS DE PAMBIL', 795, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (332, 'SAN FERNANDO', 795, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (333, 'JILIMBÍ', 795, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (334, 'SIN ZONA', 800, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (335, 'SIN ZONA', 805, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (336, 'UNAMUNCHO', 810, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (337, 'LA PRIMAVERA', 810, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (338, 'PUERTO ARTURO', 810, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (339, 'SIN ZONA', 815, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (340, 'CHANDUY', 820, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (341, 'ZAPOTAL', 820, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (342, 'TUGADUAJA / ENGUNGA', 820, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (343, 'PECHICHE / EL REAL', 820, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (344, 'SAN GERONIMO', 820, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (345, 'SIN ZONA', 825, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (346, 'SIN ZONA', 830, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (347, 'CHAQUINAL', 835, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (348, 'EL PAPAYO', 835, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (349, 'CHARAPOTO', 840, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (350, 'SAN ALEJO', 840, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (351, 'SAN CLEMENTE', 840, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (352, 'SAN JACINTO', 840, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (353, 'CHAUCHA /ANGAS', 845, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (354, 'SAN ANTONIO', 845, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (355, 'CEDRO', 845, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (356, 'CASCAJO', 845, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (357, 'SIN ZONA', 850, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (358, 'SIN ZONA', 855, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (359, 'SIN ZONA', 860, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (360, 'SIN ZONA', 865, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (361, 'CHICAN /G. ORTEGA', 870, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (362, 'UZHUPUD', 870, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (363, 'CHIGUAZA', 875, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (364, 'SAN PABLO', 875, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (365, 'SAN JUAN', 875, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (366, 'SAN JUAN BOSCO', 875, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (367, 'SHUAR TUNA CHIWIAS-MARIA AUXILIADORA', 875, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (368, 'COOP. 5 DE NOVIEMBRE', 875, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (369, 'TSEMANTSMAN SAN JOSÉ', 875, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (370, 'CENTRO SHUAR KAYAMENTSA', 875, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (371, 'SIN ZONA', 880, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (372, 'SIN ZONA', 885, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (373, 'DUG - DUG', 890, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (374, 'LAZUL', 890, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (375, 'SIN ZONA', 895, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (376, 'VOTO EN CASA', 895, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (377, 'SIN ZONA', 900, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (378, 'SIN ZONA', 905, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (379, 'SIN ZONA', 910, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (380, 'CHITO', 915, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (381, 'NUEVOS HORIZONTES', 915, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (382, 'SALTO DEL INCA', 915, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (383, 'SIN ZONA', 920, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (384, 'SIN ZONA', 925, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (385, 'CHONTADURO', 930, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (386, 'PARTIDERO', 930, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (387, 'CHONTAMARCA', 935, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (388, 'CIMIENTOS', 935, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (389, 'CHONTAPUNTA', 940, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (390, 'AGUA SANTA', 940, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (391, 'ÑUCANCHI LLAKTA KM 28', 940, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (392, 'ÑUCANCHI ALPA', 940, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (393, 'CRUZCHICTA', 940, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (394, 'GARENO', 940, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (395, 'COLONIA LOS RIOS', 940, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (396, 'CAMPO ALEGRE', 940, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (397, 'SHIRIPUNO 2', 940, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (398, 'MANGO PLAYA', 940, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (399, 'FUERZAS UNIDAS', 940, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (400, 'SAN ALBERTO DE BELLAVISTA BAJA', 940, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (401, 'LAS CANELAS', 940, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (402, 'SIN ZONA', 945, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (403, 'SIN ZONA', 950, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (404, 'CHUGA', 955, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (405, 'SAN FRANCISCO DE LOS PALMARES', 955, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (406, 'CHUGCHILAN', 960, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (407, 'GUAYAMA SAN PEDRO QUILOTOA', 960, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (408, 'SARAWASI', 960, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (409, 'SAN MIGUEL DE PILAPUCHIN', 960, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (410, 'SAN MIGUEL DE GUARUMAL', 960, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (411, 'CHUMUNDE', 965, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (412, 'CAPULÍ', 965, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (413, 'MARIBÉ', 965, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (414, 'RASCADERA', 965, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (415, 'PERLA ESMERALDEÑA/SAN RUFINO', 965, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (416, 'LA UNIÓN DE CHUMUNDÉ', 965, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (417, 'SIN ZONA', 970, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (418, 'SIN ZONA', 975, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (419, 'SIN ZONA', 980, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (420, 'CHICANA', 985, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (421, 'SAN VICENTE DE CANEY', 985, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (422, 'LA YONA', 985, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (423, 'COCHAPAMBA', 990, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (424, 'YANAHURCO GRANDE', 990, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (425, 'SIN ZONA', 995, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (426, 'SIN ZONA', 1000, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (427, 'SIN ZONA', 1005, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (428, 'DAULE', 1010, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (429, 'PEDRO CARBO', 1010, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (430, 'PACHICUTZA', 1015, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (431, 'SAN ROQUE', 1015, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (432, 'SHACAY', 1015, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (433, 'G. DIAZ DE PINEDA', 1020, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (434, 'SAN LUIS', 1020, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (435, '10 DE AGOSTO', 1025, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (436, 'SAN RAMON', 1025, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (437, '10 DE AGOSTO', 1030, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (438, 'SANTA TERESA', 1030, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (439, '12 DE DICIEMBRE', 1035, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (440, 'CURIACHI', 1035, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (441, 'SIN ZONA', 1040, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (442, 'SIN ZONA', 1045, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (443, 'PUERTO MURIALDO', 1050, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (444, 'BAJO HUINO', 1050, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (445, 'JANDIA YACU', 1050, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (446, 'SAN RAFAEL', 1055, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (447, 'CALDERA', 1055, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (448, 'SAN SEBASTIAN', 1060, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (449, 'LA AZUCENA', 1060, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (450, 'BOCA DE CAÑA', 1060, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (451, 'BARRAGANETE', 1065, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (452, 'RIO VENDIDO', 1065, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (453, 'EL DIQUE', 1065, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (454, 'CABECERA DE RIO SALAZAR', 1065, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (455, 'EL MORAL-TRES PUNTAS', 1065, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (456, 'WILFRIDO LOOR M.', 1070, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (457, 'TEODOMIRO', 1070, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (458, 'SIN ZONA', 1075, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (459, 'EL PARAISO', 1080, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (460, 'EL TIGRE 1', 1080, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (461, 'SIN ZONA', 1085, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (462, 'GONZALO PIZARRO', 1090, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (463, 'DASHINO', 1090, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (464, 'PANDAYACU', 1090, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (465, 'AMAZONAS', 1090, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (466, 'SIN ZONA', 1095, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (467, 'LA LIBERTAD', 1100, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (468, 'PUYANGO DE LA LIBERTAD', 1100, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (469, 'SAN PABLO', 1105, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (470, 'AGUA FRÍA EN MEDIO', 1105, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (471, 'EL ALTAR', 1110, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (472, 'UTUÑAG', 1110, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (473, 'SIN ZONA', 1115, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (474, 'NUEVO QUITO', 1120, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (475, 'PTO. MINERO LA PUNTA', 1120, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (476, 'CONGUIME', 1120, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (477, 'LA HERRADURA', 1120, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (478, 'SIN ZONA', 1125, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (479, 'SIN ZONA', 1130, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (480, 'SIN ZONA', 1135, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (481, 'SIN ZONA', 1140, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (482, 'SIN ZONA', 1145, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (483, 'EL GOALTAL / LAS JUNTAS', 1150, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (484, 'CORAZON DE MUNDO NUEVO', 1150, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (485, 'EL LIMO /MARIANA DE JESUS', 1155, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (486, 'MANGURQUILLO', 1155, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (487, 'ELOY ALFARO', 1160, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (488, 'CUCUY', 1160, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (489, 'LAS PIEDRAS', 1160, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (490, 'MUCHIQUE 1', 1160, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (491, 'SAN AGUSTÍN', 1160, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (492, 'BOCA DE CAÑALES', 1160, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (493, 'SIN ZONA', 1165, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (494, 'SIN ZONA', 1170, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (495, 'SIN ZONA', 1175, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (496, 'SIN ZONA', 1180, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (497, 'SIN ZONA', 1185, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (498, 'SIN ZONA', 1190, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (499, 'EL CHICAL', 1195, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (500, 'SAN MARCOS', 1195, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (501, 'EL TAMBO', 1200, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (502, 'LA MERCED', 1200, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (503, 'TUTINENTZA', 1205, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (504, 'TUKUP', 1205, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (505, 'YAMANUNKA', 1205, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (506, 'KAPANTINENTSA', 1205, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (507, 'KUSUIMI', 1205, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (508, 'SHUAR KASHAI', 1205, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (509, 'SHIRAMENTSA', 1205, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (510, 'SHUAR ETSA', 1205, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (511, 'PUTUNTS', 1205, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (512, 'JEMPENTS', 1205, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (513, 'PUKAR', 1205, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (514, 'PUTUIM', 1205, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (515, 'SHUAR CHIWIAS', 1205, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (516, 'SHUAR KAPITIAN', 1205, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (517, 'LIBERTAD SUR', 1205, 15);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (518, 'NAYANTS', 1205, 16);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (519, 'SIN ZONA', 1210, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (520, 'SIN ZONA', 1215, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (521, 'SIN ZONA', 1220, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (522, 'PROGRESO', 1225, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (523, 'GALAYACU', 1225, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (524, 'LA CADENA', 1225, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (525, 'ROSA DE ORO', 1225, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (526, 'MUYUYACU', 1225, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (527, 'LA PLAYA', 1225, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (528, 'RÁJARO', 1225, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (529, 'DUCOS', 1225, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (530, 'SIN ZONA', 1230, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (531, 'DAYUMA', 1235, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (532, 'EL ANGEL', 1235, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (533, 'ESFUERZO AMAZONICO', 1235, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (534, 'PUERTO PINDO', 1235, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (535, 'RIO TIPUTINI', 1235, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (536, 'MIWAGUNO', 1235, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (537, 'TIGUANO', 1235, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (538, 'EL PORVENIR DEL CARMEN', 1240, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (539, 'SANTA CLARA', 1240, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (540, 'CUMANDA', 1240, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (541, 'LOYOLA', 1240, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (542, 'NUMBALA', 1240, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (543, 'TARACOA', 1245, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (544, 'SAN CARLOS', 1245, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (545, 'SAN VICENTE', 1245, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (546, 'PAMIWA KUCHA', 1245, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (547, 'SIN ZONA', 1250, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (548, 'FACUNDO VELA', 1255, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (549, 'EL PORVENIR', 1255, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (550, 'SIN ZONA', 1260, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (551, 'FEBRES CORDERO', 1265, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (552, 'MATILDE ESTHER', 1265, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (553, 'PUEBLO NUEVO', 1265, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (554, 'FERNANDEZ SALVADOR', 1270, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (555, 'SAN FRANCISCO DE LA LINEA ROJA', 1270, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (556, 'SIN ZONA', 1275, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (557, 'FLORES', 1280, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (558, 'GUANTUL GRANDE', 1280, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (559, 'NAUBUG', 1280, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (560, 'EL ENO', 1285, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (561, 'ATARY', 1285, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (562, 'EL TRIUNFO UNO', 1285, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (563, 'PACAYACU', 1290, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (564, 'CHONE UNO', 1290, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (565, 'CHIRITZA', 1290, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (566, 'JUAN MONTALVO', 1290, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (567, 'PUERTO NUEVO', 1290, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (568, 'SAN JOSE DE MORONA', 1295, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (569, 'CENTRO CHAU', 1295, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (570, 'PUERTO MORONA', 1295, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (571, 'PANINTS', 1295, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (572, 'KAANK GRANDE', 1295, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (573, 'RIO AMAZONAS', 1295, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (574, 'LA UNIÓN', 1295, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (575, 'SAN JOSE DE ANCON', 1300, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (576, 'PROSPERIDAD / EL TAMBO', 1300, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (577, 'GALERA', 1305, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (578, 'ESTERO DE PLATANO', 1305, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (579, 'GARCIA MORENO /LLURIMAGUA', 1310, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (580, 'NARANJITO', 1310, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (581, 'LA MADGALENA BAJA', 1310, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (582, 'EL CHONTAL', 1310, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (583, 'CIELO VERDE', 1310, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (584, 'LAS GOLONDRINAS', 1310, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (585, 'LA INDEPENDIENTE', 1310, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (586, 'RUMIÑAHUI', 1310, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (587, 'GARCIA MORENO', 1315, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (588, 'EL TAMBO', 1315, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (589, 'SIN ZONA', 1320, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (590, 'SIN ZONA', 1325, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (591, 'GENERAL FARFAN', 1330, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (592, 'TRES PALMAS', 1330, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (593, 'PATRIA NUEVA', 1330, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (594, 'CORAZÓN ORENSE', 1330, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (595, 'SIN ZONA', 1335, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (596, 'SIN ZONA', 1340, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (597, 'SIN ZONA', 1345, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (598, 'SIN ZONA', 1350, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (599, 'SIN ZONA', 1355, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (600, 'GONZALEZ SUAREZ', 1360, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (601, 'PIJAL ALTO', 1360, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (602, 'SAN FCO. DE CHINIMBIMI', 1365, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (603, 'PANIA', 1365, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (604, 'YAKUANK', 1365, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (605, 'SIN ZONA', 1370, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (606, 'SIN ZONA', 1375, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (607, 'GUACHANAMA', 1380, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (608, 'BRAMADEROS', 1380, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (609, 'EL DULCE', 1380, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (610, 'EL LIMON', 1380, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (611, 'SARACAY', 1385, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (612, 'CAMARONES', 1385, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (613, 'LAS ORQUIDEAS', 1385, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (614, 'GUADALUPE', 1390, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (615, 'GUAGUAYME ALTO', 1390, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (616, 'SOAPACA', 1390, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (617, 'PIUNTZA', 1390, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (618, 'SIN ZONA', 1395, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (619, 'SIN ZONA', 1400, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (620, 'SIN ZONA', 1405, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (621, 'GUALLETURO', 1410, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (622, 'PURUBIN', 1410, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (623, 'GER', 1410, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (624, 'SHUYA', 1410, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (625, 'SIN ZONA', 1415, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (626, 'GUANAZAN', 1420, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (627, 'GUARTIGURO', 1420, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (628, 'SIN ZONA', 1425, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (629, 'GUANGAJE', 1430, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (630, 'YAGUARTOA', 1430, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (631, 'SAN JACINTO', 1435, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (632, 'LONDON', 1435, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (633, 'POTRERITOS', 1435, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (634, 'SIN ZONA', 1440, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (635, 'GUAPAN', 1445, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (636, 'ZHINDILIG', 1445, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (637, 'AGUILAN', 1445, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (638, 'VOTO EN CASA', 1445, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (639, 'SIN ZONA', 1450, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (640, 'GUARAINAC', 1455, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (641, 'JUNTAS', 1455, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (642, 'GUARE', 1460, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (643, 'LA CARMELA', 1460, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (644, 'EL GUAYABO', 1460, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (645, 'CAMPO ALEGRE', 1460, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (646, 'SIN ZONA', 1465, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (647, 'GUAYAS / PUERTO NUEVO', 1470, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (648, 'DAULE - PERIPA', 1470, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (649, 'SIN ZONA', 1475, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (650, 'SIN ZONA', 1480, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (651, 'SIN ZONA', 1485, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (652, 'CPL COTOPAXI Nº 1', 1485, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (653, 'SIN ZONA', 1490, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (654, 'SIN ZONA', 1495, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (655, 'GUASAGANDA', 1500, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (656, 'QUINDIGUA', 1500, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (657, 'MALQUI', 1500, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (658, 'SAN JOSE DE CAYAPAS', 1505, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (659, 'PICHIYACU CHACHI', 1505, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (660, 'PLAYA GRANDE', 1505, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (661, 'HERRADURA', 1505, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (662, 'SIN ZONA', 1510, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (663, 'SIN ZONA', 1515, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (664, 'SIN ZONA', 1520, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (665, 'LA UNION', 1525, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (666, 'EL CUATRO', 1525, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (667, 'LA UNION', 1530, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (668, 'LA INDEPENDENCIA', 1530, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (669, 'LIBERTAD DE PLAYA', 1530, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (670, 'BOCANA DEL BUA', 1530, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (671, 'LA ESMERALDA', 1530, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (672, 'MATAMBA', 1530, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (673, 'EL SILENCIO', 1530, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (674, 'NUEVO AZUAY', 1530, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (675, 'LA VIRGENCITA', 1530, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (676, 'EL BELEN', 1530, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (677, 'LOS ÁNGELES', 1530, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (678, 'NUEVOS HORIZONTES', 1530, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (679, 'LOS ANDES 1', 1530, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (680, 'SIN ZONA', 1535, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (681, 'SIN ZONA', 1540, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (682, 'SIN ZONA', 1545, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (683, 'SIN ZONA', 1550, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (684, 'AGUAS NEGRAS', 1555, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (685, 'SAN VICTORIANO', 1555, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (686, 'REY DE LOS ANDES', 1555, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (687, 'SIN ZONA', 1560, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (688, 'INES ARANGO', 1565, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (689, 'TIGUINO', 1565, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (690, 'HUANCAVILCA', 1565, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (691, 'SIN ZONA', 1570, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (692, 'SIN ZONA', 1575, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (693, 'SIN ZONA', 1585, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (694, 'SIN ZONA', 1590, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (695, 'JUNQUILLAL', 1595, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (696, 'EL LAUREL DE SALITRE', 1595, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (697, 'NOVILLO', 1600, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (698, 'SAN AGUSTIN RIO DE LAS VACAS', 1600, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (699, 'SAN ANTONIO DE TIGRE-PATA DE MULA', 1600, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (700, 'BOCA DE TIGRE', 1600, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (701, 'LOS VIVERES DE LA POLVOSA', 1600, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (702, 'SIN ZONA', 1605, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (703, 'HONORATO VASQUEZ', 1610, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (704, 'LA SAIBA', 1610, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (705, 'LA CHONTILLA 1', 1610, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (706, 'TONSUPA', 1615, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (707, 'TASECHE', 1615, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (708, 'PIEDRA FINA', 1615, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (709, 'SIN ZONA', 1620, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (710, 'HUACHI GRANDE', 1625, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (711, 'HUACHI SAN FRANCISCO', 1625, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (712, 'SIN ZONA', 1630, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (713, 'HUAMBI', 1635, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (714, 'CUMBATZA', 1635, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (715, 'SIN ZONA', 1640, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (716, 'SIN ZONA', 1645, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (717, 'SAN VICENTE', 1650, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (718, 'LA MERCED', 1650, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (719, 'SANTA TERESITA', 1650, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (720, 'SIN ZONA', 1655, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (721, 'SIN ZONA', 1660, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (722, 'BELLAMARIA', 1665, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (723, 'VALLE HERMOSO', 1665, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (724, 'SIN ZONA', 1670, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (725, 'ZURMI', 1675, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (726, 'SHAIMI', 1675, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (727, 'SAN JOSE DE DAHUANO', 1680, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (728, 'LA PAZ', 1680, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (729, 'PALTA COCHA', 1680, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (730, 'SAN CARLOS DE RIO BUENO', 1680, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (731, 'MUSHUK LLAKTA', 1680, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (732, 'ARAPINO', 1680, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (733, 'SIN ZONA', 1685, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (734, 'SAN RAFAEL DE SHARUG', 1690, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (735, 'GUARUMAL', 1690, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (736, 'SIN ZONA', 1695, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (737, 'SIN ZONA', 1700, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (738, 'SIN ZONA', 1705, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (739, 'IMANTAG', 1710, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (740, 'PIÑAN', 1710, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (741, 'SIN ZONA', 1715, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (742, 'SIN ZONA', 1720, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (743, 'INGAPIRCA', 1725, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (744, 'SISID', 1725, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (745, 'SIN ZONA', 1730, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (746, 'VOTO EN CASA', 1730, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (747, 'ISINLIVI', 1735, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (748, 'GUANTOALO', 1735, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (749, 'SIN ZONA', 1740, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (750, 'SIN ZONA', 1745, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (751, 'SIN ZONA', 1750, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (752, 'LUZ DE AMÉRICA', 1755, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (753, 'EL CONGOMA', 1755, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (754, 'SAN VICENTE DEL NILA', 1755, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (755, '30 DE NOVIEMBRE', 1755, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (756, 'LA SUSANITA', 1755, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (757, 'SIN ZONA', 1760, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (758, 'SIN ZONA', 1765, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (759, 'SAN CARLOS DE LAS MINAS', 1770, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (760, 'NAMBIJA', 1770, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (761, 'SIN ZONA', 1775, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (762, 'SIN ZONA', 1780, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (763, 'SIN ZONA', 1785, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (764, 'SANTA CECILIA', 1790, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (765, 'LUZ Y VIDA', 1790, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (766, 'AKIWARI', 1790, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (767, 'CUCHAPAMBA', 1790, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (768, 'LUCHA DE LOS POBRES', 1790, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (769, 'JAMBELI', 1795, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (770, 'BARRANCA BERMEJA', 1795, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (771, 'SIN ZONA', 1800, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (772, 'JADAN', 1805, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (773, 'SANTA ROSA DE CHICHIN', 1805, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (774, 'EL CARMEN', 1805, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (775, 'GARCIA MORENO', 1810, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (776, 'CASPISAPA', 1810, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (777, 'JAMBELI', 1815, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (778, 'PONGALILLO-LAS CASITAS', 1815, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (779, 'LAS HUACAS', 1815, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (780, 'LA BELLEZA', 1820, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (781, 'JAGUAR DOS', 1820, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (782, 'LAS DELICIAS', 1820, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (783, 'CANAAN SANGAY', 1820, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (784, 'PALMA ROJA', 1820, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (785, 'ELOY ALFARO', 1820, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (786, 'CACIQUE JUMANDY', 1820, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (787, 'JAVIER LOYOLA / CHUQUIPATA', 1825, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (788, 'AYANCAY', 1825, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (789, 'VOTO EN CASA', 1825, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (790, 'SIN ZONA', 1830, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (791, 'JIJON Y CAAMAÑO', 1835, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (792, 'RIO VERDE', 1835, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (793, 'JIMBILLA', 1840, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (794, 'JESÚS MARÍA BAJO', 1840, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (795, 'SIN ZONA', 1845, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (796, 'JOSE LUIS TAMAYO / MUEY', 1850, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (797, 'EL PARAISO', 1850, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (798, 'SIN ZONA', 1855, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (799, 'SIN ZONA', 1860, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (800, 'JUAN DE VELASCO', 1865, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (801, 'TAMBILLO BAJO', 1865, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (802, 'JUAN GOMEZ RENDON', 1870, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (803, 'BAJADA DE CHANDUY', 1870, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (804, 'JUAN MONTALVO', 1875, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (805, 'SANTIAGUILLO', 1875, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (806, 'SIN ZONA', 1880, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (807, 'SIN ZONA', 1885, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (808, 'JULIO MORENO', 1890, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (809, 'RODEOPAMBA', 1890, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (810, 'DUCUR', 1895, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (811, 'JAVIN', 1895, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (812, 'CHIL CHIL', 1895, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (813, 'JUNCAL', 1900, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (814, 'CHARCAY', 1900, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (815, 'SIN ZONA', 1905, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (816, 'SIN ZONA', 1910, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (817, 'SIN ZONA', 1915, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (818, 'SALANGO', 1920, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (819, 'LAS TUNAS', 1920, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (820, 'CHIRIJOS', 1925, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (821, 'TRES CAMINOS', 1925, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (822, 'TALAG', 1930, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (823, 'ILAYAKU', 1930, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (824, 'JATUN YAKU', 1930, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (825, 'SAN LUIS DE ARMENIA', 1935, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (826, 'ALTO MANDURO', 1935, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (827, 'NUEVO PARAISO', 1940, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (828, 'SAN LORENZO DE ACORANO', 1940, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (829, 'SAN JOSE DE GUAYUSA', 1945, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (830, '10 DE AGOSTO', 1945, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (831, 'KANOA YAKU', 1945, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (832, 'SIN ZONA', 1950, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (833, 'TRES DE NOVIEMBRE', 1955, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (834, '25 DE DICIEMBRE', 1955, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (835, 'LAGO SAN PEDRO', 1960, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (836, 'MIRAFLORES', 1960, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (837, 'UNION MILAGREÑA', 1965, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (838, 'SANTA ROSA', 1965, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (839, 'SAN JACINTO DEL BUA', 1970, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (840, 'UMPECHICO', 1970, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (841, 'SAN VICENTE DEL BUA', 1970, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (842, 'SAN FRANCISCO DE CHILA', 1970, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (843, 'SAN PEDRO DEL LAUREL', 1970, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (844, 'SIN ZONA', 1975, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (845, 'SAN PEDRO DE SUMA', 1980, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (846, 'PUERTO NUEVO', 1980, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (847, 'LAS MERCEDES DE AGUAS SUCIA', 1980, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (848, 'SIN ZONA', 1985, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (849, 'EL ESFUERZO', 1990, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (850, 'LA REFORMA', 1990, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (851, 'PALMAR DEL BIMBE', 1990, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (852, 'SIN ZONA', 1995, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (853, 'BOLASPAMBA', 2000, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (854, 'VEGA ALTA', 2000, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (855, 'SIN ZONA', 2005, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (856, 'LA CONCEPCION', 2010, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (857, 'PALO BLANCO', 2010, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (858, 'SANTA LUCIA', 2010, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (859, 'NARANJITO', 2010, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (860, 'SIN ZONA', 2015, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (861, 'SIN ZONA', 2020, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (862, 'SIN ZONA', 2025, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (863, 'SIN ZONA', 2030, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (864, 'LAGARTO', 2035, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (865, 'BOCANA DEL LAGARTO', 2035, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (866, 'VAINILLA', 2035, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (867, 'SIN ZONA', 2040, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (868, 'SANTA MARIA DEL TOACHI', 2045, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (869, 'CORINA PARRAL', 2045, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (870, 'SAN JOSE DEL MIRADOR', 2045, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (871, 'LA MORENA', 2045, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (872, 'RIO BONITO', 2050, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (873, 'SAN MIGUEL DE BRAZIL', 2050, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (874, 'SAN VICENTE', 2050, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (875, 'PAGUA', 2050, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (876, 'SIN ZONA', 2055, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (877, 'LA MERCED DE BUENOS AIRES', 2060, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (878, 'PALMIRA DE TOCTEMI - AWA', 2060, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (879, 'SIN ZONA', 2065, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (880, 'LA PAZ', 2070, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (881, 'CHAPINTZA BAJO', 2070, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (882, 'KURINTS', 2070, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (883, 'NUEVO PORVENIR', 2070, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (884, 'SIN ZONA', 2075, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (885, 'SIN ZONA', 2080, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (886, 'SIN ZONA', 2085, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (887, 'SIN ZONA', 2090, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (888, 'SIN ZONA', 2095, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (889, 'SIN ZONA', 2100, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (890, 'SIN ZONA', 2105, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (891, 'SIN ZONA', 2110, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (892, 'SIN ZONA', 2115, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (893, 'SIN ZONA', 2120, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (894, 'LA TOLA', 2125, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (895, 'SAN PEDRO', 2125, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (896, 'SIN ZONA', 2130, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (897, 'LA UNION', 2135, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (898, 'CHICOMPE', 2135, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (899, 'LAURO GUERRERO', 2140, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (900, 'LA PALMA', 2140, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (901, 'SIN ZONA', 2145, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (902, 'SIN ZONA', 2150, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (903, 'LA VICTORIA DE IMBANA', 2155, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (904, 'EL TIBIO', 2155, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (905, 'TAMBO BLANCO', 2155, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (906, 'SIN ZONA', 2160, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (907, 'LICTO', 2165, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (908, 'TUNSHI SAN NICOLAS', 2165, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (909, 'SIN ZONA', 2170, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (910, 'LIMONCOCHA', 2175, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (911, 'NUEVO PARAISO', 2175, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (912, 'UNIÓN AMAZÓNICA', 2175, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (913, '24 DE MAYO', 2175, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (914, 'YAMANUNKA', 2175, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (915, 'SANI ISLA', 2175, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (916, 'SIN ZONA', 2180, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (917, 'SIN ZONA', 2185, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (918, 'LOS ANDES', 2205, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (919, 'PIQUIUCHO', 2205, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (920, 'CUNQUER', 2205, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (921, 'SIN ZONA', 2210, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (922, 'LUDO', 2215, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (923, 'BUENA VISTA', 2215, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (924, 'HATOBOLO', 2215, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (925, 'SIN ZONA', 2220, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (926, 'SIN ZONA', 2225, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (927, 'SIN ZONA', 2230, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (928, 'LOS ENCUENTROS', 2240, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (929, 'EL ZARZA', 2240, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (930, 'SIN ZONA', 2255, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (931, 'LLAGOS', 2260, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (932, 'JOYAGSHI', 2260, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (933, 'SIN ZONA', 2265, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (934, 'SIN ZONA', 2270, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (935, 'LLOA', 2275, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (936, 'CHIRIBOGA', 2275, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (937, 'SAN JUAN DE LLOA', 2275, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (938, 'SIN ZONA', 2280, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (939, 'MACUMA', 2285, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (940, 'YUWINTS', 2285, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (941, 'MAMAYAK', 2285, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (942, 'KUSUTKA', 2285, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (943, 'YAMPUNA NORTE', 2285, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (944, 'CENTRO SHUAR KANKAIM NORTE', 2285, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (945, 'MACHALILLA', 2305, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (946, 'AGUA BLANCA', 2305, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (947, 'MADRE TIERRA', 2310, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (948, 'SANTA ANA', 2310, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (949, 'AMAZONAS', 2310, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (950, 'NUEVA VIDA', 2310, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (951, 'CPPL MIXTO PASTAZA N°1', 2310, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (952, 'SIN ZONA', 2315, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (953, 'SIN ZONA', 2320, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (954, 'MALACATOS/VALLADOLID', 2325, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (955, 'RUMISHITANA', 2325, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (956, 'SIN ZONA', 2330, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (957, 'SIN ZONA', 2335, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (958, 'MALDONADO', 2340, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (959, 'CHILMA ALTO', 2340, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (960, 'MALIMPIA /GUAYLLABAMBA', 2345, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (961, 'AGUA CLARA', 2345, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (962, 'EL RECREO', 2345, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (963, 'LA T', 2345, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (964, 'NARANJAL DE LOS CHACHIS', 2345, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (965, 'VALLE DEL SADE', 2345, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (966, 'RONCA TIGRILLO', 2345, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (967, '5 DE AGOSTO', 2345, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (968, 'VALLE ESMERALDEÑO', 2345, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (969, 'ZAPALLO', 2345, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (970, 'CRISTOBAL COLON', 2345, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (971, 'GUAYACANA', 2345, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (972, 'LAS PAVAS', 2345, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (973, 'AGUA CLARA CHACHI', 2345, 15);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (974, 'UNION MANABITA', 2345, 16);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (975, 'ÑAMPI', 2345, 17);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (976, 'SIN ZONA', 2350, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (977, 'MANGLARALTO', 2355, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (978, 'SAN PEDRO / VALDIVIA', 2355, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (979, 'SINCHAL', 2355, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (980, 'OLON', 2355, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (981, 'LA ENTRADA', 2355, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (982, 'CADEATE', 2355, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (983, 'MONTAÑITA', 2355, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (984, 'LA RINCONADA', 2355, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (985, 'DOS MANGAS', 2355, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (986, 'SITIO NUEVO', 2355, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (987, 'MANU', 2360, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (988, 'TAGUARCOCHA', 2360, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (989, 'MANUEL J. CALLE', 2365, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (990, 'SAN ISIDRO', 2365, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (991, 'SIN ZONA', 2375, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (992, 'SIN ZONA', 2380, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (993, 'MARIANO MORENO/CALLASAY', 2385, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (994, 'CERTAG', 2385, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (995, 'SIN ZONA', 2390, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (996, 'MATAJE', 2395, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (997, 'MATAJE ALTO', 2395, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (998, 'LA CADENA', 2395, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (999, 'SIN ZONA', 2400, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1000, 'SIN ZONA', 2405, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1001, 'MINDO', 2410, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1002, 'PUEBLO NUEVO', 2410, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1003, 'MOLLETURO', 2430, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1004, 'JESUS DEL GRAN PODER', 2430, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1005, 'ZHAGAL', 2430, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1006, 'SAN JOSE DE RECREO', 2430, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1007, 'TAMARINDO', 2430, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1008, 'AGUAS CALIENTES', 2430, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1009, 'ESTERO PIEDRA', 2430, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1010, 'ABDON CALDERÓN', 2430, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1011, 'FLOR Y SELVA', 2430, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1012, 'CAYMATAN ', 2430, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1013, 'SIN ZONA', 2435, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1014, 'SIN ZONA', 2445, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1015, 'MONTALVO /ANDOAS', 2450, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1016, 'KAPAWI', 2450, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1017, 'CHARAPACOCHA', 2450, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1018, 'BUFEO', 2450, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1019, 'KURINTZA', 2450, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1020, 'WUAYUSENTSA', 2450, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1021, 'NUMBAIMI', 2450, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1022, 'CONAMBO', 2450, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1023, 'JANDIAYACU', 2450, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1024, 'PINDUYACU', 2450, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1025, 'KAPAWARI', 2450, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1026, 'TERESA MAMA', 2450, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1027, 'NUEVO SAN JOSÉ DE MONTALVO', 2450, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1028, 'MONTEOLIVO', 2455, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1029, 'PUEBLO NUEVO', 2455, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1030, 'EL MOTILON', 2455, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1031, 'MORASPUNGO', 2460, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1032, 'GUAPARA', 2460, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1033, 'PIEDACITA', 2460, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1034, 'EL DESEO', 2460, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1035, 'CALABICITO', 2460, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1036, 'MOROMORO', 2465, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1037, 'PALO SOLO', 2465, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1038, 'SIN ZONA', 2470, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1039, 'SIN ZONA', 2475, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1040, 'SIN ZONA', 2480, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1041, 'SIN ZONA', 2485, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1042, 'SIN ZONA', 2490, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1043, 'NAMBACOLA', 2520, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1044, 'POTRERILLOS', 2520, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1045, 'SIN ZONA', 2525, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1046, 'NANEGALITO', 2530, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1047, 'SANTA ELENA', 2530, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1048, 'SIN ZONA', 2540, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1049, 'SIN ZONA', 2545, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1050, 'LAS NIEVES', 2550, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1051, 'LA PAZ', 2550, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1052, 'NOBOA', 2555, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1053, 'EL ENCUENTRO', 2555, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1054, 'SIN ZONA', 2560, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1055, 'SIN ZONA', 2565, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1056, 'MULTI /  NULTI', 2570, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1057, 'CHALLUABAMBA NULTI', 2570, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1058, 'SIN ZONA', 2575, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1059, 'SIN ZONA', 2595, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1060, 'SIN ZONA', 2600, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1061, 'SIN ZONA', 2620, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1062, 'ORIANGA', 2630, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1063, 'NARANJILLO', 2630, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1064, 'SIN ZONA', 2635, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1065, 'SIN ZONA', 2640, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1066, 'SIN ZONA', 2670, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1067, 'PABLO ARENAS', 2675, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1068, 'LA VICTORIA', 2675, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1069, 'SIN ZONA', 2680, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1070, 'PACTO', 2690, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1071, 'SAGUANGAL', 2690, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1072, 'PACHIJAL', 2690, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1073, 'PALETILLAS', 2710, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1074, 'AÑANCAL', 2710, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1075, 'CAUCHO GRANDE', 2710, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1076, 'PALMALES', 2715, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1077, 'MANABI DE EL ORO', 2715, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1078, 'SIN ZONA', 2720, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1079, 'PALMAS', 2725, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1080, 'JURUPILLOS', 2725, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1081, 'SANTA ROSA', 2725, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1082, 'PALMIRA', 2730, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1083, 'TIPIN', 2730, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1084, 'GALTES', 2730, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1085, 'PANCHO NEGRO', 2745, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1086, 'LA PUNTILLA', 2745, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1087, 'SIN ZONA', 2750, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1088, 'SIN ZONA', 2755, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1089, 'SIN ZONA', 2760, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1090, 'PANACOCHA', 2765, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1091, 'PUKA PEÑA', 2765, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1092, 'SIN ZONA', 2770, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1093, 'PASA', 2775, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1094, 'MOGATO', 2775, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1095, 'SIN ZONA', 2785, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1096, 'PATUCA', 2795, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1097, 'IPIAKIM', 2795, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1098, 'SIN ZONA', 2810, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1099, 'PEÑAHERRERA', 2820, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1100, 'EL CRISTAL', 2820, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1101, 'NANGULVI BAJO', 2820, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1102, 'SIN ZONA', 2825, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1103, 'PICAYHUA', 2830, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1104, 'SIGSIPAMBA', 2830, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1105, 'PIEDRAS', 2850, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1106, 'EL CARMEN', 2850, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1107, 'PIFO', 2855, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1108, 'SIGSIPAMBA', 2855, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1109, 'PALUGO', 2855, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1110, 'LA VIRGINIA', 2855, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1111, 'PILAHUIN', 2860, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1112, 'TAMBO LOMA', 2860, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1113, 'EL SALADO', 2860, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1114, 'PILALO', 2865, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1115, 'APAGUA', 2865, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1116, 'PIMOCHA', 2875, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1117, 'ISABEL MARIA', 2875, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1118, 'LA VIRGINIA', 2875, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1119, 'PINDILIG', 2885, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1120, 'SHAL', 2885, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1121, 'SIN ZONA', 2890, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1122, 'PINTAG', 2895, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1123, 'UBILLUS', 2895, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1124, 'TOLONTAG', 2895, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1125, 'SAN AGUSTÍN', 2895, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1126, 'SANTA TERESA', 2895, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1127, 'SIN ZONA', 2900, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1128, 'SIN ZONA', 2905, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1129, 'SIN ZONA', 2915, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1130, 'SIN ZONA', 2920, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1131, 'POMASQUI', 2925, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1132, 'PUSUQUI', 2925, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1133, 'POMPEYA', 2930, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1134, 'SAN ANTONIO', 2930, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1135, 'SIN ZONA', 2940, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1136, 'SIN ZONA', 2945, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1137, 'SIN ZONA', 2950, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1138, 'SIN ZONA', 2955, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1139, 'SIN ZONA', 2965, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1140, 'SIN ZONA', 2970, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1141, 'SIN ZONA', 2975, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1142, 'PUELLARO', 2980, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1143, 'ALOGUINCHO', 2980, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1144, 'ALCHIPICHI', 2980, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1145, 'SIN ZONA', 2985, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1146, 'PUERTO CAYO', 2990, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1147, 'CANTA GALLO', 2990, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1148, 'PUERTO MISAHUALLI', 3000, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1149, 'SAN MIGUEL DE PALMERAS', 3000, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1150, 'VENECIA DERECHA', 3000, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1151, 'SIN ZONA', 3005, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1152, 'SIN ZONA', 3015, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1153, 'SIN ZONA', 3020, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1154, 'SIN ZONA', 3025, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1155, 'PUNA', 3030, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1156, 'CAUCHICHE', 3030, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1157, 'CAMPO ALEGRE', 3030, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1158, 'LOS MORREÑOS', 3030, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1159, 'PUERTO ROMA', 3030, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1160, 'MATORRILLO', 3030, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1161, 'MONDRAGÓN', 3030, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1162, 'PUNGALA', 3035, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1163, 'ALAO', 3035, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1164, 'ASHPAPUNGO', 3035, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1165, 'PUNIN', 3040, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1166, 'TZALARON', 3040, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1167, 'SIN ZONA', 3045, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1168, 'PUERTO NAPO', 3050, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1169, 'ATAHUALPA', 3050, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1170, 'SIN ZONA', 3055, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1171, 'QUIMIAG', 3095, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1172, 'PIÑAÑAU', 3095, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1173, 'PUCULPALA', 3095, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1174, 'QUINCHE', 3100, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1175, 'SAN VICENTE DE CUPUCURO', 3100, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1176, 'IGUIÑARO', 3100, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1177, 'QUINGEO', 3105, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1178, 'MONJAS', 3105, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1179, 'PIRICOCHA', 3105, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1180, 'SIN ZONA', 3110, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1181, 'SIN ZONA', 3115, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1182, 'QUISAPINCHA', 3120, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1183, 'ILLAGUA CHICO', 3120, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1184, 'SIN ZONA', 3125, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1185, 'RAMON CAMPAÑA', 3155, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1186, 'PILANCÓN', 3155, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1187, 'SIN ZONA', 3160, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1188, 'RICAURTE', 3165, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1189, 'LA DOLOROSA', 3165, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1190, 'RICAURTE', 3170, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1191, 'PAVON', 3170, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1192, 'SESME', 3170, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1193, 'COLORADO', 3170, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1194, 'NUEVO BACHILLERO', 3170, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1195, 'RIO SANTO', 3170, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1196, 'LAS GARZAS', 3170, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1197, 'LOS ÁNGELES', 3170, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1198, 'LA LAGUNA DE RIO PLATA', 3170, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1199, 'RICAURTE', 3175, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1200, 'SALAMPE', 3175, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1201, 'LA INDUSTRIA', 3175, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1202, 'SAN JOSE DE PIJULLO', 3175, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1203, 'LA HOJITA', 3175, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1204, 'POTOSI', 3175, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1205, 'MAKUSAR', 3180, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1206, 'TINKIAS', 3180, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1207, 'YUTSUNTSA', 3180, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1208, 'SIN ZONA', 3185, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1209, 'CPL MANABI Nº 4', 3185, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1210, 'SIN ZONA', 3190, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1211, 'SURAKA', 3195, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1212, 'WIRIRIMA', 3195, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1213, 'LOROCACHI', 3195, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1214, 'YANDANA ENTSA', 3195, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1215, 'NINA AMARUM', 3195, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1216, 'SIN ZONA', 3200, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1217, 'SIN ZONA', 3210, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1218, 'ROCAFUERTE', 3215, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1219, 'CHUNGUILLO', 3215, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1220, 'ROSA FLORIDA', 3220, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1221, 'LA BARQUILLA', 3220, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1222, 'SIN ZONA', 3225, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1223, 'SIN ZONA', 3230, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1224, 'SIN ZONA', 3235, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1225, 'SIN ZONA', 3250, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1226, 'SABANILLA', 3255, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1227, 'HIGUERON', 3255, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1228, 'POTRERILLOS - VICIN', 3255, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1229, 'SIN ZONA', 3260, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1230, 'SIN ZONA', 3265, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1231, 'SACAPALCA', 3270, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1232, 'CRUZ DE YAZAPA', 3270, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1233, 'LIMON VEGA', 3270, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1234, 'VEGA GRANDE', 3270, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1235, 'SIN ZONA', 3275, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1236, 'SIN ZONA', 3280, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1237, 'SALINAS', 3285, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1238, 'LA PALMA', 3285, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1239, 'CHAZOJUAN', 3285, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1240, 'GRAMALOTE', 3285, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1241, 'SIN ZONA', 3290, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1242, 'SAN ANDRES', 3295, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1243, 'CALSHI', 3295, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1244, 'SAN ANDRES', 3300, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1245, 'HUAPANTE GRANDE', 3300, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1246, 'SAN ANTONIO', 3305, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1247, 'ZHUCAY', 3305, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1248, 'CARGUA', 3305, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1249, 'MANTA REAL', 3305, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1250, 'SAN ANTONIO', 3315, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1251, 'TANGUARIN', 3315, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1252, 'SANTO DOMINGO', 3315, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1253, 'LA COMPANIA', 3315, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1254, 'LOS SOLES', 3315, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1255, 'VOTO EN CASA', 3315, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1256, 'SAN ANTONIO', 3320, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1257, 'YANGUZA', 3320, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1258, 'YUNGUMAS', 3320, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1259, 'LA VICTORIA', 3320, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1260, 'WARINTZA', 3320, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1261, 'SAN ANTONIO', 3325, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1262, 'RUMICUCHO', 3325, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1263, 'SAN ANTONIO', 3330, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1264, 'LAGUNA DE CAÑAS', 3330, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1265, 'SIN ZONA', 3335, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1266, 'SAN ANTONIO DE CUMBE', 3340, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1267, 'CHAMICAL', 3340, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1268, 'GUELEDEL', 3340, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1269, 'SIN ZONA', 3345, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1270, 'SAN ANTONIO /DEL PELUDO', 3350, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1271, 'BARQUERO', 3350, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1272, 'BRAVOS CHICOS', 3350, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1273, 'SAN BARTOLOME', 3355, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1274, 'ANGAMARQUILLO', 3355, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1275, 'SAN BARTOLOMÉ', 3360, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1276, 'LA LIBERTAD', 3360, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1277, 'SIGSIGLLANO', 3360, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1278, 'SAN BLAS', 3365, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1279, 'IRUGUINCHO', 3365, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1280, 'SIN ZONA', 3370, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1281, 'SAN CRISTOBAL', 3375, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1282, 'GUACHUN', 3375, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1283, 'SIN ZONA', 3380, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1284, 'SAN FRANCISCO', 3390, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1285, 'EL SALTO', 3390, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1286, 'SIN ZONA', 3395, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1287, 'SIN ZONA', 3400, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1288, 'SAN FRANCISCO DE ONZOLE', 3405, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1289, 'ZANCUDO', 3405, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1290, 'SIN ZONA', 3410, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1291, 'SAN FCO. SIGSIPAMBA', 3415, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1292, 'SHANSHIPAMBA', 3415, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1293, 'SANGAY', 3420, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1294, 'CHINIMPI', 3420, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1295, 'PAQUISHA', 3420, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1296, 'SIN ZONA', 3425, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1297, 'SAN GREGORIO', 3430, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1298, 'BALSALITO', 3430, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1299, 'BOCA DEL SUCIO', 3430, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1300, 'TRES VIAS', 3430, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1301, 'SAN SALVADOR CHACHI', 3430, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1302, 'TIGRILLO', 3430, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1303, 'SIN ZONA', 3435, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1304, 'SIN ZONA', 3440, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1305, 'SAN ISIDRO', 3445, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1306, 'SAN MIGUEL DE PIQUIGUA', 3445, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1307, '9 DE OCTUBRE', 3445, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1308, 'SAN ISIDRO DE PATULU', 3450, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1309, 'CHOCAVI', 3450, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1310, 'SAN JAVIER DE CACHABI', 3455, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1311, 'CHILLAVI DEL CEIBO', 3455, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1312, 'SAN JOAQUIN', 3460, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1313, 'BARABON', 3460, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1314, 'SIN ZONA', 3465, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1315, 'SIN ZONA', 3470, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1316, 'SAN JOSE DE MINAS', 3475, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1317, 'EL MERIDIANO', 3475, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1318, 'PLAYA RICA', 3475, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1319, 'SAN JOSE DE PAYAMINO', 3480, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1320, 'VERDE SUMACO', 3480, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1321, 'SAN FRANCISCO DE ASIS', 3480, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1322, 'UNION Y PROGRESO', 3480, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1323, 'JUAN PIO MONTUFAR', 3480, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1324, 'SIN ZONA', 3485, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1325, 'SAN JOSE DE QUICHINCHE', 3490, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1326, 'INGUINCHO', 3490, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1327, 'SAN JOSE DE RARANGA', 3495, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1328, 'LA ESMERALDA', 3495, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1329, 'SAN JOSE DE TAMBO', 3500, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1330, 'STA ROSA DE AGUA CLARA', 3500, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1331, 'ANGELICA', 3500, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1332, 'VALPARAISO', 3500, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1333, 'JUNTA NUEVA', 3500, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1334, 'SIN ZONA', 3505, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1335, 'SIN ZONA', 3510, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1336, 'SIN ZONA', 3515, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1337, 'SIN ZONA', 3525, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1338, 'VOTO EN CASA', 3525, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1339, 'SAN JUAN DE PASTOCALLE', 3530, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1340, 'LA LIBERTAD', 3530, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1341, 'SAN JUAN DE POZUL', 3535, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1342, 'POTRERILLOS', 3535, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1343, 'SIN ZONA', 3545, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1344, 'VOTO EN CASA', 3545, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1345, 'SIN ZONA', 3550, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1346, 'SAN LUCAS', 3555, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1347, 'LAS JUNTAS', 3555, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1348, 'SAN LUIS', 3560, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1349, 'SAN ANTONIO DE GUASLAN', 3560, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1350, 'SIN ZONA', 3565, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1351, 'SAN MATEO', 3570, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1352, 'TIMBRE', 3570, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1353, 'SIN ZONA', 3575, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1354, 'SIN ZONA', 3580, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1355, 'SIN ZONA', 3585, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1356, 'SAN PABLO', 3590, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1357, 'EL TOPO', 3590, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1358, 'SAN PABLO DE ATENAS', 3595, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1359, 'GUAMALÁN', 3595, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1360, 'SIN ZONA', 3600, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1361, 'SAN PABLO DE USHPAYACU', 3605, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1362, 'POROTOYACU', 3605, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1363, 'SIN ZONA', 3610, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1364, 'PUERTO LIBRE', 3615, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1365, 'SINANGUE', 3615, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1366, 'EL RECODO', 3615, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1367, 'EL CABENO', 3615, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1368, 'SAN PLACIDO', 3625, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1369, 'EL PROGRESO', 3625, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1370, 'SIN ZONA', 3630, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1371, 'SANTA MARIA', 3632, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1372, 'LA PALIZADA', 3632, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1373, 'SANTA TERESA', 3632, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1374, 'VOTO EN CASA', 3632, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1375, 'LA 14/EL PARAISO', 3635, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1376, 'EL ROSARIO', 3635, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1377, 'EL DESCANSO', 3635, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1378, 'VOTO EN CASA', 3635, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1379, 'SIN ZONA', 3640, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1380, 'VOTO EN CASA', 3640, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1381, 'SAN ROQUE', 3645, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1382, 'SAN PABLO', 3645, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1383, 'TIERRAS ORIENTALES', 3645, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1384, 'NUEVA VIDA', 3645, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1385, 'SIN ZONA', 3650, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1386, 'SIN ZONA', 3655, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1387, 'SAN SEBASTIAN DE COCA', 3660, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1388, 'SAN PABLO', 3660, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1389, 'SARDINAS', 3660, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1390, 'HUATARACU', 3660, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1391, 'SAN SEBASTIAN DE YULOG', 3665, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1392, 'UCHUCAY', 3665, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1393, 'SAN SIMON', 3670, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1394, 'GRADAS', 3670, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1395, 'SAN VICENTE DE PUSIR', 3680, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1396, 'PUSIR GRANDE', 3680, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1397, 'TUMBATÚ', 3680, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1398, 'SIN ZONA', 3685, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1399, 'SIN ZONA', 3690, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1400, 'SANTA ELENA', 3705, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1401, 'UNIÓN ORENSE', 3705, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1402, 'EL PALMAR', 3705, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1403, 'SIN ZONA', 3710, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1404, 'SIN ZONA', 3720, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1405, 'SANTA RITA', 3725, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1406, 'SAN FRANCISCO DE BOGOTA', 3725, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1407, 'SANTA ROSA', 3730, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1408, 'CUATRO ESQUINAS', 3730, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1409, 'SIN ZONA', 3735, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1410, 'SANTA ROSA DE FLANDES', 3740, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1411, 'VILLA NUEVA', 3740, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1412, 'SANTA ROSA DE QUIJOS', 3745, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1413, 'CASCABEL', 3745, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1414, 'SIN ZONA', 3750, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1415, 'SANTA RUFINA', 3755, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1416, 'LOZUMBE', 3755, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1417, 'SANTA SUSANA DE CHIVIAZA', 3760, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1418, 'LA ESPERANZA', 3760, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1419, 'PUPUNAS', 3760, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1420, 'SANTA TERESITA', 3765, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1421, 'TUNDURAMA', 3765, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1422, 'COLLINGORA', 3765, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1423, 'SIN ZONA', 3770, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1424, 'SANTIAGO', 3775, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1425, 'TOTORAS', 3775, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1426, 'VOTO EN CASA', 3775, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1427, 'SIN ZONA', 3780, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1428, 'ZARAYACU', 3785, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1429, 'PACAYACU', 3785, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1430, 'MORETECOCHA', 3785, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1431, 'JATUN MOLINO', 3785, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1432, 'SANTIAK', 3785, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1433, 'ACHUAR', 3785, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1434, 'RAYAYACU', 3785, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1435, 'PIWIRI', 3785, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1436, 'GUARANI', 3785, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1437, 'UYUIMI', 3785, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1438, 'LLANCHAMA COCHA', 3785, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1439, 'SIN ZONA', 3790, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1440, 'SAYAUSI', 3795, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1441, 'SAN MIGUEL', 3795, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1442, 'BELLAVISTA', 3795, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1443, 'SIN ZONA', 3800, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1444, 'SELVA ALEGRE', 3805, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1445, 'PALMA REAL', 3805, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1446, 'SIN ZONA', 3810, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1447, 'SIN ZONA', 3815, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1448, 'SIN ZONA', 3820, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1449, 'SEVILLA DON BOSCO', 3830, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1450, 'SAN LUIS DE ININKIS', 3830, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1451, 'UUNT WICHIM', 3830, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1452, 'SANTA ROSA', 3830, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1453, 'UUNT SUANTS', 3830, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1454, 'MUTINTS', 3830, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1455, 'PANKINTS CUTUCU', 3830, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1456, 'MIAZAL', 3830, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1457, 'SHUAR KURINUNKA', 3830, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1458, 'SAN JOSE DE KUSUIM', 3830, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1459, 'UCHICH SUANTS', 3830, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1460, 'TSENKUSH', 3830, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1461, 'TUYUNTZA NORTE', 3830, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1462, 'CENTRO NUWENTS', 3830, 15);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1463, 'UYUNTS', 3830, 16);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1464, 'NUMPAIM', 3830, 17);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1465, 'DON BOSCO', 3830, 18);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1466, 'CHAPIS', 3830, 19);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1467, 'ANTUASH', 3830, 20);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1468, 'COMUNIDAD DE SANTA ANA', 3830, 21);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1469, 'SHAGLLI', 3835, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1470, 'HUERTAS', 3835, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1471, 'PUCULCAY', 3835, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1472, 'SIN ZONA', 3840, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1473, 'SIN ZONA', 3845, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1474, 'SIDCAY', 3850, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1475, 'BIBIN', 3850, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1476, 'ALTOS DE MACHANGARA', 3850, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1477, 'SIMIATUG', 3860, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1478, 'MINDINA', 3860, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1479, 'SANTA TERESA', 3860, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1480, 'INGAPIRCA', 3860, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1481, 'TALAHUA', 3860, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1482, 'SININCAY', 3870, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1483, 'CRUCE DEL CARMEN', 3870, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1484, 'SAN JOSE DE BALZAY', 3870, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1485, 'SIN ZONA', 3875, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1486, 'SUA/BOCANA', 3880, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1487, 'MUCHIN', 3880, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1488, 'SIN ZONA', 3885, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1489, 'SIN ZONA', 3890, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1490, 'SIN ZONA', 3900, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1491, 'SIN ZONA', 3905, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1492, 'SIMON BOLIVAR', 3915, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1493, 'JUNTAS DEL PACIFICO', 3915, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1494, 'SUBE Y BAJA', 3915, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1495, 'LIMONCITO', 3915, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1496, 'LA FRUTILLA', 3915, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1497, 'SAN CARLOS DE LIMON', 3920, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1498, 'NUMPATKAIN', 3920, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1499, 'WAAPIS', 3920, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1500, 'SIN ZONA', 3925, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1501, 'SIN ZONA', 3930, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1502, 'TACAMOROS', 3935, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1503, 'LA DELICIA', 3935, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1504, 'PANDUANA', 3935, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1505, 'SIN ZONA', 3940, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1506, 'SIN ZONA', 3945, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1507, 'TAMBILLO', 3955, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1508, 'EL PROGRESO', 3955, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1509, 'TAMBILLO', 3960, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1510, 'EL MURCO', 3960, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1511, 'SIN ZONA', 3965, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1512, 'TAQUIL /MIGUEL RIOFRIO', 3970, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1513, 'CERA', 3970, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1514, 'SIN ZONA', 3975, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1515, 'TARQUI', 3980, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1516, 'TUTUPALI BAJO', 3980, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1517, 'GULLANZHAPA', 3980, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1518, 'TARQUI', 3985, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1519, 'PUTUIMI', 3985, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1520, 'SAN JACINTO', 3985, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1521, 'SAN PEDRO', 3985, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1522, 'SIN ZONA', 3990, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1523, 'TELIMBELA', 3995, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1524, 'UNION DE TIANDIAGOTE', 3995, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1525, 'TABLAS LA FLORIDA', 3995, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1526, 'TENDALES', 4000, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1527, 'BAJO ALTO', 4000, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1528, 'TNTE. HUGO ORTIZ', 4005, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1529, 'LA MARISCAL', 4005, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1530, 'BOAYACU', 4005, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1531, 'TIMBARA', 4010, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1532, 'ROMERILLOS BAJOS', 4010, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1533, 'LA PITUCA', 4010, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1534, 'TINGO', 4015, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1535, 'EL PROGRESO', 4015, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1536, 'PUEMBO', 4015, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1537, 'TIXAN', 4030, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1538, 'COCANES', 4030, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1539, 'SIN ZONA', 4035, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1540, 'TOBAR DONOSO', 4040, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1541, 'EL BABOSO', 4040, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1542, 'SIN ZONA', 4045, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1543, 'SIN ZONA', 4050, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1544, 'TONCHIGUE', 4055, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1545, 'QUITITO', 4055, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1546, 'SAME', 4055, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1547, 'EL CABITO', 4055, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1548, 'MACARÁ', 4055, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1549, 'ESTERO ANCHO', 4055, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1550, 'TOTORAS', 4065, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1551, 'HUACHI TOTORAS', 4065, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1552, 'SIN ZONA', 4070, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1553, 'TULULBI /RICAURTE', 4075, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1554, 'LA CEIBA', 4075, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1555, 'CENTRO AWA PAMBILAR', 4075, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1556, 'CENTRO AWA GUADUALITO', 4075, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1557, 'BALSAREÑO', 4075, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1558, 'SIN ZONA', 4080, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1559, 'TUMBACO', 4085, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1560, 'TOLA GRANDE', 4085, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1561, 'LA MORITA', 4085, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1562, 'TOLA CHICA', 4085, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1563, 'COLLAQUI', 4085, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1564, 'TUPIGACHI', 4090, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1565, 'LA FLORENCIA', 4090, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1566, 'SIN ZONA', 4095, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1567, 'CPL AZUAY N° 1', 4095, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1568, 'SIN ZONA', 4100, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1569, 'TUTUPALI', 4105, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1570, 'SAYUPAMBA', 4105, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1571, 'LA ESPERANZA', 4105, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1572, 'SIN ZONA', 4110, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1573, 'SIN ZONA', 4115, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1574, 'SIN ZONA', 4120, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1575, 'SIN ZONA', 4125, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1576, 'SIN ZONA', 4130, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1577, 'ULBA', 4135, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1578, 'VIZCAYA', 4135, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1579, 'SIN ZONA', 4145, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1580, 'SIN ZONA', 4150, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1581, 'SIN ZONA', 4155, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1582, 'SIN ZONA', 4160, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1583, 'SIN ZONA', 4165, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1584, 'TELEMBI', 4170, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1585, 'LOMA LINDA', 4170, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1586, 'CORRIENTE GRANDE', 4170, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1587, 'JEYAMBI', 4170, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1588, 'GUALPI DEL CAYAPAS', 4170, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1589, 'SIN ZONA', 4185, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1590, 'VALLADOLID', 4195, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1591, 'TAPALA', 4195, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1592, 'FATIMA', 4195, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1593, 'VALLE', 4200, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1594, 'CHILCAPAMBA', 4200, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1595, 'GUALALCAY', 4200, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1596, 'SIN ZONA', 4205, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1597, 'VICENTINO', 4210, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1598, 'GUATUNUMÁ', 4210, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1599, 'LA VICTORIA', 4215, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1600, 'RIO NEGRO', 4215, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1601, 'SIN ZONA', 4220, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1602, 'SIN ZONA', 4225, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1603, 'SIN ZONA', 4230, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1604, 'SIN ZONA', 4235, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1605, 'SIN ZONA', 4240, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1606, 'SIN ZONA', 4275, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1607, 'SIN ZONA', 4280, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1608, 'SIN ZONA', 4290, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1609, 'YASUNI', 4295, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1610, 'FRONTERAS DEL ECUADOR', 4295, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1611, 'YAUPI', 4300, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1612, 'YAAP', 4300, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1613, 'TUMPAIM', 4300, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1614, 'SANTIAGO TUKUP', 4300, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1615, 'SIN ZONA', 4305, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1616, 'SIN ZONA', 4310, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1617, 'SIN ZONA', 4325, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1618, 'ZAPOTAL', 4330, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1619, 'NUEVO ZAPOTAL', 4330, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1620, 'TARIRA', 4330, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1621, 'AGUAS FRIAS DE MEDELLIN', 4330, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1622, 'ZHIDMAD', 4340, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1623, 'SAN JOSE DE LALCOTE', 4340, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1624, 'SIN ZONA', 4345, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1625, 'SIN ZONA', 4360, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1626, 'ZUMBAHUA', 4365, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1627, 'LA COCHA', 4365, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1628, 'TIGUA WANAPAMPA', 4365, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1629, 'SIN ZONA', 4385, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1630, 'SIN ZONA', 4415, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1631, 'SIN ZONA', 4420, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1632, 'SIN ZONA', 4425, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1633, 'SIN ZONA', 4430, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1634, 'PUERTO LIMÓN', 4440, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1635, 'SANTA CECILIA DE PUPUSA', 4440, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1636, 'SAN REMO', 4440, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1637, 'VICENTE ROCAFUERTE', 4440, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1638, 'EL PROGRESO', 4440, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1639, 'COPALITO', 4440, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1640, 'SAN JUAN', 4440, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1641, 'SIN ZONA', 4445, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1642, 'SIN ZONA', 4450, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1643, 'SIN ZONA', 4455, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1644, 'SIN ZONA', 4460, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1645, 'SANTO DOMINGO DE ONZOLE', 4465, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1646, 'COLON DE ONZOLE', 4465, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1647, 'CHACHI CAPULÍ', 4465, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1648, 'CHACHI GUALPÍ DE ONZOLE', 4465, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1649, 'HOJAS BLANCAS', 4465, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1650, 'HOJAS BLANCAS CHACHI', 4465, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1651, 'SIN ZONA', 4475, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1652, 'SIN ZONA', 4480, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1653, 'SIN ZONA', 4485, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1654, 'SIN ZONA', 4490, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1655, 'SIN ZONA', 4495, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1656, 'SIN ZONA', 4500, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1657, 'SAN FRANCISCO DEL VERGEL', 4505, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1658, 'SAN JUAN DE PUNCHES', 4505, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1659, 'SAN MARTIN DE PORRES', 4505, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1660, 'SIMON BOLIVAR', 4510, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1661, 'CHAPINTZA', 4510, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1662, 'SHARUPI', 4510, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1663, 'SAN CARLOS', 4510, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1664, 'CHICO COPATAZA', 4510, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1665, 'COPATAZA', 4510, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1666, 'CHUWITAYU', 4510, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1667, 'ANKUASH', 4510, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1668, 'TSURAKU', 4510, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1669, 'SIN ZONA', 4515, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1670, 'SIN ZONA', 4520, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1671, 'TORATA', 4525, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1672, 'EL GUAYABO', 4525, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1673, 'SIN ZONA', 4530, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1674, 'SIN ZONA', 4535, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1675, 'SIN ZONA', 4540, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1676, 'MILAGROS', 4545, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1677, 'EL GUANDO', 4545, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1678, 'SIN ZONA', 4550, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1679, 'SIN ZONA', 4555, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1680, 'SIN ZONA', 4560, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1681, 'SIN ZONA', 4565, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1682, 'NUEVO PARAISO', 4570, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1683, 'YAWI', 4570, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1684, 'SELVA ALEGRE', 4570, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1685, 'PUMPUENTSA', 4575, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1686, 'WAZAKENTZA', 4575, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1687, 'MASHUMARENTZA', 4575, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1688, 'ACHUAR SAAPAPENTSA', 4575, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1689, 'SEBASTIAN', 4575, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1690, 'ACHUAR WICHIM', 4575, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1691, 'JUYUKAMENTSA', 4575, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1692, 'COMUNIDAD ACHUAR SETUCH', 4575, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1693, 'COMUNIDAD ACHUAR KUPIT', 4575, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1694, 'SAN JUAN DE MUYUNA', 4580, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1695, 'CALVARIO', 4580, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1696, 'WAYRAYAKU', 4580, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1697, 'SIN ZONA', 4585, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1698, 'SIN ZONA', 4590, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1699, 'SIN ZONA', 4595, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1700, 'SIN ZONA', 4600, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1701, 'SIN ZONA', 4605, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1702, 'SIN ZONA', 4610, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1703, 'SIN ZONA', 4615, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1704, 'SIN ZONA', 4620, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1705, '10 DE AGOSTO', 4625, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1706, 'SALINAS', 4625, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1707, 'SAN PEDRO (EL CONDOR)', 4625, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1708, 'RECINTO ORELLANA', 4625, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1709, '10 DE AGOSTO', 4630, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1710, 'WAMANÍ', 4630, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1711, 'WAWA SUMACO', 4630, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1712, 'PACTO SUMACO', 4630, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1713, 'CHALLWAYAKU', 4630, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1714, 'MONTERREY', 4635, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1715, 'SAN MIGUEL DE GUABAL', 4635, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1716, 'SIN ZONA', 4640, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1717, 'SIN ZONA', 4645, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1718, 'LA CUCA', 4650, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1719, 'LOS GUAYACANES', 4650, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1720, 'SIN ZONA', 4655, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1721, 'NUEVA TRONCAL', 4740, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1722, 'LOS ANGELES', 4740, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1723, 'LOS MADEROS', 4740, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1724, 'MUSHUK KAWSAY', 4740, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1725, 'KUYLLIS', 4740, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1726, 'SANSAHUARI', 4745, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1727, 'UNIÓN NACIONAL', 4745, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1728, 'SOSOTE', 4750, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1729, 'EL HIGUERON', 4750, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1730, 'SIN ZONA', 4755, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1731, 'LA MAGDALENA', 4760, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1732, '18 DE NOVIEMBRE', 4760, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1733, 'VOTO EN CASA', 4760, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1734, 'SIN ZONA', 4765, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1735, 'SIN ZONA', 5005, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1736, 'ALAUSI', 5010, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1737, 'NIZAG', 5010, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1738, 'CHIMBACALLE', 5015, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1739, 'ALPAHUASI', 5015, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1740, 'LA MEXICO', 5015, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1741, 'LOS ANDES', 5015, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1742, 'LULUNCOTO', 5015, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1743, 'PIO XII', 5015, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1744, 'SIN ZONA', 5020, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1745, 'SIN ZONA', 5025, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1746, 'ANDRES DE VERA', 5030, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1747, 'EL FLORON', 5030, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1748, 'SAN ALEJO', 5030, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1749, 'SAN GREGORIO', 5030, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1750, 'URUGUAY', 5030, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1751, 'VOTO EN CASA', 5030, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1752, 'ANGEL POLIVIO CHAVEZ', 5035, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1753, 'GUACHANA', 5035, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1754, 'SAN JUAN DE LLULLUNDONGO', 5035, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1755, 'VOTO EN CASA', 5035, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1756, 'SIN ZONA', 5040, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1757, 'ATOCHA FICOA', 5045, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1758, 'ATOCHA', 5045, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1759, 'SIN ZONA', 5050, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1760, 'SIN ZONA', 5055, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1761, 'AZOGUES', 5065, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1762, 'LA PLAYA', 5065, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1763, 'FERROVIARIA', 5065, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1764, 'CIUDADELA DEL CHOFER', 5065, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1765, 'UCHUPUCUN', 5065, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1766, 'CPL-CAÑAR NRO.2', 5065, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1767, 'VOTO EN CASA', 5065, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1768, 'ARCHIDONA', 5070, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1769, 'SANTA RITA', 5070, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1770, 'CPL NAPO N° 1', 5070, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1771, 'SIN ZONA', 5075, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1772, 'SIN ZONA', 5080, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1773, 'SIN ZONA', 5085, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1774, 'SIN ZONA', 5090, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1775, 'SIN ZONA', 5095, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1776, 'BALZAR', 5100, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1777, 'LA GUAYAQUIL', 5100, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1778, 'SIN ZONA', 5105, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1779, 'VOTO EN CASA', 5105, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1780, 'SIN ZONA', 5115, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1781, 'SIN ZONA', 5120, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1782, 'SIN ZONA', 5125, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1783, 'SIN ZONA', 5130, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1784, 'SIN ZONA', 5135, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1785, 'CAI CUENCA ', 5135, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1786, 'MACHÁNGARA', 5140, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1787, 'CAPULISPAMBA', 5140, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1788, 'CHALLUABAMBA MACHANGARA', 5140, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1789, 'OCHOA LEON', 5140, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1790, 'QUINTA CHICA', 5140, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1791, 'SIN ZONA', 5145, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1792, 'CALCETA', 5150, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1793, 'SAN PABLO DE SEVERINO', 5150, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1794, 'SIN ZONA', 5155, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1795, 'CAÑAR', 5160, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1796, 'QUILLOAC', 5160, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1797, 'NAR', 5160, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1798, 'CRS-CAÑAR N°1', 5160, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1799, 'SIN ZONA', 5165, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1800, 'SIN ZONA', 5170, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1801, 'SIN ZONA', 5175, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1802, 'SIN ZONA', 5180, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1803, 'SIN ZONA', 5185, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1804, 'SIN ZONA', 5190, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1805, 'SIN ZONA', 5195, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1806, 'SIN ZONA', 5200, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1807, 'SIN ZONA', 5205, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1808, 'CAI- ESMERALDAS ', 5205, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1809, 'VOTO EN CASA', 5205, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1810, '5 DE AGOSTO', 5210, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1811, 'PROPICIA 1', 5210, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1812, 'PROPICIA 4', 5210, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1813, 'VOTO EN CASA', 5210, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1814, 'CLEMENTE BAQUERIZO', 5215, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1815, 'PUERTA NEGRA', 5215, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1816, 'VOTO EN CASA', 5215, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1817, 'COTOCOLLAO', 5220, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1818, '23 DE JUNIO', 5220, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1819, 'JARRIN - LOMA HERMOSA', 5220, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1820, 'QUITO NORTE', 5220, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1821, 'THOMAS', 5220, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1822, 'CRS MASCULINO PICHINCHA Nº 2', 5220, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1823, 'VOTO EN CASA', 5220, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1824, 'SIN ZONA', 5225, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1825, 'SIN ZONA', 5230, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1826, 'SIN ZONA', 5240, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1827, 'CHILLANES', 5245, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1828, 'ACHIN', 5245, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1829, 'PALMIRA', 5245, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1830, 'SAN VICENTE DE POROTOPAMBA', 5245, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1831, 'SAN JOSÉ DE GUAYABAL', 5245, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1832, 'ARRAYANPAMBA', 5245, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1833, 'SANTA ROSA DE CERRITOS', 5245, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1834, 'UNDUSHI', 5245, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1835, 'SIN ZONA', 5250, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1836, 'VOTO EN CASA', 5250, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1837, 'SIN ZONA', 5255, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1838, 'CHILLOGALLO', 5260, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1839, 'BUENA VENTURA', 5260, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1840, 'EL TRANSITO', 5260, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1841, 'SAN LUIS', 5260, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1842, 'SANTA MARTHA', 5260, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1843, 'VENCEREMOS', 5260, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1844, 'VOTO EN CASA', 5260, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1845, 'COLON', 5265, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1846, 'PACHINCHE EN MEDIO', 5265, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1847, 'LOS ÁNGELES', 5265, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1848, 'VOTO EN CASA', 5265, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1849, 'CATAMAYO', 5270, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1850, 'CHICHACA', 5270, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1851, 'SIN ZONA', 5275, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1852, '12 DE MARZO', 5280, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1853, 'FORESTAL', 5280, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1854, 'VOTO EN CASA', 5280, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1855, 'DR. CAMILO PONCE E.', 5285, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1856, 'SAN JOSÉ', 5285, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1857, 'SIN ZONA', 5290, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1858, 'EL ANGEL', 5295, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1859, 'INGUEZA', 5295, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1860, 'EL CARMEN', 5300, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1861, 'LA BRAMADORA', 5300, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1862, 'EL PORVENIR', 5300, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1863, 'ALEJANDRINO VELÁSQUEZ', 5300, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1864, 'SAN PABLO RIO DE ORO', 5300, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1865, 'FLOR DE MANABI', 5300, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1866, 'BOCA DE ONZA', 5300, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1867, 'SAN RAMON DE TIGRILLO', 5300, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1868, 'EL CORAZON', 5305, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1869, 'QUISHPE', 5305, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1870, 'SIN ZONA', 5310, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1871, 'EL ROSARIO', 5315, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1872, 'LANGOS PANAMERICANA', 5315, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1873, 'VOTO EN CASA', 5315, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1874, 'SIN ZONA', 5320, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1875, 'EL VECINO', 5330, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1876, 'MIRAFLORES', 5330, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1877, 'LA CATÓLICA', 5330, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1878, 'VOTO EN CASA', 5330, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1879, 'ESMERALDAS', 5335, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1880, 'ISLA LUIS VARGAS TORRES', 5335, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1881, 'CPL ESMERALDAS N° 1', 5335, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1882, 'VOTO EN CASA', 5335, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1883, 'EL GUABO', 5340, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1884, 'TILLALES', 5340, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1885, 'EL RETIRO', 5340, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1886, 'SIN ZONA', 5345, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1887, 'ECHEANDIA', 5350, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1888, 'SABANETILLAS', 5350, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1889, 'FEBRES CORDERO', 5355, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1890, 'PATRIA ECUATORIANA', 5355, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1891, 'BARRIO PUERTO LISA', 5355, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1892, 'BATALLÓN DEL SUBURBIO', 5355, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1893, 'HOSPITAL GUAYAQUIL', 5355, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1894, 'LA Q', 5355, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1895, 'CUARTEL CUATRO', 5355, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1896, 'DIOS PATRIA Y LIBERTAD', 5355, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1897, 'ESTERO SALADO', 5355, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1898, 'COLEGIO GARCIA GOYENA', 5355, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1899, 'LA COLMENA', 5355, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1900, 'CISNE 2 - LA PISTA', 5355, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1901, 'PUENTE PATRIA', 5355, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1902, 'VIRGEN DE FATIMA', 5355, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1903, 'VOTO EN CASA', 5355, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1904, 'SIN ZONA', 5360, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1905, 'VOTO EN CASA', 5360, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1906, 'COLIMES', 5365, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1907, 'EL RELICARIO', 5365, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1908, 'YANUNCAY', 5370, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1909, 'MISICATA', 5370, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1910, 'CDLA SIMON BOLIVAR', 5370, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1911, 'GABRIEL I VEINTIMILLA', 5375, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1912, 'INTI CHURI - CASAICHE', 5375, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1913, 'CPL BOLIVAR N° 1', 5375, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1914, 'VOTO EN CASA', 5375, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1915, 'GARCIA MORENO', 5380, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1916, 'GUAYAQUIL', 5380, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1917, 'CAI - VARONES GUAYAQUIL', 5380, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1918, 'SIN ZONA', 5385, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1919, 'SIN ZONA', 5390, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1920, 'SIN ZONA', 5395, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1921, 'SIN ZONA', 5400, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1922, 'SIN ZONA', 5405, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1923, 'GONZALEZ SUAREZ', 5415, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1924, 'CHAPUEL', 5415, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1925, 'EL BOSQUE', 5415, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1926, 'CPL CARCHI N°1', 5415, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1927, 'VOTO EN CASA', 5415, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1928, 'GUALACEO', 5420, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1929, 'BULLCAY', 5420, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1930, 'VOTO EN CASA', 5420, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1931, 'GUALAQUIZA', 5425, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1932, 'TUCUMBAZA', 5425, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1933, 'PROVEEDURIA', 5425, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1934, 'GUAMOTE', 5430, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1935, 'PULL CHICO', 5430, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1936, 'JATUN PAMBA', 5430, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1937, 'LAIME SAN CARLOS', 5430, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1938, 'TIOCAJAS PALACIO HUATANA', 5430, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1939, 'SIN ZONA', 5440, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1940, 'SIN ZONA', 5445, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1941, 'CPL  TUNGURAHUA N° 1', 5445, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1942, 'VOTO EN CASA 1', 5445, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1943, 'SIN ZONA', 5450, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1944, 'SIN ZONA', 5455, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1945, 'IGNACIO FLORES', 5465, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1946, 'PALOPO CENTRO', 5465, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1947, 'BALAO', 5470, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1948, 'CIEN FAMILIAS', 5470, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1949, 'CHAMBO', 5475, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1950, 'PANTAÑO', 5475, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1951, 'GUAYLLABAMBA', 5475, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1952, 'FLAVIO ALFARO', 5480, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1953, 'LA CRESPA', 5480, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1954, 'SAN JOSE DE TRIPA DE POLLO', 5480, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1955, 'LA CODICIA', 5480, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1956, 'LA LAGUNA DE CUCHARA', 5480, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1957, 'EL DESCANSO DE LOS ROMEROS', 5480, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1958, 'LA MATUTINA', 5480, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1959, 'LA AVISPA', 5480, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1960, 'JIPIJAPA', 5485, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1961, 'SANCAN', 5485, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1962, 'CRS MASCULINO MANABÍ N°2', 5485, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1963, 'JORDAN', 5490, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1964, 'LA COMPANIA', 5490, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1965, 'VOTO EN CASA', 5490, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1966, 'SIN ZONA', 5500, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1967, 'JUNIN', 5505, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1968, 'MONTAÑITA', 5505, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1969, 'SIN ZONA', 5510, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1970, 'SIN ZONA', 5515, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1971, 'SIN ZONA', 5520, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1972, 'SIN ZONA', 5525, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1973, 'LA LIBERTAD', 5535, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1974, 'LA CANTERA', 5535, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1975, 'LA ERMITA', 5535, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1976, 'LOS LIBERTADORES', 5535, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1977, 'LA MAGDALENA', 5540, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1978, 'EL PINTADO', 5540, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1979, 'LA ATAHUALPA', 5540, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1980, 'LOS DOS PUENTES', 5540, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1981, 'PRIMERO DE MAYO', 5540, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1982, 'VILLAFLORA', 5540, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1983, 'LA MATRIZ', 5545, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1984, 'MIRAFLORES', 5545, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1985, 'LA MATRIZ', 5550, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1986, 'PUNGAL GRANDE', 5550, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1987, 'SIN ZONA', 5555, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1988, 'VOTO EN CASA', 5555, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1989, 'SIN ZONA', 5560, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1990, 'LA PROVIDENCIA', 5565, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1991, 'RAYITO DE LUZ', 5565, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1992, 'LA IBERIA', 5565, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1993, 'LOS VERGELES', 5565, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1994, 'VOTO EN CASA', 5565, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1995, 'ESTEROS', 5570, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1996, 'EL PALMAR', 5570, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1997, 'ALTAGRACIA', 5570, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1998, 'LA PRADERA', 5570, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (1999, 'VOTO EN CASA', 5570, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2000, 'LEONIDAS PLAZA G.', 5580, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2001, 'SAN AGUSTÍN', 5580, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2002, 'CRS MASCULINO MANABI Nº 3', 5580, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2003, 'LETAMENDI', 5585, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2004, '4 DE NOVIEMBRE', 5585, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2005, 'VIRGEN DEL SOTO', 5585, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2006, 'SIN ZONA', 5590, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2007, 'VOTO EN CASA', 5590, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2008, 'LOURDES', 5595, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2009, 'LAS COCHAS', 5595, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2010, 'SAN VICENTE DEL RIO', 5595, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2011, 'SIN ZONA', 5600, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2012, 'SIN ZONA', 5605, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2013, 'LA TRONCAL', 5610, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2014, 'VOLUNTAD DE DIOS', 5610, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2015, 'COCHANCAY', 5610, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2016, 'ROBERTO ISAIAS', 5610, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2017, 'JAIME ROLDOS', 5610, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2018, 'JULIO MARIA MATOVELLE', 5610, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2019, 'SIN ZONA', 5615, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2020, 'CPL MORONA SANTIAGO Nº 1', 5615, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2021, 'VOTO EN CASA', 5615, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2022, 'SIN ZONA', 5620, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2023, 'SIN ZONA', 5625, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2024, 'CPL EL ORO No.1', 5625, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2025, 'VOTO EN CASA', 5625, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2026, 'SIN ZONA', 5630, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2027, 'MANTA - PEDRO FERMIN', 5635, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2028, 'SANTA MARTHA', 5635, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2029, 'UNIVERSIDAD', 5635, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2030, 'VOTO EN CASA', 5635, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2031, 'MONTALVO /SABANETA', 5640, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2032, 'LA PRETORIA', 5640, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2033, 'VOTO EN CASA', 5640, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2034, 'SIN ZONA', 5645, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2035, 'SIN ZONA', 5650, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2036, 'SIN ZONA', 5655, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2037, 'MILAGRO', 5660, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2038, 'CRNL. ENRIQUE VALDEZ', 5660, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2039, 'ESTATAL', 5660, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2040, 'ERNESTO SEMINARIO', 5660, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2041, 'OTTO AROSEMENA', 5660, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2042, 'CHIRIJOS', 5660, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2043, 'CAMILO ANDRADE', 5660, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2044, 'MILAGRO NORTE', 5660, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2045, 'DIEZ DE AGOSTO', 5660, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2046, 'VOTO EN CASA 1', 5660, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2047, 'MONTECRISTI', 5665, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2048, 'LOS BAJOS DE PECHICHE', 5665, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2049, 'BAJO DE LA PALMA', 5665, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2050, 'PILE', 5665, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2051, 'VOTO EN CASA', 5665, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2052, 'MUISNE', 5670, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2053, 'NUEVO MUISNE', 5670, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2054, 'SAN PEDRO DE BILSA', 5670, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2055, 'SIN ZONA', 5675, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2056, 'MACARA', 5680, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2057, 'ALGODONAL', 5680, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2058, 'MIRA', 5685, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2059, 'MASCARILLA', 5685, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2060, 'HATO DE MIRA', 5685, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2061, 'PUCARA', 5690, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2062, 'SARAYUNGA', 5690, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2063, 'GRAMALOTE', 5690, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2064, 'CERRO NEGRO', 5690, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2065, 'PELINCAY', 5690, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2066, 'CALIGUIÑA', 5690, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2067, 'LA DOLOROSA', 5690, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2068, 'LAS PALMAS', 5690, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2069, 'SANTA CECILIA', 5690, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2070, 'SAN ANTONIO DE ÑUGRO', 5690, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2071, 'SIN ZONA', 5695, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2072, 'SIN ZONA', 5700, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2073, 'NARANJITO', 5705, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2074, 'SAN FRANCISCO', 5705, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2075, 'NUEVA LOJA', 5710, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2076, 'PUERTO AGUARICO', 5710, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2077, 'LA PISTA', 5710, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2078, 'CPL SUCUMBiOS Nº 1', 5710, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2079, 'VOTO EN CASA', 5710, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2080, 'CHILLA', 5715, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2081, 'PLAYAS DE DAUCAY', 5715, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2082, 'PEJEYACU', 5715, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2083, 'DUMARI', 5715, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2084, 'CARABOTA', 5715, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2085, 'SIN ZONA', 5720, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2086, 'SIN ZONA', 5725, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2087, 'ABRAHAM CALAZACON', 5730, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2088, '15 DE SEPTIEMBRE', 5730, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2089, 'LAS PLAYAS', 5730, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2090, 'LOS COLONOS', 5730, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2091, 'LUZ DEL DIA', 5730, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2092, 'NUEVA AURORA', 5730, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2093, 'PLAN DE VIVIENDA', 5730, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2094, 'PROLETARIADO', 5730, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2095, 'VILLA FLORIDA', 5730, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2096, 'SAN MIGUEL', 5730, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2097, 'VOTO EN CASA', 5730, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2098, 'PEDRO CARBO', 5735, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2099, 'VILLAO', 5735, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2100, 'SIN ZONA', 5740, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2101, 'SIN ZONA', 5745, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2102, 'PIMAMPIRO', 5750, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2103, 'CHALGUAYACO', 5750, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2104, 'PUEBLO NUEVO DE YUQUIN', 5750, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2105, 'EL INCA', 5750, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2106, 'SIN ZONA', 5755, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2107, 'SIN ZONA', 5760, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2108, 'SIN ZONA', 5765, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2109, 'SIN ZONA', 5770, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2110, 'PAUTE', 5775, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2111, 'VILLAFLOR', 5775, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2112, 'ZHUMIR', 5775, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2113, 'SIN ZONA', 5780, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2114, 'VOTO EN CASA', 5780, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2115, 'SIN ZONA', 5785, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2116, 'SIN ZONA', 5790, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2117, 'PORTOVIEJO - PARQUE CENTRAL', 5795, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2118, 'RAFAEL MARIA MENDOZA', 5795, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2119, 'SIN ZONA', 5800, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2120, 'VOTO EN CASA', 5800, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2121, 'SIN ZONA', 5805, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2122, 'VOTO EN CASA', 5805, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2123, 'SIN ZONA', 5810, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2124, 'EL COCA', 5815, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2125, 'SAN JOSE DEL COCA', 5815, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2126, 'FLOR DE ORIENTE', 5815, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2127, 'FLOR DE PANTANO', 5815, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2128, 'AMAZONAS', 5815, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2129, 'JORGE RODRIGUEZ ROMAN', 5815, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2130, 'VOTO EN CASA', 5815, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2131, 'PUJILI', 5820, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2132, 'JUIGUA YACYBAMBA', 5820, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2133, 'SIN ZONA', 5825, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2134, 'VOTO EN CASA', 5825, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2135, 'SIN ZONA', 5830, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2136, 'VOTO EN CASA', 5830, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2137, 'SIN ZONA', 5835, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2138, 'PISHILATA', 5840, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2139, 'SAN VICENTE', 5840, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2140, 'LA JOYA', 5840, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2141, 'TECHO PROPIO - TIUGUA', 5840, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2142, 'PICOAZA', 5845, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2143, 'MEJIA', 5845, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2144, 'HIGUERON ADENTRO', 5845, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2145, 'VOTO EN CASA', 5845, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2146, 'SIN ZONA', 5850, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2147, 'QUEVEDO', 5855, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2148, 'QUEVEDO NORTE', 5855, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2149, 'VOTO EN CASA', 5855, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2150, 'BOMBOLI', 5860, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2151, 'LAS DELICIAS', 5860, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2152, 'NUEVO ISRAEL', 5860, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2153, 'AVISPA CHILA', 5860, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2154, 'LIBERTAD LOJANA', 5860, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2155, 'EL PORTÓN', 5860, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2156, 'ACACIAS', 5860, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2157, 'CHE GUEVARA', 5860, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2158, 'CIUDAD NUEVA', 5860, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2159, 'ECHANIQUE', 5860, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2160, 'JUAN EULOGIO', 5860, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2161, 'LOS ROSALES', 5860, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2162, 'TERMINAL TERRESTRE', 5860, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2163, 'UCOM', 5860, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2164, 'COLORADOS DEL BUA', 5860, 15);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2165, 'SAN PABLO DE CHILA', 5860, 16);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2166, 'VOTO EN CASA', 5860, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2167, 'RIO VERDE', 5865, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2168, 'JULIO MORENO ESPINOZA', 5865, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2169, 'CRISTO VIVE', 5865, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2170, 'LA PEPSI', 5865, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2171, 'LA QUEVEDO', 5865, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2172, 'SANTA MARTHA -2-', 5865, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2173, 'SANTA MARTHA -1-', 5865, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2174, '20 DE OCTUBRE', 5865, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2175, 'AQUEPÍ', 5865, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2176, 'LA CADENA', 5865, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2177, 'LAS PALMERAS', 5865, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2178, 'CPL SANTO DOMINGO Nº 1', 5865, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2179, 'CPL SANTO DOMINGO Nº 2', 5865, 62);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2180, 'VOTO EN CASA', 5865, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2181, 'RIO TOACHI', 5870, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2182, 'EL PLACER DEL TOACHI', 5870, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2183, 'LAS MERCEDES', 5870, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2184, 'EL PARAISO', 5870, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2185, 'BRASILIA DEL TOACHI', 5870, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2186, 'VELASCO IBARRA', 5870, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2187, 'LIBERTAD DEL TOACHI', 5870, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2188, '10 DE AGOSTO', 5870, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2189, 'LA ALIANZA', 5870, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2190, 'SIN ZONA', 5875, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2191, 'SIN ZONA', 5880, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2192, 'ROCAFUERTE', 5885, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2193, 'EL RESBALÓN', 5885, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2194, 'SAN ELOY', 5885, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2195, 'SIN ZONA', 5890, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2196, 'ROSA ZARATE', 5895, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2197, 'LA SEXTA', 5895, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2198, 'SAN RAMON', 5895, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2199, 'LA Y DE LA LAGUNA DE HERRERA', 5895, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2200, 'HERRERA', 5895, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2201, 'CUPA', 5895, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2202, 'NUEVO QUININDÉ', 5895, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2203, 'PUEBLO NUEVO', 5895, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2204, 'SIN ZONA', 5900, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2205, 'SIN ZONA', 5905, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2206, 'SIN ZONA', 5910, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2207, 'SIN ZONA', 5915, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2208, 'CPL IMBABURA Nº 1', 5915, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2209, 'CAI IBARRA', 5915, 62);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2210, 'VOTO EN CASA', 5915, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2211, 'SIN ZONA', 5920, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2212, 'VOTO EN CASA', 5920, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2213, 'SAMBORONDON', 5925, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2214, 'EL ROSARIO', 5925, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2215, 'SIN ZONA', 5930, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2216, 'SIN ZONA', 5940, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2217, 'SIN ZONA', 5945, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2218, 'SIN ZONA', 5950, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2219, 'SIN ZONA', 5955, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2220, 'VOTO EN CASA', 5955, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2221, 'SAN FRANCISCO', 5960, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2222, 'MANZANO GUARANGUI', 5960, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2223, 'VOTO EN CASA', 5960, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2224, 'SIN ZONA', 5965, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2225, 'SAN JOSE', 5970, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2226, 'EL CAPULÍ', 5970, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2227, 'CANCHAGUANO', 5970, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2228, 'SIN ZONA', 5975, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2229, 'SIN ZONA', 5980, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2230, 'SIN ZONA', 5990, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2231, 'SAN MIGUEL', 5995, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2232, 'QUISACOTO', 5995, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2233, 'VOTO EN CASA', 5995, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2234, 'SAN MIGUEL DE SALCEDO', 6000, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2235, 'CHAMBAPONGO', 6000, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2236, 'SAN FRANCISCO DE COLLANAS', 6000, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2237, 'SALACHE BARBAPAMBA', 6000, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2238, 'SAN SEBASTIAN', 6010, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2239, 'SAN PEDRO DEL CEBOLLAR', 6010, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2240, 'SIN ZONA', 6015, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2241, 'CPL LOJA N°1', 6015, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2242, 'VOTO EN CASA', 6015, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2243, 'SIN ZONA', 6025, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2244, 'SANTA ANA', 6030, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2245, 'PEMINCHE', 6030, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2246, 'CHAMUCAME', 6030, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2247, 'VISQUIJE', 6030, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2248, 'SANTA ELENA', 6040, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2249, 'SAN PABLO', 6040, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2250, 'OTTO AROSEMENA', 6040, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2251, 'AZUCAR', 6040, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2252, 'SAN VICENTE', 6040, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2253, 'BAÑOS DE SAN VICENTE', 6040, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2254, 'VOTO EN CASA', 6040, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2255, 'SANTA ISABEL', 6045, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2256, 'JUBONES', 6045, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2257, 'VOTO EN CASA', 6045, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2258, 'SANTA RITA', 6055, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2259, 'PUEBLITO (RIO GRANDE)', 6055, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2260, 'PUERTO EL MATE', 6055, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2261, 'ÑAUSE', 6055, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2262, 'QUEBRADA DEL BEJUCO', 6055, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2263, 'CARRASCO', 6055, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2264, 'TABLADA DE SÁNCHEZ', 6055, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2265, 'EL CEIBO', 6055, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2266, 'SAN PEDRO DE LIMÓN', 6055, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2267, 'SAN PEDRO DE ORO', 6055, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2268, 'PLATANALES', 6055, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2269, 'SIN ZONA', 6060, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2270, 'SANTO DOMINGO', 6065, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2271, 'CLEMENCIA DE MORA', 6065, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2272, '30 DE JULIO -1-', 6065, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2273, 'VOTO EN CASA', 6065, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2274, 'SIN ZONA', 6070, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2275, 'SIN ZONA', 6075, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2276, 'SIN ZONA', 6080, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2277, 'SIGSIG', 6085, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2278, 'PIRUNCAY', 6085, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2279, 'SIN ZONA', 6090, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2280, 'SIN ZONA', 6095, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2281, 'MIRAFLORES', 6100, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2282, 'CELI ROMÁN', 6100, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2283, 'CLODOVEO', 6100, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2284, 'BELÉN', 6100, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2285, 'MENFIS-OBRAPIA', 6100, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2286, 'BOLONIA', 6100, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2287, 'GRAN COLOMBIA', 6100, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2288, 'TIERRAS COLORADAS', 6100, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2289, 'SIN ZONA', 6105, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2290, 'SUCUA', 6110, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2291, 'SAN PABLO', 6110, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2292, 'SAIP', 6110, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2293, 'VOTO EN CASA', 6110, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2294, 'SIN ZONA', 6115, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2295, 'VOTO EN CASA', 6115, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2296, 'SIN ZONA', 6120, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2297, 'PUERTO QUITO', 6125, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2298, 'SIMON BOLIVAR', 6125, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2299, 'LA ABUNDANCIA', 6125, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2300, 'SANTA MARIANITA', 6125, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2301, 'LAS MARAVILLAS', 6125, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2302, 'BUENOS AIRES', 6125, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2303, 'SIN ZONA', 6130, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2304, 'SIN ZONA', 6135, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2305, 'SHUSHUFINDI CENTRAL', 6140, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2306, 'MISS ECUADOR', 6140, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2307, 'CUMANDA', 6140, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2308, 'PROVINCIAS UNIDAS', 6140, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2309, 'SIN ZONA', 6145, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2310, 'TARQUI', 6150, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2311, 'ACUARELA - SAUCES', 6150, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2312, 'ALBORADA', 6150, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2313, 'ATARAZANA', 6150, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2314, 'CHONGON', 6150, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2315, 'LOS CEIBOS', 6150, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2316, 'COLINAS DE LA FLORIDA', 6150, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2317, 'MARTHA ROLDOS', 6150, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2318, 'EL CONDOR', 6150, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2319, 'JUAN MONTALVO', 6150, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2320, 'LA PROSPERINA', 6150, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2321, 'URDESA', 6150, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2322, 'QUINTO GUAYAS', 6150, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2323, 'SAN EDUARDO', 6150, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2324, 'URDENOR', 6150, 15);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2325, 'NUEVA PROSPERINA', 6150, 16);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2326, 'VÍA A LA COSTA', 6150, 17);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2327, 'SABANA GRANDE', 6150, 18);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2328, 'CONSUELO', 6150, 19);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2329, 'MAPASINGUE ESTE', 6150, 20);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2330, 'LOMAS DE LA FLORIDA', 6150, 21);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2331, 'SAUCES OESTE', 6150, 22);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2332, 'SAMANES', 6150, 23);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2333, 'ALBORADA OESTE', 6150, 24);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2334, 'ALBORADA ESTE', 6150, 25);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2335, 'GUAYACANES', 6150, 26);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2336, 'KENNEDY', 6150, 27);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2337, 'MIRAFLORES', 6150, 28);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2338, 'BELAVISTA-FERROVIARIA', 6150, 29);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2339, 'GARZOTA', 6150, 30);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2340, 'SOCIO VIVIENDA', 6150, 31);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2341, 'LA FLORIDA', 6150, 32);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2342, 'MAPASINGUE OESTE', 6150, 33);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2343, 'CAI FEMENINO GUAYAQUIL ', 6150, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2344, 'VOTO EN CASA', 6150, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2345, 'CENTRO DE TARQUI', 6155, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2346, 'SAN PEDRO', 6155, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2347, 'JOCAY', 6155, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2348, 'MARIA AUXILIADORA NRO 2', 6155, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2349, 'VOTO EN CASA', 6155, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2350, 'SIN ZONA', 6160, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2351, 'VOTO EN CASA', 6160, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2352, 'TULCAN', 6165, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2353, 'LA ESTRELLITA', 6165, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2354, 'LAS GRADAS', 6165, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2355, 'VOTO EN CASA', 6165, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2356, 'TOSAGUA', 6170, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2357, 'EL TAMBO', 6170, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2358, 'EL JUNCO', 6170, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2359, 'CERRO VERDE', 6170, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2360, 'BOTIJAS AFUERA', 6170, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2361, 'CHIGUILPE', 6175, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2362, 'SAN GABRIEL DEL BABA', 6175, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2363, 'JULIO MORENO - SAN VICENTE DE AQUEPI', 6175, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2364, 'NUEVO CAMINO', 6175, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2365, 'UNIFICADOS', 6175, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2366, 'MARINA PEÑAHERRERA', 6175, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2367, 'NUEVO SANTO DOMINGO', 6175, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2368, 'ZARACAY', 6180, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2369, '9 DE DICIEMBRE', 6180, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2370, 'SIN ZONA', 6185, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2371, 'SIN ZONA', 6190, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2372, 'SIN ZONA', 6195, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2373, 'JOYA DE LOS SACHAS', 6200, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2374, 'MARISCAL SUCRE', 6200, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2375, '12 DE FEBRERO', 6200, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2376, 'EL ORO', 6200, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2377, 'VALDEZ/LIMONES/', 6205, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2378, 'TOLITA PAMPA DE ORO', 6205, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2379, 'SIN ZONA', 6210, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2380, 'VOTO EN CASA', 6210, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2381, 'SIN ZONA', 6215, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2382, 'SIN ZONA', 6220, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2383, 'VOTO EN CASA', 6220, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2384, 'VELASCO IBARRA', 6225, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2385, 'ATILIO VÉLEZ', 6225, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2386, '29 DE OCTUBRE', 6225, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2387, 'SIN ZONA', 6230, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2388, 'CPL CHIMBORAZO Nº 1', 6230, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2389, 'CPL CHIMBORAZO N°3', 6230, 62);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2390, 'CAI MASCULINO - RIOBAMBA', 6230, 63);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2391, 'VENTANAS', 6235, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2392, 'LAS MALVINAS', 6235, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2393, 'MIRAFLORES', 6235, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2394, 'RINCÓN DEL CURA', 6235, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2395, 'VOTO EN CASA', 6235, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2396, 'VINCES', 6245, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2397, 'BALZAR DE VINCES', 6245, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2398, 'LA MECHA', 6245, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2399, 'MACUL', 6245, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2400, 'SIN ZONA', 6250, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2401, 'PLAYAS', 6255, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2402, 'SAN ANTONIO', 6255, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2403, 'DATA DE VILLAMIL', 6255, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2404, 'ENGABAO', 6255, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2405, 'PLAYAS NORTE', 6255, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2406, 'SIN ZONA', 6260, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2407, 'XIMENA', 6265, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2408, 'ESTEROS', 6265, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2409, 'ACACIAS-GUANGALA', 6265, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2410, 'FERTISA', 6265, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2411, 'HUANCAVILCA - COVIEM', 6265, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2412, 'ISLA TRINITARIA', 6265, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2413, 'PRADERA', 6265, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2414, 'LOS ALMENDROS - SAIBA', 6265, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2415, 'GUASMO SUR-LA PLAYITA', 6265, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2416, 'GUASMO NORTE', 6265, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2417, 'FLORESTA', 6265, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2418, 'MATERNIDAD DEL GUASMO', 6265, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2419, 'CENTENARIO', 6265, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2420, 'VALDIVIA - LAS TEJAS', 6265, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2421, 'JAIME ROLDÓS – LOS CLAVELES', 6265, 15);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2422, 'MALVINAS', 6265, 16);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2423, 'UNIÓN DE BANANEROS', 6265, 17);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2424, 'LAS ESCLUSAS – STELLA MARIS', 6265, 18);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2425, 'TRINIPUERTO', 6265, 19);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2426, 'VOTO EN CASA', 6265, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2427, 'SIN ZONA', 6270, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2428, 'SIN ZONA', 6275, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2429, 'SIN ZONA', 6280, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2430, 'YAGUACHI NUEVO', 6285, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2431, 'CENTENARIO', 6285, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2432, 'SIN ZONA', 6290, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2433, 'YANZATZA', 6295, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2434, 'SAN SEBASTIAN', 6295, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2435, 'NUEVA ESPERANZA', 6295, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2436, 'VOTO EN CASA', 6295, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2437, 'SIN ZONA', 6300, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2438, 'SIN ZONA', 6305, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2439, 'VOTO EN CASA', 6305, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2440, 'SIN ZONA', 6310, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2441, 'CPL EL ORO Nº 2', 6310, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2442, 'ZUMBA', 6315, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2443, 'EL PROGRESO', 6315, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2444, 'BELLAVISTA', 6315, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2445, 'LA DIVERSION', 6315, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2446, 'LA GUAYUSA', 6315, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2447, 'GUARIMIZAL', 6315, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2448, 'LA PALMA', 6315, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2449, 'VOTO EN CASA', 6315, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2450, 'SIN ZONA', 6320, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2451, 'EL DORADO DE CASCALES', 6325, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2452, 'BERMEJO', 6325, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2453, 'TARUKA', 6325, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2454, 'PALENQUE', 6330, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2455, 'LA LIBERTAD', 6330, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2456, 'JAUNECHE', 6330, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2457, 'SIN ZONA', 6335, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2458, 'CALUMA /SAN ANTONIO', 6340, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2459, 'PASAGUA', 6340, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2460, 'YATUVI', 6340, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2461, 'SAN PABLO DE PITA', 6340, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2462, 'EL TAMBO', 6345, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2463, 'MARIA AUXILIADORA', 6345, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2464, 'PILCOPATA', 6345, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2465, 'S.MIGUEL DE LOS BANCOS', 6350, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2466, 'GANADEROS ORENSES', 6350, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2467, 'SAN BERNABE', 6350, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2468, 'RÍO BLANCO', 6350, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2469, 'EL PANGUI', 6355, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2470, 'KUNKI', 6355, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2471, 'UWENTS', 6355, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2472, 'OÑA', 6360, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2473, 'MORAS LOMA', 6360, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2474, 'SIN ZONA', 6365, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2475, 'SIN ZONA', 6370, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2476, 'SIN ZONA', 6375, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2477, 'ATACAMES', 6380, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2478, 'ESTERO DEL MEDIO', 6380, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2479, 'CHONE', 6380, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2480, 'VOTO EN CASA', 6380, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2481, 'SIN ZONA', 6385, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2482, 'HUAMBOYA', 6390, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2483, 'NAMAKIM', 6390, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2484, 'SHUAR PANKINTS', 6390, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2485, 'SANTA CLARA', 6395, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2486, 'SAN FRANCISCO DE PUNIN', 6395, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2487, 'PASCUALES', 6405, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2488, 'BASTIÓN POPULAR', 6405, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2489, 'EL PARAISO DE LA FLOR', 6405, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2490, 'LAS ORQUIDEAS - MUCHO LOTE', 6405, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2491, 'LOS VERGELES', 6405, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2492, 'MONTEBELLO', 6405, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2493, 'FLOR DE BASTIÓN', 6405, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2494, 'METROPOLIS', 6405, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2495, 'PUENTE LUCIA', 6405, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2496, 'SERGIO TORAL', 6405, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2497, 'MONTE SINAI', 6405, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2498, 'BALERIO ESTACIO', 6405, 12);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2499, 'SAN FRANCISCO', 6405, 13);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2500, 'CAPEIRA', 6405, 14);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2501, 'CIUDAD VICTORIA', 6405, 15);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2502, 'EL FORTÍN', 6405, 16);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2503, 'CPL GUAYAS Nº 1-PABELLON-1', 6405, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2504, 'CPL GUAYAS Nº 1-PABELLON-3', 6405, 63);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2505, 'CPL GUAYAS Nº 1-PABELLON-4', 6405, 64);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2506, 'CPL GUAYAS Nº 1-PABELLON-5', 6405, 65);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2507, 'CPL GUAYAS Nº 1-PABELLON-8', 6405, 66);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2508, 'CPL GUAYAS Nº 1-PABELLON-9', 6405, 67);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2509, 'CPL GUAYAS Nº 1-PABELLON-11', 6405, 69);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2510, 'CPL GUAYAS Nº 1-PABELLON-12', 6405, 70);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2511, 'CPL GUAYAS Nº 5', 6405, 71);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2512, 'CRS MASCULINO GUAYAS Nº 4', 6405, 73);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2513, 'CPL GUAYAS Nº 2', 6405, 74);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2514, 'CPL GUAYAS Nº 1-PABELLON-6', 6405, 77);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2515, 'CPL GUAYAS Nº 1-PABELLON-7', 6405, 78);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2516, 'VOTO EN CASA 1', 6405, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2517, 'VOTO EN CASA 2', 6405, 90);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2518, 'CRNL MARCELINO MARIDUENAS', 6410, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2519, 'LA ISLA', 6410, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2520, 'PEDRO VICENTE MALDONADO', 6415, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2521, 'LA CELICA', 6415, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2522, 'ANDOAS', 6415, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2523, 'SALCEDO LINDO', 6415, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2524, 'CUMANDA', 6420, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2525, 'SUNCAMAL', 6420, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2526, 'DELEG', 6425, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2527, 'BAYANDEL', 6425, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2528, 'HORNAPALA', 6425, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2529, 'PEDERNALES', 6430, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2530, 'SERRANO', 6430, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2531, 'CAÑAVERAL DEL NARANJO', 6430, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2532, 'PUNTA BLANCA', 6430, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2533, 'ESTERO SECO', 6430, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2534, 'SIN ZONA', 6435, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2535, 'SIN ZONA', 6440, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2536, 'SAN JUAN BOSCO', 6445, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2537, 'CALAGLAS', 6445, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2538, 'SIN ZONA', 6450, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2539, 'LORETO', 6455, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2540, 'ALTAMIRA', 6455, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2541, 'NARCISA DE JESUS', 6460, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2542, 'PETRILLO', 6460, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2543, 'SN JACINTO DE BUENA FE', 6465, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2544, 'FUMISA', 6465, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2545, 'LAS NAVES', 6470, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2546, 'JERUSALEN', 6470, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2547, 'SIN ZONA', 6475, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2548, 'SEVILLA DE ORO', 6480, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2549, 'CAIGUAS', 6480, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2550, 'CHIMUL', 6480, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2551, 'SIN ZONA', 6485, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2552, '9 DE MAYO', 6490, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2553, 'KM. 15', 6490, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2554, 'VOTO EN CASA', 6490, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2555, 'OLMEDO', 6495, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2556, 'LA FLORIDA', 6495, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2557, 'SIN ZONA', 6500, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2558, 'SIN ZONA', 6505, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2559, 'VOTO EN CASA', 6505, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2560, 'SIN ZONA', 6510, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2561, 'VOTO EN CASA', 6510, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2562, 'SIN ZONA', 6515, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2563, 'VOTO EN CASA', 6515, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2564, 'BOLIVAR', 6520, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2565, 'ALOOR', 6520, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2566, 'CUESACA', 6520, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2567, 'ELOY ALFARO / DURAN', 6525, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2568, 'LOS HELECHOS', 6525, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2569, 'PANORAMA', 6525, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2570, 'YAMILE', 6525, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2571, 'ROSA ELVIRA', 6525, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2572, 'LOS ANGELES', 6525, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2573, 'UNA SOLA FUERZA', 6525, 10);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2574, 'ELOY ALFARO NORTE', 6525, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2575, 'SIN ZONA', 6530, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2576, 'SIN ZONA', 6535, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2577, 'PALLATANGA', 6540, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2578, 'LAS ROSAS', 6540, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2579, 'RODEO VAQUERIA', 6540, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2580, 'SIN ZONA', 6545, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2581, 'PICHINCHA /GERMUD', 6550, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2582, 'EL AJO', 6550, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2583, 'CAÑALES', 6550, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2584, 'SIN ZONA', 6555, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2585, 'MOCHA', 6560, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2586, 'YANAHURCO', 6560, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2587, 'SIN ZONA', 6565, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2588, 'SIN ZONA', 6570, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2589, 'SIN ZONA', 6575, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2590, 'SANTA LUCIA', 6580, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2591, 'EL LIMON', 6580, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2592, 'LAS GABARRAS', 6580, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2593, 'SIN ZONA', 6585, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2594, 'VOTO EN CASA', 6585, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2595, 'SIN ZONA', 6590, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2596, 'NABON', 6595, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2597, 'ZHIÑA', 6595, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2598, 'RAÑAS', 6595, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2599, 'CHUNASANA', 6595, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2600, 'SIN ZONA', 6600, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2601, 'SIN ZONA', 6605, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2602, 'LA LIBERTAD', 6610, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2603, 'ZONA 3', 6610, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2604, 'ZONA 1', 6610, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2605, 'ZONA 2', 6610, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2606, 'ZONA 4', 6610, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2607, 'VOTO EN CASA', 6610, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2608, 'GUACHAPALA', 6615, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2609, 'SACRE', 6615, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2610, 'SIN ZONA', 6620, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2611, 'ZUMBI', 6625, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2612, 'NANGUIPA ALTO', 6625, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2613, 'LA WINTZA', 6625, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2614, 'SAN PABLO', 6625, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2615, 'GUANUJO', 6630, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2616, 'CUATRO ESQUINAS', 6630, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2617, 'PACHAKUTIK', 6630, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2618, 'VOTO EN CASA', 6630, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2619, 'SIN ZONA', 6635, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2620, 'SIN ZONA', 6640, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2621, 'SIN ZONA', 6645, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2622, 'CPL LOS RIOS Nº 2', 6645, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2623, 'SIN ZONA', 6650, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2624, 'SIN ZONA', 6655, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2625, 'SIN ZONA', 6660, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2626, 'HUACA', 6665, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2627, 'CUASPUD', 6665, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2628, 'VOTO EN CASA', 6665, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2629, 'SIN ZONA', 6670, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2630, 'SIN ZONA', 6675, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2631, 'SIN ZONA', 6680, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2632, 'VALENCIA', 6685, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2633, 'EL VERGEL', 6685, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2634, 'COSTA AZUL', 6685, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2635, 'FEDERICO INTRIAGO', 6685, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2636, 'RIO CHILA', 6685, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2637, 'COOPERATIVA 6 DE AGOSTO', 6685, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2638, 'GONZALEZ SUAREZ', 6685, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2639, 'LA UNIÓN', 6685, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2640, 'MONTE NUEVO', 6685, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2641, 'SIN ZONA', 6690, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2642, 'MOCACHE', 6695, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2643, 'AGUAS FRIAS', 6695, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2644, 'SAN LUIS', 6695, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2645, 'ALEJO LASCANO', 6695, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2646, 'TAISHA', 6700, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2647, 'LA LIBERTAD', 6700, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2648, 'PIMPINTS', 6700, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2649, 'SHINKIATAM', 6700, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2650, 'TINTIUKENTSA', 6700, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2651, 'SHAINKIAM', 6700, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2652, 'SASAIMI', 6700, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2653, 'CANGAIME SUR', 6700, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2654, 'ISHPINK', 6700, 9);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2655, 'CHIARENTSA', 6700, 11);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2656, 'ARAJUNO', 6705, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2657, 'PITACOCHA', 6705, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2658, 'OBEPARE', 6705, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2659, 'SIN ZONA', 6710, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2660, 'SUSCAL', 6715, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2661, 'SUSCALPAMBA', 6715, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2662, 'RIO VERDE', 6720, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2663, 'CABUYAL', 6720, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2664, 'VOTO EN CASA', 6720, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2665, 'LODANA', 6725, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2666, 'CAMINO NUEVO', 6725, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2667, 'SIN ZONA', 6730, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2668, 'SIN ZONA', 6735, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2669, 'PALANDA', 6740, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2670, 'VALLE HERMOZO', 6740, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2671, 'PUCARON', 6740, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2672, 'CENTRO ELOY ALFARO', 6745, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2673, 'TERESA DE CALCUTA', 6745, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2674, 'KIWANI', 6745, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2675, 'LA AURORA', 6745, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2676, 'VOTO EN CASA', 6745, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2677, 'JAMA', 6750, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2678, 'LA MOCORA', 6750, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2679, 'RAMBUCHE', 6750, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2680, 'BIGUA', 6750, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2681, 'COLORADO', 6750, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2682, 'SIN ZONA', 6755, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2683, 'VOTO EN CASA', 6755, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2684, 'CARLOS J. AROSEMENA TOLA', 6760, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2685, 'NUEVA ESPERANZA', 6760, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2686, 'TARAPOA', 6765, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2687, 'CENTRO UNIÓN', 6765, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2688, 'CENTRO ENO', 6765, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2689, 'TAIKIWA', 6765, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2690, 'SOTOSIAYA', 6765, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2691, 'PAZ Y BIEN', 6765, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2692, '18 DE OCTUBRE - COLISEO ELOY ALFARO', 6770, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2693, 'EL MAESTRO', 6770, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2694, 'EL PERIODISTA', 6770, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2695, 'MUNICIPAL', 6770, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2696, 'VOTO EN CASA', 6770, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2697, 'FRANCISCO PACHECO', 6775, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2698, 'FATIMA', 6775, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2699, 'NUEVO PORTOVIEJO', 6775, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2700, 'CPL MANABI Nº 1', 6775, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2701, 'VOTO EN CASA', 6775, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2702, 'SIN ZONA', 6780, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2703, 'SAN VICENTE', 6785, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2704, 'SALINAS', 6785, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2705, 'SIN ZONA', 6790, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2706, 'EL CAMBIO', 6795, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2707, 'LA UNION COLOMBIANA', 6795, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2708, 'CORRALITOS', 6795, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2709, 'SIN ZONA', 6800, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2710, 'SIN ZONA', 6805, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2711, 'SIN ZONA', 6810, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2712, 'SIN ZONA', 6815, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2713, 'SIN ZONA', 6820, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2714, 'SIN ZONA', 6825, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2715, 'BARREIRO /SANTA RITA', 6830, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2716, 'BARREIRO NUEVO', 6830, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2717, 'SIN ZONA', 6835, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2718, 'SIN ZONA', 6840, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2719, 'SIN ZONA', 6845, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2720, 'LA AURORA', 6850, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2721, 'RÍO DAULE', 6850, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2722, 'HERMANO MIGUEL', 6865, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2723, 'UNCOVIA', 6865, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2724, 'EL PROGRESO', 6865, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2725, 'PABLO SEXTO', 6870, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2726, 'LA OCTAVA', 6870, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2727, 'CAMILO PONCE ENRIQUEZ', 6875, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2728, 'ZHUMIRAL', 6875, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2729, 'SAN ALFONSO', 6875, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2730, 'SANTA MARTHA', 6875, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2731, 'BELLA RICA', 6875, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2732, 'SAN GERARDO', 6875, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2733, 'SIN ZONA', 6880, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2734, 'PAQUISHA', 6885, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2735, 'RIO BLANCO', 6885, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2736, 'SANTIAGO', 6890, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2737, 'TAYUNTS', 6890, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2738, 'COMUNIDAD MAYAIK', 6890, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2739, 'PEÑAS', 6890, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2740, 'EL TRIUNFO', 6895, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2741, 'CHIPE HAMBURGO 1', 6895, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2742, 'CHIPE HAMBURGO 2', 6895, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2743, 'ESTERO HONDO', 6895, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2744, 'SIN ZONA', 6900, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2745, 'SIMON PLATA TORRES', 6905, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2746, 'VALLE DE SAN RAFAEL', 6905, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2747, 'CASA BONITA', 6905, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2748, 'LA TOLITA', 6905, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2749, 'CPL ESMERALDAS N° 2', 6905, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2750, 'VOTO EN CASA', 6905, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2751, 'SIN ZONA', 6910, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2752, 'VOTO EN CASA', 6910, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2753, 'QUINSALOMA', 6915, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2754, 'PAMBILAR DE CALOPE', 6915, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2755, 'SIN ZONA', 6925, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2756, 'PLATANILLOS', 6950, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2757, 'VALLE HERMOSO', 6950, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2758, 'SIN ZONA', 6985, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2759, 'SIN ZONA', 6990, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2760, 'BELISARIO QUEVEDO', 7130, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2761, 'LA GASCA', 7130, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2762, 'LA PRIMAVERA', 7130, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2763, 'LAS CASAS - LA GRANJA', 7130, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2764, 'PAMBACHUPA', 7130, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2765, 'CARCELEN', 7135, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2766, 'BALCON DEL NORTE', 7135, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2767, 'CARCELEN BAJO', 7135, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2768, 'CARCELEN LIBRE', 7135, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2769, 'CORAZON DE JESUS', 7135, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2770, 'LOS EUCALIPTOS', 7135, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2771, 'LOS MASTODONTES', 7135, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2772, 'CENTRO HISTORICO', 7140, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2773, 'DON BOSCO', 7140, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2774, 'LA LOMA', 7140, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2775, 'LA VICTORIA', 7140, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2776, 'PANECILLO', 7140, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2777, 'RECOLETA', 7140, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2778, 'VOTO EN CASA', 7140, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2779, 'COCHAPAMBA', 7145, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2780, 'ATUCUCHO', 7145, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2781, 'BELLAVISTA', 7145, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2782, 'CORDILLERA - EL PORVENIR', 7145, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2783, 'EL PINAR ALTO', 7145, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2784, 'LA PULIDA', 7145, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2785, 'SAN VICENTE', 7145, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2786, 'COMITE DEL PUEBLO', 7150, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2787, 'CARRETAS', 7150, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2788, 'LA BOTA', 7150, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2789, 'COLLA LOMA', 7150, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2790, 'CHILIBULO', 7155, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2791, 'CUARTEL MARISCAL SUCRE', 7155, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2792, 'LA SANTIAGO', 7155, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2793, 'MAGDALENA ALTA', 7155, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2794, 'MAGDALENA BAJA', 7155, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2795, 'SAN JOSE DE CHILIBULO', 7155, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2796, 'YAGUACHI', 7155, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2797, 'EL CONDADO', 7160, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2798, 'COLINAS DEL NORTE', 7160, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2799, 'ROLDOS - PISULI', 7160, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2800, 'RANCHO BAJO', 7160, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2801, 'LA CAMPIÑA', 7160, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2802, 'SANTA ANITA', 7160, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2803, 'GUAMANÍ', 7165, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2804, 'NUEVA AURORA', 7165, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2805, 'PLAN VICTORIA', 7165, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2806, 'JOSE PERALTA', 7165, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2807, 'MATILDE ALVAREZ', 7165, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2808, 'TURUBAMBA DE MONJAS', 7165, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2809, 'IÑAQUITO', 7170, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2810, '24 DE MAYO', 7170, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2811, 'BATAN - LA PAZ', 7170, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2812, 'BENALCAZAR', 7170, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2813, 'LA CAROLINA', 7170, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2814, 'ITCHIMBIA', 7175, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2815, 'GUAPULO', 7175, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2816, 'LA VICENTINA', 7175, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2817, 'SAN PABLO', 7175, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2818, 'TOLA BAJA', 7175, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2819, 'JIPIJAPA', 7180, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2820, 'EL INCA', 7180, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2821, 'LOS LAURELES', 7180, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2822, 'MONTESERRIN', 7180, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2823, 'ZALDUMBIDE', 7180, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2824, 'KENNEDY', 7185, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2825, 'RUMIÑAHUI', 7185, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2826, 'DAMMER - LOS ALAMOS', 7185, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2827, 'LA LUZ', 7185, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2828, 'LAS ACACIAS', 7185, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2829, 'LOS PINOS', 7185, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2830, 'COFAVI', 7185, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2831, 'SANTA LUCIA', 7185, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2832, 'CPPL MASCULINO PICHINCHA Nº 1', 7185, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2833, 'LA ARGELIA', 7190, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2834, 'EL MIRADOR - SANTA ROSA', 7190, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2835, 'LUCHA DE LOS POBRES - GUAJALO', 7190, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2836, 'ORIENTE QUITEÑO', 7190, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2837, 'SAN MARTIN', 7190, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2838, 'LA CONCEPCION', 7195, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2839, 'SAN CARLOS', 7195, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2840, 'AEROPUERTO', 7195, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2841, 'EL ROSARIO', 7195, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2842, 'LA ECUATORIANA', 7200, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2843, '2 DE FEBRERO', 7200, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2844, 'LAS ORQUIDEAS', 7200, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2845, 'LAS ORQUIDEAS ALTAS', 7200, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2846, 'MANUELA SAENZ', 7200, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2847, 'NUEVOS HORIZONTES', 7200, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2848, 'LA FERROVIARIA', 7205, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2849, '20 DE MAYO - LAS VERTIENTES', 7205, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2850, 'CHAHUARQUINGO', 7205, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2851, 'EL RECREO', 7205, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2852, 'ELOY ALFARO', 7205, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2853, 'FORESTAL', 7205, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2854, 'SAN PATRICIO', 7205, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2855, 'LA MENA', 7210, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2856, 'TARQUI', 7210, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2857, 'SANTA BARBARA', 7210, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2858, 'SANTA ROSA', 7210, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2859, 'SAN FERNANDO', 7210, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2860, 'MARISCAL SUCRE', 7215, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2861, 'LA FLORESTA', 7215, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2862, 'PONCEANO', 7220, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2863, 'PONCEANO ALTO', 7220, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2864, 'LA OFELIA', 7220, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2865, 'PUENGASI', 7225, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2866, 'BALCON DEL VALLE', 7225, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2867, 'EDEN DEL VALLE', 7225, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2868, 'JARDIN DEL VALLE - ALMA LOJANA', 7225, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2869, 'ORQUIDEAS', 7225, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2870, 'SAN JOSE DE MONJAS', 7225, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2871, 'QUITUMBE', 7230, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2872, 'EJERCITO NACIONAL', 7230, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2873, 'EL VERGEL', 7230, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2874, 'NUEVOS HORIZONTES DEL SUR', 7230, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2875, 'PUEBLO SOLO PUEBLO', 7230, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2876, 'PUEBLO UNIDO', 7230, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2877, 'SALVADOR ALLENDE', 7230, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2878, 'CPL PICHINCHA N° 3', 7230, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2879, 'RUMIPAMBA', 7235, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2880, 'GRANDA CENTENO', 7235, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2881, 'QUITO TENNIS', 7235, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2882, 'SAN GABRIEL', 7235, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2883, 'SAN BARTOLO', 7240, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2884, 'BARRIONUEVO', 7240, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2885, 'QUITO SUR', 7240, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2886, 'CLEMENTE BALLEN', 7240, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2887, 'EL CALZADO', 7240, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2888, 'SAN ISIDRO DEL INCA', 7245, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2889, 'AMAGASI', 7245, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2890, 'LA QUINTANA', 7245, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2891, 'LOS ALAMOS', 7245, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2892, 'SOLCA', 7245, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2893, 'SAN JUAN', 7250, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2894, 'BARRIO LARREA', 7250, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2895, 'EL PLACER - EL TEJAR', 7250, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2896, 'LA AMERICA', 7250, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2897, 'MIRAFLORES BAJO', 7250, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2898, 'TOCTIUCO', 7250, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2899, 'SOLANDA', 7255, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2900, 'GONZ. ZALDUMBIDE - MAYORISTA', 7255, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2901, 'SANTA RITA', 7255, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2902, 'REGISTRO CIVIL', 7255, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2903, 'TURUBAMBA', 7260, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2904, 'CAUPICHU', 7260, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2905, 'ETERNIT', 7260, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2906, 'BEATERIO', 7260, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2907, 'EL CONDE', 7260, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2908, 'CAMPO ALEGRE', 7260, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2909, 'SANTO THOMAS', 7260, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2910, 'SIN ZONA', 7425, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2911, 'LA PUNTILLA(SATELITE)', 7445, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2912, 'LA PUNTILLA NORTE', 7445, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2913, 'EL RECREO', 7455, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2914, 'LA LOMA', 7455, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2915, 'ANIBAL SAN ANDRES', 7460, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2916, 'PEPA DE HUSO-LA SEQUITA', 7460, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2917, 'SIN ZONA', 7465, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2918, 'SIN ZONA', 7470, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2919, 'SIN ZONA', 7475, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2920, 'SIN ZONA', 7480, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2921, 'SIN ZONA', 7485, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2922, 'SIN ZONA', 7490, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2923, 'LEONIDAS PROAÑO', 7495, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2924, 'TIERRA SANTA', 7495, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2925, 'SIN ZONA', 7500, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2926, 'SIN ZONA', 7505, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2927, 'JAMBELI', 7510, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2928, 'CIUDADELA 10 DE SEPTIEMBRE', 7510, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2929, 'DIVINO NIÑO', 7515, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2930, 'SECAP', 7515, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2931, 'HÉCTOR COBOS', 7515, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2932, 'LA CONCORDIA', 7520, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2933, 'FLOR DEL VALLE', 7520, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2934, 'LAS VEGAS', 7520, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2935, 'SANTA ROSA', 7520, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2936, 'VIRGEN DEL CISNE', 7520, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2937, '10 DE AGOSTO', 7520, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2938, 'ALIANZA', 7520, 7);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2939, 'VOTO EN CASA', 7520, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2940, 'CARIGAN', 7525, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2941, 'LAS PITAS', 7525, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2942, 'LA BANDA', 7525, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2943, 'VOTO EN CASA', 7525, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2944, 'LA ARGELIA', 7530, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2945, 'LA TEBAIDA', 7530, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2946, 'SAN PEDRO', 7530, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2947, 'COLINAS LOJANAS', 7530, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2948, 'CAI LOJA', 7530, 61);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2949, 'VOTO EN CASA', 7530, 89);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2950, 'SIN ZONA', 7535, 0);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2951, 'BERLIN', 9001, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2952, 'BONN', 9001, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2953, 'HAMBURGO', 9002, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2954, '.BUENOS AIRES', 9003, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2955, 'CAMBERRA', 9005, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2956, 'SYDNEY', 9005, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2957, '.VIENA', 9006, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2958, '.BRUSELAS', 9007, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2959, '.LA PAZ', 9008, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2960, '.BRASILIA', 9009, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2961, '.TORONTO', 9011, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2962, 'OTTAWA', 9012, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2963, 'MONTREAL', 9012, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2964, '.BOGOTA', 9013, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2965, 'IPIALES', 9015, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2966, 'CALI', 9015, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2967, '.SEUL', 9016, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2968, '.SAN JOSE', 9017, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2969, 'HABANA / HABANA', 9018, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2970, 'HABANA / SANTA CLARA', 9018, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2971, '.SANTIAGO', 9019, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2972, '.BEIJING', 9020, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2973, '.PALMA DE MALLORCA', 9021, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2974, '.SAN SALVADOR', 9022, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2975, '.BARCELONA', 9023, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2976, 'BARCELONA / TERRASSA', 9023, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2977, 'BARCELONA / NAVARRA', 9023, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2978, '.MADRID', 9024, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2979, 'MADRID / TOLEDO', 9024, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2980, '.VALENCIA', 9025, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2981, '.ALICANTE', 9025, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2982, '.MURCIA', 9026, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2983, 'MURCIA / JUMILLA - YECLA', 9026, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2984, 'MURCIA / LORCA', 9026, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2985, 'MURCIA / CARTAGENA MAR MENOR', 9026, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2986, '.CHICAGO', 9027, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2987, 'MIAMI / MIAMI', 9028, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2988, 'MIAMI / ORLANDO', 9028, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2989, '.NUEVA YORK', 9029, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2990, 'NUEVA YORK / QUEENS', 9029, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2991, 'NUEVA YORK / HUDSON VALLEY', 9029, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2992, 'NUEVA YORK / LONG ISLAND', 9029, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2993, '.WASHINGTON', 9031, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2994, 'LOS ANGELES', 9032, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2995, 'SAN FRANCISCO', 9032, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2996, '.CONNECTICUT', 9033, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2997, 'CONNECTICUT / GREATER DANBURY', 9033, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2998, 'HOUSTON', 9034, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (2999, 'NEW ORLEANS', 9034, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3000, '.NEW JERSEY', 9035, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3001, 'NEW JERSEY / PLAINFIELD', 9035, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3002, 'NEW JERSEY / HIGHSTOWN - TRENTON', 9035, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3003, '.PARIS', 9036, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3004, 'LONDRES', 9037, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3005, 'LISBOA', 9037, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3006, '.GUATEMALA', 9038, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3007, 'TEGUCIGALPA', 9039, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3008, 'MANAGUA', 9039, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3009, '.BUDAPEST', 9040, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3010, '.TEL AVIV', 9042, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3011, 'MILAN / MILAN', 9043, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3012, 'MILAN / TURIN', 9043, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3013, '.GENOVA', 9044, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3014, '.ROMA', 9045, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3015, '.TOKIO', 9046, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3016, '.MEXICO', 9047, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3017, '.LA HAYA', 9049, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3018, '.PANAMA', 9050, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3019, '.ASUNCION', 9051, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3020, '.LIMA', 9052, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3021, 'TUMBES', 9054, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3022, 'PIURA', 9054, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3023, '.EL CAIRO', 9055, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3024, '.SANTO DOMINGO', 9056, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3025, '.ESTOCOLMO', 9057, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3026, 'BERNA', 9058, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3027, 'LAUSANNE', 9058, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3028, 'MOSCU', 9060, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3029, 'BELARÚS', 9060, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3030, '.MONTEVIDEO', 9061, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3031, 'CARACAS', 9062, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3032, 'VALENCIA', 9062, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3033, '.YAKARTA', 9063, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3034, 'MALAGA / MALAGA', 9066, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3035, 'MALAGA / SEVILLA Y CORDOVA', 9066, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3036, 'MALAGA / ALMERIA', 9066, 3);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3037, 'MALAGA / GRANADA', 9066, 4);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3038, 'MALAGA / MARBELLA', 9066, 5);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3039, 'MALAGA / HUELVA', 9066, 6);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3040, 'MALAGA / VERA', 9066, 8);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3041, 'SAO PAULO', 9067, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3042, 'RIO DE JANEIRO', 9067, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3043, '.SHANGAI', 9068, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3044, '.MINNEAPOLIS', 9069, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3045, '.ATLANTA', 9071, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3046, 'ATLANTA / CHARLOTTE', 9071, 2);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3047, '.PHOENIX', 9073, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3048, '.GUANGZHOU', 9075, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3049, '.PRETORIA', 9077, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3050, '.ANKARA', 9078, 1);
INSERT INTO public.zona OVERRIDING SYSTEM VALUE VALUES (3051, '.MONTERREY', 9086, 1);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 232
-- Name: acta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acta_id_seq', 1, false);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 245
-- Name: blacktoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blacktoken_id_seq', 19, true);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 238
-- Name: candidato_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.candidato_id_seq', 1, false);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 224
-- Name: canton_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.canton_id_seq', 1, false);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 240
-- Name: dignidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dignidad_id_seq', 1, false);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 234
-- Name: imagenacta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.imagenacta_id_seq', 1, false);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 230
-- Name: junta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.junta_id_seq', 1, false);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 212
-- Name: menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_id_seq', 14, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 214
-- Name: modulo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.modulo_id_seq', 16, true);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 226
-- Name: parroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parroquia_id_seq', 1, false);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 236
-- Name: partido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partido_id_seq', 1, false);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 218
-- Name: permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permisos_id_seq', 15, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 222
-- Name: provincia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provincia_id_seq', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 216
-- Name: rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_id_seq', 11, true);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 220
-- Name: rolusuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rolusuario_id_seq', 101, true);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 210
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 87, true);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 242
-- Name: votos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.votos_id_seq', 1, false);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 228
-- Name: zona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zona_id_seq', 3051, true);


--
-- TOC entry 3363 (class 2606 OID 24717)
-- Name: acta acta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acta
    ADD CONSTRAINT acta_pkey PRIMARY KEY (id);


--
-- TOC entry 3375 (class 2606 OID 24791)
-- Name: listanegratoken blacktoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listanegratoken
    ADD CONSTRAINT blacktoken_pkey PRIMARY KEY (id);


--
-- TOC entry 3367 (class 2606 OID 24745)
-- Name: candidato candidato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidato
    ADD CONSTRAINT candidato_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 24668)
-- Name: canton canton_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.canton
    ADD CONSTRAINT canton_pkey PRIMARY KEY (id);


--
-- TOC entry 3369 (class 2606 OID 24756)
-- Name: dignidad dignidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dignidad
    ADD CONSTRAINT dignidad_pkey PRIMARY KEY (id);


--
-- TOC entry 3373 (class 2606 OID 24785)
-- Name: imagensegmento imagensegmento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imagensegmento
    ADD CONSTRAINT imagensegmento_pkey PRIMARY KEY (junta_id, dignidad_id, candidato_id);


--
-- TOC entry 3361 (class 2606 OID 24701)
-- Name: junta junta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.junta
    ADD CONSTRAINT junta_pkey PRIMARY KEY (id);


--
-- TOC entry 3341 (class 2606 OID 24598)
-- Name: menu menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 24604)
-- Name: modulo modulo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modulo
    ADD CONSTRAINT modulo_pkey PRIMARY KEY (id);


--
-- TOC entry 3357 (class 2606 OID 24679)
-- Name: parroquia parroquia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT parroquia_pkey PRIMARY KEY (id);


--
-- TOC entry 3365 (class 2606 OID 24739)
-- Name: partido partido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido
    ADD CONSTRAINT partido_pkey PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 24622)
-- Name: permisos permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 3353 (class 2606 OID 24662)
-- Name: provincia provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 24616)
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 24639)
-- Name: rolusuario rolusuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rolusuario
    ADD CONSTRAINT rolusuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 24592)
-- Name: usuario user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT user_pk PRIMARY KEY (id);


--
-- TOC entry 3371 (class 2606 OID 24767)
-- Name: votos votos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votos
    ADD CONSTRAINT votos_pkey PRIMARY KEY (id);


--
-- TOC entry 3359 (class 2606 OID 24690)
-- Name: zona zona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zona
    ADD CONSTRAINT zona_pkey PRIMARY KEY (id);


--
-- TOC entry 3339 (class 1259 OID 24611)
-- Name: fki_modulo__id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_modulo__id_fk ON public.menu USING btree (modulo_id);


--
-- TOC entry 3346 (class 1259 OID 24634)
-- Name: fki_rol_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_rol_id_fk ON public.permisos USING btree (rol_id);


--
-- TOC entry 3349 (class 1259 OID 24646)
-- Name: fki_usuario_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_usuario_id_fk ON public.rolusuario USING btree (usuario_id);


--
-- TOC entry 3390 (class 2606 OID 24769)
-- Name: votos acta_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votos
    ADD CONSTRAINT acta_id FOREIGN KEY (acta_id) REFERENCES public.acta(id);


--
-- TOC entry 3388 (class 2606 OID 24730)
-- Name: imagenacta acta_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imagenacta
    ADD CONSTRAINT acta_id_fk FOREIGN KEY (acta_id) REFERENCES public.acta(id);


--
-- TOC entry 3391 (class 2606 OID 24774)
-- Name: votos candidato_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votos
    ADD CONSTRAINT candidato_id FOREIGN KEY (candidato_id) REFERENCES public.candidato(id);


--
-- TOC entry 3383 (class 2606 OID 24681)
-- Name: parroquia canton_id_pk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT canton_id_pk FOREIGN KEY (canton_id) REFERENCES public.canton(id);


--
-- TOC entry 3386 (class 2606 OID 24758)
-- Name: acta dignidad_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acta
    ADD CONSTRAINT dignidad_id_fk FOREIGN KEY (dignidad_id) REFERENCES public.dignidad(id);


--
-- TOC entry 3387 (class 2606 OID 24719)
-- Name: acta junta_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acta
    ADD CONSTRAINT junta_id_fk FOREIGN KEY (junta_id) REFERENCES public.junta(id);


--
-- TOC entry 3378 (class 2606 OID 24624)
-- Name: permisos menu_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT menu_id_fk FOREIGN KEY (menu_id) REFERENCES public.menu(id);


--
-- TOC entry 3377 (class 2606 OID 24606)
-- Name: menu modulo__id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT modulo__id_fk FOREIGN KEY (modulo_id) REFERENCES public.modulo(id);


--
-- TOC entry 3384 (class 2606 OID 24691)
-- Name: zona parroquia_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zona
    ADD CONSTRAINT parroquia_id_fk FOREIGN KEY (parroquia_id) REFERENCES public.parroquia(id);


--
-- TOC entry 3389 (class 2606 OID 24747)
-- Name: candidato partido_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidato
    ADD CONSTRAINT partido_id_fk FOREIGN KEY (partido_id) REFERENCES public.partido(id);


--
-- TOC entry 3382 (class 2606 OID 24670)
-- Name: canton provincia_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.canton
    ADD CONSTRAINT provincia_id_fk FOREIGN KEY (provincia_id) REFERENCES public.provincia(id);


--
-- TOC entry 3376 (class 2606 OID 24708)
-- Name: usuario provincia_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT provincia_id_fk FOREIGN KEY (provincia_id) REFERENCES public.provincia(id);


--
-- TOC entry 3379 (class 2606 OID 24629)
-- Name: permisos rol_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT rol_id_fk FOREIGN KEY (rol_id) REFERENCES public.rol(id);


--
-- TOC entry 3380 (class 2606 OID 24647)
-- Name: rolusuario rol_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rolusuario
    ADD CONSTRAINT rol_id_fk FOREIGN KEY (rol_id) REFERENCES public.rol(id);


--
-- TOC entry 3381 (class 2606 OID 24641)
-- Name: rolusuario usuario_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rolusuario
    ADD CONSTRAINT usuario_id_fk FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- TOC entry 3385 (class 2606 OID 24703)
-- Name: junta zona_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.junta
    ADD CONSTRAINT zona_id_fk FOREIGN KEY (zona_id) REFERENCES public.zona(id);


-- Completed on 2024-05-14 10:35:07 -05

--
-- PostgreSQL database dump complete
--

