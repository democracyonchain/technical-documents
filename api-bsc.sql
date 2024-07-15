--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)

-- Started on 2024-07-15 09:34:51 -05

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
-- TOC entry 231 (class 1259 OID 25312)
-- Name: acta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acta (
    id integer NOT NULL,
    dignidad_id integer,
    junta_id integer,
    seguridad integer,
    estado integer,
    usuarioescaneo integer,
    fechaescaneo date,
    usuariodigitacion integer,
    fechadigitacion date,
    usuariocontrol integer,
    fechacotrol date,
    peticion integer,
    sufragantesicr integer,
    sufragantesdigitacion integer,
    sufragantescontrol integer,
    sufragantes integer,
    blacosicr integer,
    blancosdigitacion integer,
    blancoscontrol integer,
    blancos integer,
    nulosicr integer,
    nulosdigitacion integer,
    nulos integer
);


ALTER TABLE public.acta OWNER TO postgres;

--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE acta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.acta IS 'Table that stores information from the minutes of a meeting; An act is a minute where the votes that the candidates obtained in that meeting are written.';


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.id IS 'Unique identifier';


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.seguridad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.seguridad IS 'Minute security code to avoid falsification of a minute';


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.estado IS 'Status of a record in the process, in what phase of the process it is';


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.usuarioescaneo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.usuarioescaneo IS 'User code that scanned the vote record';


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.fechaescaneo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.fechaescaneo IS 'Date on which a record was scanned';


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.usuariodigitacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.usuariodigitacion IS 'user code that entered the votes';


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.fechadigitacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.fechadigitacion IS 'Date on which the votes of the candidates in the minutes were entered';


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.usuariocontrol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.usuariocontrol IS 'User code that performed quality control of the votes of a minute';


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.fechacotrol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.fechacotrol IS 'Date on which quality control was carried out on votes that do not match between intelligent recognition and entry';


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.peticion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.peticion IS 'know if the minutes were taken by a user to enter votes or quality control, this is used to prevent a minute from being taken by several users at the same time';


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.sufragantesicr; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.sufragantesicr IS 'Number of voters of the act, this number was obtained in the intelligent recognition /IA';


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.sufragantesdigitacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.sufragantesdigitacion IS 'Number of voters of the act, this number was obtained by typing';


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.sufragantescontrol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.sufragantescontrol IS 'Number of voters of the minutes, this number was obtained by typing in the quality control';


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.sufragantes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.sufragantes IS 'Number of voters of the minutes, corresponds to the number of people who voted';


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.blacosicr; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.blacosicr IS 'Number of voters who voted blank, value obtained from automatic recognition / AI';


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.blancosdigitacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.blancosdigitacion IS 'Number of voters who voted blank, value obtained from the entry of votes';


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.blancoscontrol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.blancoscontrol IS 'Number of voters who voted blank, values ​​obtained from quality control';


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.blancos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.blancos IS 'Number of voters who voted blank';


--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.nulosicr; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.nulosicr IS 'Number of voters who annulled the vote, this is taken from automatic recognition';


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.nulosdigitacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.nulosdigitacion IS 'Number of voters who annulled the vote, this is taken from the manual entry of votes';


--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN acta.nulos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.acta.nulos IS 'Number of voters who annulled the vote';


--
-- TOC entry 235 (class 1259 OID 25365)
-- Name: acta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.acta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.acta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 24800)
-- Name: listanegratoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listanegratoken (
    id integer NOT NULL,
    token character varying(500) NOT NULL
);


ALTER TABLE public.listanegratoken OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24803)
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
-- TOC entry 226 (class 1259 OID 25245)
-- Name: candidato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.candidato (
    id integer NOT NULL,
    cedula smallint,
    nombre character varying(50) NOT NULL,
    partido_id integer
);


ALTER TABLE public.candidato OWNER TO postgres;

--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 226
-- Name: TABLE candidato; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.candidato IS 'table that stores information about the privincies (highest level of the political division)';


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN candidato.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.candidato.id IS 'Unique identifier';


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN candidato.cedula; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.candidato.cedula IS 'DNI of candidate';


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN candidato.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.candidato.nombre IS 'Name of a candidate';


--
-- TOC entry 236 (class 1259 OID 25366)
-- Name: candidato_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.candidato ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.candidato_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 25265)
-- Name: canton; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.canton (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    provincia_id integer
);


ALTER TABLE public.canton OWNER TO postgres;

--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE canton; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.canton IS 'table that stores information about the privincies (highest level, second level of the political division)
Unique identifier';


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN canton.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.canton.id IS 'Unique identifier';


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN canton.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.canton.nombre IS 'name of canton';


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN canton.provincia_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.canton.provincia_id IS 'id of provincia';


--
-- TOC entry 237 (class 1259 OID 25367)
-- Name: canton_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.canton ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.canton_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 25207)
-- Name: dignidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dignidad (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    ambio character varying(1),
    estado smallint,
    orden integer
);


ALTER TABLE public.dignidad OWNER TO postgres;

--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE dignidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.dignidad IS 'table that stores information about the privincies (highest level of the political division)';


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN dignidad.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.dignidad.id IS 'Unique identifier';


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN dignidad.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.dignidad.nombre IS 'Name of a dignity';


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN dignidad.ambio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.dignidad.ambio IS 'Level of jurisdiction of dignity (national, province...etc)';


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN dignidad.estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.dignidad.estado IS 'Status of dignity';


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN dignidad.orden; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.dignidad.orden IS 'Orden of dignity in the processing';


--
-- TOC entry 238 (class 1259 OID 25368)
-- Name: dignidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.dignidad ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dignidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 25791)
-- Name: establecimiento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.establecimiento (
    id integer NOT NULL,
    fechacreacion timestamp without time zone NOT NULL,
    fechamodificacion timestamp without time zone,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    nombre character varying(200) NOT NULL,
    ruc character varying(13),
    direccion character varying(200),
    telefono character varying(50),
    representante character varying(100),
    establecimiento character varying(10),
    logo bytea,
    estado boolean DEFAULT true NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.establecimiento OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 25798)
-- Name: establecimiento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.establecimiento ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.establecimiento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 25337)
-- Name: imagenacta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imagenacta (
    acta_id integer,
    image oid,
    nombre character varying,
    pagina smallint,
    hash character varying,
    pathipfs character varying,
    fecha date
);


ALTER TABLE public.imagenacta OWNER TO postgres;

--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE imagenacta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.imagenacta IS 'Table that stores the image of the sheets of a ballot report "acta de escrutinio", also stores the meta data of the images.';


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN imagenacta.acta_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagenacta.acta_id IS 'id of "junta! to which the image belongs';


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN imagenacta.image; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagenacta.image IS 'image of the "acta de escrutino" sheet';


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN imagenacta.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagenacta.nombre IS 'Name of image';


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN imagenacta.pagina; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagenacta.pagina IS 'Page number';


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN imagenacta.hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagenacta.hash IS 'image data hash';


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN imagenacta.pathipfs; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagenacta.pathipfs IS 'Address of image in IPFS';


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN imagenacta.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagenacta.fecha IS 'record creation date';


--
-- TOC entry 234 (class 1259 OID 25360)
-- Name: imagensegmento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imagensegmento (
    junta_id integer,
    dignidad_id integer,
    candidato_id integer,
    imagen oid,
    nombre character varying,
    hash character varying,
    pathipfs character varying,
    fecha date
);


ALTER TABLE public.imagensegmento OWNER TO postgres;

--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN imagensegmento.junta_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagensegmento.junta_id IS 'Id junta';


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN imagensegmento.imagen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagensegmento.imagen IS 'image';


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN imagensegmento.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagensegmento.nombre IS 'Image name';


--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN imagensegmento.hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagensegmento.hash IS 'Image hash code';


--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN imagensegmento.pathipfs; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagensegmento.pathipfs IS 'Image path on the IPFS network';


--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN imagensegmento.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.imagensegmento.fecha IS 'Cecord creation date';


--
-- TOC entry 230 (class 1259 OID 25302)
-- Name: junta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.junta (
    id integer NOT NULL,
    zona_id integer,
    junta integer,
    sexo character varying(1),
    electores integer,
    estado integer
);


ALTER TABLE public.junta OWNER TO postgres;

--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 230
-- Name: TABLE junta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.junta IS 'table that stores the information of the parishes (fourth level of the political division)
Unique identifier';


--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN junta.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.junta.id IS 'Unique identifier';


--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN junta.junta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.junta.junta IS 'Number assigned to a meeting';


--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN junta.sexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.junta.sexo IS 'Sex to which a junta belongs';


--
-- TOC entry 3645 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN junta.electores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.junta.electores IS 'Number of voters assigned to a "junta"';


--
-- TOC entry 3646 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN junta.estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.junta.estado IS 'Status of a "junta" in the process';


--
-- TOC entry 239 (class 1259 OID 25369)
-- Name: junta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.junta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.junta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 24831)
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
    url character varying(100) NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.menu OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24835)
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
-- TOC entry 213 (class 1259 OID 24836)
-- Name: modulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modulo (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    codigo character varying(10) NOT NULL,
    url character varying(100) NOT NULL,
    icono character varying(50),
    estado boolean DEFAULT true NOT NULL,
    fechacreacion timestamp with time zone NOT NULL,
    fechamodificacion timestamp with time zone,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    color character varying(50),
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.modulo OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24839)
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
-- TOC entry 228 (class 1259 OID 25275)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parroquia (
    id integer NOT NULL,
    canton_id integer,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.parroquia OWNER TO postgres;

--
-- TOC entry 3647 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE parroquia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.parroquia IS 'table that stores the information of the parishes (third level of the political division)';


--
-- TOC entry 3648 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN parroquia.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parroquia.id IS 'Unique identifier';


--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN parroquia.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.parroquia.nombre IS 'Name of parishes';


--
-- TOC entry 240 (class 1259 OID 25370)
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
-- TOC entry 224 (class 1259 OID 25226)
-- Name: partido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partido (
    id integer NOT NULL,
    nombre character varying(1000) NOT NULL,
    siglas character varying(150),
    lista character varying(50),
    orden integer,
    imagen smallint
);


ALTER TABLE public.partido OWNER TO postgres;

--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE partido; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.partido IS 'Table that stores information about political parties';


--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN partido.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.partido.id IS 'Unique identifier';


--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN partido.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.partido.nombre IS 'Name of a political parties';


--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN partido.siglas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.partido.siglas IS 'Acronym or short name of a political party';


--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN partido.lista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.partido.lista IS 'List number assigned to a political party, does not refer to the order but to the identity of a party';


--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN partido.orden; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.partido.orden IS 'Order assigned to a political party';


--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN partido.imagen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.partido.imagen IS 'Image of political party image/logo';


--
-- TOC entry 241 (class 1259 OID 25371)
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
-- TOC entry 215 (class 1259 OID 24848)
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
    estado boolean DEFAULT true NOT NULL,
    rol_id integer NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.permisos OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24851)
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
-- TOC entry 225 (class 1259 OID 25233)
-- Name: provincia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincia (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.provincia OWNER TO postgres;

--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE provincia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.provincia IS 'Table that stores information about the privincies (highest level of the political division)';


--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN provincia.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.provincia.id IS 'Unique identifier';


--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN provincia.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.provincia.nombre IS 'Name of provincia';


--
-- TOC entry 242 (class 1259 OID 25372)
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
-- TOC entry 217 (class 1259 OID 24856)
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
    estado boolean DEFAULT true NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24859)
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
-- TOC entry 219 (class 1259 OID 24860)
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
    estado boolean DEFAULT true NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


ALTER TABLE public.rolusuario OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24863)
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
-- TOC entry 221 (class 1259 OID 24864)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    email character varying(50),
    nombres character varying(50) NOT NULL,
    apellidos character varying(50) NOT NULL,
    fechacreacion timestamp with time zone NOT NULL,
    fechamodificacion timestamp with time zone,
    usuariocreacion_id integer NOT NULL,
    usuariomodificacion_id integer,
    estado boolean DEFAULT true NOT NULL,
    ultimoacceso timestamp with time zone,
    activo boolean DEFAULT true NOT NULL,
    provincia_id integer NOT NULL,
    establecimiento_id integer NOT NULL,
    passwordtemp boolean DEFAULT false NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24869)
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
-- TOC entry 233 (class 1259 OID 25347)
-- Name: votos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.votos (
    acta_id integer,
    candidato_id integer,
    votosicr integer,
    votosdigitacion integer,
    votoscontrol integer,
    votos integer
);


ALTER TABLE public.votos OWNER TO postgres;

--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE votos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.votos IS 'This table stores the votes that the candidates received in a "junta"';


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN votos.votosicr; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.votos.votosicr IS 'Number of votes that the candidate obtained through automatic recognition';


--
-- TOC entry 3662 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN votos.votosdigitacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.votos.votosdigitacion IS 'Number of votes that the candidate obtained by manual typing';


--
-- TOC entry 3663 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN votos.votoscontrol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.votos.votoscontrol IS 'Number of votes the candidate obtained in the quality control';


--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN votos.votos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.votos.votos IS 'Number of votes the candidate obtained';


--
-- TOC entry 229 (class 1259 OID 25292)
-- Name: zona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zona (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    parroquia_id integer NOT NULL,
    codigo integer NOT NULL
);


ALTER TABLE public.zona OWNER TO postgres;

--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE zona; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.zona IS 'table that stores the information of the parishes (fourth level of the political division)
Unique identifier';


--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN zona.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.zona.id IS 'Unique identifier';


--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN zona.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.zona.nombre IS 'Unique identifier';


--
-- TOC entry 243 (class 1259 OID 25373)
-- Name: zona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.zona ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.zona_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);


--
-- TOC entry 3571 (class 0 OID 25312)
-- Dependencies: 231
-- Data for Name: acta; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3566 (class 0 OID 25245)
-- Dependencies: 226
-- Data for Name: candidato; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3567 (class 0 OID 25265)
-- Dependencies: 227
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
-- TOC entry 3563 (class 0 OID 25207)
-- Dependencies: 223
-- Data for Name: dignidad; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3584 (class 0 OID 25791)
-- Dependencies: 244
-- Data for Name: establecimiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.establecimiento OVERRIDING SYSTEM VALUE VALUES (1, '2024-05-31 00:00:00', '2024-06-18 16:05:39.585', 16, 16, 'Blockchain System Voting', NULL, NULL, NULL, NULL, NULL, '\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d227574662d38223f3e0a3c212d2d2044657369676e656420627920566578656c732e636f6d202d203230313920416c6c20526967687473205265736572766564202d2068747470733a2f2f766578656c732e636f6d2f7465726d732d616e642d636f6e646974696f6e732f20202d2d3e0a3c7376672076657273696f6e3d22312e31222069643d224c617965725f312220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220a092076696577426f783d22302030203132303020313230302220656e61626c652d6261636b67726f756e643d226e657720302030203132303020313230302220786d6c3a73706163653d227072657365727665223e0a3c706174682066696c6c3d22233135323333442220643d224d3230352e3239342c3435382e323237632d392e3036362d32332e3338352d31372e3535392d35312e3339342d332e3134332d37312e3836376331342e3131372d32302e3034382c34332e3036312d32322e3231362c36322e3633392d33362e3937370a0963382e39322d362e3732352c31352e3738322d31362e3134332c31392e34352d32362e36393463302e3737352d322e3232382c312e3431352d342e3632392c302e3837312d362e393235632d312e3231382d352e31342d372e3939382d372e3138382d31322e3934352d352e3333390a09632d342e3934382c312e3834392d382e3430312c362e3236352d31312e3538392c31302e34373763312e3037362d32332e3535322c31332e3039382d34362e3337382c33312e3931312d36302e3538386331302e3739352d382e3135342c32332e3534342d31332e3531372c33332e3937342d32322e3133320a096331362e31352d31332e33342c32352e3433322d33332e3534372c32392e3437332d35342e31303173332e3333312d34312e3730382c322e3630352d36322e3634336332372e3734332c31342e3532382c34332e3031322c34392e3433322c33342e3835312c37392e3636370a096332352e3631352d31322e38342c34332e3436322d33382e34342c35302e3835312d36362e313233533434392e3338362c37372e3733372c3434322e322c35306332372e37322c32352e3632312c34322e3436372c36342e3632332c33382e3633322c3130322e3137350a096331342e3432312d31392e3437332c31392e3435392d34352e3538362c31332e3331382d36392e3032366331392e3530322c32312e3131342c32382e34352c35312e3532392c32332e34392c37392e38346331342e3737352d31322e36332c32312e3436352d33332e3938312c31362e35342d35322e3738350a096331342e3630392c31372e3336352c32312e3733362c34302e38322c31392e3235382c36332e3337386332362e3636352d322e3936362c35312e3837332d31372e3331322c36382e3034312d33382e3732327332332e3036372d34392e3538322c31382e3632312d37362e3034310a096331382e30362c31332e3739382c32332e3136352c33392e3730352c31382e3334332c36312e393135632d342e3832322c32322e32312d31372e3734372c34312e3637322d33302e3431352c36302e3534336334322e3232352c302e3439312c38342e3532392d31302e3333382c3132312e3332352d33312e3035360a0963322e3530362c382e3835352d342e3337372c31372e3433392d31312e3134382c32332e363732632d31372e33312c31352e3933332d33372e3339362c32382e3834312d35392e3037392c33372e3936376332382e3137352c32302e3630392c35332e31342c34362e37312c36372e3535382c37382e3530310a097331372e3334322c36392e3732372c332e3030352c3130312e353535632d31352e3033312c33332e3336392d34362e3734392c35362e3338332d37392e3935332c37312e373737632d31352e3931372c372e3337392d33322e3432372c31332e33342d34382e3933332c31392e3234310a09632d31342e3737372c352e3238332d33362e3733352c392e3234372d34392e3137392c31382e393837632d31332e3131372c31302e3236372d32362e3937332c35312e3130362d382e3736312c36332e32343763382e3533322c352e3638382c33352e3534392c32342e3137332c34392e3736392c31352e3634320a096331342e32322d382e3533322c33322e3334322d32372e3031372c31352e34362d34312e32333763302c302d31322e3631362d31372e3937342d32352e3431342d342e373231632d372e3034332c372e3239342d352e3234392c31352e3131342c322e35372c32302e3839380a0963312e3133332c302e3833382c322e3333352c312e3634382c332e3730382c312e39363663322e3230322c302e3531312c342e3534322d302e3333382c362e3332382d312e37323463312e3738362d312e3338362c332e3131362d332e3236312c342e34322d352e3130370a0963322e3538322c312e3738342c352e3030312c342e3535362c342e3539352c372e363639632d302e3834392c362e3530352d31312e3037362c392e3131332d31362e3333372c392e363033632d372e3033382c302e3635352d31342e3333362d302e3735372d32302e3839342d332e3239330a09632d31302e3533342d342e3037342d31362e3630362d31342e3836382d31362e3736362d32352e383731632d302e3234372d31372e3034382c31362e3237362d33342e3332332c33322e3137322d33382e3633316331342e3432332d332e3930392c33302e3336312d312e3235362c34342e36392c312e3737340a0963392e34392c322e3030372c31382e3833312c342e3630362c32382e3139362c372e31313463352e3130312c312e3336362c31312e3531332c332e3937382c31362e3930322c332e3330346331312e3337362d312e3432322c34362e3932352d31372e3036342c35342e3033352d33342e3132370a0963372e31312d31372e3036342c32322e3735312d34342e3038312c31312e3337362d34382e33343763302c302c32372e3031372c33382e3130342d312e3432322c37362e36343263302c302c342e3236362c33302e3030362c34352e3530332c31302e3039380a096334312e3233372d31392e3930382c31382e3438362d39312e3030362c31382e3438362d39312e303036732d32372e3031372d34372e3331352d34312e3233372d35302e36373563302c302c36312e3134342c31332e3730342c38312e3035322c36342e3839350a0963302c302c31392e3930382d38392e3538342d35382e332d3136302e363832732d37382e3230382d37312e3039382d37382e3230382d37312e303938733131352e3137392c32322e3735312c3231332e3239352c3130322e333831733133302e3832312c3138362e3237372c3133372e3933312c3231332e3239360a0963392e3231342c33352e3031362c31342e3636372c37312e3933362c31362e3338312c3130382e303763322e3835352c36302e3139312d32312e3132362c3131392e3033362d33362e3238392c3137362e3332316331382e33372d36392e3339392c33302e3936362d3135342e31362c352e3837352d3232332e3833360a09632d31372e3739342d34392e3431322d33322e3737382d39382e3137382d36332e3532362d3134312e353936632d31322e3336362d31372e3436322d32362e30392d33332e3934352d34302e3436352d34392e37383163302c302c35392e3732332c3131332e3735372c322e3834342c3231312e3837330a0963302c302c382e3533322d3136372e3739322d33352e3534392d3139392e30373563302c302c33392e3831352c3131332e3735372d38322e3437342c3139342e38303963302c302c32382e3433392d33342e3132372c32342e3137332d34352e3530330a0963302c302d32302e3235342c33362e3538372d3133302e3832312c31392e39303763302c302c32322e3735312c32322e3735312c35362e3837392c33312e32383363302c302d32342e3936392c31362e3031372d39312e3030362d31392e3930370a0963302c302c31312e3337362c32312e3332392c34312e3233372c33322e37303563302c302d32342e3438382c31362e312d36392e3637362d31372e30363463302c302d32312e3332392c32372e3031372d37312e3039382c32312e333239732d38322e3437342d33392e3831352d38322e3437342d33392e3831350a0973342e3236362c35342e3033352c31342e32322c36332e39383863302c302d34342e3038312d32352e3539352d35342e3033352d39332e383563302c302d32382e3433392c32312e3332392d382e3533322c34382e33343763302c302d32392e3836312c342e3236362d33322e3730352d35392e3732320a0963302c302d32352e3539352c32342e3137332d31312e3337362c34342e30383163302c302d32342e3137332d31372e3036342d32372e3031372d33312e32383363302c302d31322e3739382c35352e3435372c31352e3634322c36392e3637366c382e3533322c31312e3337360a0963302c302d382e3533322c342e3236362d31392e3930382c3063302c302c31312e3337362c32352e3539352c34312e3233372c31372e3036346332392e3836312d382e3533322c33342e3132372d32372e3031372c33342e3132372d32372e3031377331312e3337362c32322e3735312d392e3935342c33352e3534390a09632d32312e3332372c31322e3739362d34342e3037362c33312e3237392d35352e3435332c33322e37303563342e3233312d302e35332c31382e3231342c31322e3238352c32342e3834332c31332e3134396331362e3738312c322e3138342c35392e3635392d31302e3931372c36362e3135392d32382e37390a0963352e3638382d31352e3634322c372e31312d32392e3836312c372e31312d32392e3836317331322e3739382c32312e3332392c352e3638382c33362e393731732d372e31312c31352e3634322d372e31312c31352e3634327335312e3139312d34342e3038312c37312e3039382d35312e3139310a096331392e3930372d372e31312c3130302e3935392d33312e3238332c3134332e3631382d31372e303634733132332e3731312d312e3432322c3134322e3139362d32312e33323963302c302c312e3432322c32372e3031372d31382e3438362c35342e3033350a0963302c302c31302e3432322c33312e3530392c35382e3135322c34392e3731356331362e3738372c362e3430332c33342e3635342c392e3530332c35322e36322c392e3731316c32372e34342c302e33313763302c302d332e3132362c32382e34322d38382e3434342c32342e3135340a0963302c302c372e31312c35362e3837392c36382e3235342c37362e37383663302c302d31322e3739382c31352e3634322d36322e3536362d31322e37393863302c302d352e3638382c32392e3836312c31322e3739382c34382e33343763302c302d31372e3036342d342e3831322d32392e3836312d32322e3331340a0963302c302d34352e3530332c39312e39392d3133352e3038372c3130302e35323263302c302d31382e3438362c31382e3438362d372e31312c33312e32383363302c302d33352e3534392d32312e3332392d33352e3534392d33352e35343963302c302d39332e38352d342e3236362d3133302e3832312d32392e3836310a0963302c302c352e3638382c33342e3132372d31352e3634322c34342e30383163302c302d32322e3735312d35362e3837392d35362e3837392d34362e393235732d33322e3730352c34382e3334372d33322e3730352c34382e33343773372e31312c32352e3539352c31392e3930382c33322e3730350a096331322e3739382c372e31312c31322e3739382c372e31312c31322e3739382c372e3131732d33382e3339332d322e3834342d35392e3732322d32342e313733632d32312e3332392d32312e3332392d32312e3332392d32312e3332392d32312e3332392d32312e3332390a09632d322e3231322c31382e3538342d322e3536352c33392e3938312c332e3631342c35372e3831366331322e3534362c33362e3230392c35352e3439332c36372e3338362c39332e3132382c37312e33393263322e3235322c302e32342c31392e33362d302e3632392c31392e3835392c302e3139320a0963302c302d33312e3238332d35312e3139312d31382e3438362d37312e30393863302c302c33342e3132372c34322e3635392c35322e3631332c34322e36353963302c302d32322e3735312d36312e3134342d372e31312d37382e3230380a0963382e3330352c31352e3531362c31382e352c33302e3531392c33302e3035372c34332e3737346333362e3938342c34322e3431392c39362e36312c34302e3333392c3134342e3834342c32312e3633366336392e3539322d32362e3938352c36382e3235382d33342e31312c36382e3235342d33342e3132370a0963322e3139352c31312e3333372d32322e3137372c33362e3630342d32382e34372c34332e353936632d34302e3636392c34352e3138382d3130322e3434372c38342e3430312d3136322e3038392c39372e313832632d32332e3138332c342e3936372d34372e3330392c31302e3531322d37312e3133392c382e3531350a096331352e3831312d392e3332362c32392e3633342d32322e3030332c34302e32392d33362e393439632d34362e37312c362e3039362d39382e382c342e3139322d3134322e3736312d31342e323032632d34302e3331312d31362e3836392d37362e3438392d34392e3637332d39352e3132362d38392e3630390a0963302c302d33392e3831352c382e3533322d35362e3837392d31372e30363463302c302c34342e3038312c312e3432322c35382e3330312d33362e39373163302c302d35312e3139312d31352e3634322d34362e3932352d34352e35303363302c302c31342e3231382c32312e39322c34312e3233332c392e3534310a096332332e3934382d31302e3937342c33352e3831352d33362e3836322c35392e3631342d34382e37366332392e37372d31342e3838332c36342e3837332d32372e31322c39382e3531342d32352e3637396332302e3037372c302e38362c33392e3535332c362e3732332c35382e3838342c31322e3231340a096334372e3939332c31332e3633322c39372e3533392c32352e33312c3134372e3239392c32312e36386331382e3132312d312e3332322c33362e3731332d342e3932382c35312e36322d31352e3331366332332e3837362d31362e3633392c33332e3531362d34362e3736332c34312e3634332d37342e3730370a09632d31372e39352c31352e3833362d34322e3834392c32332e3439312d36362e3539352c32302e34373663392e3331382d32302e3439322c32352e3439312d34302e3634342c32312e3035332d36322e373134632d312e3333362d362e3634332d342e35322d31322e3738322d382e3234362d31382e3434320a09632d31302e3436382d31352e3930332d32362e3235392d32392e3034332d34342e3931322d33322e383538632d31382e3635332d332e3831362d33392e3938362c332e3234332d34392e39392c31392e343433632d31302e3030342c31362e3139392d352e3132352c34302e37382c31312e38332c34392e3434310a096331382e3938382c392e3639392c34322e3631342d332e30332c35342e3931392d32302e34343363372e3733352c31342e3030332d312e3931342c33312e3435372d31332e3734352c34322e323234632d31312e3538342c31302e3534322d32362e3139312c31382e3630342d34312e3834342c31392e3134340a09632d32362e3939392c302e39332d34392e3332332d31392e3639362d36382e3330372d33382e393136632d312e3935312c31322e3633392c322e3232342c32362e3038332c31302e3939312c33352e333934632d31372e3537332d302e3538312d33342e3631382d31302e3130342d34342e3332352d32342e3736340a09632d32382e3531362c31312e3139382d35372e3936392c32302e3838382d38382e3437352c32332e373131632d33302e3530362c322e3832332d36322e3336392d312e3634322d38382e3736342d31372e31393663372e36322c342e34392c31352e3538392c32332e3137362c32312e3931372c33302e3339330a0963382e3232392c392e3338352c31372e3335342c31382e3338332c32372e3436392c32352e373236632d32302e3739352d382e3539322d36382e3236392d32302e3539352d37372e3734392d34332e333437632d372e31312d31372e3036342c31372e3036342c33392e3236392c32392e3836312c34342e3531390a0963302c302d39382e3131362d35342e3437332d3132392e3339392d39322e38363663302c302c342e3236362c33312e3238332c32312e3332392c34352e35303363302c302d32382e3433392d312e3432322d34362e3932352d33382e33393363302c302d36312e3134342c392e3935342d35362e3837392d33352e3534390a0963302c302c31372e3036342c31392e3930382c32392e3836312c322e3834346331322e3739382d31372e3036342c322e3834342d34362e3932352d32312e3332392d34342e303831732d33352e3534392c33352e3534392d33352e3534392c33352e3534390a09732d31372e3036342d34362e3932352c31342e32322d37312e30393863302c302c32352e3539352d372e31312c35342e3033352c32312e33323963302c302d32342e3933312d34382e3334372d37322e3839392d34342e30383163302c302d32352e3231362c352e3638382d33332e3734382c32352e3539350a09632d382e3533322c31392e3930372d382e3533322d33392e3133322c32312e3332392d34342e3435316332392e3836312d352e3331382c34312e3233372d362e37342c34362e3932352d31352e32373263352e3638382d382e3533322d322e3834342c312e3432322c382e3533322c372e31310a096331312e3337362c352e3638382c33322e3730352c342e3236362c31372e3036342d31352e363432632d31352e3634322d31392e3930382d33322e3730352d36312e3433332d35342e3033352d36392e38323163302c302c38392e3538342c34352e3634372c39392e3533372c38342e30340a0963392e3935342c33382e3339332c392e3935342c33382e3339332c392e3935342c33382e333933732d32382e3433392d392e3935342d33312e3238332c322e383434632d322e3834342c31322e3739382d322e3834342c32322e3735312c31312e3337362c32342e3137330a096331342e32322c312e3432322c31342e32322c312e3432322c31342e32322c312e34323273322e3834342c34322e3635392c31312e3337362c34392e37363963382e3533322c372e31312c35312e3139312c32342e3137332c35312e3139312c32342e3137330a09732d34392e3736392d36392e3637362d34312e3233372d3130392e34393163302c302d31322e3739382d33312e3238332c31352e3634322d39332e38356332382e3433392d36322e3536362c3137302e3633362d38322e3437342c3137302e3633362d38322e3437340a09733133362e3530392d372e31312c3137302e3633362d34362e3932356332372e3430362d33312e3937342c35362e3738352d38342e3437362c32322e3338392d3132312e373834632d31332e3936342d31352e3134362d33332e3836352d32332e362d35332e3935372d32382e3134390a09632d36332e3534312d31342e3338392d3133342e3139312c392e3132332d3137362e3433382c35382e3731386333342e3330382c352e3136392c37302e3933362d31312e3931392c38392e3031362d34312e35333163342e3435332c32332e3736392d392e3739342c34392e3730322d33322e3234342c35382e3639310a096331372e3030362c352e3632342c33362e3036322c312e3038312c35312e3439382d382e3030367332372e3933332d32322e3331352c34302e3230372d33352e333631632d352e3132332c33332e37362d33362e3837352c35372e3539312d36392e3335352c36382e3132370a09632d33322e34382c31302e3533362d36372e3333342c31312e3535362d3130302e32342c32302e363739632d352e3234342c312e3435342d31302e3532362c332e3135382d31342e3936382c362e333032632d362e3135382c342e3335392d31302e3134332c31312e3035372d31342e3730392c31372e3036330a09632d31332e3239352c31372e3438372d33322e3839362c33302e3037312d35342e3333312c33342e38386331362e3036362d31332e3636352c32372e3536372d33322e3630372c33322e3238322d35332e313634632d32332e3532342c31382e3534382d35352e3331362c32312e3231352d38342e3332312c32382e3730360a09632d32392e3030352c372e34392d36302e3231342c32352e3030382d36342e3738332c35342e363134433230352e3338352c3435382e3436332c3230352e3333392c3435382e3334352c3230352e3239342c3435382e3232377a222f3e0a3c2f7376673e0a', true, true);


--
-- TOC entry 3572 (class 0 OID 25337)
-- Dependencies: 232
-- Data for Name: imagenacta; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3574 (class 0 OID 25360)
-- Dependencies: 234
-- Data for Name: imagensegmento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3570 (class 0 OID 25302)
-- Dependencies: 230
-- Data for Name: junta; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3549 (class 0 OID 24800)
-- Dependencies: 209
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
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1OTgwNjA5LCJleHAiOjE3MTYwNjcwMDl9.yAELoGkSkmO5RXzc5arYmiDJgM5zsLCtebMmfu8QZeo');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2MjE5MDQzLCJleHAiOjE3MTYzMDU0NDN9.NH_8VoWWSmS86t41ljHhLQRLtZtMz5vTgCwvMAZpadg');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (22, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2ODI0MzQwLCJleHAiOjE3MTY5MTA3NDB9.DFwzkDKthZK7Dj7lwPI9-VuLdIXnL9FI9qihsYLR0AY');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2OTEyMDE0LCJleHAiOjE3MTY5OTg0MTR9.tuwf8xsGUvC6Q5AxePB6gm0WsWAvlKiIcE9A4v9EE4M');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2OTMyMDAxLCJleHAiOjE3MTcwMTg0MDF9.cMaNjOG3BQBbTY8oreJdfiUSH4-2kErVLUeiSGIgqHc');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (25, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2OTM1NTMzLCJleHAiOjE3MTcwMjE5MzN9.Bsf5mfOqC97PUb-vtF1z7eTM1UvNlyxR65woBLM0A7o');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MDAxNTYwLCJleHAiOjE3MTcwODc5NjB9.Z1wefpyP2hiQw17YFUIme1r9-MxqQVXp4lCwJUFMrO0');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MDE5MDk2LCJleHAiOjE3MTcxMDU0OTZ9.WrD4T0gcTwy4e5HKoHX0sLH06dkX-UNubtfseIEBduo');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (28, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MTA2NTU5LCJleHAiOjE3MTcxOTI5NTl9.K0BTnwJh7j1YZFYHx0_u4A0Q3wEpHIoh5GbFq3gfOY0');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (29, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MTcyMzYxLCJleHAiOjE3MTcyNTg3NjF9.Fe2_3q6I-bgPFBZtV9pfmCCGsmWZ9dQmqLDkLQ-Ehdc');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (30, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MTcyNDIxLCJleHAiOjE3MTcyNTg4MjF9.nf1mleDvgKwXtMcQOrQP6A-mCcbtgrBJAb-GtWsaSUk');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (31, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MTcyNjE4LCJleHAiOjE3MTcyNTkwMTh9.vUW1RMjCafPfB0XlRysrNKZsZd3jNVtNKN6WU-7nhGc');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3NzA4OTU1LCJleHAiOjE3MTc3OTUzNTV9.x3Cq9Up4r2lydZK134vIAtLMLOrvRVgsWCwv29TeF9o');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (33, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MDI1NTU4LCJleHAiOjE3MTgxMTE5NTh9.UJUIeJ5zwYvC_a_0JbVFzMCzhTw4ZLA_J1Z8nIvdVOk');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (34, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MDIzNDU1LCJleHAiOjE3MTgxMDk4NTV9._kAg92WATj8i2WGDkOXz37bAGZAVDUjq3Oz5q8stczM');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (35, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MDUyODkxLCJleHAiOjE3MTgxMzkyOTF9.kk3y6tsMs1ACUey05gUHi0cC28iswVZnzw1-Dc74Zjg');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (36, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MDUyOTg2LCJleHAiOjE3MTgxMzkzODZ9.mOm0cnM4tqaT5SxJurgNRNakH8K4CnAYjMMSV9jb7vo');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (37, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MjEwMzc0LCJleHAiOjE3MTgyOTY3NzR9.bs-_ZZyKkG36Al8oYESNB1Torpwjts0qx1xbgXswfg0');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (38, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hTGVkZXNtYSIsImlkIjo4NywiaWF0IjoxNzE4MjI1MjE2LCJleHAiOjE3MTgzMTE2MTZ9.E8TjY0ZMoB_xJsh56uUbeUuAtDeFbF6iWYdY5pkbTXU');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (39, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIExlZGVzbWEiLCJpZCI6ODcsImlhdCI6MTcxODIyNTI4OSwiZXhwIjoxNzE4MzExNjg5fQ.o4iSzpYcJ3HgAmmC3VJMFxC5EVry84A9RDh2OAPzRMk');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (40, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgyOTUwODgsImV4cCI6MTcxODM4MTQ4OH0.aIC9KrVShXlXIAz25ho4sn7ndBtff-mrLXhfFc10D_E');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (41, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzMDEzNjQsImV4cCI6MTcxODM4Nzc2NH0.Pirr6g6FTZpvIdcGdkwIU8wAG3j4HtKML5iVYAAo3Gs');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (42, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzMDk1MTcsImV4cCI6MTcxODM5NTkxN30.zjuEmDOg4j1j5J8D20J4QrE8nUlm_Ghydo_vEl4avSg');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (43, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzMDk2NDUsImV4cCI6MTcxODM5NjA0NX0.h9NmpcfWHPDnWGUoroTtBRzk7plW7pKXxARNWUDfQ4o');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (44, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ0MTIsImV4cCI6MTcxODQ2MDgxMn0.rXQTLEDPsb0wzVI87-HKm0X-1KbnqFrl_Md0rTIs5AE');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (45, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ1MDcsImV4cCI6MTcxODQ2MDkwN30.rauqa09pCMAvWXBGRhR48yGC7LWmAmhS4XFeM-IBavI');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (46, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ1OTEsImV4cCI6MTcxODQ2MDk5MX0.W20ynL_PavX3SpXnyhxTPs4lsjBhXOrZLnrhUTqCyuU');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (47, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ1OTEsImV4cCI6MTcxODQ2MDk5MX0.W20ynL_PavX3SpXnyhxTPs4lsjBhXOrZLnrhUTqCyuU');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (48, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ2NDYsImV4cCI6MTcxODQ2MTA0Nn0.5uMJeXW65WQwMVg61wm01Hz_MKZYjomV2Yu3X2PkWyE');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ3MTgsImV4cCI6MTcxODQ2MTExOH0.EOKBvsCKjxLszuXO6XbPUzkg2hpqdObYO9bzAHw4YJA');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (50, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ3NTksImV4cCI6MTcxODQ2MTE1OX0.T__HPpfSPxDQAxyRCVy1SYAVma8jqFHlf4UdqDA7Cms');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (51, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ3ODQsImV4cCI6MTcxODQ2MTE4NH0.AvVP5A7NjxXatzv1-F75WIOqDMiXaoQyrL2oMYsDSIk');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (52, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzgwODAsImV4cCI6MTcxODQ2NDQ4MH0.jCG4aFOSomeghj3x9bcdF_RbujgjORtJSzP4OiOwtmo');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (53, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTU3ODIsImV4cCI6MTcxODc0MjE4Mn0.-QHmOkl5ytlQ9kVqp0OfLvyw0Kt5JC8yV1vRlalatKU');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (54, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTgyODcsImV4cCI6MTcxODc0NDY4N30.t2k3E7uTA8rHlhULn5d0HgxIRgW2U8KJItdkLsocN7g');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (55, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTkzMzcsImV4cCI6MTcxODc0NTczN30.0B2KMxroco80uc2E-J_TuToScVRWVDyQE4CbVpQxsG8');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (56, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTk2NjUsImV4cCI6MTcxODc0NjA2NX0.MwjohXTQPfHDWlxeS6-id5QVI_UCbPVWjo7X9BGnOqM');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (57, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTk3MjIsImV4cCI6MTcxODc0NjEyMn0.lRpjUnMYlYrXrtw3KY1krvBaPDMDsc1W7TfEs862in0');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (58, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTk3NjAsImV4cCI6MTcxODc0NjE2MH0.KAMDuxmj85tOJo2gyrII1zWDAMW9iCV1uW_oKIq8pSI');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (59, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NjAwNzAsImV4cCI6MTcxODc0NjQ3MH0.bUoOm9F4FhIMugp00vQl_HYu5GFvGGMLwmP-u_J7hRQ');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (60, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NjA3NDYsImV4cCI6MTcxODc0NzE0Nn0.GMZk7ZOyVNEBt6i39PQi9ZuhFsQ46Tb3Mnpm_Wn_M0E');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (61, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NjExMTcsImV4cCI6MTcxODc0NzUxN30.g1F8fkxCT3vzPz_bmbwH8L9_0j0Zq9cCKXS5c0jFs-U');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (62, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTY5MjksImV4cCI6MTcxODgwMzMyOX0.hKimmbqmcTWS5N__QTeAhrk1qsGqparldP132uUdP2Q');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (63, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTY5NDgsImV4cCI6MTcxODgwMzM0OH0._cyxtW-LipQBC1L9ZWQysjZyCecOPQ5x01TmKuUgi1s');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (64, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTc2OTIsImV4cCI6MTcxODgwNDA5Mn0.x1LD4TE_dpK5kA4LrwN8G4Jf706mZXOYYyRS-zlHmt8');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (65, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTk2MzcsImV4cCI6MTcxODgwNjAzN30.7WyhWIcJrRz8Fibh_8RkPfSuD5U7gqGM-gA8VopM0bQ');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (66, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTk3NDUsImV4cCI6MTcxODgwNjE0NX0.OcavSyqIZKs32w1z5y1QjMPgPaCVc5iw9i-_qzQhemc');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (67, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjA4NDYsImV4cCI6MTcxODgwNzI0Nn0.KTDHg4jqCIaAlVz1Cn-ajeLB_GRS6ejqrMr2lPohedw');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (68, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjEwMDcsImV4cCI6MTcxODgwNzQwN30.xHdF3jpAPWf7d0uPMhX-RE0LWTmGSHAG3YZ3PLo22aE');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (69, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjE3OTEsImV4cCI6MTcxODgwODE5MX0.eDXZc1D080UcnJ8grWSHlKehAJADWmb39nQ3pb-5xv8');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (70, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjQ4MjIsImV4cCI6MTcxODgxMTIyMn0.Xf5sEpSaOldJ5h48JqACuXxint20XwVcQpD8nomFbOQ');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (71, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjQ4NjAsImV4cCI6MTcxODgxMTI2MH0.pnV25CzAQA_9jk8UGmVy7kvuUl8QtXieOPhL3LVjAXA');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (72, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg5NzYwNjQsImV4cCI6MTcxOTA2MjQ2NH0.aMh62H5ICiQkt8c_QVpQcVLqXGScMU0C6DUVb7-d3X0');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (73, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg5OTk3ODAsImV4cCI6MTcxOTA4NjE4MH0.-vUfOdZ_bAFU4PQeBn7086Z8pTGSK1gGYIFGqW5PW1Q');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (74, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTkwMDI2MjksImV4cCI6MTcxOTA4OTAyOX0.daOHfAQoa6Ic2Jh4I2gSYcj3ZA-6E8DydY-KaLXCPjw');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (75, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTkyMzMwMTgsImV4cCI6MTcxOTMxOTQxOH0.4oR6poGz1zpDxodbvurExex6MHLdLvtrrpEKXgdgbw4');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (76, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTkyMzU2ODUsImV4cCI6MTcxOTMyMjA4NX0.XK4cIgUyv6laaejUWOSia7FBx-wN5h4xhK09YbfAYuI');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (77, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTkyMzY4ODEsImV4cCI6MTcxOTMyMzI4MX0.sh_bDtBf6Vr-op_8GoJfNZZG7O_rL8sVDjavmkZC2Z4');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (78, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTk4NDYwNDUsImV4cCI6MTcxOTkzMjQ0NX0.aLeNfLfF2fGHuo46dHoJ2X6zxL1OODHSElOxyVM-i4g');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (79, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJHdWFub2xlbWEiLCJpZCI6ODcsImlhdCI6MTcxOTk1NTI1NiwiZXhwIjoxNzIwMDQxNjU2fQ.wQW6BW8nLNLKfh59cOPj2uyT0LB80GeseaJECnswS58');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (80, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJHdWFub2xlbWEiLCJpZCI6ODcsImlhdCI6MTcxOTk1NTk5MywiZXhwIjoxNzIwMDQyMzkzfQ.ZFTw-N2YzoIwh2ZXdS50KcxyA3-gW7c_tAhU8BByCtc');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (81, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJHdWFub2xlbWEiLCJpZCI6ODcsImlhdCI6MTcxOTk1NjY4OSwiZXhwIjoxNzIwMDQzMDg5fQ.sy8v8GTLqBxLZzxyrY0pHVyrks1GG7k-MIRmVRv9PXs');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (82, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJHdWFub2xlbWEiLCJpZCI6ODcsImlhdCI6MTcyMDAxMzAyNSwiZXhwIjoxNzIwMDk5NDI1fQ.HnSWTLv5_em2NtOtMtfC8BtXxLbe6FQJT4wsb9pn0ik');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (83, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJHdWFub2xlbWEiLCJpZCI6ODcsImlhdCI6MTcyMDAxMzA4MywiZXhwIjoxNzIwMDk5NDgzfQ.hc86w29nQXhnGAwAucY0dGNu5DjvdReoGbYPEDCFLJ8');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (84, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJHdWFub2xlbWEiLCJpZCI6ODcsImlhdCI6MTcyMDcwMzgzNSwiZXhwIjoxNzIwNzkwMjM1fQ.PhwChzQ9HKZTbT2Bmj2qnPwFzKaFGfR_DL1tp921ekg');
INSERT INTO public.listanegratoken OVERRIDING SYSTEM VALUE VALUES (85, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJHdWFub2xlbWEiLCJpZCI6ODcsImlhdCI6MTcyMDcwNTA4MCwiZXhwIjoxNzIwNzkxNDgwfQ.U3BVGiTrgFfPs2p0pINusHNZRz_VLNX_eGaWq6yLI3U');


--
-- TOC entry 3551 (class 0 OID 24831)
-- Dependencies: 211
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (10, 'Usuarios-admin', 'pi pi-file-pdf', true, 14, 1, '2024-05-09 10:00:50.531-05', NULL, 16, NULL, 'usuarioadmin', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (9, 'Modulos', 'widgets', true, 13, 1, '2024-02-28 15:58:06.435-05', '2024-06-21 11:29:57.44', 16, 87, '/app/seguridades/modulos/', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (8, 'Roles', 'background_replace', true, 13, 3, '2024-02-28 15:45:36.222-05', '2024-06-21 11:33:02.812', 16, 87, '/app/seguridades/rol/', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (17, 'Integracion', 'sdf', true, 17, 1, '2024-06-05 12:45:41.481-05', '2024-06-21 12:02:05.748', 87, 87, 'sdf', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (16, 'prueba', 'prueba', false, 15, NULL, '2024-05-28 16:58:08.855-05', '2024-06-04 17:12:13.297', 16, 87, 'prueba', false);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (14, 'Reporte Básica', 'pi pi-file-pdf', true, 16, 1, '2024-05-09 10:27:05.065-05', '2024-06-05 12:00:14.78', 16, 87, '/app/reportes/reportebasica/', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (13, 'Reporte Nacional', 'pi pi-file-pdf', true, 16, 2, '2024-05-09 10:27:00.999-05', '2024-06-05 12:08:29.838', 16, 87, '/app/home/reportenacional/', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (11, 'Proceso 1', 'pi pi-briefcase', true, 15, 1, '2024-05-09 10:26:37.518-05', '2024-06-05 12:42:26.366', 16, 87, '/app/procesos/proceso1/', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (19, 'digitación', 'ssdf', true, 15, 1, '2024-07-02 16:38:03.394-05', NULL, 87, NULL, '/digita/', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (18, 'mis', 'pruebas', true, 24, 1, '2024-06-24 09:42:53.147-05', '2024-07-09 16:32:19.005', 16, 16, 'pruebas', false);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (7, 'Menu', 'menu', true, 13, 2, '2024-02-28 15:38:34.319-05', '2024-06-21 10:51:00.169', 16, 87, '/app/seguridades/menu/', true);
INSERT INTO public.menu OVERRIDING SYSTEM VALUE VALUES (12, 'Usuarios', 'supervisor_account', true, 13, 4, '2024-05-09 10:26:43.479-05', '2024-06-21 10:52:46.845', 16, 87, '/app/seguridades/usuarios/', true);


--
-- TOC entry 3553 (class 0 OID 24836)
-- Dependencies: 213
-- Data for Name: modulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (22, 'demo_borrar', 'asd', 'asd', 'asd', false, '2024-06-04 17:17:59.411-05', '2024-06-04 17:18:30.756-05', 87, 87, 'ad', false);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (23, 'borrar_dos', 'asd', 'asd', 'asd', false, '2024-06-04 17:19:04.886-05', '2024-06-04 17:19:29.883-05', 87, 87, 'adad', false);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (18, 'demo', 'dmo', 'demo', 'demo', false, '2024-05-30 15:23:38.697-05', '2024-05-31 11:33:37.184-05', 87, 16, 'demo', false);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (14, 'Seguridades_old', 'nvo', 'seguridades', 'pi pi-shield', false, '2024-05-09 09:59:03.863-05', '2024-06-05 12:58:15.389-05', 16, 87, 'text-pink-400', true);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (21, 'Proceso_old', 'Pro', '/app/procesos/home', 'pi pi-share-alt', false, '2024-05-30 17:20:51.224-05', '2024-06-10 10:50:05.977-05', 87, 87, 'text-orange-500', true);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (13, 'Administracion', 'admin', '/app/seguridades/home', 'settings', true, '2024-02-28 15:37:28.051-05', '2024-06-21 11:34:49.394-05', 16, 87, 'text-bluegray-500', true);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (15, 'Procesos', 'nvo', '/app/procesos/home', 'tenancy', true, '2024-05-09 10:26:12.15-05', '2024-06-21 11:59:40.298-05', 16, 87, 'text-blue-500', true);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (19, 'demoAux', 'demoAux', 'demoAux', 'demoAux', true, '2024-05-30 15:25:03.864-05', '2024-05-30 17:14:30.61-05', 87, 87, 'demoAux', false);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (17, 'Integración', 'Int', '/app/itengracion/home', 'dataset_linked', true, '2024-05-30 15:21:24.216-05', '2024-06-21 15:33:34.423-05', 87, 87, 'text-indigo-500', true);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (16, 'Reportes', 'nvo', '/app/reportes/home', 'finance', true, '2024-05-09 10:26:17.936-05', '2024-06-21 15:51:25.221-05', 16, 87, 'text-orange-500', true);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (20, 'Reportes_old', 'repo', '/app/reportes/home', 'pi pi-chart-bar', false, '2024-05-30 17:19:34.377-05', '2024-05-31 16:49:03.779-05', 87, 87, 'text-blue-500', true);
INSERT INTO public.modulo OVERRIDING SYSTEM VALUE VALUES (24, 'demo_sdfsdf', 'sdf', 'sdf', 'sdfsdf', true, '2024-06-04 17:21:32.742-05', '2024-06-24 10:48:54.319-05', 87, 16, 'df', true);


--
-- TOC entry 3568 (class 0 OID 25275)
-- Dependencies: 228
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5, 360, 'ABANIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (10, 440, 'ABDON CALDERON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (15, 285, 'ABDON CALDERON / LA UNION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (20, 215, 'ACHUPALLAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (25, 620, 'AHUANO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (30, 60, 'ALANGASI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (35, 100, 'ALAQUEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (40, 200, 'SANTA FE DE GALAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (45, 200, 'SAN JOSE DEL CHAZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (50, 440, 'ALHAJUELA /BAJO GRANDE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (55, 70, 'ALOAG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (60, 70, 'ALOASI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (65, 590, 'ALSHI /9 DE OCTUBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (70, 580, 'ALTO TAMBO/GUADAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (75, 85, 'ALLURIQUIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (80, 60, 'AMAGUAÑA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (85, 955, 'AMALUZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (90, 595, 'AMAZONAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (95, 135, 'AMBATILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (100, 30, 'AMBUQUI/CHOTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (105, 455, 'AMERICA /LA CERA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (110, 580, 'ANCON/PALMA REAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (115, 405, 'ANCONCITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (120, 565, 'ANCHAYACU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (125, 105, 'ANGAMARCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (130, 30, 'ANGOCHAGUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (135, 110, 'ANTONIO J. HOLGUIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (140, 525, 'ANTONIO SOTOMAYOR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (145, 40, 'APUELA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (150, 945, 'PATRICIA PILAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (155, 615, 'ARAPICOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (160, 860, 'EL INGENIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (165, 65, 'ASCAZUBI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (170, 170, 'ASUNCION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (175, 270, 'ASUNCION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (180, 610, 'ASUNCION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (185, 715, 'VALLE DE LA VIRGEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (190, 135, 'ATAHUALPA /CHIPZALATA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (195, 60, 'ATAHUALPA /HABASPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (200, 565, 'ATAHUALPA/CAMARONES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (205, 410, 'ATAHUALPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (210, 135, 'AUGUSTO N MARTINEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (215, 935, 'AVILA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (220, 470, 'AYACUCHO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (225, 705, 'AYAPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (230, 865, 'EL REVENTADOR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (235, 805, 'BELLA VISTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (240, 485, 'MEMBRILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (245, 380, 'LA IBERIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (250, 10, 'PIARTAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (255, 350, 'EL RETIRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (260, 400, 'LIMONAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (265, 550, 'BACHILLERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (270, 330, 'EL ARENAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (275, 175, 'BALZAPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (280, 295, 'LIMONES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (285, 260, 'BAÑOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (290, 295, 'GARZAREAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (295, 145, 'BAQUERIZO MORENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (300, 380, 'BARBONES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (305, 85, 'VALLE HERMOSO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (310, 305, 'SUMAYPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (315, 100, 'BELISARIO QUEVEDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (320, 340, 'BELLAVISTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (325, 355, 'BELLAVISTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (330, 460, 'BELLAVISTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (335, 140, 'BENITEZ /PACHANLICA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (340, 595, 'BERMEJOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (345, 175, 'BILOVAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (350, 595, 'BOMBOIZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (355, 570, 'BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (360, 740, 'FUNDOCHAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (365, 140, 'BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (370, 565, 'BORBON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (375, 705, 'SAN JUAN DE CERRO AZUL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (380, 480, 'BOYACA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (385, 815, 'BUENAVISTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (390, 365, 'BUENAVISTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (395, 275, 'BULAN / J. VICTOR IZQUIERDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (400, 935, 'SAN VICENTE DE HUATICOCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (405, 480, 'CHIBUNGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (410, 200, 'VALPARAISO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (415, 725, 'SAN CARLOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (420, 195, 'CACHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (425, 55, 'CAHUASQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (430, 60, 'CALACALI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (435, 580, 'CALDERON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (440, 60, 'CALDERON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (445, 195, 'CALPI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (450, 560, 'CAMARONES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (455, 981, 'BELLAVISTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (460, 495, 'CAMPOZANO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (465, 115, 'CANCHAGUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (470, 477, 'CANOA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (475, 680, 'CANELOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (480, 65, 'CANGAHUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (485, 310, 'CANGONAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (490, 725, 'ENOKANQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (495, 480, 'CANUTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (500, 205, 'CANI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (505, 370, 'CAPIRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (510, 630, 'CAP. AUGUSTO RIVADENEIRA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (515, 220, 'CAPZOL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (520, 515, 'CARACOL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (525, 611, 'SHIMPIS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (530, 30, 'CAROLINA /GUALLUPI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (535, 580, 'CARONDELET');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (540, 495, 'CASCOL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (545, 310, 'SAN ANTONIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (550, 295, 'MANGAHURCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (555, 210, 'CEBADAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (560, 455, 'LA UNION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (565, 330, 'CIANO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (570, 580, '5 DE JUNIO/HUIMBI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (575, 885, 'COCHAPATA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (580, 910, 'COJIMIES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (585, 235, 'COJITAMBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (590, 320, 'COLAIZACA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (595, 926, 'HUASAGA /WAMPUIK');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (600, 720, 'SAN PEDRO DE LOS COFANES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (605, 410, 'COLONCHE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (610, 205, 'COLUMBE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (615, 220, 'COMPUD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (620, 580, 'CONCEPCION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (625, 60, 'CONOCOTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (630, 630, 'CONONACO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (635, 135, 'CONSTANTINO FERNANDEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (640, 480, 'CONVENTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (645, 605, 'COPAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (650, 70, 'CORNEJO ASTORGA /TANDAPI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (655, 560, 'CRNL.CARLOS CONCHA TORRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (660, 790, 'CRNEL. LORENZO GARAICOA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (665, 775, 'EL GUISMI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (670, 635, 'COSANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (675, 140, 'COTALO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (680, 80, 'COTOGCHOA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (685, 700, 'COTUNDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (690, 10, 'CRISTOBAL COLON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (695, 315, 'CRUZPAMBA/BUSTAMANTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (700, 575, 'CUBE / CHANCAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (705, 195, 'CUBIJIES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (710, 925, 'SAN JACINTO DE WAKAMBEIS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (715, 615, 'CUMANDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (720, 655, 'CUMBARATZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (725, 60, 'CUMBAYA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (730, 260, 'CUMBE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (735, 881, 'CURARAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (740, 690, 'CURTINCAPAC');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (745, 110, 'CUSUBAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (750, 280, 'CUTCHIL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (755, 70, 'CUTUGLAGUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (760, 626, 'CUYABENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (765, 635, 'CUYUJA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (770, 440, 'CRUCITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (775, 365, 'CAÑAQUEMADA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (780, 720, 'SIETE DE JULIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (785, 910, 'ATAHUALPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (790, 340, 'EL INGENIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (795, 165, 'SAN LUIS DE PAMBIL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (800, 135, 'CUNCHIBAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (805, 375, 'CHACRAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (810, 135, 'UNAMUNCHO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (815, 930, 'PALO QUEMADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (820, 410, 'CHANDUY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (825, 335, 'CHANGAIMINA /LA LIBERTAD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (830, 115, 'CHANTILIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (835, 730, 'CHAQUINAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (840, 475, 'CHARAPOTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (845, 260, 'CHAUCHA / ANGAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (850, 70, 'CHAUPI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (855, 60, 'CHAVEZPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (860, 260, 'CHECA JIDCAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (865, 60, 'CHECA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (870, 275, 'CHICAN / GUILLERMO ORTEGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (875, 795, 'CHIGUAZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (880, 595, 'CHIGUINDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (885, 270, 'SAN GERARDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (890, 275, 'DUG-DUG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (895, 560, 'CHINCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (900, 140, 'CHIQUICHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (905, 260, 'CHIQUINTAD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (910, 10, 'CHITAN DE NAVARRETES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (915, 660, 'CHITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (920, 420, 'CHOBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (925, 225, 'LA CANDELARIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (930, 561, 'CHONTADURO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (935, 240, 'CHONTAMARCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (940, 620, 'CHONTAPUNTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (945, 775, 'TUNDAYME');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (950, 240, 'CHOROCOPTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (955, 50, 'CHUGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (960, 930, 'CHUGCHILAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (965, 561, 'CHUMUNDE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (970, 605, 'CHUPIANZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (975, 300, 'CHUQUIRIBAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (980, 575, 'CHURA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (985, 670, 'CHICANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (990, 115, 'COCHAPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (995, 310, 'CASANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1000, 310, 'YAMANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1005, 265, 'DANIEL CORDOVA TORAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1010, 570, 'DAULE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1015, 775, 'PACHICUTZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1020, 255, 'GONZALO DIAZ DE PINEDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1025, 680, '10 DE AGOSTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1030, 910, '10 DE AGOSTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1035, 730, '12 DE DICIEMBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1040, 35, 'DR MIGUEL EGAS/PEGUCHE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1045, 625, 'DURENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1050, 935, 'PUERTO MURIALDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1055, 25, 'SAN RAFAEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1060, 840, 'SAN SEBASTIAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1065, 840, 'BARRAGANETE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1070, 500, 'WILFRIDO LOOR MOREIRA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1075, 755, 'SAN ISIDRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1080, 755, 'EL PARAISO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1085, 245, 'JERUSALEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1090, 865, 'GONZALO PIZARRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1095, 745, 'SEVILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1100, 755, 'LA LIBERTAD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1105, 470, 'SAN PABLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1110, 225, 'EL ALTAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1115, 455, 'EL ANEGADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1120, 981, 'NUEVO QUITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1125, 5, 'EL CARMELO/EL PUN/');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1130, 556, 'EL CARMEN DE PIJILI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1135, 300, 'EL CISNE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1140, 610, 'SANTA MARIANITA DE JESUS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1145, 660, 'EL CHORRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1150, 15, 'EL GOALTAL / LAS JUNTAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1155, 330, 'EL LIMO /MARIANA DE JESUS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1160, 480, 'ELOY ALFARO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1165, 305, 'EL PARAISO DE CELEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1170, 640, 'EL PLAYON DE SN. FRANCISCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1175, 885, 'EL PROGRESO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1180, 815, 'EL ROSARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1185, 140, 'EL ROSARIO /RUMICHACA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1190, 305, 'EL TABLON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1195, 5, 'EL CHICAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1200, 290, 'EL TAMBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1205, 926, 'TUTINENTZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1210, 145, 'EMILIO MARIA TERAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1215, 35, 'EUGENIO ESPEJO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1220, 800, 'EL PROGRESO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1225, 365, 'PROGRESO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1230, 320, 'EL LUCERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1235, 645, 'DAYUMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1240, 661, 'EL PORVENIR DEL CARMEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1245, 645, 'TARACOA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1250, 590, 'CUCHAENTZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1255, 165, 'FACUNDO VELA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1260, 680, 'FATIMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1265, 515, 'FEBRES CORDERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1270, 10, 'FERNANDEZ SALVADOR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1275, 680, 'EL TRIUNFO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1280, 195, 'FLORES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1285, 625, 'EL ENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1290, 625, 'PACAYACU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1295, 797, 'SAN JOSE DE MORONA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1300, 410, 'SAN JOSE DE ANCON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1305, 570, 'GALERA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1310, 40, 'GARCIA MORENO / LLURIMAGUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1315, 25, 'GARCIA MORENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1320, 140, 'GARCIA MORENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1325, 225, 'BILBAO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1330, 625, 'GENERAL FARFAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1335, 240, 'GRAL.MORALES / SOCARTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1340, 395, 'GRAL.PEDRO MONTERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1345, 590, 'GRAL. PROAÑO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1350, 430, 'GRAL. VERNAZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1355, 280, 'GIMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1360, 35, 'GONZALEZ SUAREZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1365, 605, 'SAN FCO. DE CHINIMBIMI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1370, 220, 'GONZOL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1375, 90, 'QUINCHICOTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1380, 310, 'GUACHANAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1385, 370, 'SARACAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1390, 655, 'GUADALUPE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1395, 495, 'GUALE/STO.DOMINGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1400, 60, 'GUALEA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1405, 300, 'GUALEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1410, 240, 'GUALLETURO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1415, 200, 'GUANANDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1420, 360, 'GUANAZAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1425, 360, 'GUIZHAGUIÑA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1430, 105, 'GUANGAJE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1435, 125, 'SAN JACINTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1440, 60, 'GUANGOPOLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1445, 235, 'GUAPAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1450, 815, 'AMARILLOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1455, 275, 'GUARAINAC');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1460, 520, 'GUARE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1465, 215, 'GUASUNTOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1470, 385, 'GUAYAS / PUERTO NUEVO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1475, 60, 'GUAYLLABAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1480, 290, 'GUAYQUICHUMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1485, 100, 'GUAYTACAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1490, 280, 'GUEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1495, 315, 'TNTE M.RODRIGUEZ LOAYZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1500, 825, 'GUASAGANDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1505, 565, 'SAN JOSE DE CAYAPAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1510, 565, 'COLON ELOY DE MARIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1515, 565, 'TIMBIRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1520, 995, 'MARISCAL SUCRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1525, 515, 'LA UNION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1530, 575, 'LA UNION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1535, 915, 'LA UNION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1540, 780, 'SUSUDEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1545, 445, 'LA PILA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1550, 320, 'SANGUILLIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1555, 626, 'AGUAS NEGRAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1560, 645, 'EL DORADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1565, 645, 'INES ARANGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1570, 460, 'ARQ.SIXTO DURAN BALLEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1575, 915, 'SAN MARTIN DE PUZHIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1585, 915, 'LUIS GALARZA O. (DELEGSOL)');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1590, 645, 'EL EDEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1595, 430, 'JUNQUILLAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1600, 230, 'NOVILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1605, 240, 'HONORATO VASQUEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1610, 470, 'HONORATO VASQUEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1615, 785, 'TONSUPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1620, 230, 'ZAPALLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1625, 135, 'HUACHI GRANDE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1630, 140, 'HUAMBALO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1635, 610, 'HUAMBI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1640, 385, 'EL ROSARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1645, 340, 'EL AIRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1650, 960, 'SAN VICENTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1655, 360, 'HUERTAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1660, 215, 'HUIGRA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1665, 355, 'BELLAMARIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1670, 715, 'SABANILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1675, 130, 'ZURMI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1680, 935, 'SAN JOSE DE DAHUANO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1685, 615, '16 DE AGOSTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1690, 555, 'SAN RAFAEL DE SHARUG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1695, 375, 'CARCABON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1700, 360, 'SINSAO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1705, 200, 'ILAPO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1710, 40, 'IMANTAG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1715, 45, 'IMBAYA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1720, 600, 'INDANZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1725, 240, 'INGAPIRCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1730, 590, 'RIO BLANCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1735, 930, 'ISINLIVI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1740, 520, 'ISLA DE BEJUCAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1745, 135, 'IZAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1750, 360, 'SALVIAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1755, 85, 'LUZ DE AMERICA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1760, 265, 'LUIS CORDERO VEGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1765, 5, 'SANTA MARTHA DE CUBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1770, 655, 'SAN CARLOS DE LAS MINAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1775, 240, 'VENTURA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1780, 300, 'QUINARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1785, 925, 'SANTIAGO DE PANANZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1790, 625, 'SANTA CECILIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1795, 625, 'JAMBELI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1800, 450, 'SANTA MARIANITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1805, 265, 'JADAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1810, 645, 'GARCIA MORENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1815, 355, 'JAMBELI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1820, 645, 'LA BELLEZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1825, 235, 'JAVIER LOYOLA / CHUQUIPATA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1830, 435, 'JESUS MARIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1835, 20, 'JIJON Y CAAMAÑO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1840, 300, 'JIMBILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1845, 340, 'JIMBURA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1850, 405, 'JOSE LUIS TAMAYO / MUEY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1855, 400, 'JUAN BAUTISTA AGUIRRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1860, 135, 'JUAN BENIGNO VELA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1865, 205, 'JUAN DE VELASCO / PONGOR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1870, 390, 'JUAN GOMEZ RENDON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1875, 20, 'JUAN MONTALVO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1880, 455, 'JULCUY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1885, 5, 'JULIO ANDRADE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1890, 165, 'JULIO E MORENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1895, 240, 'DUCUR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1900, 240, 'JUNCAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1905, 100, 'JOSEGUANGO BAJO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1910, 595, 'EL IDEAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1915, 395, 'VIRGEN DE FATIMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1920, 975, 'SALANGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1925, 440, 'CHIRIJOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1930, 620, 'TALAG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1935, 645, 'SAN LUIS DE ARMENIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1940, 645, 'NUEVO PARAISO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1945, 645, 'SAN JOSE DE GUAYUSA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1950, 725, 'RUMIPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1955, 725, 'TRES DE NOVIEMBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1960, 725, 'LAGO SAN PEDRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1965, 725, 'UNION MILAGREÑA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1970, 85, 'SAN JACINTO DEL BUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1975, 875, 'BELLAMARIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1980, 500, 'SAN PEDRO DE SUMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1985, 805, 'SANTA ROSA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1990, 85, 'EL ESFUERZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (1995, 645, 'ALEJANDRO LABAKA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2000, 295, 'BOLASPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2005, 355, 'LA AVANZADA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2010, 20, 'LA CONCEPCION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2015, 660, 'LA CHONTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2020, 30, 'LA ESPERANZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2025, 75, 'LA ESPERANZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2030, 550, 'ANGEL PEDRO GILER');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2035, 561, 'LAGARTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2040, 15, 'LA LIBERTAD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2045, 85, 'SANTA MARIA DEL TOACHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2050, 380, 'RIO BONITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2055, 60, 'LA MERCED');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2060, 55, 'LA MERCED DE BUENOS AIRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2065, 10, 'LA PAZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2070, 665, 'LA PAZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2075, 365, 'LA PEAÑA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2080, 200, 'LA PROVIDENCIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2085, 325, 'LA RAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2090, 495, 'LASCANO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2095, 640, 'LA SOFIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2100, 880, 'SAN JOSE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2105, 400, 'LAS LOJAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2110, 660, 'SAN ANDRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2115, 930, 'LAS PAMPAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2120, 311, 'LA TINGUE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2125, 565, 'LA TOLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2130, 785, 'LA UNION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2135, 470, 'LA UNION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2140, 310, 'LAURO GUERRERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2145, 325, 'LA VICTORIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2150, 105, 'LA VICTORIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2155, 655, 'LA VICTORIA DE IMBANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2160, 195, 'LICAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2165, 195, 'LICTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2170, 661, 'LA CANELA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2175, 720, 'LIMONCOCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2180, 255, 'LINARES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2185, 30, 'LITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2205, 25, 'LOS ANDES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2210, 155, 'LOS ANDES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2215, 280, 'LUDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2220, 235, 'LUIS CORDERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2225, 565, 'LUIS VARGAS TORRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2230, 370, 'LA BOCANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2240, 670, 'LOS ENCUENTROS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2255, 260, 'LLACAO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2260, 220, 'LLAGOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2265, 60, 'LLANO CHICO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2270, 150, 'LLIGUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2275, 60, 'LLOA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2280, 305, 'LLUZHAPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2285, 926, 'MACUMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2305, 975, 'MACHALILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2310, 685, 'MADRE TIERRA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2315, 170, 'MAGDALENA/CHAPACOTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2320, 560, 'MAJUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2325, 300, 'MALACATOS/VALLADOLID');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2330, 75, 'MALCHINGUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2335, 565, 'MALDONADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2340, 5, 'MALDONADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2345, 575, 'MALIMPIA / GUAYLLABAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2350, 360, 'MALVAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2355, 410, 'MANGLARALTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2360, 305, 'MANU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2365, 250, 'MANUEL J. CALLE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2375, 145, 'MARCOS ESPINEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2380, 50, 'MARIANO ACOSTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2385, 265, 'MARIANO MORENO/CALLASAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2390, 420, 'MARISCAL SUCRE/HUAQUES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2395, 580, 'MATAJE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2400, 225, 'MATUS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2405, 330, 'MERCADILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2410, 770, 'MINDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2430, 260, 'MOLLETURO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2435, 135, 'MONTALVO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2445, 561, 'MONTALVO / HORQUETA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2450, 680, 'MONTALVO/ANDOAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2455, 25, 'MONTEOLIVO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2460, 120, 'MORASPUNGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2465, 370, 'MOROMORO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2470, 390, 'MORRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2475, 110, 'MULALILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2480, 100, 'MULALO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2485, 215, 'MULTITUD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2490, 110, 'MULLIQUINDIL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2520, 335, 'NAMBACOLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2525, 60, 'NANEGAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2530, 60, 'NANEGALITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2540, 60, 'NAYON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2545, 245, 'NAZON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2550, 885, 'NIEVES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2555, 460, 'NOBOA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2560, 60, 'NONO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2565, 595, 'NUEVA TARQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2570, 260, 'MULTI /  NULTI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2575, 345, 'NUEVA FATIMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2595, 260, 'OCTAVIO CORDERO PALACIOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2600, 65, 'OLMEDO/PESILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2620, 100, '11 DE NOVIEMBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2630, 310, 'ORIANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2635, 65, 'OTON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2640, 255, 'OYACACHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2670, 565, 'PAMPANAL DE BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2675, 55, 'PABLO ARENAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2680, 260, 'PACCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2690, 60, 'PACTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2710, 295, 'PALETILLAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2715, 375, 'PALMALES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2720, 650, 'PALMA ROJA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2725, 955, 'PALMAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2730, 210, 'PALMIRA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2745, 250, 'PANCHO NEGRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2750, 925, 'PAN DE AZUCAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2755, 620, 'PANO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2760, 110, 'PANZALEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2765, 720, 'PANACOCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2770, 635, 'PAPALLACTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2775, 135, 'PASA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2785, 35, 'PATAQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2795, 605, 'PATUCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2810, 455, 'PEDRO PABLO GOMEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2820, 40, 'PEÑAHERRERA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2825, 60, 'PERUCHO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2830, 135, 'PICAYHUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2850, 370, 'PIEDRAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2855, 60, 'PIFO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2860, 135, 'PILAHUIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2865, 105, 'PILALO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2875, 515, 'PIMOCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2885, 235, 'PINDILIG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2890, 120, 'PINLLOPATA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2895, 60, 'PINTAG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2900, 5, 'PIOTER');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2905, 215, 'PISTISHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2915, 40, 'PLAZA GUTIERREZ/CALVARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2920, 100, 'POALO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2925, 60, 'POMASQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2930, 725, 'POMPEYA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2940, 390, 'POSORJA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2945, 145, 'PRESIDENTE URBINA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2950, 915, 'PRINCIPAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2955, 660, 'PUCAPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2965, 825, 'PUCAYACO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2970, 440, 'PUEBLO NUEVO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2975, 225, 'PUELA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2980, 60, 'PUELLARO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2985, 60, 'PUEMBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (2990, 455, 'PUERTO CAYO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3000, 620, 'PUERTO MISAHUALLI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3005, 650, 'PUERTO BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3015, 530, 'PUERTO PECHICHE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3020, 650, 'PUERTO RODRIGUEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3025, 215, 'PUMALLACTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3030, 390, 'PUNA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3035, 195, 'PUNGALA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3040, 195, 'PUNIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3045, 335, 'PURUNUMA /EGUIGUREN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3050, 620, 'PUERTO NAPO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3055, 680, 'POMONA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3095, 195, 'QUIMIAG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3100, 60, 'QUINCHE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3105, 260, 'QUINGEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3110, 485, 'QUIROGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3115, 40, 'QUIROGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3120, 135, 'QUISAPINCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3125, 570, 'QUINGUE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3155, 120, 'RAMON CAMPAÑA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3160, 265, 'REMIGIO CRESPO TORAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3165, 260, 'RICAURTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3170, 480, 'RICAURTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3175, 535, 'RICAURTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3180, 680, 'RIO CORRIENTES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3185, 440, 'RIO CHICO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3190, 150, 'RIO NEGRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3195, 680, 'RIO TIGRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3200, 150, 'RIO VERDE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3210, 235, 'RIVERA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3215, 561, 'ROCAFUERTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3220, 640, 'ROSA FLORIDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3225, 595, 'ROSARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3230, 80, 'RUMIPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3235, 420, 'ROBERTO ASTUDILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3250, 600, 'SAN MIGUEL DE CONCHAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3255, 315, 'SABANILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3260, 655, 'SABANILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3265, 325, 'SABIANGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3270, 335, 'SACAPALCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3275, 690, 'SALATI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3280, 570, 'SALIMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3285, 165, 'SALINAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3290, 30, 'SALINAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3295, 200, 'SAN ANDRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3300, 145, 'SAN ANDRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3305, 240, 'SAN ANTONIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3315, 30, 'SAN ANTONIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3320, 600, 'SAN ANTONIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3325, 60, 'SAN ANTONIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3330, 355, 'SAN ANTONIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3335, 225, 'SAN ANTONIO DE BAYUSHIG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3340, 305, 'SAN ANTONIO DE CUMBE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3345, 740, 'SAN ANTONIO DE LAS ARADAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3350, 480, 'SAN ANTONIO / DEL PELUDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3355, 135, 'SAN BARTOLOME');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3360, 280, 'SAN BARTOLOME');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3365, 55, 'SAN BLAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3370, 435, 'SAN CARLOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3375, 275, 'SAN CRISTOBAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3380, 135, 'SAN FERNANDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3390, 570, 'SAN FRANCISCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3395, 635, 'SAN FRANCISCO DE BORJA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3400, 45, 'SAN FCO.DE NATABUELA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3405, 565, 'SAN FRANCISCO DE ONZOLE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3410, 245, 'SAN FCO. DE SAGEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3415, 50, 'SAN FRANCISCO DE SIGSIPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3420, 615, 'SANGAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3425, 200, 'SAN GERARDO / PAQUICAHUAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3430, 570, 'SAN GREGORIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3435, 15, 'SAN ISIDRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3440, 590, 'SAN ISIDRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3445, 475, 'SAN ISIDRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3450, 200, 'SAN ISIDRO DE PATULU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3455, 580, 'SAN JAVIER DE CACHABI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3460, 260, 'SAN JOAQUIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3465, 45, 'SAN JOSE DE CHALTURA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3470, 570, 'SAN JOSE DE CHAMANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3475, 60, 'SAN JOSE DE MINAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3480, 935, 'SAN JOSE DE PAYAMINO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3485, 145, 'SAN JOSE DE POALO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3490, 35, 'SAN JOSE DE QUICHINCHE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3495, 280, 'SAN JOSE DE RARANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3500, 180, 'SAN JOSE DE TAMBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3505, 265, 'SAN JUAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3510, 530, 'SAN JUAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3515, 195, 'SAN JUAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3525, 35, 'SAN JUAN DE ILUMAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3530, 100, 'SAN JUAN DE PASTOCALLE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3535, 315, 'SAN JUAN DE POZUL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3545, 165, 'SAN LORENZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3550, 450, 'SAN LORENZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3555, 300, 'SAN LUCAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3560, 195, 'SAN LUIS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3565, 605, 'SAN LUIS DEL ACHO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3570, 560, 'SAN MATEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3575, 235, 'SAN MIGUEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3580, 595, 'SAN MIGUEL DE CUYES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3585, 145, 'SAN MIGUELITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3590, 35, 'SAN PABLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3595, 175, 'SAN PABLO DE ATENAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3600, 305, 'SAN PABLO DE TENTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3605, 700, 'SAN PABLO DE USHPAYACU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3610, 290, 'SAN PEDRO DE LA BENDITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3615, 865, 'PUERTO LIBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3625, 440, 'SAN PLACIDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3630, 35, 'SAN RAFAEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3632, 500, 'SANTA MARIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3635, 500, 'EL PARAISO / LA 14');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3640, 45, 'SAN ROQUE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3645, 720, 'SAN ROQUE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3650, 370, 'SAN ROQUE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3655, 170, 'SAN SEBASTIAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3660, 725, 'SAN SEBASTIAN DE COCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3665, 305, 'SAN SEBASTIAN DE YULUC');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3670, 165, 'SAN SIMON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3680, 25, 'SAN VICENTE DE PUSIR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3685, 260, 'SANTA ANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3690, 640, 'SANTA BARBARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3705, 650, 'SANTA ELENA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3710, 165, 'SANTA FE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3720, 630, 'STA. MARIA DE HUIRIRIMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3725, 580, 'SANTA RITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3730, 135, 'SANTA ROSA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3735, 65, 'STA.ROSA DE CUSUBAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3740, 435, 'SANTA ROSA DE FLANDES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3745, 255, 'SANTA ROSA DE QUIJOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3750, 745, 'SANTA ROSA DE SUCUMBIOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3755, 815, 'SANTA RUFINA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3760, 600, 'SANTA SUSANA DE CHIVIAZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3765, 340, 'SANTA TERESITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3770, 300, 'SANTIAGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3775, 175, 'SANTIAGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3780, 265, 'SIMON BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3785, 680, 'ZARAYACU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3790, 255, 'SARDINAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3795, 260, 'SAYAUSI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3800, 40, '6 DE JULIO DE CUELLAJE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3805, 565, 'SELVA ALEGRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3810, 35, 'SELVA ALEGRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3815, 305, 'SELVA ALEGRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3820, 215, 'SEVILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3830, 590, 'SEVILLA DON BOSCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3835, 285, 'SHAGLLI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3840, 685, 'SHELL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3845, 215, 'SIBAMBE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3850, 260, 'SIDCAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3860, 165, 'SIMIATUG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3870, 260, 'SININCAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3875, 905, 'SOLANO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3880, 785, 'SUA/BOCANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3885, 155, 'SUCRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3890, 635, 'SUMACO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3900, 175, 'SAN VICENTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3905, 140, 'SALASACA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3915, 410, 'SIMON BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3920, 925, 'SAN CARLOS DE LIMON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3925, 60, 'TABABELA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3930, 560, 'TABIAZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3935, 345, 'TACAMOROS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3940, 560, 'TACHINA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3945, 235, 'TADAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3955, 580, 'TAMBILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3960, 70, 'TAMBILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3965, 100, 'TANICUCHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3970, 300, 'TAQUIL /MIGUEL RIOFRIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3975, 425, 'TARIFA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3980, 260, 'TARQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3985, 680, 'TARQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3990, 435, 'TAURA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (3995, 170, 'TELIMBELA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4000, 380, 'TENDALES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4005, 680, 'TNTE. HUGO ORTIZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4010, 655, 'TIMBARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4015, 105, 'TINGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4030, 215, 'TIXAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4035, 100, 'TOACAZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4040, 5, 'TOBAR DONOSO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4045, 75, 'TOCACHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4050, 275, 'TOMEBAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4055, 785, 'TONCHIGUE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4065, 135, 'TOTORAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4070, 5, 'TUFIÑO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4075, 580, 'TULULBI /RICAURTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4080, 55, 'TUMBABIRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4085, 60, 'TUMBACO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4090, 75, 'TUPIGACHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4095, 260, 'TURI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4100, 245, 'TURUPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4105, 665, 'TUTUPALI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4110, 155, 'EL TRIUNFO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4115, 605, 'TAYUZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4120, 390, 'TENGUEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4125, 580, 'URBINA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4130, 5, 'URBINA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4135, 150, 'ULBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4145, 305, 'URDANETA/PAQUISHAPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4150, 320, 'UTUANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4155, 70, 'UYUMBICHO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4160, 365, 'UZHCURRUMI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4165, 810, 'TOMAS DE BERLANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4170, 565, 'TELEMBI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4185, 40, 'VACAS GALINDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4195, 661, 'VALLADOLID');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4200, 260, 'VALLE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4205, 680, 'VERACRUZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4210, 330, 'VICENTINO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4215, 355, 'VICTORIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4220, 430, 'VICTORIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4225, 260, 'VICTORIA DEL PORTETE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4230, 575, 'VICHE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4235, 300, 'VILCABAMBA/VICTORIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4240, 560, 'VUELTA LARGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4275, 395, 'YAGUACHI VIEJO/CONE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4280, 300, 'YANGANA / ARSENIO CASTILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4290, 60, 'YARUQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4295, 630, 'YASUNI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4300, 611, 'YAUPI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4305, 600, 'YUNGANZA /EL ROSARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4310, 160, 'YANAYACU MOCHAPATA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4325, 60, 'ZAMBIZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4330, 545, 'ZAPOTAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4340, 265, 'ZHIDMAD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4345, 240, 'ZHUD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4360, 590, 'ZUNAC');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4365, 105, 'ZUMBAHUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4385, 980, 'TRIUNFO DORADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4415, 800, 'ISLA SANTA MARIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4420, 540, 'LA ESPERANZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4425, 540, 'SAN CARLOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4430, 205, 'SANTIAGO DE QUITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4440, 85, 'PUERTO LIMON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4445, 360, 'ARCAPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4450, 360, 'MULUNCAY GRANDE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4455, 290, 'ZAMBI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4460, 340, '27 DE ABRIL /LA NARANJA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4465, 565, 'SANTO DOMINGO DE ONZOLE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4475, 300, 'CHANTACO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4480, 705, 'CORDONCILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4485, 590, 'SINAI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4490, 455, 'MEMBRILLAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4495, 365, 'CASACAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4500, 400, 'EL LAUREL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4505, 661, 'SAN FRANCISCO DEL VERGEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4510, 680, 'SIMON BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4515, 175, 'REGULO DE MORA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4520, 690, 'MORALES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4525, 355, 'TORATA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4530, 705, 'SAN JOSE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4535, 705, 'MILAGRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4540, 300, 'SAN PEDRO DE VILCABAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4545, 730, 'MILAGROS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4550, 160, 'RUMIPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4555, 850, 'PINGUILI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4560, 855, 'CHUMBLIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4565, 275, 'EL CABO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4570, 130, 'NUEVO PARAISO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4575, 926, 'PUMPUENTSA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4580, 620, 'SAN JUAN DE MUYUNA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4585, 545, 'LOS ANGELES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4590, 545, 'CHACARITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4595, 565, 'SANTA LUCIA DE LAS PEÑAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4600, 980, 'PANGUINTZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4605, 295, 'CAZADEROS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4610, 285, 'SAN SALVADOR DE CAÑARIBAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4615, 710, 'LA ESMERALDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4620, 65, 'SAN JOSE DE AYORA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4625, 625, '10 DE AGOSTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4630, 700, 'HATUN SUMAKU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4635, 982, 'MONTERREY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4640, 982, 'LA VILLEGAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4645, 982, 'PLAN PILOTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4650, 375, 'LA CUCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4655, 130, 'NANKAIS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4740, 745, 'NUEVA TRONCAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4745, 650, 'SANSAHUARI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4750, 465, 'SOSOTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4755, 720, 'LA PRIMAVERA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4760, 720, 'LA MAGDALENA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (4765, 65, 'JUAN MONTALVO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5005, 330, 'ALAMOR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5010, 215, 'ALAUSI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5015, 60, 'CHIMBACALLE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5020, 340, 'AMALUZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5025, 45, 'ANDRADE MARIN/LOURDES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5030, 440, 'ANDRES DE VERA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5035, 165, 'ANGEL POLIVIO CHAVEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5040, 375, 'ARENILLAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5045, 135, 'ATOCHA FICOA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5050, 45, 'ATUNTAQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5055, 390, 'AYACUCHO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5065, 235, 'AZOGUES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5070, 700, 'ARCHIDONA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5075, 260, 'BELLAVISTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5080, 260, 'CAÑARIBAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5085, 520, 'BABA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5090, 635, 'BAEZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5095, 475, 'BAHIA DE CARAQUEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5100, 415, 'BALZAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5105, 150, 'BAÑOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5115, 245, 'BIBLIAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5120, 430, 'BOCANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5125, 390, 'BOLIVAR/SAGRARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5130, 410, 'BALLENITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5135, 260, 'EL BATAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5140, 260, 'MACHANGARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5145, 205, 'CAJABAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5150, 485, 'CALCETA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5155, 430, 'CANDILEJOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5160, 240, 'CAÑAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5165, 30, 'CARANQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5170, 390, 'CARBO/CONCEPCION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5175, 320, 'CARIAMANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5180, 310, 'CATACOCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5185, 535, 'CATARAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5190, 65, 'CAYAMBE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5195, 315, 'CELICA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5200, 430, 'SALITRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5205, 560, 'BARTOLOME RUIZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5210, 560, '5 DE AGOSTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5215, 515, 'CLEMENTE BAQUERIZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5220, 60, 'COTOCOLLAO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5225, 145, 'CIUDAD NUEVA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5230, 135, 'CELIANO MONGE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5240, 320, 'CHILE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5245, 180, 'CHILLANES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5250, 480, 'CHONE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5255, 220, 'CHUNCHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5260, 60, 'CHILLOGALLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5265, 440, 'COLON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5270, 290, 'CATAMAYO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5275, 400, 'DAULE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5280, 440, '12 DE MARZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5285, 515, 'DR. CAMILO PONCE E.');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5290, 260, 'MONAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5295, 15, 'EL ANGEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5300, 500, 'EL CARMEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5305, 120, 'EL CORAZON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5310, 100, 'ELOY ALFARO / SAN FELIPE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5315, 200, 'EL ROSARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5320, 300, 'EL SAGRARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5330, 260, 'EL VECINO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5335, 560, 'ESMERALDAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5340, 380, 'EL GUABO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5345, 505, 'EL TRIUNFO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5350, 185, 'ECHEANDIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5355, 390, 'FEBRES CORDERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5360, 260, 'TOTORACOCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5365, 125, 'COLIMES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5370, 260, 'YANUNCAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5375, 165, 'GABRIEL I VEINTIMILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5380, 390, 'GARCIA MORENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5385, 325, 'GRAL.ELOY ALFARO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5390, 600, 'GRAL. LEONIDAS PLAZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5395, 270, 'GIRON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5400, 335, 'GONZANAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5405, 10, 'GONZALEZ SUAREZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5415, 5, 'GONZALEZ SUAREZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5420, 265, 'GUALACEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5425, 595, 'GUALAQUIZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5430, 210, 'GUAMOTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5440, 30, 'GUAYAQUIL DE ALPACHACA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5445, 135, 'HUACHI LORETO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5450, 260, 'HUAYNACAPAC');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5455, 135, 'HUACHI CHICO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5465, 100, 'IGNACIO FLORES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5470, 95, 'BALAO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5475, 190, 'CHAMBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5480, 230, 'FLAVIO ALFARO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5485, 455, 'JIPIJAPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5490, 35, 'JORDAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5500, 100, 'JUAN MONTALVO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5505, 490, 'JUNIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5510, 255, 'EL CHACO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5515, 90, 'TISALEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5520, 130, 'GUAYZIMI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5525, 640, 'LA BONITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5535, 60, 'LA LIBERTAD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5540, 60, 'LA MAGDALENA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5545, 135, 'LA MATRIZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5550, 200, 'LA MATRIZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5555, 100, 'LA MATRIZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5560, 135, 'LA MERCED');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5565, 350, 'LA PROVIDENCIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5570, 450, 'LOS ESTEROS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5580, 475, 'LEONIDAS PLAZA G.');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5585, 390, 'LETAMENDI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5590, 195, 'LIZARZABURU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5595, 310, 'LOURDES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5600, 560, 'LUIS TELLO / LAS PALMAS /');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5605, 135, 'LA PENINSULA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5610, 250, 'LA TRONCAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5615, 590, 'MACAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5620, 70, 'MACHACHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5625, 350, 'MACHALA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5630, 195, 'MALDONADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5635, 450, 'MANTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5640, 710, 'MONTALVO /SABANETA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5645, 605, 'MENDEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5650, 685, 'MERA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5655, 595, 'MERCEDES MOLINA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5660, 420, 'MILAGRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5665, 445, 'MONTECRISTI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5670, 570, 'MUISNE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5675, 435, 'NARANJAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5680, 325, 'MACARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5685, 20, 'MIRA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5690, 555, 'PUCARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5695, 390, '9 DE OCTUBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5700, 630, 'NUEVO ROCAFUERTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5705, 510, 'NARANJITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5710, 625, 'NUEVA LOJA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5715, 585, 'CHILLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5720, 390, 'OLMEDO/SAN ALEJO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5725, 675, 'PALESTINA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5730, 85, 'ABRAHAM CALAZACON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5735, 715, 'PEDRO CARBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5740, 225, 'PENIPE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5745, 705, 'PACCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5750, 50, 'PIMAMPIRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5755, 495, 'PAJAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5760, 615, 'PALORA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5765, 430, 'PARAISO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5770, 365, 'OCHOA LEON/MATRIZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5775, 275, 'PAUTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5780, 140, 'PELILEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5785, 145, 'PILLARO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5790, 370, 'PIÑAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5795, 440, 'PORTOVIEJO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5800, 530, 'PUEBLO VIEJO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5805, 350, 'PUERTO BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5810, 730, 'PINDAL /FEDERICO PAEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5815, 645, 'EL COCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5820, 105, 'PUJILI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5825, 680, 'PUYO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5830, 155, 'PATATE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5835, 160, 'QUERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5840, 135, 'PISHILATA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5845, 440, 'PICOAZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5850, 690, 'PORTOVELO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5855, 540, 'QUEVEDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5860, 85, 'BOMBOLI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5865, 85, 'RIO VERDE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5870, 85, 'RIO TOACHI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5875, 260, 'RAMIREZ DAVALOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5880, 390, 'ROCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5885, 465, 'ROCAFUERTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5890, 390, 'ROCAFUERTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5895, 575, 'ROSA ZARATE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5900, 140, 'PELILEO GRANDE /R. MINO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5905, 260, 'SAGRARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5910, 40, 'SAGRARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5915, 30, 'SAGRARIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5920, 405, 'SALINAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5925, 425, 'SAMBORONDON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5930, 260, 'SAN BLAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5940, 100, 'SAN BUENAVENTURA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5945, 135, 'SAN FRANCISCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5950, 235, 'SAN FRANCISCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5955, 40, 'SAN FRANCISCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5960, 30, 'SAN FRANCISCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5965, 80, 'SANGOLQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5970, 10, 'SAN JOSE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5975, 170, 'SAN JOSE DE CHIMBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5980, 35, 'SAN LUIS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5990, 430, 'SAN MATEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (5995, 175, 'SAN MIGUEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6000, 110, 'SAN MIGUEL DE SALCEDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6010, 260, 'SAN SEBASTIAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6015, 300, 'SAN SEBASTIAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6025, 320, 'SAN VICENTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6030, 470, 'SANTA ANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6040, 410, 'SANTA ELENA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6045, 285, 'SANTA ISABEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6055, 480, 'SANTA RITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6060, 355, 'SANTA ROSA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6065, 85, 'SANTO DOMINGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6070, 115, 'SAQUISILI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6075, 305, 'SARAGURO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6080, 205, 'SICALPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6085, 280, 'SIGSIG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6090, 260, 'SUCRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6095, 390, 'SUCRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6100, 300, 'SUCRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6105, 460, 'SUCRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6110, 610, 'SUCUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6115, 540, 'SAN CAMILO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6120, 345, 'SOZORANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6125, 896, 'PUERTO QUITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6130, 580, 'SAN LORENZO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6135, 450, 'SAN MATEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6140, 720, 'SHUSHUFINDI CENTRAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6145, 75, 'TABACUNDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6150, 390, 'TARQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6155, 450, 'TARQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6160, 620, 'TENA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6165, 5, 'TULCAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6170, 550, 'TOSAGUA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6175, 85, 'CHIGUILPE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6180, 85, 'ZARACAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6185, 390, 'URDANETA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6190, 55, 'URCUQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6195, 500, '4 DE DICIEMBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6200, 725, 'LA JOYA DE LOS SACHAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6205, 565, 'VALDEZ/LIMONES/');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6210, 300, 'EL VALLE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6215, 665, '28 DE MAYO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6220, 195, 'VELASCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6225, 385, 'VELASCO IBARRA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6230, 195, 'VELOZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6235, 545, 'VENTANAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6245, 525, 'VINCES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6250, 15, '27 DE SEPTIEMBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6255, 735, 'GRAL.VILLAMIL / PLAYAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6260, 740, 'QUILANGA /LA PAZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6265, 390, 'XIMENA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6270, 405, 'GRAL. A. E. GALLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6275, 405, 'VICENTE ROCAFUERTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6280, 405, 'CARLOS ESPINOZA LARREA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6285, 395, 'YAGUACHI NUEVO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6290, 195, 'YARUQUIES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6295, 670, 'YANZATZA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6300, 865, 'LUMBAQUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6305, 655, 'ZAMORA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6310, 360, 'ZARUMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6315, 660, 'ZUMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6320, 295, 'ZAPOTILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6325, 745, 'EL DORADO DE CASCALES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6330, 750, 'PALENQUE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6335, 755, 'LA VICTORIA/LAS LAJAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6340, 760, 'CALUMA / SAN ANTONIO/');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6345, 765, 'EL TAMBO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6350, 770, 'S. MIGUEL DE LOS BANCOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6355, 775, 'EL PANGUI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6360, 780, 'OÑA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6365, 365, 'LOMA DE FRANCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6370, 365, 'BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6375, 365, 'TRES CERRITOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6380, 785, 'ATACAMES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6385, 790, 'SIMON BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6390, 795, 'HUAMBOYA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6395, 880, 'SANTA CLARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6405, 390, 'PASCUALES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6410, 890, 'CRNL MARCELINO MARIDUENAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6415, 895, 'PEDRO VICENTE MALDONADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6420, 900, 'CUMANDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6425, 905, 'DELEG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6430, 910, 'PEDERNALES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6435, 915, 'CHORDELEG');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6440, 920, 'LOMAS DE SARGENTILLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6445, 925, 'SAN JUAN BOSCO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6450, 930, 'SIGCHOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6455, 935, 'LORETO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6460, 940, 'NARCISA DE JESUS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6465, 945, 'SN JACINTO DE BUENA FE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6470, 950, 'LAS NAVES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6475, 950, 'LAS MERCEDES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6480, 955, 'SEVILLA DE ORO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6485, 960, 'EL PAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6490, 350, '9 DE MAYO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6495, 970, 'OLMEDO /PUCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6500, 650, 'EL CARMEN DE PUTUMAYO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6505, 805, 'PUERTO AYORA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6510, 800, 'PTO. BAQUERIZO MORENO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6515, 810, 'PUERTO VILLAMIL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6520, 25, 'BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6525, 820, 'ELOY ALFARO /DURAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6530, 815, 'CHAGUARPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6535, 825, 'LA MANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6540, 830, 'PALLATANGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6545, 835, 'A.BAQUERIZO M /JUJAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6550, 840, 'PICHINCHA /GERMUD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6555, 845, 'CEVALLOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6560, 850, 'MOCHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6565, 855, 'SAN FERNANDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6570, 860, 'MARCABELI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6575, 975, 'PUERTO LOPEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6580, 870, 'SANTA LUCIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6585, 440, 'SAN PABLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6590, 875, 'BALSAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6595, 885, 'NABON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6600, 80, 'SAN RAFAEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6605, 80, 'SAN PEDRO DE TABOADA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6610, 965, 'LA LIBERTAD');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6615, 990, 'GUACHAPALA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6620, 985, 'GRAL.ELIZALDE /BUCAY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6625, 980, 'ZUMBI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6630, 165, 'GUANUJO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6635, 540, 'SAN CRISTOBAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6640, 540, 'VENUS DEL RIO QUEVEDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6645, 540, 'NICOLAS INFANTE DIAZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6650, 540, 'GUAYACAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6655, 540, 'SIETE DE OCTUBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6660, 540, 'VIVA ALFARO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6665, 995, 'HUACA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6670, 355, 'PUERTO JELI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6675, 370, 'PIÑAS GRANDE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6680, 370, 'LA SUSAYA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6685, 516, 'VALENCIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6690, 540, '24 DE MAYO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6695, 946, 'MOCACHE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6700, 926, 'TAISHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6705, 881, 'ARAJUNO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6710, 986, 'ISIDRO AYORA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6715, 241, 'SUSCAL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6720, 561, 'RIO VERDE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6725, 470, 'LODANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6730, 311, 'OLMEDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6735, 611, 'LOGROÑO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6740, 661, 'PALANDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6745, 450, 'ELOY ALFARO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6750, 476, 'JAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6755, 446, 'JARAMIJO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6760, 621, 'CARLOS J. AROSEMENA TOLA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6765, 626, 'TARAPOA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6770, 440, '18 DE OCTUBRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6775, 440, 'FRANCISCO PACHECO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6780, 30, 'LA DOLOROSA DEL PRIORATO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6785, 477, 'SAN VICENTE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6790, 235, 'BORRERO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6795, 350, 'EL CAMBIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6800, 695, 'HUALTACO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6805, 695, 'MILTON REYES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6810, 695, 'EL PARAISO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6815, 695, 'ECUADOR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6820, 695, 'UNION LOJANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6825, 290, 'SAN JOSE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6830, 515, 'BARREIRO /SANTA RITA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6835, 515, 'EL SALTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6840, 655, 'EL LIMON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6845, 235, 'AURELIO BAYAS MARTINEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6850, 400, 'LA AURORA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6865, 260, 'HERMANO MIGUEL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6870, 796, 'PABLO SEXTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6875, 556, 'CAMILO PONCE ENRIQUEZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6880, 825, 'EL CARMEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6885, 981, 'PAQUISHA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6890, 797, 'SANTIAGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6895, 825, 'EL TRIUNFO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6900, 355, 'BALNEARIO JAMBELI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6905, 560, 'SIMON PLATA TORRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6910, 440, 'SIMON BOLIVAR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6915, 546, 'QUINSALOMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6925, 405, 'SANTA ROSA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6950, 755, 'PLATANILLOS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6985, 355, 'JUMON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (6990, 355, 'NUEVO SANTA ROSA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7130, 60, 'BELISARIO QUEVEDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7135, 60, 'CARCELEN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7140, 60, 'CENTRO HISTORICO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7145, 60, 'COCHAPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7150, 60, 'COMITE DEL PUEBLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7155, 60, 'CHILIBULO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7160, 60, 'EL CONDADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7165, 60, 'GUAMANI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7170, 60, 'IÑAQUITO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7175, 60, 'ITCHIMBIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7180, 60, 'JIPIJAPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7185, 60, 'KENNEDY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7190, 60, 'LA ARGELIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7195, 60, 'LA CONCEPCION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7200, 60, 'LA ECUATORIANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7205, 60, 'LA FERROVIARIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7210, 60, 'LA MENA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7215, 60, 'MARISCAL SUCRE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7220, 60, 'PONCEANO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7225, 60, 'PUENGASI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7230, 60, 'QUITUMBE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7235, 60, 'RUMIPAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7240, 60, 'SAN BARTOLO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7245, 60, 'SAN ISIDRO DEL INCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7250, 60, 'SAN JUAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7255, 60, 'SOLANDA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7260, 60, 'TURUBAMBA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7425, 400, 'MAGRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7445, 425, 'LA PUNTILLA(SATELITE)');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7455, 820, 'EL RECREO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7460, 445, 'ANIBAL SAN ANDRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7465, 455, 'DR. MIGUEL MORAN LUCIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7470, 455, 'MANUEL INOCENCIO PARRALES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7475, 455, 'SAN LORENZO DE JIPIJAPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7480, 545, '10/11/24');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7485, 630, 'TIPUTINI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7490, 445, 'COLORADO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7495, 445, 'LEONIDAS PROAÑO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7500, 445, 'GENERAL ELOY ALFARO DELGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7505, 350, 'JUBONES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7510, 350, 'JAMBELI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7515, 820, 'DIVINO NIÑO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7520, 982, 'LA CONCORDIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7525, 300, 'CARIGAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7530, 300, 'PUNZARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (7535, 80, 'FAJARDO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9001, 11, 'C. E. EN BERLIN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9002, 11, 'C. E. EN HAMBURGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9003, 21, 'C. E. EN BUENOS AIRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9005, 31, 'C. E. EN CAMBERRA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9006, 41, 'C. E. EN VIENA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9007, 51, 'C. E. EN BRUSELAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9008, 61, 'C. E. EN LA PAZ');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9009, 71, 'C. E. EN BRASILIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9011, 81, 'C. E. EN TORONTO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9012, 81, 'C. E. EN OTTAWA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9013, 91, 'C. E. EN BOGOTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9015, 91, 'C. E. EN IPIALES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9016, 101, 'C. E. EN SEUL');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9017, 111, 'C. E. EN SAN JOSE');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9018, 121, 'C. E. EN LA HABANA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9019, 131, 'C. E. EN SANTIAGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9020, 141, 'C. E. EN BEIJING');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9021, 171, 'C. E. EN PALMA DE MALLORCA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9022, 161, 'C. E. EN SAN SALVADOR');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9023, 171, 'C. E. EN BARCELONA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9024, 171, 'C. E. EN MADRID');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9025, 171, 'C. E. EN VALENCIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9026, 171, 'C. E. EN MURCIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9027, 181, 'C. E. EN CHICAGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9028, 181, 'C. E. EN MIAMI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9029, 181, 'C. E. EN NUEVA YORK');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9031, 181, 'C. E. EN WASHINGTON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9032, 181, 'C. E. EN LOS ANGELES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9033, 181, 'C. E. EN CONNECTICUT');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9034, 181, 'C. E. EN HOUSTON');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9035, 181, 'C. E. EN NEW JERSEY');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9036, 191, 'C. E. EN PARIS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9037, 201, 'C. E. EN LONDRES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9038, 211, 'C. E. EN GUATEMALA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9039, 221, 'C. E. EN TEGUCIGALPA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9040, 231, 'C. E. EN BUDAPEST');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9042, 251, 'C. E. EN TEL AVIV');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9043, 261, 'C. E. EN MILAN');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9044, 261, 'C. E. EN GENOVA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9045, 261, 'C. E. EN ROMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9046, 271, 'C. E. EN TOKIO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9047, 281, 'C. E. EN MEXICO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9049, 301, 'C. E. EN LA HAYA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9050, 312, 'C. E. EN PANAMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9051, 321, 'C. E. EN ASUNCION');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9052, 331, 'C. E. EN LIMA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9054, 331, 'C. E. EN TUMBES');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9055, 341, 'C. E. EN EL CAIRO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9056, 351, 'C. E. EN SANTO DOMINGO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9057, 361, 'C. E. EN ESTOCOLMO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9058, 371, 'C. E. EN BERNA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9060, 381, 'C. E. EN MOSCU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9061, 391, 'C. E. EN MONTEVIDEO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9062, 401, 'C. E. EN CARACAS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9063, 411, 'C. E. EN YAKARTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9066, 171, 'C. E. EN MALAGA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9067, 71, 'C. E. EN SAO PAULO');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9068, 141, 'C. E. EN SHANGAI');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9069, 181, 'C. E. EN MINNEAPOLIS');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9071, 181, 'C. E. EN ATLANTA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9073, 181, 'C. E. EN PHOENIX');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9075, 141, 'C. E. EN GUANGZHOU');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9077, 441, 'C. E. EN PRETORIA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9078, 451, 'C. E. EN ANKARA');
INSERT INTO public.parroquia OVERRIDING SYSTEM VALUE VALUES (9086, 281, 'C. E. EN MONTERREY');


--
-- TOC entry 3564 (class 0 OID 25226)
-- Dependencies: 224
-- Data for Name: partido; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3555 (class 0 OID 24848)
-- Dependencies: 215
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (11, '2024-03-04 10:02:25.218-05', NULL, 16, NULL, 8, true, true, true, true, true, true, 11, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (162, '2024-06-13 12:29:03.549-05', '2024-06-25 09:59:11-05', 87, 16, 8, true, true, true, true, true, true, 15, false);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (176, '2024-06-24 11:22:43.057-05', '2024-06-25 09:59:11-05', 16, 16, 8, true, true, true, true, true, true, 15, false);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (160, '2024-06-13 12:29:03.548-05', '2024-06-25 09:59:11-05', 87, 16, 9, false, false, true, true, true, true, 15, false);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (177, '2024-07-01 10:02:41.896-05', '2024-07-01 10:02:41-05', 87, 87, 9, true, true, true, true, true, true, 9, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (178, '2024-07-01 10:02:41.896-05', '2024-07-01 10:02:41-05', 87, 87, 8, true, true, true, true, true, true, 9, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (179, '2024-07-01 10:02:41.896-05', '2024-07-01 10:02:41-05', 87, 87, 7, true, true, true, true, true, true, 9, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (180, '2024-07-01 10:02:41.896-05', '2024-07-01 10:02:41-05', 87, 87, 12, true, true, true, true, true, true, 9, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (144, '2024-06-10 11:12:12.359-05', '2024-06-10 11:12:23.356-05', 87, 87, 13, true, true, true, true, true, false, 16, false);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (145, '2024-06-10 11:12:12.359-05', '2024-06-10 11:12:23.356-05', 87, 87, 14, true, true, true, true, true, false, 16, false);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (146, '2024-06-10 11:12:12.359-05', '2024-06-10 11:12:23.356-05', 87, 87, 7, true, true, true, true, true, false, 16, false);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (182, '2024-07-11 08:33:49.378-05', '2024-07-11 08:33:49-05', 87, 87, 19, true, true, true, true, true, true, 17, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (147, '2024-06-10 11:12:12.359-05', '2024-06-10 11:12:23.356-05', 87, 87, 9, true, true, true, true, true, false, 16, false);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (168, '2024-06-21 12:02:37.396-05', NULL, 87, NULL, 9, true, true, true, true, true, true, 14, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (169, '2024-06-21 12:02:37.396-05', NULL, 87, NULL, 8, false, false, true, true, true, true, 14, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (170, '2024-06-21 12:02:37.396-05', NULL, 87, NULL, 17, true, true, true, true, false, true, 14, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (171, '2024-06-21 12:02:37.396-05', NULL, 87, NULL, 13, true, true, false, true, false, true, 14, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (172, '2024-06-21 12:02:37.396-05', NULL, 87, NULL, 11, true, true, true, true, true, true, 14, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (173, '2024-06-21 12:02:37.396-05', NULL, 87, NULL, 7, false, true, true, true, true, true, 14, true);
INSERT INTO public.permisos OVERRIDING SYSTEM VALUE VALUES (174, '2024-06-21 15:43:33.034-05', '2024-06-24 08:51:25.677-05', 87, 87, 7, true, false, false, false, false, false, 10, false);


--
-- TOC entry 3565 (class 0 OID 25233)
-- Dependencies: 225
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
-- TOC entry 3557 (class 0 OID 24856)
-- Dependencies: 217
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (11, '2024-03-04 10:02:25.218-05', NULL, 16, NULL, 'Administrador central', 'pruebas', true, true);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (14, '2024-06-07 11:22:20.237-05', '2024-06-07 16:21:37.969-05', 87, 87, 'Monitor', 'Demostración', true, true);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (9, '2024-02-28 15:52:37.723-05', '2024-06-10 09:26:57.804-05', 16, 87, 'Super administrador', 'Rol de administrador central', true, true);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (16, '2024-06-10 11:12:12.359-05', '2024-06-10 11:12:23.356-05', 87, 87, 'rol_borrar', 'rol_borrar', false, false);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (13, '2024-05-28 11:17:26.437-05', '2024-06-17 16:09:49.699-05', 16, 87, 'prueba', 'rol prueba', false, false);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (10, '2024-03-04 10:02:14.675-05', '2024-06-24 08:51:25.677-05', 16, 87, 'Administrador_old', 'pruebas_old', false, false);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (15, '2024-06-07 17:03:19.922-05', '2024-06-24 11:46:38.795-05', 87, 16, 'Gestor Contenidos', 'Contenidos', true, false);
INSERT INTO public.rol OVERRIDING SYSTEM VALUE VALUES (17, '2024-07-02 16:38:56.207-05', '2024-07-11 08:33:49.378-05', 87, 87, 'Rol digitador', 'demo digita', true, true);


--
-- TOC entry 3559 (class 0 OID 24860)
-- Dependencies: 219
-- Data for Name: rolusuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (95, 16, 11, 16, 87, '2024-03-04 11:45:15.728', '2024-06-12 15:45:43', false, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (185, 87, 14, 87, 87, '2024-06-12 15:39:28.161', '2024-06-12 15:58:33', true, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (103, 87, 11, 16, 87, '2024-05-31 12:51:43.342', '2024-06-14 13:24:21', true, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (184, 87, 13, 16, 87, '2024-05-31 15:48:46.449', '2024-06-17 16:09:49.699', false, false);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (187, 16, 13, 87, 87, '2024-06-17 16:07:46.07', '2024-06-17 16:09:49.699', false, false);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (94, 16, 10, 16, 87, '2024-03-04 11:45:15.728', '2024-06-24 08:51:25.677', false, false);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (100, 87, 10, 87, 87, '2024-05-08 09:52:10.526', '2024-06-24 08:51:25.677', false, false);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (188, 84, 14, 87, NULL, '2024-06-24 10:33:18.68', NULL, true, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (186, 87, 15, 87, 16, '2024-06-13 11:13:39.422', '2024-06-25 09:59:11', true, false);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (79, 16, 9, 16, 87, '2024-03-04 09:55:24.775', '2024-07-01 10:02:41', true, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (97, 84, 9, 16, 87, '2024-04-24 15:03:50.103', '2024-07-01 10:02:41', true, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (99, 87, 9, 16, 87, '2024-05-06 17:01:20.689', '2024-07-01 10:02:41', true, true);
INSERT INTO public.rolusuario OVERRIDING SYSTEM VALUE VALUES (189, 87, 17, 87, 87, '2024-07-02 16:42:46.388', '2024-07-11 08:33:49', true, true);


--
-- TOC entry 3561 (class 0 OID 24864)
-- Dependencies: 221
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (84, 'luis.nunez', '$2a$10$ny8y/Q1n9yADBVDWzafJKOpWXHmIA6cOHkHKUHp61Las88Los8Z1a', 'correo.algo@gmail.com', 'Luis Andrés', 'Nuñez Flores', '2024-04-24 15:03:50.091-05', '2024-06-24 10:33:18.674-05', 16, 87, true, NULL, true, 17, 1, false);
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (16, 'Andres1724', '$2a$10$WmfDhBTRyE9Vl7gGroB0zOrPpzslw2MHQPHU.CY0le8LxZMUkl8Xe', 'lnunez@msp.gob.ecs', 'Luis Andres', 'Nuñez Flores', '2024-02-27 09:57:40.268-05', '2024-07-11 11:24:42.618-05', 16, 16, true, '2024-07-11 11:24:42.613-05', true, 13, 1, false);
INSERT INTO public.usuario OVERRIDING SYSTEM VALUE VALUES (87, 'jguanolema', '$2a$10$tszkcY71txN2tx.3KIoZ.uyD.iROLtqTfw4CmR9TpZlmlZ0kdPZzW', 'gabriel.ledesma@algo.com', 'Juan Gabriel', 'Guanolema', '2024-05-06 17:01:20.685-05', '2024-07-15 09:27:06.502-05', 16, 87, true, '2024-07-15 09:27:06.488-05', true, 9, 1, false);


--
-- TOC entry 3573 (class 0 OID 25347)
-- Dependencies: 233
-- Data for Name: votos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3569 (class 0 OID 25292)
-- Dependencies: 229
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
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 235
-- Name: acta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acta_id_seq', 1, false);


--
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 210
-- Name: blacktoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blacktoken_id_seq', 85, true);


--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 236
-- Name: candidato_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.candidato_id_seq', 1, false);


--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 237
-- Name: canton_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.canton_id_seq', 1, false);


--
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 238
-- Name: dignidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dignidad_id_seq', 1, false);


--
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 245
-- Name: establecimiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.establecimiento_id_seq', 1, true);


--
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 239
-- Name: junta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.junta_id_seq', 1, false);


--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 212
-- Name: menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_id_seq', 19, true);


--
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 214
-- Name: modulo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.modulo_id_seq', 24, true);


--
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 240
-- Name: parroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parroquia_id_seq', 1, false);


--
-- TOC entry 3678 (class 0 OID 0)
-- Dependencies: 241
-- Name: partido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partido_id_seq', 1, false);


--
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 216
-- Name: permisos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permisos_id_seq', 182, true);


--
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 242
-- Name: provincia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provincia_id_seq', 1, false);


--
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 218
-- Name: rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_id_seq', 17, true);


--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 220
-- Name: rolusuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rolusuario_id_seq', 189, true);


--
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 222
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 89, true);


--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 243
-- Name: zona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zona_id_seq', 3051, true);


--
-- TOC entry 3390 (class 2606 OID 25316)
-- Name: acta acta_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acta
    ADD CONSTRAINT acta_pk PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 24881)
-- Name: listanegratoken blacktoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listanegratoken
    ADD CONSTRAINT blacktoken_pkey PRIMARY KEY (id);


--
-- TOC entry 3380 (class 2606 OID 25249)
-- Name: candidato candidato_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidato
    ADD CONSTRAINT candidato_pk PRIMARY KEY (id);


--
-- TOC entry 3382 (class 2606 OID 25269)
-- Name: canton canton_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.canton
    ADD CONSTRAINT canton_pk PRIMARY KEY (id);


--
-- TOC entry 3374 (class 2606 OID 25215)
-- Name: dignidad dignidad_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dignidad
    ADD CONSTRAINT dignidad_pk PRIMARY KEY (id);


--
-- TOC entry 3392 (class 2606 OID 25797)
-- Name: establecimiento establecimiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.establecimiento
    ADD CONSTRAINT establecimiento_pkey PRIMARY KEY (id);


--
-- TOC entry 3388 (class 2606 OID 25306)
-- Name: junta junta_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.junta
    ADD CONSTRAINT junta_pk PRIMARY KEY (id);


--
-- TOC entry 3358 (class 2606 OID 24893)
-- Name: menu menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);


--
-- TOC entry 3360 (class 2606 OID 24895)
-- Name: modulo modulo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modulo
    ADD CONSTRAINT modulo_pkey PRIMARY KEY (id);


--
-- TOC entry 3384 (class 2606 OID 25279)
-- Name: parroquia parroquia_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT parroquia_pk PRIMARY KEY (id);


--
-- TOC entry 3376 (class 2606 OID 25232)
-- Name: partido partido_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido
    ADD CONSTRAINT partido_pk PRIMARY KEY (id);


--
-- TOC entry 3363 (class 2606 OID 24901)
-- Name: permisos permisos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT permisos_pkey PRIMARY KEY (id);


--
-- TOC entry 3378 (class 2606 OID 25237)
-- Name: provincia provincia_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pk PRIMARY KEY (id);


--
-- TOC entry 3365 (class 2606 OID 24905)
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- TOC entry 3368 (class 2606 OID 24907)
-- Name: rolusuario rolusuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rolusuario
    ADD CONSTRAINT rolusuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3372 (class 2606 OID 24909)
-- Name: usuario user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT user_pk PRIMARY KEY (id);


--
-- TOC entry 3386 (class 2606 OID 25296)
-- Name: zona zona_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zona
    ADD CONSTRAINT zona_pk PRIMARY KEY (id);


--
-- TOC entry 3369 (class 1259 OID 26223)
-- Name: fki_establecimiento_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_establecimiento_id_fk ON public.usuario USING btree (establecimiento_id);


--
-- TOC entry 3356 (class 1259 OID 24914)
-- Name: fki_modulo__id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_modulo__id_fk ON public.menu USING btree (modulo_id);


--
-- TOC entry 3370 (class 1259 OID 25582)
-- Name: fki_provincia_id->fkprovincia; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_provincia_id->fkprovincia" ON public.usuario USING btree (provincia_id);


--
-- TOC entry 3361 (class 1259 OID 24915)
-- Name: fki_rol_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_rol_id_fk ON public.permisos USING btree (rol_id);


--
-- TOC entry 3366 (class 1259 OID 24916)
-- Name: fki_usuario_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_usuario_id_fk ON public.rolusuario USING btree (usuario_id);


--
-- TOC entry 3402 (class 2606 OID 25280)
-- Name: parroquia canton_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT canton_fk FOREIGN KEY (canton_id) REFERENCES public.canton(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3401 (class 2606 OID 25270)
-- Name: canton canton_provincia_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.canton
    ADD CONSTRAINT canton_provincia_fk FOREIGN KEY (provincia_id) REFERENCES public.provincia(id);


--
-- TOC entry 3405 (class 2606 OID 25317)
-- Name: acta dignidad_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acta
    ADD CONSTRAINT dignidad_fk FOREIGN KEY (dignidad_id) REFERENCES public.dignidad(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3399 (class 2606 OID 26218)
-- Name: usuario establecimiento_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT establecimiento_id_fk FOREIGN KEY (establecimiento_id) REFERENCES public.establecimiento(id) NOT VALID;


--
-- TOC entry 3407 (class 2606 OID 25342)
-- Name: imagenacta imageacta_acta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imagenacta
    ADD CONSTRAINT imageacta_acta_fk FOREIGN KEY (acta_id) REFERENCES public.acta(id);


--
-- TOC entry 3406 (class 2606 OID 25322)
-- Name: acta junta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acta
    ADD CONSTRAINT junta_fk FOREIGN KEY (junta_id) REFERENCES public.junta(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3394 (class 2606 OID 24947)
-- Name: permisos menu_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT menu_id_fk FOREIGN KEY (menu_id) REFERENCES public.menu(id);


--
-- TOC entry 3393 (class 2606 OID 24952)
-- Name: menu modulo__id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu
    ADD CONSTRAINT modulo__id_fk FOREIGN KEY (modulo_id) REFERENCES public.modulo(id);


--
-- TOC entry 3403 (class 2606 OID 25297)
-- Name: zona parroquia_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zona
    ADD CONSTRAINT parroquia_fk FOREIGN KEY (parroquia_id) REFERENCES public.parroquia(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3400 (class 2606 OID 25250)
-- Name: candidato partido_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.candidato
    ADD CONSTRAINT partido_fk FOREIGN KEY (partido_id) REFERENCES public.partido(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3398 (class 2606 OID 25577)
-- Name: usuario provincia_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT provincia_id_fk FOREIGN KEY (provincia_id) REFERENCES public.provincia(id);


--
-- TOC entry 3395 (class 2606 OID 24977)
-- Name: permisos rol_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permisos
    ADD CONSTRAINT rol_id_fk FOREIGN KEY (rol_id) REFERENCES public.rol(id);


--
-- TOC entry 3396 (class 2606 OID 24982)
-- Name: rolusuario rol_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rolusuario
    ADD CONSTRAINT rol_id_fk FOREIGN KEY (rol_id) REFERENCES public.rol(id);


--
-- TOC entry 3397 (class 2606 OID 24987)
-- Name: rolusuario usuario_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rolusuario
    ADD CONSTRAINT usuario_id_fk FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- TOC entry 3408 (class 2606 OID 25350)
-- Name: votos votos_acta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votos
    ADD CONSTRAINT votos_acta_fk FOREIGN KEY (acta_id) REFERENCES public.acta(id);


--
-- TOC entry 3409 (class 2606 OID 25355)
-- Name: votos votos_candidato_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votos
    ADD CONSTRAINT votos_candidato_fk FOREIGN KEY (candidato_id) REFERENCES public.candidato(id);


--
-- TOC entry 3404 (class 2606 OID 25307)
-- Name: junta zona_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.junta
    ADD CONSTRAINT zona_fk FOREIGN KEY (zona_id) REFERENCES public.zona(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2024-07-15 09:34:52 -05

--
-- PostgreSQL database dump complete
--

