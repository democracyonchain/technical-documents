--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)

-- Started on 2024-07-01 09:43:09 -05

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

COPY public.acta (id, dignidad_id, junta_id, seguridad, estado, usuarioescaneo, fechaescaneo, usuariodigitacion, fechadigitacion, usuariocontrol, fechacotrol, peticion, sufragantesicr, sufragantesdigitacion, sufragantescontrol, sufragantes, blacosicr, blancosdigitacion, blancoscontrol, blancos, nulosicr, nulosdigitacion, nulos) FROM stdin;
\.


--
-- TOC entry 3566 (class 0 OID 25245)
-- Dependencies: 226
-- Data for Name: candidato; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.candidato (id, cedula, nombre, partido_id) FROM stdin;
\.


--
-- TOC entry 3567 (class 0 OID 25265)
-- Dependencies: 227
-- Data for Name: canton; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.canton (id, nombre, provincia_id) FROM stdin;
5	TULCAN	4
10	MONTUFAR	4
11	ALEMANIA	26
15	ESPEJO	4
20	MIRA	4
21	ARGENTINA	28
25	BOLIVAR	4
30	IBARRA	10
31	AUSTRALIA	26
35	OTAVALO	10
40	COTACACHI	10
41	AUSTRIA	26
45	ANTONIO ANTE	10
50	PIMAMPIRO	10
51	BELGICA	26
55	URCUQUI	10
60	QUITO	17
61	BOLIVIA	28
65	CAYAMBE	17
70	MEJIA	17
71	BRASIL	28
75	PEDRO MONCAYO	17
80	RUMIÑAHUI	17
81	CANADA	27
85	SANTO DOMINGO	23
90	TISALEO	18
91	COLOMBIA	28
95	BALAO	9
100	LATACUNGA	5
101	COREA (SUR) REPUBLICA DE	26
105	PUJILI	5
110	SALCEDO	5
111	COSTA RICA	28
115	SAQUISILI	5
120	PANGUA	5
121	CUBA	28
125	COLIMES	9
130	NANGARITZA	19
131	CHILE	28
135	AMBATO	18
140	PELILEO	18
141	CHINA	26
145	PILLARO	18
150	BAÑOS	18
155	PATATE	18
160	QUERO	18
161	EL SALVADOR	28
165	GUARANDA	2
170	CHIMBO	2
171	ESPAÑA	26
175	SAN MIGUEL	2
180	CHILLANES	2
181	ESTADOS UNIDOS DE AMERICA	27
185	ECHEANDIA	2
190	CHAMBO	6
191	FRANCIA	26
195	RIOBAMBA	6
200	GUANO	6
201	REINO UNIDO DE GRAN BRETAÑA E IRLANDA DEL NORTE	26
205	COLTA	6
210	GUAMOTE	6
211	GUATEMALA	28
215	ALAUSI	6
220	CHUNCHI	6
221	HONDURAS	28
225	PENIPE	6
230	FLAVIO ALFARO	13
231	HUNGRIA	26
235	AZOGUES	3
240	CAÑAR	3
241	SUSCAL	3
245	BIBLIAN	3
250	LA TRONCAL	3
251	ISRAEL	26
255	EL CHACO	15
260	CUENCA	1
261	ITALIA	26
265	GUALACEO	1
270	GIRON	1
271	JAPON	26
275	PAUTE	1
280	SIGSIG	1
281	MEXICO	28
285	SANTA ISABEL	1
290	CATAMAYO	11
295	ZAPOTILLO	11
300	LOJA	11
301	PAISES BAJOS (HOLANDA)	26
305	SARAGURO	11
310	PALTAS	11
311	OLMEDO	11
312	PANAMA	28
315	CELICA	11
320	CALVAS	11
321	PARAGUAY	28
325	MACARA	11
330	PUYANGO	11
331	PERU	28
335	GONZANAMA	11
340	ESPINDOLA	11
341	EGIPTO	28
345	SOZORANGA	11
350	MACHALA	7
351	REPUBLICA DOMINICANA	28
355	SANTA ROSA	7
360	ZARUMA	7
361	SUECIA	26
365	PASAJE	7
370	PIÑAS	7
371	SUIZA	26
375	ARENILLAS	7
380	EL GUABO	7
381	FEDERACION DE RUSIA	26
385	EL EMPALME	9
390	GUAYAQUIL	9
391	URUGUAY	28
395	YAGUACHI	9
400	DAULE	9
401	VENEZUELA	28
405	SALINAS	24
410	SANTA ELENA	24
411	INDONESIA	26
415	BALZAR	9
420	MILAGRO	9
425	SAMBORONDON	9
430	SALITRE	9
435	NARANJAL	9
440	PORTOVIEJO	13
441	SUDAFRICA	28
445	MONTECRISTI	13
446	JARAMIJO	13
450	MANTA	13
451	TURQUIA	26
455	JIPIJAPA	13
460	24 DE MAYO	13
465	ROCAFUERTE	13
470	SANTA ANA	13
475	SUCRE	13
476	JAMA	13
477	SAN VICENTE	13
480	CHONE	13
485	BOLIVAR	13
490	JUNIN	13
495	PAJAN	13
500	EL CARMEN	13
505	EL TRIUNFO	9
510	NARANJITO	9
515	BABAHOYO	12
516	VALENCIA	12
520	BABA	12
525	VINCES	12
530	PUEBLO VIEJO	12
535	URDANETA	12
540	QUEVEDO	12
545	VENTANAS	12
546	QUINSALOMA	12
550	TOSAGUA	13
555	PUCARA	1
556	CAMILO PONCE ENRIQUEZ	1
560	ESMERALDAS	8
561	RIO VERDE	8
565	ELOY ALFARO	8
570	MUISNE	8
575	QUININDE	8
580	SAN LORENZO	8
585	CHILLA	7
590	MORONA	14
595	GUALAQUIZA	14
600	LIMON INDANZA	14
605	SANTIAGO	14
610	SUCUA	14
611	LOGROÑO	14
615	PALORA	14
620	TENA	15
621	C. J. AROSEMENA TOLA	15
625	LAGO AGRIO	21
626	CUYABENO	21
630	AGUARICO	22
635	QUIJOS	15
640	SUCUMBIOS	21
645	FCO.DE ORELLANA	22
650	PUTUMAYO	21
655	ZAMORA	19
660	CHINCHIPE	19
661	PALANDA	19
665	YACUAMBI	19
670	YANZATZA	19
675	PALESTINA	9
680	PASTAZA	16
685	MERA	16
690	PORTOVELO	7
695	HUAQUILLAS	7
700	ARCHIDONA	15
705	ATAHUALPA	7
710	MONTALVO	12
715	PEDRO CARBO	9
720	SHUSHUFINDI	21
725	JOYA DE LOS SACHAS	22
730	PINDAL	11
735	PLAYAS	9
740	QUILANGA	11
745	CASCALES	21
750	PALENQUE	12
755	LAS LAJAS	7
760	CALUMA	2
765	EL TAMBO	3
770	SAN MIGUEL DE LOS BANCOS	17
775	EL PANGUI	19
780	OÑA	1
785	ATACAMES	8
790	SIMON BOLIVAR	9
795	HUAMBOYA	14
796	PABLO SEXTO	14
797	TIWINTZA	14
800	SAN CRISTOBAL	20
805	SANTA CRUZ	20
810	ISABELA	20
815	CHAGUARPAMBA	11
820	DURAN	9
825	LA MANA	5
830	PALLATANGA	6
835	A.BAQUERIZO MORENO	9
840	PICHINCHA	13
845	CEVALLOS	18
850	MOCHA	18
855	SAN FERNANDO	1
860	MARCABELI	7
865	GONZALO PIZARRO	21
870	SANTA LUCIA	9
875	BALSAS	7
880	SANTA CLARA	16
881	ARAJUNO	16
885	NABON	1
890	CRNL MARCELINO MARIDUENAS	9
895	PEDRO VICENTE MALDONADO	17
896	PUERTO QUITO	17
900	CUMANDA	6
905	DELEG	3
910	PEDERNALES	13
915	CHORDELEG	1
920	LOMAS DE SARGENTILLO	9
925	SAN JUAN BOSCO	14
926	TAISHA	14
930	SIGCHOS	5
935	LORETO	22
940	NOBOL / PIEDRAHITA	9
945	BUENA FE	12
946	MOCACHE	12
950	LAS NAVES	2
955	SEVILLA DE ORO	1
960	EL PAN	1
965	LA LIBERTAD	24
970	OLMEDO	13
975	PUERTO LOPEZ	13
980	CENTINELA DEL CONDOR	19
981	PAQUISHA	19
982	LA CONCORDIA	23
985	GRAL. A. ELIZALDE	9
986	ISIDRO AYORA	9
990	GUACHAPALA	1
995	SAN PEDRO DE HUACA	4
\.


--
-- TOC entry 3563 (class 0 OID 25207)
-- Dependencies: 223
-- Data for Name: dignidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dignidad (id, nombre, ambio, estado, orden) FROM stdin;
\.


--
-- TOC entry 3584 (class 0 OID 25791)
-- Dependencies: 244
-- Data for Name: establecimiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.establecimiento (id, fechacreacion, fechamodificacion, usuariocreacion_id, usuariomodificacion_id, nombre, ruc, direccion, telefono, representante, establecimiento, logo, estado, activo) FROM stdin;
1	2024-05-31 00:00:00	2024-06-18 16:05:39.585	16	16	Blockchain System Voting	\N	\N	\N	\N	\N	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d227574662d38223f3e0a3c212d2d2044657369676e656420627920566578656c732e636f6d202d203230313920416c6c20526967687473205265736572766564202d2068747470733a2f2f766578656c732e636f6d2f7465726d732d616e642d636f6e646974696f6e732f20202d2d3e0a3c7376672076657273696f6e3d22312e31222069643d224c617965725f312220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220a092076696577426f783d22302030203132303020313230302220656e61626c652d6261636b67726f756e643d226e657720302030203132303020313230302220786d6c3a73706163653d227072657365727665223e0a3c706174682066696c6c3d22233135323333442220643d224d3230352e3239342c3435382e323237632d392e3036362d32332e3338352d31372e3535392d35312e3339342d332e3134332d37312e3836376331342e3131372d32302e3034382c34332e3036312d32322e3231362c36322e3633392d33362e3937370a0963382e39322d362e3732352c31352e3738322d31362e3134332c31392e34352d32362e36393463302e3737352d322e3232382c312e3431352d342e3632392c302e3837312d362e393235632d312e3231382d352e31342d372e3939382d372e3138382d31322e3934352d352e3333390a09632d342e3934382c312e3834392d382e3430312c362e3236352d31312e3538392c31302e34373763312e3037362d32332e3535322c31332e3039382d34362e3337382c33312e3931312d36302e3538386331302e3739352d382e3135342c32332e3534342d31332e3531372c33332e3937342d32322e3133320a096331362e31352d31332e33342c32352e3433322d33332e3534372c32392e3437332d35342e31303173332e3333312d34312e3730382c322e3630352d36322e3634336332372e3734332c31342e3532382c34332e3031322c34392e3433322c33342e3835312c37392e3636370a096332352e3631352d31322e38342c34332e3436322d33382e34342c35302e3835312d36362e313233533434392e3338362c37372e3733372c3434322e322c35306332372e37322c32352e3632312c34322e3436372c36342e3632332c33382e3633322c3130322e3137350a096331342e3432312d31392e3437332c31392e3435392d34352e3538362c31332e3331382d36392e3032366331392e3530322c32312e3131342c32382e34352c35312e3532392c32332e34392c37392e38346331342e3737352d31322e36332c32312e3436352d33332e3938312c31362e35342d35322e3738350a096331342e3630392c31372e3336352c32312e3733362c34302e38322c31392e3235382c36332e3337386332362e3636352d322e3936362c35312e3837332d31372e3331322c36382e3034312d33382e3732327332332e3036372d34392e3538322c31382e3632312d37362e3034310a096331382e30362c31332e3739382c32332e3136352c33392e3730352c31382e3334332c36312e393135632d342e3832322c32322e32312d31372e3734372c34312e3637322d33302e3431352c36302e3534336334322e3232352c302e3439312c38342e3532392d31302e3333382c3132312e3332352d33312e3035360a0963322e3530362c382e3835352d342e3337372c31372e3433392d31312e3134382c32332e363732632d31372e33312c31352e3933332d33372e3339362c32382e3834312d35392e3037392c33372e3936376332382e3137352c32302e3630392c35332e31342c34362e37312c36372e3535382c37382e3530310a097331372e3334322c36392e3732372c332e3030352c3130312e353535632d31352e3033312c33332e3336392d34362e3734392c35362e3338332d37392e3935332c37312e373737632d31352e3931372c372e3337392d33322e3432372c31332e33342d34382e3933332c31392e3234310a09632d31342e3737372c352e3238332d33362e3733352c392e3234372d34392e3137392c31382e393837632d31332e3131372c31302e3236372d32362e3937332c35312e3130362d382e3736312c36332e32343763382e3533322c352e3638382c33352e3534392c32342e3137332c34392e3736392c31352e3634320a096331342e32322d382e3533322c33322e3334322d32372e3031372c31352e34362d34312e32333763302c302d31322e3631362d31372e3937342d32352e3431342d342e373231632d372e3034332c372e3239342d352e3234392c31352e3131342c322e35372c32302e3839380a0963312e3133332c302e3833382c322e3333352c312e3634382c332e3730382c312e39363663322e3230322c302e3531312c342e3534322d302e3333382c362e3332382d312e37323463312e3738362d312e3338362c332e3131362d332e3236312c342e34322d352e3130370a0963322e3538322c312e3738342c352e3030312c342e3535362c342e3539352c372e363639632d302e3834392c362e3530352d31312e3037362c392e3131332d31362e3333372c392e363033632d372e3033382c302e3635352d31342e3333362d302e3735372d32302e3839342d332e3239330a09632d31302e3533342d342e3037342d31362e3630362d31342e3836382d31362e3736362d32352e383731632d302e3234372d31372e3034382c31362e3237362d33342e3332332c33322e3137322d33382e3633316331342e3432332d332e3930392c33302e3336312d312e3235362c34342e36392c312e3737340a0963392e34392c322e3030372c31382e3833312c342e3630362c32382e3139362c372e31313463352e3130312c312e3336362c31312e3531332c332e3937382c31362e3930322c332e3330346331312e3337362d312e3432322c34362e3932352d31372e3036342c35342e3033352d33342e3132370a0963372e31312d31372e3036342c32322e3735312d34342e3038312c31312e3337362d34382e33343763302c302c32372e3031372c33382e3130342d312e3432322c37362e36343263302c302c342e3236362c33302e3030362c34352e3530332c31302e3039380a096334312e3233372d31392e3930382c31382e3438362d39312e3030362c31382e3438362d39312e303036732d32372e3031372d34372e3331352d34312e3233372d35302e36373563302c302c36312e3134342c31332e3730342c38312e3035322c36342e3839350a0963302c302c31392e3930382d38392e3538342d35382e332d3136302e363832732d37382e3230382d37312e3039382d37382e3230382d37312e303938733131352e3137392c32322e3735312c3231332e3239352c3130322e333831733133302e3832312c3138362e3237372c3133372e3933312c3231332e3239360a0963392e3231342c33352e3031362c31342e3636372c37312e3933362c31362e3338312c3130382e303763322e3835352c36302e3139312d32312e3132362c3131392e3033362d33362e3238392c3137362e3332316331382e33372d36392e3339392c33302e3936362d3135342e31362c352e3837352d3232332e3833360a09632d31372e3739342d34392e3431322d33322e3737382d39382e3137382d36332e3532362d3134312e353936632d31322e3336362d31372e3436322d32362e30392d33332e3934352d34302e3436352d34392e37383163302c302c35392e3732332c3131332e3735372c322e3834342c3231312e3837330a0963302c302c382e3533322d3136372e3739322d33352e3534392d3139392e30373563302c302c33392e3831352c3131332e3735372d38322e3437342c3139342e38303963302c302c32382e3433392d33342e3132372c32342e3137332d34352e3530330a0963302c302d32302e3235342c33362e3538372d3133302e3832312c31392e39303763302c302c32322e3735312c32322e3735312c35362e3837392c33312e32383363302c302d32342e3936392c31362e3031372d39312e3030362d31392e3930370a0963302c302c31312e3337362c32312e3332392c34312e3233372c33322e37303563302c302d32342e3438382c31362e312d36392e3637362d31372e30363463302c302d32312e3332392c32372e3031372d37312e3039382c32312e333239732d38322e3437342d33392e3831352d38322e3437342d33392e3831350a0973342e3236362c35342e3033352c31342e32322c36332e39383863302c302d34342e3038312d32352e3539352d35342e3033352d39332e383563302c302d32382e3433392c32312e3332392d382e3533322c34382e33343763302c302d32392e3836312c342e3236362d33322e3730352d35392e3732320a0963302c302d32352e3539352c32342e3137332d31312e3337362c34342e30383163302c302d32342e3137332d31372e3036342d32372e3031372d33312e32383363302c302d31322e3739382c35352e3435372c31352e3634322c36392e3637366c382e3533322c31312e3337360a0963302c302d382e3533322c342e3236362d31392e3930382c3063302c302c31312e3337362c32352e3539352c34312e3233372c31372e3036346332392e3836312d382e3533322c33342e3132372d32372e3031372c33342e3132372d32372e3031377331312e3337362c32322e3735312d392e3935342c33352e3534390a09632d32312e3332372c31322e3739362d34342e3037362c33312e3237392d35352e3435332c33322e37303563342e3233312d302e35332c31382e3231342c31322e3238352c32342e3834332c31332e3134396331362e3738312c322e3138342c35392e3635392d31302e3931372c36362e3135392d32382e37390a0963352e3638382d31352e3634322c372e31312d32392e3836312c372e31312d32392e3836317331322e3739382c32312e3332392c352e3638382c33362e393731732d372e31312c31352e3634322d372e31312c31352e3634327335312e3139312d34342e3038312c37312e3039382d35312e3139310a096331392e3930372d372e31312c3130302e3935392d33312e3238332c3134332e3631382d31372e303634733132332e3731312d312e3432322c3134322e3139362d32312e33323963302c302c312e3432322c32372e3031372d31382e3438362c35342e3033350a0963302c302c31302e3432322c33312e3530392c35382e3135322c34392e3731356331362e3738372c362e3430332c33342e3635342c392e3530332c35322e36322c392e3731316c32372e34342c302e33313763302c302d332e3132362c32382e34322d38382e3434342c32342e3135340a0963302c302c372e31312c35362e3837392c36382e3235342c37362e37383663302c302d31322e3739382c31352e3634322d36322e3536362d31322e37393863302c302d352e3638382c32392e3836312c31322e3739382c34382e33343763302c302d31372e3036342d342e3831322d32392e3836312d32322e3331340a0963302c302d34352e3530332c39312e39392d3133352e3038372c3130302e35323263302c302d31382e3438362c31382e3438362d372e31312c33312e32383363302c302d33352e3534392d32312e3332392d33352e3534392d33352e35343963302c302d39332e38352d342e3236362d3133302e3832312d32392e3836310a0963302c302c352e3638382c33342e3132372d31352e3634322c34342e30383163302c302d32322e3735312d35362e3837392d35362e3837392d34362e393235732d33322e3730352c34382e3334372d33322e3730352c34382e33343773372e31312c32352e3539352c31392e3930382c33322e3730350a096331322e3739382c372e31312c31322e3739382c372e31312c31322e3739382c372e3131732d33382e3339332d322e3834342d35392e3732322d32342e313733632d32312e3332392d32312e3332392d32312e3332392d32312e3332392d32312e3332392d32312e3332390a09632d322e3231322c31382e3538342d322e3536352c33392e3938312c332e3631342c35372e3831366331322e3534362c33362e3230392c35352e3439332c36372e3338362c39332e3132382c37312e33393263322e3235322c302e32342c31392e33362d302e3632392c31392e3835392c302e3139320a0963302c302d33312e3238332d35312e3139312d31382e3438362d37312e30393863302c302c33342e3132372c34322e3635392c35322e3631332c34322e36353963302c302d32322e3735312d36312e3134342d372e31312d37382e3230380a0963382e3330352c31352e3531362c31382e352c33302e3531392c33302e3035372c34332e3737346333362e3938342c34322e3431392c39362e36312c34302e3333392c3134342e3834342c32312e3633366336392e3539322d32362e3938352c36382e3235382d33342e31312c36382e3235342d33342e3132370a0963322e3139352c31312e3333372d32322e3137372c33362e3630342d32382e34372c34332e353936632d34302e3636392c34352e3138382d3130322e3434372c38342e3430312d3136322e3038392c39372e313832632d32332e3138332c342e3936372d34372e3330392c31302e3531322d37312e3133392c382e3531350a096331352e3831312d392e3332362c32392e3633342d32322e3030332c34302e32392d33362e393439632d34362e37312c362e3039362d39382e382c342e3139322d3134322e3736312d31342e323032632d34302e3331312d31362e3836392d37362e3438392d34392e3637332d39352e3132362d38392e3630390a0963302c302d33392e3831352c382e3533322d35362e3837392d31372e30363463302c302c34342e3038312c312e3432322c35382e3330312d33362e39373163302c302d35312e3139312d31352e3634322d34362e3932352d34352e35303363302c302c31342e3231382c32312e39322c34312e3233332c392e3534310a096332332e3934382d31302e3937342c33352e3831352d33362e3836322c35392e3631342d34382e37366332392e37372d31342e3838332c36342e3837332d32372e31322c39382e3531342d32352e3637396332302e3037372c302e38362c33392e3535332c362e3732332c35382e3838342c31322e3231340a096334372e3939332c31332e3633322c39372e3533392c32352e33312c3134372e3239392c32312e36386331382e3132312d312e3332322c33362e3731332d342e3932382c35312e36322d31352e3331366332332e3837362d31362e3633392c33332e3531362d34362e3736332c34312e3634332d37342e3730370a09632d31372e39352c31352e3833362d34322e3834392c32332e3439312d36362e3539352c32302e34373663392e3331382d32302e3439322c32352e3439312d34302e3634342c32312e3035332d36322e373134632d312e3333362d362e3634332d342e35322d31322e3738322d382e3234362d31382e3434320a09632d31302e3436382d31352e3930332d32362e3235392d32392e3034332d34342e3931322d33322e383538632d31382e3635332d332e3831362d33392e3938362c332e3234332d34392e39392c31392e343433632d31302e3030342c31362e3139392d352e3132352c34302e37382c31312e38332c34392e3434310a096331382e3938382c392e3639392c34322e3631342d332e30332c35342e3931392d32302e34343363372e3733352c31342e3030332d312e3931342c33312e3435372d31332e3734352c34322e323234632d31312e3538342c31302e3534322d32362e3139312c31382e3630342d34312e3834342c31392e3134340a09632d32362e3939392c302e39332d34392e3332332d31392e3639362d36382e3330372d33382e393136632d312e3935312c31322e3633392c322e3232342c32362e3038332c31302e3939312c33352e333934632d31372e3537332d302e3538312d33342e3631382d31302e3130342d34342e3332352d32342e3736340a09632d32382e3531362c31312e3139382d35372e3936392c32302e3838382d38382e3437352c32332e373131632d33302e3530362c322e3832332d36322e3336392d312e3634322d38382e3736342d31372e31393663372e36322c342e34392c31352e3538392c32332e3137362c32312e3931372c33302e3339330a0963382e3232392c392e3338352c31372e3335342c31382e3338332c32372e3436392c32352e373236632d32302e3739352d382e3539322d36382e3236392d32302e3539352d37372e3734392d34332e333437632d372e31312d31372e3036342c31372e3036342c33392e3236392c32392e3836312c34342e3531390a0963302c302d39382e3131362d35342e3437332d3132392e3339392d39322e38363663302c302c342e3236362c33312e3238332c32312e3332392c34352e35303363302c302d32382e3433392d312e3432322d34362e3932352d33382e33393363302c302d36312e3134342c392e3935342d35362e3837392d33352e3534390a0963302c302c31372e3036342c31392e3930382c32392e3836312c322e3834346331322e3739382d31372e3036342c322e3834342d34362e3932352d32312e3332392d34342e303831732d33352e3534392c33352e3534392d33352e3534392c33352e3534390a09732d31372e3036342d34362e3932352c31342e32322d37312e30393863302c302c32352e3539352d372e31312c35342e3033352c32312e33323963302c302d32342e3933312d34382e3334372d37322e3839392d34342e30383163302c302d32352e3231362c352e3638382d33332e3734382c32352e3539350a09632d382e3533322c31392e3930372d382e3533322d33392e3133322c32312e3332392d34342e3435316332392e3836312d352e3331382c34312e3233372d362e37342c34362e3932352d31352e32373263352e3638382d382e3533322d322e3834342c312e3432322c382e3533322c372e31310a096331312e3337362c352e3638382c33322e3730352c342e3236362c31372e3036342d31352e363432632d31352e3634322d31392e3930382d33322e3730352d36312e3433332d35342e3033352d36392e38323163302c302c38392e3538342c34352e3634372c39392e3533372c38342e30340a0963392e3935342c33382e3339332c392e3935342c33382e3339332c392e3935342c33382e333933732d32382e3433392d392e3935342d33312e3238332c322e383434632d322e3834342c31322e3739382d322e3834342c32322e3735312c31312e3337362c32342e3137330a096331342e32322c312e3432322c31342e32322c312e3432322c31342e32322c312e34323273322e3834342c34322e3635392c31312e3337362c34392e37363963382e3533322c372e31312c35312e3139312c32342e3137332c35312e3139312c32342e3137330a09732d34392e3736392d36392e3637362d34312e3233372d3130392e34393163302c302d31322e3739382d33312e3238332c31352e3634322d39332e38356332382e3433392d36322e3536362c3137302e3633362d38322e3437342c3137302e3633362d38322e3437340a09733133362e3530392d372e31312c3137302e3633362d34362e3932356332372e3430362d33312e3937342c35362e3738352d38342e3437362c32322e3338392d3132312e373834632d31332e3936342d31352e3134362d33332e3836352d32332e362d35332e3935372d32382e3134390a09632d36332e3534312d31342e3338392d3133342e3139312c392e3132332d3137362e3433382c35382e3731386333342e3330382c352e3136392c37302e3933362d31312e3931392c38392e3031362d34312e35333163342e3435332c32332e3736392d392e3739342c34392e3730322d33322e3234342c35382e3639310a096331372e3030362c352e3632342c33362e3036322c312e3038312c35312e3439382d382e3030367332372e3933332d32322e3331352c34302e3230372d33352e333631632d352e3132332c33332e37362d33362e3837352c35372e3539312d36392e3335352c36382e3132370a09632d33322e34382c31302e3533362d36372e3333342c31312e3535362d3130302e32342c32302e363739632d352e3234342c312e3435342d31302e3532362c332e3135382d31342e3936382c362e333032632d362e3135382c342e3335392d31302e3134332c31312e3035372d31342e3730392c31372e3036330a09632d31332e3239352c31372e3438372d33322e3839362c33302e3037312d35342e3333312c33342e38386331362e3036362d31332e3636352c32372e3536372d33322e3630372c33322e3238322d35332e313634632d32332e3532342c31382e3534382d35352e3331362c32312e3231352d38342e3332312c32382e3730360a09632d32392e3030352c372e34392d36302e3231342c32352e3030382d36342e3738332c35342e363134433230352e3338352c3435382e3436332c3230352e3333392c3435382e3334352c3230352e3239342c3435382e3232377a222f3e0a3c2f7376673e0a	t	t
\.


--
-- TOC entry 3572 (class 0 OID 25337)
-- Dependencies: 232
-- Data for Name: imagenacta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imagenacta (acta_id, image, nombre, pagina, hash, pathipfs, fecha) FROM stdin;
\.


--
-- TOC entry 3574 (class 0 OID 25360)
-- Dependencies: 234
-- Data for Name: imagensegmento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imagensegmento (junta_id, dignidad_id, candidato_id, imagen, nombre, hash, pathipfs, fecha) FROM stdin;
\.


--
-- TOC entry 3570 (class 0 OID 25302)
-- Dependencies: 230
-- Data for Name: junta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.junta (id, zona_id, junta, sexo, electores, estado) FROM stdin;
\.


--
-- TOC entry 3549 (class 0 OID 24800)
-- Dependencies: 209
-- Data for Name: listanegratoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listanegratoken (id, token) FROM stdin;
1	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxudW5lekBtc3AuZ29iLmVjcyIsIm5vbWJyZXMiOiJMdWlzIEFuZHJlcyIsImFwZWxsaWRvcyI6Ik51w7FleiBGbG9yZXMiLCJpZCI6MTYsImlhdCI6MTcxNTI5NDAyMCwiZXhwIjoxNzE1MzgwNDIwfQ.d5-vgu2yjj9oP_amd1U-VYF5e6OD3A1WX5lkEYAj1fQ
2	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxudW5lekBtc3AuZ29iLmVjcyIsIm5vbWJyZXMiOiJMdWlzIEFuZHJlcyIsImFwZWxsaWRvcyI6Ik51w7FleiBGbG9yZXMiLCJpZCI6MTYsImlhdCI6MTcxNTM2MTkxMiwiZXhwIjoxNzE1NDQ4MzEyfQ.QGrMHWzC4CRQiHHwAQxa3LJPJJHNDVRPlu2LyOXlB-U
3	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxudW5lekBtc3AuZ29iLmVjcyIsIm5vbWJyZXMiOiJMdWlzIEFuZHJlcyIsImFwZWxsaWRvcyI6Ik51w7FleiBGbG9yZXMiLCJpZCI6MTYsImlhdCI6MTcxNTM2MTk1OSwiZXhwIjoxNzE1NDQ4MzU5fQ.ztZWtCd0Q4Nh8LvjHB4ro_LOt8MHELVym2xQjsEWDy8
4	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzU0NzM2LCJleHAiOjE3MTU0NDExMzZ9.KV8RArDoUCDRyeUV5RPTAqzO0Ca2mQ7V5Frtukt9sDA
5	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzY5NDY1LCJleHAiOjE3MTU0NTU4NjV9.MlbBNRFZo8VhSgGET41VGA1WqfIub_S1IYXssqIap1M
6	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzY5ODE1LCJleHAiOjE3MTU0NTYyMTV9.pAacfR45YlgJgy1-HfaqJzkJZ4cqETVnn4rOOiYJWGI
7	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzcyNjQ3LCJleHAiOjE3MTU0NTkwNDd9.NBYm3-XkHC1OYGDnKH5vGRcKDuutk4OjmaR66pk3P2o
8	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzcyNzI1LCJleHAiOjE3MTU0NTkxMjV9.gx4tBcHRGcv8Hrm9vj-mNVp4LinVhJRjOAEL2WubvD8
9	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzcyOTgxLCJleHAiOjE3MTU0NTkzODF9._E70yvZYtwwg0a6X7P4EVC1o1tZDPL9poATtlDgkV6g
10	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzczMDE1LCJleHAiOjE3MTU0NTk0MTV9.plejapnru1g4qyAv4bfz8xIwQnZppiosnB3jNLr6Z7M
11	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzczMTIzLCJleHAiOjE3MTU0NTk1MjN9.EALeI3VbAUkDQZ-cRv9KsIqlAJDnfHt9_hxPbx_Z_FI
12	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzczMTU3LCJleHAiOjE3MTU0NTk1NTd9.jXrD0GNgxk8zM6YHYKyIwAf3SMPb0C5UaTbXOlr8_14
13	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1MzczMjYyLCJleHAiOjE3MTU0NTk2NjJ9.Sxt-v5wEl9N4WEDJHd7nLPoj-e_uVCBIcQTRANhwa-8
14	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc2MDQ0LCJleHAiOjE3MTU0NjI0NDR9.zHWzuPeqN8EmXRi98EIYqmV7CSFTAQtOD-biyBU_td0
15	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc2NDI3LCJleHAiOjE3MTU0NjI4Mjd9.JGrPueGuWf1loKDsQ8WnsGXh1U02Ek--xOdrtv3Cgw4
16	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc2NjAwLCJleHAiOjE3MTU0NjMwMDB9._GePch2JhZcQdyrm0C5c2XGKslQVWyRw68u-W9HuibA
17	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc2ODQ1LCJleHAiOjE3MTU0NjMyNDV9.2n7xwwBsSv5I4JLdqkwa0xmrb1lzO8Xxlerw5rwioqA
18	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc3MTQ2LCJleHAiOjE3MTU0NjM1NDZ9.f5a2FCM3iVQW5nJsvKMsuGqSjv-nQeKZ4ZrMCBs9kBA
19	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1Mzc3MjY4LCJleHAiOjE3MTU0NjM2Njh9.1RYTq60k-67-vhbZQmEV_RbPQhDcb_qgLkvGsBt5hwU
20	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE1OTgwNjA5LCJleHAiOjE3MTYwNjcwMDl9.yAELoGkSkmO5RXzc5arYmiDJgM5zsLCtebMmfu8QZeo
21	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2MjE5MDQzLCJleHAiOjE3MTYzMDU0NDN9.NH_8VoWWSmS86t41ljHhLQRLtZtMz5vTgCwvMAZpadg
22	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2ODI0MzQwLCJleHAiOjE3MTY5MTA3NDB9.DFwzkDKthZK7Dj7lwPI9-VuLdIXnL9FI9qihsYLR0AY
23	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2OTEyMDE0LCJleHAiOjE3MTY5OTg0MTR9.tuwf8xsGUvC6Q5AxePB6gm0WsWAvlKiIcE9A4v9EE4M
24	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2OTMyMDAxLCJleHAiOjE3MTcwMTg0MDF9.cMaNjOG3BQBbTY8oreJdfiUSH4-2kErVLUeiSGIgqHc
25	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE2OTM1NTMzLCJleHAiOjE3MTcwMjE5MzN9.Bsf5mfOqC97PUb-vtF1z7eTM1UvNlyxR65woBLM0A7o
26	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MDAxNTYwLCJleHAiOjE3MTcwODc5NjB9.Z1wefpyP2hiQw17YFUIme1r9-MxqQVXp4lCwJUFMrO0
27	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MDE5MDk2LCJleHAiOjE3MTcxMDU0OTZ9.WrD4T0gcTwy4e5HKoHX0sLH06dkX-UNubtfseIEBduo
28	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MTA2NTU5LCJleHAiOjE3MTcxOTI5NTl9.K0BTnwJh7j1YZFYHx0_u4A0Q3wEpHIoh5GbFq3gfOY0
29	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MTcyMzYxLCJleHAiOjE3MTcyNTg3NjF9.Fe2_3q6I-bgPFBZtV9pfmCCGsmWZ9dQmqLDkLQ-Ehdc
30	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MTcyNDIxLCJleHAiOjE3MTcyNTg4MjF9.nf1mleDvgKwXtMcQOrQP6A-mCcbtgrBJAb-GtWsaSUk
31	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3MTcyNjE4LCJleHAiOjE3MTcyNTkwMTh9.vUW1RMjCafPfB0XlRysrNKZsZd3jNVtNKN6WU-7nhGc
32	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE3NzA4OTU1LCJleHAiOjE3MTc3OTUzNTV9.x3Cq9Up4r2lydZK134vIAtLMLOrvRVgsWCwv29TeF9o
33	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MDI1NTU4LCJleHAiOjE3MTgxMTE5NTh9.UJUIeJ5zwYvC_a_0JbVFzMCzhTw4ZLA_J1Z8nIvdVOk
34	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MDIzNDU1LCJleHAiOjE3MTgxMDk4NTV9._kAg92WATj8i2WGDkOXz37bAGZAVDUjq3Oz5q8stczM
35	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MDUyODkxLCJleHAiOjE3MTgxMzkyOTF9.kk3y6tsMs1ACUey05gUHi0cC28iswVZnzw1-Dc74Zjg
36	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MDUyOTg2LCJleHAiOjE3MTgxMzkzODZ9.mOm0cnM4tqaT5SxJurgNRNakH8K4CnAYjMMSV9jb7vo
37	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJHYWJyaWVsIExlZGVzbWEiLCJhcGVsbGlkb3MiOiJhZG1pbiIsImlkIjo4NywiaWF0IjoxNzE4MjEwMzc0LCJleHAiOjE3MTgyOTY3NzR9.bs-_ZZyKkG36Al8oYESNB1Torpwjts0qx1xbgXswfg0
38	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hTGVkZXNtYSIsImlkIjo4NywiaWF0IjoxNzE4MjI1MjE2LCJleHAiOjE3MTgzMTE2MTZ9.E8TjY0ZMoB_xJsh56uUbeUuAtDeFbF6iWYdY5pkbTXU
39	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIExlZGVzbWEiLCJpZCI6ODcsImlhdCI6MTcxODIyNTI4OSwiZXhwIjoxNzE4MzExNjg5fQ.o4iSzpYcJ3HgAmmC3VJMFxC5EVry84A9RDh2OAPzRMk
40	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgyOTUwODgsImV4cCI6MTcxODM4MTQ4OH0.aIC9KrVShXlXIAz25ho4sn7ndBtff-mrLXhfFc10D_E
41	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzMDEzNjQsImV4cCI6MTcxODM4Nzc2NH0.Pirr6g6FTZpvIdcGdkwIU8wAG3j4HtKML5iVYAAo3Gs
42	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzMDk1MTcsImV4cCI6MTcxODM5NTkxN30.zjuEmDOg4j1j5J8D20J4QrE8nUlm_Ghydo_vEl4avSg
43	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzMDk2NDUsImV4cCI6MTcxODM5NjA0NX0.h9NmpcfWHPDnWGUoroTtBRzk7plW7pKXxARNWUDfQ4o
44	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ0MTIsImV4cCI6MTcxODQ2MDgxMn0.rXQTLEDPsb0wzVI87-HKm0X-1KbnqFrl_Md0rTIs5AE
45	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ1MDcsImV4cCI6MTcxODQ2MDkwN30.rauqa09pCMAvWXBGRhR48yGC7LWmAmhS4XFeM-IBavI
46	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ1OTEsImV4cCI6MTcxODQ2MDk5MX0.W20ynL_PavX3SpXnyhxTPs4lsjBhXOrZLnrhUTqCyuU
47	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ1OTEsImV4cCI6MTcxODQ2MDk5MX0.W20ynL_PavX3SpXnyhxTPs4lsjBhXOrZLnrhUTqCyuU
48	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ2NDYsImV4cCI6MTcxODQ2MTA0Nn0.5uMJeXW65WQwMVg61wm01Hz_MKZYjomV2Yu3X2PkWyE
49	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ3MTgsImV4cCI6MTcxODQ2MTExOH0.EOKBvsCKjxLszuXO6XbPUzkg2hpqdObYO9bzAHw4YJA
50	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ3NTksImV4cCI6MTcxODQ2MTE1OX0.T__HPpfSPxDQAxyRCVy1SYAVma8jqFHlf4UdqDA7Cms
51	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzQ3ODQsImV4cCI6MTcxODQ2MTE4NH0.AvVP5A7NjxXatzv1-F75WIOqDMiXaoQyrL2oMYsDSIk
52	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTgzNzgwODAsImV4cCI6MTcxODQ2NDQ4MH0.jCG4aFOSomeghj3x9bcdF_RbujgjORtJSzP4OiOwtmo
53	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTU3ODIsImV4cCI6MTcxODc0MjE4Mn0.-QHmOkl5ytlQ9kVqp0OfLvyw0Kt5JC8yV1vRlalatKU
54	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTgyODcsImV4cCI6MTcxODc0NDY4N30.t2k3E7uTA8rHlhULn5d0HgxIRgW2U8KJItdkLsocN7g
55	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTkzMzcsImV4cCI6MTcxODc0NTczN30.0B2KMxroco80uc2E-J_TuToScVRWVDyQE4CbVpQxsG8
56	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTk2NjUsImV4cCI6MTcxODc0NjA2NX0.MwjohXTQPfHDWlxeS6-id5QVI_UCbPVWjo7X9BGnOqM
57	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTk3MjIsImV4cCI6MTcxODc0NjEyMn0.lRpjUnMYlYrXrtw3KY1krvBaPDMDsc1W7TfEs862in0
58	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NTk3NjAsImV4cCI6MTcxODc0NjE2MH0.KAMDuxmj85tOJo2gyrII1zWDAMW9iCV1uW_oKIq8pSI
59	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NjAwNzAsImV4cCI6MTcxODc0NjQ3MH0.bUoOm9F4FhIMugp00vQl_HYu5GFvGGMLwmP-u_J7hRQ
60	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NjA3NDYsImV4cCI6MTcxODc0NzE0Nn0.GMZk7ZOyVNEBt6i39PQi9ZuhFsQ46Tb3Mnpm_Wn_M0E
61	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg2NjExMTcsImV4cCI6MTcxODc0NzUxN30.g1F8fkxCT3vzPz_bmbwH8L9_0j0Zq9cCKXS5c0jFs-U
62	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTY5MjksImV4cCI6MTcxODgwMzMyOX0.hKimmbqmcTWS5N__QTeAhrk1qsGqparldP132uUdP2Q
63	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTY5NDgsImV4cCI6MTcxODgwMzM0OH0._cyxtW-LipQBC1L9ZWQysjZyCecOPQ5x01TmKuUgi1s
64	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTc2OTIsImV4cCI6MTcxODgwNDA5Mn0.x1LD4TE_dpK5kA4LrwN8G4Jf706mZXOYYyRS-zlHmt8
65	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTk2MzcsImV4cCI6MTcxODgwNjAzN30.7WyhWIcJrRz8Fibh_8RkPfSuD5U7gqGM-gA8VopM0bQ
66	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MTk3NDUsImV4cCI6MTcxODgwNjE0NX0.OcavSyqIZKs32w1z5y1QjMPgPaCVc5iw9i-_qzQhemc
67	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjA4NDYsImV4cCI6MTcxODgwNzI0Nn0.KTDHg4jqCIaAlVz1Cn-ajeLB_GRS6ejqrMr2lPohedw
68	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjEwMDcsImV4cCI6MTcxODgwNzQwN30.xHdF3jpAPWf7d0uPMhX-RE0LWTmGSHAG3YZ3PLo22aE
69	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjE3OTEsImV4cCI6MTcxODgwODE5MX0.eDXZc1D080UcnJ8grWSHlKehAJADWmb39nQ3pb-5xv8
70	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjQ4MjIsImV4cCI6MTcxODgxMTIyMn0.Xf5sEpSaOldJ5h48JqACuXxint20XwVcQpD8nomFbOQ
71	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg3MjQ4NjAsImV4cCI6MTcxODgxMTI2MH0.pnV25CzAQA_9jk8UGmVy7kvuUl8QtXieOPhL3LVjAXA
72	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg5NzYwNjQsImV4cCI6MTcxOTA2MjQ2NH0.aMh62H5ICiQkt8c_QVpQcVLqXGScMU0C6DUVb7-d3X0
73	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTg5OTk3ODAsImV4cCI6MTcxOTA4NjE4MH0.-vUfOdZ_bAFU4PQeBn7086Z8pTGSK1gGYIFGqW5PW1Q
74	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTkwMDI2MjksImV4cCI6MTcxOTA4OTAyOX0.daOHfAQoa6Ic2Jh4I2gSYcj3ZA-6E8DydY-KaLXCPjw
75	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTkyMzMwMTgsImV4cCI6MTcxOTMxOTQxOH0.4oR6poGz1zpDxodbvurExex6MHLdLvtrrpEKXgdgbw4
76	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTkyMzU2ODUsImV4cCI6MTcxOTMyMjA4NX0.XK4cIgUyv6laaejUWOSia7FBx-wN5h4xhK09YbfAYuI
77	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImdhYnJpZWwubGVkZXNtYUBhbGdvLmNvbSIsIm5vbWJyZXMiOiJKdWFuIEdhYnJpZWwiLCJhcGVsbGlkb3MiOiJMZWRlc21hIE1hY2FzIiwiaWQiOjg3LCJpYXQiOjE3MTkyMzY4ODEsImV4cCI6MTcxOTMyMzI4MX0.sh_bDtBf6Vr-op_8GoJfNZZG7O_rL8sVDjavmkZC2Z4
\.


--
-- TOC entry 3551 (class 0 OID 24831)
-- Dependencies: 211
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu (id, titulo, icono, estado, modulo_id, orden, fechacreacion, fechamodificacion, usuariocreacion_id, usuariomodificacion_id, url, activo) FROM stdin;
10	Usuarios-admin	pi pi-file-pdf	t	14	1	2024-05-09 10:00:50.531-05	\N	16	\N	usuarioadmin	t
9	Modulos	widgets	t	13	1	2024-02-28 15:58:06.435-05	2024-06-21 11:29:57.44	16	87	/app/seguridades/modulos/	t
8	Roles	background_replace	t	13	3	2024-02-28 15:45:36.222-05	2024-06-21 11:33:02.812	16	87	/app/seguridades/rol/	t
17	Integracion	sdf	t	17	1	2024-06-05 12:45:41.481-05	2024-06-21 12:02:05.748	87	87	sdf	t
16	prueba	prueba	f	15	\N	2024-05-28 16:58:08.855-05	2024-06-04 17:12:13.297	16	87	prueba	f
14	Reporte Básica	pi pi-file-pdf	t	16	1	2024-05-09 10:27:05.065-05	2024-06-05 12:00:14.78	16	87	/app/reportes/reportebasica/	t
13	Reporte Nacional	pi pi-file-pdf	t	16	2	2024-05-09 10:27:00.999-05	2024-06-05 12:08:29.838	16	87	/app/home/reportenacional/	t
11	Proceso 1	pi pi-briefcase	t	15	1	2024-05-09 10:26:37.518-05	2024-06-05 12:42:26.366	16	87	/app/procesos/proceso1/	t
18	pruebas	pruebas	t	24	1	2024-06-24 09:42:53.147-05	2024-06-24 11:31:14.556	16	16	pruebas	f
7	Menu	menu	t	13	2	2024-02-28 15:38:34.319-05	2024-06-21 10:51:00.169	16	87	/app/seguridades/menu/	t
12	Usuarios	supervisor_account	t	13	4	2024-05-09 10:26:43.479-05	2024-06-21 10:52:46.845	16	87	/app/seguridades/usuarios/	t
\.


--
-- TOC entry 3553 (class 0 OID 24836)
-- Dependencies: 213
-- Data for Name: modulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.modulo (id, nombre, codigo, url, icono, estado, fechacreacion, fechamodificacion, usuariocreacion_id, usuariomodificacion_id, color, activo) FROM stdin;
22	demo_borrar	asd	asd	asd	f	2024-06-04 17:17:59.411-05	2024-06-04 17:18:30.756-05	87	87	ad	f
23	borrar_dos	asd	asd	asd	f	2024-06-04 17:19:04.886-05	2024-06-04 17:19:29.883-05	87	87	adad	f
18	demo	dmo	demo	demo	f	2024-05-30 15:23:38.697-05	2024-05-31 11:33:37.184-05	87	16	demo	f
14	Seguridades_old	nvo	seguridades	pi pi-shield	f	2024-05-09 09:59:03.863-05	2024-06-05 12:58:15.389-05	16	87	text-pink-400	t
21	Proceso_old	Pro	/app/procesos/home	pi pi-share-alt	f	2024-05-30 17:20:51.224-05	2024-06-10 10:50:05.977-05	87	87	text-orange-500	t
13	Administracion	admin	/app/seguridades/home	settings	t	2024-02-28 15:37:28.051-05	2024-06-21 11:34:49.394-05	16	87	text-bluegray-500	t
15	Procesos	nvo	/app/procesos/home	tenancy	t	2024-05-09 10:26:12.15-05	2024-06-21 11:59:40.298-05	16	87	text-blue-500	t
19	demoAux	demoAux	demoAux	demoAux	t	2024-05-30 15:25:03.864-05	2024-05-30 17:14:30.61-05	87	87	demoAux	f
17	Integración	Int	/app/itengracion/home	dataset_linked	t	2024-05-30 15:21:24.216-05	2024-06-21 15:33:34.423-05	87	87	text-indigo-500	t
16	Reportes	nvo	/app/reportes/home	finance	t	2024-05-09 10:26:17.936-05	2024-06-21 15:51:25.221-05	16	87	text-orange-500	t
20	Reportes_old	repo	/app/reportes/home	pi pi-chart-bar	f	2024-05-30 17:19:34.377-05	2024-05-31 16:49:03.779-05	87	87	text-blue-500	t
24	demo_sdfsdf	sdf	sdf	sdfsdf	t	2024-06-04 17:21:32.742-05	2024-06-24 10:48:54.319-05	87	16	df	t
\.


--
-- TOC entry 3568 (class 0 OID 25275)
-- Dependencies: 228
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parroquia (id, canton_id, nombre) FROM stdin;
5	360	ABANIN
10	440	ABDON CALDERON
15	285	ABDON CALDERON / LA UNION
20	215	ACHUPALLAS
25	620	AHUANO
30	60	ALANGASI
35	100	ALAQUEZ
40	200	SANTA FE DE GALAN
45	200	SAN JOSE DEL CHAZO
50	440	ALHAJUELA /BAJO GRANDE
55	70	ALOAG
60	70	ALOASI
65	590	ALSHI /9 DE OCTUBRE
70	580	ALTO TAMBO/GUADAL
75	85	ALLURIQUIN
80	60	AMAGUAÑA
85	955	AMALUZA
90	595	AMAZONAS
95	135	AMBATILLO
100	30	AMBUQUI/CHOTA
105	455	AMERICA /LA CERA
110	580	ANCON/PALMA REAL
115	405	ANCONCITO
120	565	ANCHAYACU
125	105	ANGAMARCA
130	30	ANGOCHAGUA
135	110	ANTONIO J. HOLGUIN
140	525	ANTONIO SOTOMAYOR
145	40	APUELA
150	945	PATRICIA PILAR
155	615	ARAPICOS
160	860	EL INGENIO
165	65	ASCAZUBI
170	170	ASUNCION
175	270	ASUNCION
180	610	ASUNCION
185	715	VALLE DE LA VIRGEN
190	135	ATAHUALPA /CHIPZALATA
195	60	ATAHUALPA /HABASPAMBA
200	565	ATAHUALPA/CAMARONES
205	410	ATAHUALPA
210	135	AUGUSTO N MARTINEZ
215	935	AVILA
220	470	AYACUCHO
225	705	AYAPAMBA
230	865	EL REVENTADOR
235	805	BELLA VISTA
240	485	MEMBRILLO
245	380	LA IBERIA
250	10	PIARTAL
255	350	EL RETIRO
260	400	LIMONAL
265	550	BACHILLERO
270	330	EL ARENAL
275	175	BALZAPAMBA
280	295	LIMONES
285	260	BAÑOS
290	295	GARZAREAL
295	145	BAQUERIZO MORENO
300	380	BARBONES
305	85	VALLE HERMOSO
310	305	SUMAYPAMBA
315	100	BELISARIO QUEVEDO
320	340	BELLAVISTA
325	355	BELLAVISTA
330	460	BELLAVISTA
335	140	BENITEZ /PACHANLICA
340	595	BERMEJOS
345	175	BILOVAN
350	595	BOMBOIZA
355	570	BOLIVAR
360	740	FUNDOCHAMBA
365	140	BOLIVAR
370	565	BORBON
375	705	SAN JUAN DE CERRO AZUL
380	480	BOYACA
385	815	BUENAVISTA
390	365	BUENAVISTA
395	275	BULAN / J. VICTOR IZQUIERDO
400	935	SAN VICENTE DE HUATICOCHA
405	480	CHIBUNGA
410	200	VALPARAISO
415	725	SAN CARLOS
420	195	CACHA
425	55	CAHUASQUI
430	60	CALACALI
435	580	CALDERON
440	60	CALDERON
445	195	CALPI
450	560	CAMARONES
455	981	BELLAVISTA
460	495	CAMPOZANO
465	115	CANCHAGUA
470	477	CANOA
475	680	CANELOS
480	65	CANGAHUA
485	310	CANGONAMA
490	725	ENOKANQUI
495	480	CANUTO
500	205	CANI
505	370	CAPIRO
510	630	CAP. AUGUSTO RIVADENEIRA
515	220	CAPZOL
520	515	CARACOL
525	611	SHIMPIS
530	30	CAROLINA /GUALLUPI
535	580	CARONDELET
540	495	CASCOL
545	310	SAN ANTONIO
550	295	MANGAHURCO
555	210	CEBADAS
560	455	LA UNION
565	330	CIANO
570	580	5 DE JUNIO/HUIMBI
575	885	COCHAPATA
580	910	COJIMIES
585	235	COJITAMBO
590	320	COLAIZACA
595	926	HUASAGA /WAMPUIK
600	720	SAN PEDRO DE LOS COFANES
605	410	COLONCHE
610	205	COLUMBE
615	220	COMPUD
620	580	CONCEPCION
625	60	CONOCOTO
630	630	CONONACO
635	135	CONSTANTINO FERNANDEZ
640	480	CONVENTO
645	605	COPAL
650	70	CORNEJO ASTORGA /TANDAPI
655	560	CRNL.CARLOS CONCHA TORRES
660	790	CRNEL. LORENZO GARAICOA
665	775	EL GUISMI
670	635	COSANGA
675	140	COTALO
680	80	COTOGCHOA
685	700	COTUNDO
690	10	CRISTOBAL COLON
695	315	CRUZPAMBA/BUSTAMANTE
700	575	CUBE / CHANCAMA
705	195	CUBIJIES
710	925	SAN JACINTO DE WAKAMBEIS
715	615	CUMANDA
720	655	CUMBARATZA
725	60	CUMBAYA
730	260	CUMBE
735	881	CURARAY
740	690	CURTINCAPAC
745	110	CUSUBAMBA
750	280	CUTCHIL
755	70	CUTUGLAGUA
760	626	CUYABENO
765	635	CUYUJA
770	440	CRUCITA
775	365	CAÑAQUEMADA
780	720	SIETE DE JULIO
785	910	ATAHUALPA
790	340	EL INGENIO
795	165	SAN LUIS DE PAMBIL
800	135	CUNCHIBAMBA
805	375	CHACRAS
810	135	UNAMUNCHO
815	930	PALO QUEMADO
820	410	CHANDUY
825	335	CHANGAIMINA /LA LIBERTAD
830	115	CHANTILIN
835	730	CHAQUINAL
840	475	CHARAPOTO
845	260	CHAUCHA / ANGAS
850	70	CHAUPI
855	60	CHAVEZPAMBA
860	260	CHECA JIDCAY
865	60	CHECA
870	275	CHICAN / GUILLERMO ORTEGA
875	795	CHIGUAZA
880	595	CHIGUINDA
885	270	SAN GERARDO
890	275	DUG-DUG
895	560	CHINCA
900	140	CHIQUICHA
905	260	CHIQUINTAD
910	10	CHITAN DE NAVARRETES
915	660	CHITO
920	420	CHOBO
925	225	LA CANDELARIA
930	561	CHONTADURO
935	240	CHONTAMARCA
940	620	CHONTAPUNTA
945	775	TUNDAYME
950	240	CHOROCOPTE
955	50	CHUGA
960	930	CHUGCHILAN
965	561	CHUMUNDE
970	605	CHUPIANZA
975	300	CHUQUIRIBAMBA
980	575	CHURA
985	670	CHICANA
990	115	COCHAPAMBA
995	310	CASANGA
1000	310	YAMANA
1005	265	DANIEL CORDOVA TORAL
1010	570	DAULE
1015	775	PACHICUTZA
1020	255	GONZALO DIAZ DE PINEDA
1025	680	10 DE AGOSTO
1030	910	10 DE AGOSTO
1035	730	12 DE DICIEMBRE
1040	35	DR MIGUEL EGAS/PEGUCHE
1045	625	DURENO
1050	935	PUERTO MURIALDO
1055	25	SAN RAFAEL
1060	840	SAN SEBASTIAN
1065	840	BARRAGANETE
1070	500	WILFRIDO LOOR MOREIRA
1075	755	SAN ISIDRO
1080	755	EL PARAISO
1085	245	JERUSALEN
1090	865	GONZALO PIZARRO
1095	745	SEVILLA
1100	755	LA LIBERTAD
1105	470	SAN PABLO
1110	225	EL ALTAR
1115	455	EL ANEGADO
1120	981	NUEVO QUITO
1125	5	EL CARMELO/EL PUN/
1130	556	EL CARMEN DE PIJILI
1135	300	EL CISNE
1140	610	SANTA MARIANITA DE JESUS
1145	660	EL CHORRO
1150	15	EL GOALTAL / LAS JUNTAS
1155	330	EL LIMO /MARIANA DE JESUS
1160	480	ELOY ALFARO
1165	305	EL PARAISO DE CELEN
1170	640	EL PLAYON DE SN. FRANCISCO
1175	885	EL PROGRESO
1180	815	EL ROSARIO
1185	140	EL ROSARIO /RUMICHACA
1190	305	EL TABLON
1195	5	EL CHICAL
1200	290	EL TAMBO
1205	926	TUTINENTZA
1210	145	EMILIO MARIA TERAN
1215	35	EUGENIO ESPEJO
1220	800	EL PROGRESO
1225	365	PROGRESO
1230	320	EL LUCERO
1235	645	DAYUMA
1240	661	EL PORVENIR DEL CARMEN
1245	645	TARACOA
1250	590	CUCHAENTZA
1255	165	FACUNDO VELA
1260	680	FATIMA
1265	515	FEBRES CORDERO
1270	10	FERNANDEZ SALVADOR
1275	680	EL TRIUNFO
1280	195	FLORES
1285	625	EL ENO
1290	625	PACAYACU
1295	797	SAN JOSE DE MORONA
1300	410	SAN JOSE DE ANCON
1305	570	GALERA
1310	40	GARCIA MORENO / LLURIMAGUA
1315	25	GARCIA MORENO
1320	140	GARCIA MORENO
1325	225	BILBAO
1330	625	GENERAL FARFAN
1335	240	GRAL.MORALES / SOCARTE
1340	395	GRAL.PEDRO MONTERO
1345	590	GRAL. PROAÑO
1350	430	GRAL. VERNAZA
1355	280	GIMA
1360	35	GONZALEZ SUAREZ
1365	605	SAN FCO. DE CHINIMBIMI
1370	220	GONZOL
1375	90	QUINCHICOTO
1380	310	GUACHANAMA
1385	370	SARACAY
1390	655	GUADALUPE
1395	495	GUALE/STO.DOMINGO
1400	60	GUALEA
1405	300	GUALEL
1410	240	GUALLETURO
1415	200	GUANANDO
1420	360	GUANAZAN
1425	360	GUIZHAGUIÑA
1430	105	GUANGAJE
1435	125	SAN JACINTO
1440	60	GUANGOPOLO
1445	235	GUAPAN
1450	815	AMARILLOS
1455	275	GUARAINAC
1460	520	GUARE
1465	215	GUASUNTOS
1470	385	GUAYAS / PUERTO NUEVO
1475	60	GUAYLLABAMBA
1480	290	GUAYQUICHUMA
1485	100	GUAYTACAMA
1490	280	GUEL
1495	315	TNTE M.RODRIGUEZ LOAYZA
1500	825	GUASAGANDA
1505	565	SAN JOSE DE CAYAPAS
1510	565	COLON ELOY DE MARIA
1515	565	TIMBIRE
1520	995	MARISCAL SUCRE
1525	515	LA UNION
1530	575	LA UNION
1535	915	LA UNION
1540	780	SUSUDEL
1545	445	LA PILA
1550	320	SANGUILLIN
1555	626	AGUAS NEGRAS
1560	645	EL DORADO
1565	645	INES ARANGO
1570	460	ARQ.SIXTO DURAN BALLEN
1575	915	SAN MARTIN DE PUZHIO
1585	915	LUIS GALARZA O. (DELEGSOL)
1590	645	EL EDEN
1595	430	JUNQUILLAL
1600	230	NOVILLO
1605	240	HONORATO VASQUEZ
1610	470	HONORATO VASQUEZ
1615	785	TONSUPA
1620	230	ZAPALLO
1625	135	HUACHI GRANDE
1630	140	HUAMBALO
1635	610	HUAMBI
1640	385	EL ROSARIO
1645	340	EL AIRO
1650	960	SAN VICENTE
1655	360	HUERTAS
1660	215	HUIGRA
1665	355	BELLAMARIA
1670	715	SABANILLA
1675	130	ZURMI
1680	935	SAN JOSE DE DAHUANO
1685	615	16 DE AGOSTO
1690	555	SAN RAFAEL DE SHARUG
1695	375	CARCABON
1700	360	SINSAO
1705	200	ILAPO
1710	40	IMANTAG
1715	45	IMBAYA
1720	600	INDANZA
1725	240	INGAPIRCA
1730	590	RIO BLANCO
1735	930	ISINLIVI
1740	520	ISLA DE BEJUCAL
1745	135	IZAMBA
1750	360	SALVIAS
1755	85	LUZ DE AMERICA
1760	265	LUIS CORDERO VEGA
1765	5	SANTA MARTHA DE CUBA
1770	655	SAN CARLOS DE LAS MINAS
1775	240	VENTURA
1780	300	QUINARA
1785	925	SANTIAGO DE PANANZA
1790	625	SANTA CECILIA
1795	625	JAMBELI
1800	450	SANTA MARIANITA
1805	265	JADAN
1810	645	GARCIA MORENO
1815	355	JAMBELI
1820	645	LA BELLEZA
1825	235	JAVIER LOYOLA / CHUQUIPATA
1830	435	JESUS MARIA
1835	20	JIJON Y CAAMAÑO
1840	300	JIMBILLA
1845	340	JIMBURA
1850	405	JOSE LUIS TAMAYO / MUEY
1855	400	JUAN BAUTISTA AGUIRRE
1860	135	JUAN BENIGNO VELA
1865	205	JUAN DE VELASCO / PONGOR
1870	390	JUAN GOMEZ RENDON
1875	20	JUAN MONTALVO
1880	455	JULCUY
1885	5	JULIO ANDRADE
1890	165	JULIO E MORENO
1895	240	DUCUR
1900	240	JUNCAL
1905	100	JOSEGUANGO BAJO
1910	595	EL IDEAL
1915	395	VIRGEN DE FATIMA
1920	975	SALANGO
1925	440	CHIRIJOS
1930	620	TALAG
1935	645	SAN LUIS DE ARMENIA
1940	645	NUEVO PARAISO
1945	645	SAN JOSE DE GUAYUSA
1950	725	RUMIPAMBA
1955	725	TRES DE NOVIEMBRE
1960	725	LAGO SAN PEDRO
1965	725	UNION MILAGREÑA
1970	85	SAN JACINTO DEL BUA
1975	875	BELLAMARIA
1980	500	SAN PEDRO DE SUMA
1985	805	SANTA ROSA
1990	85	EL ESFUERZO
1995	645	ALEJANDRO LABAKA
2000	295	BOLASPAMBA
2005	355	LA AVANZADA
2010	20	LA CONCEPCION
2015	660	LA CHONTA
2020	30	LA ESPERANZA
2025	75	LA ESPERANZA
2030	550	ANGEL PEDRO GILER
2035	561	LAGARTO
2040	15	LA LIBERTAD
2045	85	SANTA MARIA DEL TOACHI
2050	380	RIO BONITO
2055	60	LA MERCED
2060	55	LA MERCED DE BUENOS AIRES
2065	10	LA PAZ
2070	665	LA PAZ
2075	365	LA PEAÑA
2080	200	LA PROVIDENCIA
2085	325	LA RAMA
2090	495	LASCANO
2095	640	LA SOFIA
2100	880	SAN JOSE
2105	400	LAS LOJAS
2110	660	SAN ANDRES
2115	930	LAS PAMPAS
2120	311	LA TINGUE
2125	565	LA TOLA
2130	785	LA UNION
2135	470	LA UNION
2140	310	LAURO GUERRERO
2145	325	LA VICTORIA
2150	105	LA VICTORIA
2155	655	LA VICTORIA DE IMBANA
2160	195	LICAN
2165	195	LICTO
2170	661	LA CANELA
2175	720	LIMONCOCHA
2180	255	LINARES
2185	30	LITA
2205	25	LOS ANDES
2210	155	LOS ANDES
2215	280	LUDO
2220	235	LUIS CORDERO
2225	565	LUIS VARGAS TORRES
2230	370	LA BOCANA
2240	670	LOS ENCUENTROS
2255	260	LLACAO
2260	220	LLAGOS
2265	60	LLANO CHICO
2270	150	LLIGUA
2275	60	LLOA
2280	305	LLUZHAPA
2285	926	MACUMA
2305	975	MACHALILLA
2310	685	MADRE TIERRA
2315	170	MAGDALENA/CHAPACOTO
2320	560	MAJUA
2325	300	MALACATOS/VALLADOLID
2330	75	MALCHINGUI
2335	565	MALDONADO
2340	5	MALDONADO
2345	575	MALIMPIA / GUAYLLABAMBA
2350	360	MALVAS
2355	410	MANGLARALTO
2360	305	MANU
2365	250	MANUEL J. CALLE
2375	145	MARCOS ESPINEL
2380	50	MARIANO ACOSTA
2385	265	MARIANO MORENO/CALLASAY
2390	420	MARISCAL SUCRE/HUAQUES
2395	580	MATAJE
2400	225	MATUS
2405	330	MERCADILLO
2410	770	MINDO
2430	260	MOLLETURO
2435	135	MONTALVO
2445	561	MONTALVO / HORQUETA
2450	680	MONTALVO/ANDOAS
2455	25	MONTEOLIVO
2460	120	MORASPUNGO
2465	370	MOROMORO
2470	390	MORRO
2475	110	MULALILLO
2480	100	MULALO
2485	215	MULTITUD
2490	110	MULLIQUINDIL
2520	335	NAMBACOLA
2525	60	NANEGAL
2530	60	NANEGALITO
2540	60	NAYON
2545	245	NAZON
2550	885	NIEVES
2555	460	NOBOA
2560	60	NONO
2565	595	NUEVA TARQUI
2570	260	MULTI /  NULTI
2575	345	NUEVA FATIMA
2595	260	OCTAVIO CORDERO PALACIOS
2600	65	OLMEDO/PESILLO
2620	100	11 DE NOVIEMBRE
2630	310	ORIANGA
2635	65	OTON
2640	255	OYACACHI
2670	565	PAMPANAL DE BOLIVAR
2675	55	PABLO ARENAS
2680	260	PACCHA
2690	60	PACTO
2710	295	PALETILLAS
2715	375	PALMALES
2720	650	PALMA ROJA
2725	955	PALMAS
2730	210	PALMIRA
2745	250	PANCHO NEGRO
2750	925	PAN DE AZUCAR
2755	620	PANO
2760	110	PANZALEO
2765	720	PANACOCHA
2770	635	PAPALLACTA
2775	135	PASA
2785	35	PATAQUI
2795	605	PATUCA
2810	455	PEDRO PABLO GOMEZ
2820	40	PEÑAHERRERA
2825	60	PERUCHO
2830	135	PICAYHUA
2850	370	PIEDRAS
2855	60	PIFO
2860	135	PILAHUIN
2865	105	PILALO
2875	515	PIMOCHA
2885	235	PINDILIG
2890	120	PINLLOPATA
2895	60	PINTAG
2900	5	PIOTER
2905	215	PISTISHI
2915	40	PLAZA GUTIERREZ/CALVARIO
2920	100	POALO
2925	60	POMASQUI
2930	725	POMPEYA
2940	390	POSORJA
2945	145	PRESIDENTE URBINA
2950	915	PRINCIPAL
2955	660	PUCAPAMBA
2965	825	PUCAYACO
2970	440	PUEBLO NUEVO
2975	225	PUELA
2980	60	PUELLARO
2985	60	PUEMBO
2990	455	PUERTO CAYO
3000	620	PUERTO MISAHUALLI
3005	650	PUERTO BOLIVAR
3015	530	PUERTO PECHICHE
3020	650	PUERTO RODRIGUEZ
3025	215	PUMALLACTA
3030	390	PUNA
3035	195	PUNGALA
3040	195	PUNIN
3045	335	PURUNUMA /EGUIGUREN
3050	620	PUERTO NAPO
3055	680	POMONA
3095	195	QUIMIAG
3100	60	QUINCHE
3105	260	QUINGEO
3110	485	QUIROGA
3115	40	QUIROGA
3120	135	QUISAPINCHA
3125	570	QUINGUE
3155	120	RAMON CAMPAÑA
3160	265	REMIGIO CRESPO TORAL
3165	260	RICAURTE
3170	480	RICAURTE
3175	535	RICAURTE
3180	680	RIO CORRIENTES
3185	440	RIO CHICO
3190	150	RIO NEGRO
3195	680	RIO TIGRE
3200	150	RIO VERDE
3210	235	RIVERA
3215	561	ROCAFUERTE
3220	640	ROSA FLORIDA
3225	595	ROSARIO
3230	80	RUMIPAMBA
3235	420	ROBERTO ASTUDILLO
3250	600	SAN MIGUEL DE CONCHAY
3255	315	SABANILLA
3260	655	SABANILLA
3265	325	SABIANGO
3270	335	SACAPALCA
3275	690	SALATI
3280	570	SALIMA
3285	165	SALINAS
3290	30	SALINAS
3295	200	SAN ANDRES
3300	145	SAN ANDRES
3305	240	SAN ANTONIO
3315	30	SAN ANTONIO
3320	600	SAN ANTONIO
3325	60	SAN ANTONIO
3330	355	SAN ANTONIO
3335	225	SAN ANTONIO DE BAYUSHIG
3340	305	SAN ANTONIO DE CUMBE
3345	740	SAN ANTONIO DE LAS ARADAS
3350	480	SAN ANTONIO / DEL PELUDO
3355	135	SAN BARTOLOME
3360	280	SAN BARTOLOME
3365	55	SAN BLAS
3370	435	SAN CARLOS
3375	275	SAN CRISTOBAL
3380	135	SAN FERNANDO
3390	570	SAN FRANCISCO
3395	635	SAN FRANCISCO DE BORJA
3400	45	SAN FCO.DE NATABUELA
3405	565	SAN FRANCISCO DE ONZOLE
3410	245	SAN FCO. DE SAGEO
3415	50	SAN FRANCISCO DE SIGSIPAMBA
3420	615	SANGAY
3425	200	SAN GERARDO / PAQUICAHUAN
3430	570	SAN GREGORIO
3435	15	SAN ISIDRO
3440	590	SAN ISIDRO
3445	475	SAN ISIDRO
3450	200	SAN ISIDRO DE PATULU
3455	580	SAN JAVIER DE CACHABI
3460	260	SAN JOAQUIN
3465	45	SAN JOSE DE CHALTURA
3470	570	SAN JOSE DE CHAMANGA
3475	60	SAN JOSE DE MINAS
3480	935	SAN JOSE DE PAYAMINO
3485	145	SAN JOSE DE POALO
3490	35	SAN JOSE DE QUICHINCHE
3495	280	SAN JOSE DE RARANGA
3500	180	SAN JOSE DE TAMBO
3505	265	SAN JUAN
3510	530	SAN JUAN
3515	195	SAN JUAN
3525	35	SAN JUAN DE ILUMAN
3530	100	SAN JUAN DE PASTOCALLE
3535	315	SAN JUAN DE POZUL
3545	165	SAN LORENZO
3550	450	SAN LORENZO
3555	300	SAN LUCAS
3560	195	SAN LUIS
3565	605	SAN LUIS DEL ACHO
3570	560	SAN MATEO
3575	235	SAN MIGUEL
3580	595	SAN MIGUEL DE CUYES
3585	145	SAN MIGUELITO
3590	35	SAN PABLO
3595	175	SAN PABLO DE ATENAS
3600	305	SAN PABLO DE TENTA
3605	700	SAN PABLO DE USHPAYACU
3610	290	SAN PEDRO DE LA BENDITA
3615	865	PUERTO LIBRE
3625	440	SAN PLACIDO
3630	35	SAN RAFAEL
3632	500	SANTA MARIA
3635	500	EL PARAISO / LA 14
3640	45	SAN ROQUE
3645	720	SAN ROQUE
3650	370	SAN ROQUE
3655	170	SAN SEBASTIAN
3660	725	SAN SEBASTIAN DE COCA
3665	305	SAN SEBASTIAN DE YULUC
3670	165	SAN SIMON
3680	25	SAN VICENTE DE PUSIR
3685	260	SANTA ANA
3690	640	SANTA BARBARA
3705	650	SANTA ELENA
3710	165	SANTA FE
3720	630	STA. MARIA DE HUIRIRIMA
3725	580	SANTA RITA
3730	135	SANTA ROSA
3735	65	STA.ROSA DE CUSUBAMBA
3740	435	SANTA ROSA DE FLANDES
3745	255	SANTA ROSA DE QUIJOS
3750	745	SANTA ROSA DE SUCUMBIOS
3755	815	SANTA RUFINA
3760	600	SANTA SUSANA DE CHIVIAZA
3765	340	SANTA TERESITA
3770	300	SANTIAGO
3775	175	SANTIAGO
3780	265	SIMON BOLIVAR
3785	680	ZARAYACU
3790	255	SARDINAS
3795	260	SAYAUSI
3800	40	6 DE JULIO DE CUELLAJE
3805	565	SELVA ALEGRE
3810	35	SELVA ALEGRE
3815	305	SELVA ALEGRE
3820	215	SEVILLA
3830	590	SEVILLA DON BOSCO
3835	285	SHAGLLI
3840	685	SHELL
3845	215	SIBAMBE
3850	260	SIDCAY
3860	165	SIMIATUG
3870	260	SININCAY
3875	905	SOLANO
3880	785	SUA/BOCANA
3885	155	SUCRE
3890	635	SUMACO
3900	175	SAN VICENTE
3905	140	SALASACA
3915	410	SIMON BOLIVAR
3920	925	SAN CARLOS DE LIMON
3925	60	TABABELA
3930	560	TABIAZO
3935	345	TACAMOROS
3940	560	TACHINA
3945	235	TADAY
3955	580	TAMBILLO
3960	70	TAMBILLO
3965	100	TANICUCHI
3970	300	TAQUIL /MIGUEL RIOFRIO
3975	425	TARIFA
3980	260	TARQUI
3985	680	TARQUI
3990	435	TAURA
3995	170	TELIMBELA
4000	380	TENDALES
4005	680	TNTE. HUGO ORTIZ
4010	655	TIMBARA
4015	105	TINGO
4030	215	TIXAN
4035	100	TOACAZO
4040	5	TOBAR DONOSO
4045	75	TOCACHI
4050	275	TOMEBAMBA
4055	785	TONCHIGUE
4065	135	TOTORAS
4070	5	TUFIÑO
4075	580	TULULBI /RICAURTE
4080	55	TUMBABIRO
4085	60	TUMBACO
4090	75	TUPIGACHI
4095	260	TURI
4100	245	TURUPAMBA
4105	665	TUTUPALI
4110	155	EL TRIUNFO
4115	605	TAYUZA
4120	390	TENGUEL
4125	580	URBINA
4130	5	URBINA
4135	150	ULBA
4145	305	URDANETA/PAQUISHAPA
4150	320	UTUANA
4155	70	UYUMBICHO
4160	365	UZHCURRUMI
4165	810	TOMAS DE BERLANGA
4170	565	TELEMBI
4185	40	VACAS GALINDO
4195	661	VALLADOLID
4200	260	VALLE
4205	680	VERACRUZ
4210	330	VICENTINO
4215	355	VICTORIA
4220	430	VICTORIA
4225	260	VICTORIA DEL PORTETE
4230	575	VICHE
4235	300	VILCABAMBA/VICTORIA
4240	560	VUELTA LARGA
4275	395	YAGUACHI VIEJO/CONE
4280	300	YANGANA / ARSENIO CASTILLO
4290	60	YARUQUI
4295	630	YASUNI
4300	611	YAUPI
4305	600	YUNGANZA /EL ROSARIO
4310	160	YANAYACU MOCHAPATA
4325	60	ZAMBIZA
4330	545	ZAPOTAL
4340	265	ZHIDMAD
4345	240	ZHUD
4360	590	ZUNAC
4365	105	ZUMBAHUA
4385	980	TRIUNFO DORADO
4415	800	ISLA SANTA MARIA
4420	540	LA ESPERANZA
4425	540	SAN CARLOS
4430	205	SANTIAGO DE QUITO
4440	85	PUERTO LIMON
4445	360	ARCAPAMBA
4450	360	MULUNCAY GRANDE
4455	290	ZAMBI
4460	340	27 DE ABRIL /LA NARANJA
4465	565	SANTO DOMINGO DE ONZOLE
4475	300	CHANTACO
4480	705	CORDONCILLO
4485	590	SINAI
4490	455	MEMBRILLAL
4495	365	CASACAY
4500	400	EL LAUREL
4505	661	SAN FRANCISCO DEL VERGEL
4510	680	SIMON BOLIVAR
4515	175	REGULO DE MORA
4520	690	MORALES
4525	355	TORATA
4530	705	SAN JOSE
4535	705	MILAGRO
4540	300	SAN PEDRO DE VILCABAMBA
4545	730	MILAGROS
4550	160	RUMIPAMBA
4555	850	PINGUILI
4560	855	CHUMBLIN
4565	275	EL CABO
4570	130	NUEVO PARAISO
4575	926	PUMPUENTSA
4580	620	SAN JUAN DE MUYUNA
4585	545	LOS ANGELES
4590	545	CHACARITA
4595	565	SANTA LUCIA DE LAS PEÑAS
4600	980	PANGUINTZA
4605	295	CAZADEROS
4610	285	SAN SALVADOR DE CAÑARIBAMBA
4615	710	LA ESMERALDA
4620	65	SAN JOSE DE AYORA
4625	625	10 DE AGOSTO
4630	700	HATUN SUMAKU
4635	982	MONTERREY
4640	982	LA VILLEGAS
4645	982	PLAN PILOTO
4650	375	LA CUCA
4655	130	NANKAIS
4740	745	NUEVA TRONCAL
4745	650	SANSAHUARI
4750	465	SOSOTE
4755	720	LA PRIMAVERA
4760	720	LA MAGDALENA
4765	65	JUAN MONTALVO
5005	330	ALAMOR
5010	215	ALAUSI
5015	60	CHIMBACALLE
5020	340	AMALUZA
5025	45	ANDRADE MARIN/LOURDES
5030	440	ANDRES DE VERA
5035	165	ANGEL POLIVIO CHAVEZ
5040	375	ARENILLAS
5045	135	ATOCHA FICOA
5050	45	ATUNTAQUI
5055	390	AYACUCHO
5065	235	AZOGUES
5070	700	ARCHIDONA
5075	260	BELLAVISTA
5080	260	CAÑARIBAMBA
5085	520	BABA
5090	635	BAEZA
5095	475	BAHIA DE CARAQUEZ
5100	415	BALZAR
5105	150	BAÑOS
5115	245	BIBLIAN
5120	430	BOCANA
5125	390	BOLIVAR/SAGRARIO
5130	410	BALLENITA
5135	260	EL BATAN
5140	260	MACHANGARA
5145	205	CAJABAMBA
5150	485	CALCETA
5155	430	CANDILEJOS
5160	240	CAÑAR
5165	30	CARANQUI
5170	390	CARBO/CONCEPCION
5175	320	CARIAMANGA
5180	310	CATACOCHA
5185	535	CATARAMA
5190	65	CAYAMBE
5195	315	CELICA
5200	430	SALITRE
5205	560	BARTOLOME RUIZ
5210	560	5 DE AGOSTO
5215	515	CLEMENTE BAQUERIZO
5220	60	COTOCOLLAO
5225	145	CIUDAD NUEVA
5230	135	CELIANO MONGE
5240	320	CHILE
5245	180	CHILLANES
5250	480	CHONE
5255	220	CHUNCHI
5260	60	CHILLOGALLO
5265	440	COLON
5270	290	CATAMAYO
5275	400	DAULE
5280	440	12 DE MARZO
5285	515	DR. CAMILO PONCE E.
5290	260	MONAY
5295	15	EL ANGEL
5300	500	EL CARMEN
5305	120	EL CORAZON
5310	100	ELOY ALFARO / SAN FELIPE
5315	200	EL ROSARIO
5320	300	EL SAGRARIO
5330	260	EL VECINO
5335	560	ESMERALDAS
5340	380	EL GUABO
5345	505	EL TRIUNFO
5350	185	ECHEANDIA
5355	390	FEBRES CORDERO
5360	260	TOTORACOCHA
5365	125	COLIMES
5370	260	YANUNCAY
5375	165	GABRIEL I VEINTIMILLA
5380	390	GARCIA MORENO
5385	325	GRAL.ELOY ALFARO
5390	600	GRAL. LEONIDAS PLAZA
5395	270	GIRON
5400	335	GONZANAMA
5405	10	GONZALEZ SUAREZ
5415	5	GONZALEZ SUAREZ
5420	265	GUALACEO
5425	595	GUALAQUIZA
5430	210	GUAMOTE
5440	30	GUAYAQUIL DE ALPACHACA
5445	135	HUACHI LORETO
5450	260	HUAYNACAPAC
5455	135	HUACHI CHICO
5465	100	IGNACIO FLORES
5470	95	BALAO
5475	190	CHAMBO
5480	230	FLAVIO ALFARO
5485	455	JIPIJAPA
5490	35	JORDAN
5500	100	JUAN MONTALVO
5505	490	JUNIN
5510	255	EL CHACO
5515	90	TISALEO
5520	130	GUAYZIMI
5525	640	LA BONITA
5535	60	LA LIBERTAD
5540	60	LA MAGDALENA
5545	135	LA MATRIZ
5550	200	LA MATRIZ
5555	100	LA MATRIZ
5560	135	LA MERCED
5565	350	LA PROVIDENCIA
5570	450	LOS ESTEROS
5580	475	LEONIDAS PLAZA G.
5585	390	LETAMENDI
5590	195	LIZARZABURU
5595	310	LOURDES
5600	560	LUIS TELLO / LAS PALMAS /
5605	135	LA PENINSULA
5610	250	LA TRONCAL
5615	590	MACAS
5620	70	MACHACHI
5625	350	MACHALA
5630	195	MALDONADO
5635	450	MANTA
5640	710	MONTALVO /SABANETA
5645	605	MENDEZ
5650	685	MERA
5655	595	MERCEDES MOLINA
5660	420	MILAGRO
5665	445	MONTECRISTI
5670	570	MUISNE
5675	435	NARANJAL
5680	325	MACARA
5685	20	MIRA
5690	555	PUCARA
5695	390	9 DE OCTUBRE
5700	630	NUEVO ROCAFUERTE
5705	510	NARANJITO
5710	625	NUEVA LOJA
5715	585	CHILLA
5720	390	OLMEDO/SAN ALEJO
5725	675	PALESTINA
5730	85	ABRAHAM CALAZACON
5735	715	PEDRO CARBO
5740	225	PENIPE
5745	705	PACCHA
5750	50	PIMAMPIRO
5755	495	PAJAN
5760	615	PALORA
5765	430	PARAISO
5770	365	OCHOA LEON/MATRIZ
5775	275	PAUTE
5780	140	PELILEO
5785	145	PILLARO
5790	370	PIÑAS
5795	440	PORTOVIEJO
5800	530	PUEBLO VIEJO
5805	350	PUERTO BOLIVAR
5810	730	PINDAL /FEDERICO PAEZ
5815	645	EL COCA
5820	105	PUJILI
5825	680	PUYO
5830	155	PATATE
5835	160	QUERO
5840	135	PISHILATA
5845	440	PICOAZA
5850	690	PORTOVELO
5855	540	QUEVEDO
5860	85	BOMBOLI
5865	85	RIO VERDE
5870	85	RIO TOACHI
5875	260	RAMIREZ DAVALOS
5880	390	ROCA
5885	465	ROCAFUERTE
5890	390	ROCAFUERTE
5895	575	ROSA ZARATE
5900	140	PELILEO GRANDE /R. MINO
5905	260	SAGRARIO
5910	40	SAGRARIO
5915	30	SAGRARIO
5920	405	SALINAS
5925	425	SAMBORONDON
5930	260	SAN BLAS
5940	100	SAN BUENAVENTURA
5945	135	SAN FRANCISCO
5950	235	SAN FRANCISCO
5955	40	SAN FRANCISCO
5960	30	SAN FRANCISCO
5965	80	SANGOLQUI
5970	10	SAN JOSE
5975	170	SAN JOSE DE CHIMBO
5980	35	SAN LUIS
5990	430	SAN MATEO
5995	175	SAN MIGUEL
6000	110	SAN MIGUEL DE SALCEDO
6010	260	SAN SEBASTIAN
6015	300	SAN SEBASTIAN
6025	320	SAN VICENTE
6030	470	SANTA ANA
6040	410	SANTA ELENA
6045	285	SANTA ISABEL
6055	480	SANTA RITA
6060	355	SANTA ROSA
6065	85	SANTO DOMINGO
6070	115	SAQUISILI
6075	305	SARAGURO
6080	205	SICALPA
6085	280	SIGSIG
6090	260	SUCRE
6095	390	SUCRE
6100	300	SUCRE
6105	460	SUCRE
6110	610	SUCUA
6115	540	SAN CAMILO
6120	345	SOZORANGA
6125	896	PUERTO QUITO
6130	580	SAN LORENZO
6135	450	SAN MATEO
6140	720	SHUSHUFINDI CENTRAL
6145	75	TABACUNDO
6150	390	TARQUI
6155	450	TARQUI
6160	620	TENA
6165	5	TULCAN
6170	550	TOSAGUA
6175	85	CHIGUILPE
6180	85	ZARACAY
6185	390	URDANETA
6190	55	URCUQUI
6195	500	4 DE DICIEMBRE
6200	725	LA JOYA DE LOS SACHAS
6205	565	VALDEZ/LIMONES/
6210	300	EL VALLE
6215	665	28 DE MAYO
6220	195	VELASCO
6225	385	VELASCO IBARRA
6230	195	VELOZ
6235	545	VENTANAS
6245	525	VINCES
6250	15	27 DE SEPTIEMBRE
6255	735	GRAL.VILLAMIL / PLAYAS
6260	740	QUILANGA /LA PAZ
6265	390	XIMENA
6270	405	GRAL. A. E. GALLO
6275	405	VICENTE ROCAFUERTE
6280	405	CARLOS ESPINOZA LARREA
6285	395	YAGUACHI NUEVO
6290	195	YARUQUIES
6295	670	YANZATZA
6300	865	LUMBAQUI
6305	655	ZAMORA
6310	360	ZARUMA
6315	660	ZUMBA
6320	295	ZAPOTILLO
6325	745	EL DORADO DE CASCALES
6330	750	PALENQUE
6335	755	LA VICTORIA/LAS LAJAS
6340	760	CALUMA / SAN ANTONIO/
6345	765	EL TAMBO
6350	770	S. MIGUEL DE LOS BANCOS
6355	775	EL PANGUI
6360	780	OÑA
6365	365	LOMA DE FRANCO
6370	365	BOLIVAR
6375	365	TRES CERRITOS
6380	785	ATACAMES
6385	790	SIMON BOLIVAR
6390	795	HUAMBOYA
6395	880	SANTA CLARA
6405	390	PASCUALES
6410	890	CRNL MARCELINO MARIDUENAS
6415	895	PEDRO VICENTE MALDONADO
6420	900	CUMANDA
6425	905	DELEG
6430	910	PEDERNALES
6435	915	CHORDELEG
6440	920	LOMAS DE SARGENTILLO
6445	925	SAN JUAN BOSCO
6450	930	SIGCHOS
6455	935	LORETO
6460	940	NARCISA DE JESUS
6465	945	SN JACINTO DE BUENA FE
6470	950	LAS NAVES
6475	950	LAS MERCEDES
6480	955	SEVILLA DE ORO
6485	960	EL PAN
6490	350	9 DE MAYO
6495	970	OLMEDO /PUCA
6500	650	EL CARMEN DE PUTUMAYO
6505	805	PUERTO AYORA
6510	800	PTO. BAQUERIZO MORENO
6515	810	PUERTO VILLAMIL
6520	25	BOLIVAR
6525	820	ELOY ALFARO /DURAN
6530	815	CHAGUARPAMBA
6535	825	LA MANA
6540	830	PALLATANGA
6545	835	A.BAQUERIZO M /JUJAN
6550	840	PICHINCHA /GERMUD
6555	845	CEVALLOS
6560	850	MOCHA
6565	855	SAN FERNANDO
6570	860	MARCABELI
6575	975	PUERTO LOPEZ
6580	870	SANTA LUCIA
6585	440	SAN PABLO
6590	875	BALSAS
6595	885	NABON
6600	80	SAN RAFAEL
6605	80	SAN PEDRO DE TABOADA
6610	965	LA LIBERTAD
6615	990	GUACHAPALA
6620	985	GRAL.ELIZALDE /BUCAY
6625	980	ZUMBI
6630	165	GUANUJO
6635	540	SAN CRISTOBAL
6640	540	VENUS DEL RIO QUEVEDO
6645	540	NICOLAS INFANTE DIAZ
6650	540	GUAYACAN
6655	540	SIETE DE OCTUBRE
6660	540	VIVA ALFARO
6665	995	HUACA
6670	355	PUERTO JELI
6675	370	PIÑAS GRANDE
6680	370	LA SUSAYA
6685	516	VALENCIA
6690	540	24 DE MAYO
6695	946	MOCACHE
6700	926	TAISHA
6705	881	ARAJUNO
6710	986	ISIDRO AYORA
6715	241	SUSCAL
6720	561	RIO VERDE
6725	470	LODANA
6730	311	OLMEDO
6735	611	LOGROÑO
6740	661	PALANDA
6745	450	ELOY ALFARO
6750	476	JAMA
6755	446	JARAMIJO
6760	621	CARLOS J. AROSEMENA TOLA
6765	626	TARAPOA
6770	440	18 DE OCTUBRE
6775	440	FRANCISCO PACHECO
6780	30	LA DOLOROSA DEL PRIORATO
6785	477	SAN VICENTE
6790	235	BORRERO
6795	350	EL CAMBIO
6800	695	HUALTACO
6805	695	MILTON REYES
6810	695	EL PARAISO
6815	695	ECUADOR
6820	695	UNION LOJANA
6825	290	SAN JOSE
6830	515	BARREIRO /SANTA RITA
6835	515	EL SALTO
6840	655	EL LIMON
6845	235	AURELIO BAYAS MARTINEZ
6850	400	LA AURORA
6865	260	HERMANO MIGUEL
6870	796	PABLO SEXTO
6875	556	CAMILO PONCE ENRIQUEZ
6880	825	EL CARMEN
6885	981	PAQUISHA
6890	797	SANTIAGO
6895	825	EL TRIUNFO
6900	355	BALNEARIO JAMBELI
6905	560	SIMON PLATA TORRES
6910	440	SIMON BOLIVAR
6915	546	QUINSALOMA
6925	405	SANTA ROSA
6950	755	PLATANILLOS
6985	355	JUMON
6990	355	NUEVO SANTA ROSA
7130	60	BELISARIO QUEVEDO
7135	60	CARCELEN
7140	60	CENTRO HISTORICO
7145	60	COCHAPAMBA
7150	60	COMITE DEL PUEBLO
7155	60	CHILIBULO
7160	60	EL CONDADO
7165	60	GUAMANI
7170	60	IÑAQUITO
7175	60	ITCHIMBIA
7180	60	JIPIJAPA
7185	60	KENNEDY
7190	60	LA ARGELIA
7195	60	LA CONCEPCION
7200	60	LA ECUATORIANA
7205	60	LA FERROVIARIA
7210	60	LA MENA
7215	60	MARISCAL SUCRE
7220	60	PONCEANO
7225	60	PUENGASI
7230	60	QUITUMBE
7235	60	RUMIPAMBA
7240	60	SAN BARTOLO
7245	60	SAN ISIDRO DEL INCA
7250	60	SAN JUAN
7255	60	SOLANDA
7260	60	TURUBAMBA
7425	400	MAGRO
7445	425	LA PUNTILLA(SATELITE)
7455	820	EL RECREO
7460	445	ANIBAL SAN ANDRES
7465	455	DR. MIGUEL MORAN LUCIO
7470	455	MANUEL INOCENCIO PARRALES
7475	455	SAN LORENZO DE JIPIJAPA
7480	545	10/11/24
7485	630	TIPUTINI
7490	445	COLORADO
7495	445	LEONIDAS PROAÑO
7500	445	GENERAL ELOY ALFARO DELGA
7505	350	JUBONES
7510	350	JAMBELI
7515	820	DIVINO NIÑO
7520	982	LA CONCORDIA
7525	300	CARIGAN
7530	300	PUNZARA
7535	80	FAJARDO
9001	11	C. E. EN BERLIN
9002	11	C. E. EN HAMBURGO
9003	21	C. E. EN BUENOS AIRES
9005	31	C. E. EN CAMBERRA
9006	41	C. E. EN VIENA
9007	51	C. E. EN BRUSELAS
9008	61	C. E. EN LA PAZ
9009	71	C. E. EN BRASILIA
9011	81	C. E. EN TORONTO
9012	81	C. E. EN OTTAWA
9013	91	C. E. EN BOGOTA
9015	91	C. E. EN IPIALES
9016	101	C. E. EN SEUL
9017	111	C. E. EN SAN JOSE
9018	121	C. E. EN LA HABANA
9019	131	C. E. EN SANTIAGO
9020	141	C. E. EN BEIJING
9021	171	C. E. EN PALMA DE MALLORCA
9022	161	C. E. EN SAN SALVADOR
9023	171	C. E. EN BARCELONA
9024	171	C. E. EN MADRID
9025	171	C. E. EN VALENCIA
9026	171	C. E. EN MURCIA
9027	181	C. E. EN CHICAGO
9028	181	C. E. EN MIAMI
9029	181	C. E. EN NUEVA YORK
9031	181	C. E. EN WASHINGTON
9032	181	C. E. EN LOS ANGELES
9033	181	C. E. EN CONNECTICUT
9034	181	C. E. EN HOUSTON
9035	181	C. E. EN NEW JERSEY
9036	191	C. E. EN PARIS
9037	201	C. E. EN LONDRES
9038	211	C. E. EN GUATEMALA
9039	221	C. E. EN TEGUCIGALPA
9040	231	C. E. EN BUDAPEST
9042	251	C. E. EN TEL AVIV
9043	261	C. E. EN MILAN
9044	261	C. E. EN GENOVA
9045	261	C. E. EN ROMA
9046	271	C. E. EN TOKIO
9047	281	C. E. EN MEXICO
9049	301	C. E. EN LA HAYA
9050	312	C. E. EN PANAMA
9051	321	C. E. EN ASUNCION
9052	331	C. E. EN LIMA
9054	331	C. E. EN TUMBES
9055	341	C. E. EN EL CAIRO
9056	351	C. E. EN SANTO DOMINGO
9057	361	C. E. EN ESTOCOLMO
9058	371	C. E. EN BERNA
9060	381	C. E. EN MOSCU
9061	391	C. E. EN MONTEVIDEO
9062	401	C. E. EN CARACAS
9063	411	C. E. EN YAKARTA
9066	171	C. E. EN MALAGA
9067	71	C. E. EN SAO PAULO
9068	141	C. E. EN SHANGAI
9069	181	C. E. EN MINNEAPOLIS
9071	181	C. E. EN ATLANTA
9073	181	C. E. EN PHOENIX
9075	141	C. E. EN GUANGZHOU
9077	441	C. E. EN PRETORIA
9078	451	C. E. EN ANKARA
9086	281	C. E. EN MONTERREY
\.


--
-- TOC entry 3564 (class 0 OID 25226)
-- Dependencies: 224
-- Data for Name: partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partido (id, nombre, siglas, lista, orden, imagen) FROM stdin;
\.


--
-- TOC entry 3555 (class 0 OID 24848)
-- Dependencies: 215
-- Data for Name: permisos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permisos (id, fechacreacion, fechamodificacion, usuariocreacion_id, usuariomodificacion_id, menu_id, crear, editar, leer, eliminar, imprimir, estado, rol_id, activo) FROM stdin;
11	2024-03-04 10:02:25.218-05	\N	16	\N	8	t	t	t	t	t	t	11	t
162	2024-06-13 12:29:03.549-05	2024-06-25 09:59:11-05	87	16	8	t	t	t	t	t	t	15	f
176	2024-06-24 11:22:43.057-05	2024-06-25 09:59:11-05	16	16	8	t	t	t	t	t	t	15	f
160	2024-06-13 12:29:03.548-05	2024-06-25 09:59:11-05	87	16	9	f	f	t	t	t	t	15	f
144	2024-06-10 11:12:12.359-05	2024-06-10 11:12:23.356-05	87	87	13	t	t	t	t	t	f	16	f
145	2024-06-10 11:12:12.359-05	2024-06-10 11:12:23.356-05	87	87	14	t	t	t	t	t	f	16	f
146	2024-06-10 11:12:12.359-05	2024-06-10 11:12:23.356-05	87	87	7	t	t	t	t	t	f	16	f
147	2024-06-10 11:12:12.359-05	2024-06-10 11:12:23.356-05	87	87	9	t	t	t	t	t	f	16	f
156	2024-06-11 07:57:31.671-05	\N	87	\N	9	t	t	t	t	t	t	9	t
157	2024-06-11 07:57:31.671-05	\N	87	\N	7	t	t	t	t	t	t	9	t
168	2024-06-21 12:02:37.396-05	\N	87	\N	9	t	t	t	t	t	t	14	t
169	2024-06-21 12:02:37.396-05	\N	87	\N	8	f	f	t	t	t	t	14	t
170	2024-06-21 12:02:37.396-05	\N	87	\N	17	t	t	t	t	f	t	14	t
171	2024-06-21 12:02:37.396-05	\N	87	\N	13	t	t	f	t	f	t	14	t
172	2024-06-21 12:02:37.396-05	\N	87	\N	11	t	t	t	t	t	t	14	t
173	2024-06-21 12:02:37.396-05	\N	87	\N	7	f	t	t	t	t	t	14	t
174	2024-06-21 15:43:33.034-05	2024-06-24 08:51:25.677-05	87	87	7	t	f	f	f	f	f	10	f
158	2024-06-11 07:57:31.671-05	2024-06-24 11:31:14-05	87	16	18	t	t	t	t	t	t	9	f
159	2024-06-11 07:57:31.671-05	2024-06-24 11:31:14-05	87	16	18	t	t	t	t	t	t	9	f
\.


--
-- TOC entry 3565 (class 0 OID 25233)
-- Dependencies: 225
-- Data for Name: provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provincia (id, nombre) FROM stdin;
1	AZUAY
2	BOLIVAR
3	CAÑAR
4	CARCHI
5	COTOPAXI
6	CHIMBORAZO
7	EL ORO
8	ESMERALDAS
9	GUAYAS
10	IMBABURA
11	LOJA
12	LOS RIOS
13	MANABI
14	MORONA SANTIAGO
15	NAPO
16	PASTAZA
17	PICHINCHA
18	TUNGURAHUA
19	ZAMORA CHINCHIPE
20	GALAPAGOS
21	SUCUMBIOS
22	ORELLANA
23	STO DGO TSACHILAS
24	SANTA ELENA
26	EUROPA
27	CANADÁ Y ESTADOS UNIDOS
28	LATINOAMÉRICA
\.


--
-- TOC entry 3557 (class 0 OID 24856)
-- Dependencies: 217
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol (id, fechacreacion, fechamodificacion, usuariocreacion_id, usuariomodificacion_id, nombre, descripcion, estado, activo) FROM stdin;
11	2024-03-04 10:02:25.218-05	\N	16	\N	Administrador central	pruebas	t	t
14	2024-06-07 11:22:20.237-05	2024-06-07 16:21:37.969-05	87	87	Monitor	Demostración	t	t
9	2024-02-28 15:52:37.723-05	2024-06-10 09:26:57.804-05	16	87	Super administrador	Rol de administrador central	t	t
16	2024-06-10 11:12:12.359-05	2024-06-10 11:12:23.356-05	87	87	rol_borrar	rol_borrar	f	f
13	2024-05-28 11:17:26.437-05	2024-06-17 16:09:49.699-05	16	87	prueba	rol prueba	f	f
10	2024-03-04 10:02:14.675-05	2024-06-24 08:51:25.677-05	16	87	Administrador_old	pruebas_old	f	f
15	2024-06-07 17:03:19.922-05	2024-06-24 11:46:38.795-05	87	16	Gestor Contenidos	Contenidos	t	f
\.


--
-- TOC entry 3559 (class 0 OID 24860)
-- Dependencies: 219
-- Data for Name: rolusuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rolusuario (id, usuario_id, rol_id, usuariocreacion_id, usuariomodificacion_id, fechacreacion, fechamodificacion, estado, activo) FROM stdin;
79	16	9	16	16	2024-03-04 09:55:24.775	\N	t	t
97	84	9	16	\N	2024-04-24 15:03:50.103	\N	t	t
99	87	9	16	16	2024-05-06 17:01:20.689	2024-05-31 16:15:30	t	t
95	16	11	16	87	2024-03-04 11:45:15.728	2024-06-12 15:45:43	f	t
185	87	14	87	87	2024-06-12 15:39:28.161	2024-06-12 15:58:33	t	t
103	87	11	16	87	2024-05-31 12:51:43.342	2024-06-14 13:24:21	t	t
184	87	13	16	87	2024-05-31 15:48:46.449	2024-06-17 16:09:49.699	f	f
187	16	13	87	87	2024-06-17 16:07:46.07	2024-06-17 16:09:49.699	f	f
94	16	10	16	87	2024-03-04 11:45:15.728	2024-06-24 08:51:25.677	f	f
100	87	10	87	87	2024-05-08 09:52:10.526	2024-06-24 08:51:25.677	f	f
188	84	14	87	\N	2024-06-24 10:33:18.68	\N	t	t
186	87	15	87	16	2024-06-13 11:13:39.422	2024-06-25 09:59:11	t	f
\.


--
-- TOC entry 3561 (class 0 OID 24864)
-- Dependencies: 221
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, username, password, email, nombres, apellidos, fechacreacion, fechamodificacion, usuariocreacion_id, usuariomodificacion_id, estado, ultimoacceso, activo, provincia_id, establecimiento_id, passwordtemp) FROM stdin;
87	jledesma	$2a$10$GXYV348n0ntxwmr.U.B4VewmaKsm/nCaCXUsZfY5p2FE3Hd39CZxy	gabriel.ledesma@algo.com	Juan Gabriel	Ledesma Macas	2024-05-06 17:01:20.685-05	2024-06-24 10:03:11.632-05	16	87	t	2024-06-24 10:03:11.627-05	t	9	1	f
84	luis.nunez	$2a$10$ny8y/Q1n9yADBVDWzafJKOpWXHmIA6cOHkHKUHp61Las88Los8Z1a	correo.algo@gmail.com	Luis Andrés	Nuñez Flores	2024-04-24 15:03:50.091-05	2024-06-24 10:33:18.674-05	16	87	t	\N	t	17	1	f
16	Andres1724	$2a$10$WmfDhBTRyE9Vl7gGroB0zOrPpzslw2MHQPHU.CY0le8LxZMUkl8Xe	lnunez@msp.gob.ecs	Luis Andres	Nuñez Flores	2024-02-27 09:57:40.268-05	2024-06-25 09:58:43.2-05	16	16	t	2024-06-25 09:58:43.195-05	t	13	1	f
\.


--
-- TOC entry 3573 (class 0 OID 25347)
-- Dependencies: 233
-- Data for Name: votos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.votos (acta_id, candidato_id, votosicr, votosdigitacion, votoscontrol, votos) FROM stdin;
\.


--
-- TOC entry 3569 (class 0 OID 25292)
-- Dependencies: 229
-- Data for Name: zona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zona (id, nombre, parroquia_id, codigo) FROM stdin;
1	ABANIN	5	1
2	DALIGSHI	5	2
3	TUNUYUNGA	5	3
4	SIN ZONA	10	0
5	SIN ZONA	15	0
6	ACHUPALLAS	20	1
7	TOTORAS	20	2
8	JUVAL	20	3
9	AHUANO	25	1
10	CAMPANA COCHA	25	2
11	CAMPO COCHA	25	3
12	NUEVO PARAISO	25	4
13	ZANCUDO	25	5
14	RIO BLANCO	25	6
15	TAMIA URCO	25	7
16	SANTA BARBARA	25	8
17	SANTA ROSA	25	9
18	ALANGASI	30	1
19	EL TINGO	30	2
20	SIN ZONA	35	0
21	SIN ZONA	40	0
22	SIN ZONA	45	0
23	ALHAJUELA /BAJO GRANDE	50	1
24	TABLADA DE LAS CRUCES	50	2
25	SIN ZONA	55	0
26	SIN ZONA	60	0
27	SIN ZONA	65	0
28	ALTO TAMBO /GUADAL	70	1
29	CRISTAL ALTO	70	2
30	ALLURIQUIN	75	1
31	LA FLORIDA	75	2
32	MAR DE LA TRANQUILIDAD	75	3
33	AMAGUAÑA	80	1
34	CHAUPITENA	80	2
35	AMALUZA	85	1
36	SANTA RITA	85	2
37	SIN ZONA	90	0
38	AMBATILLO	95	1
39	AMBATILLO ALTO	95	2
40	AMBUQUI / CHOTA	100	1
41	JUNCAL	100	2
42	CHOTA	100	3
43	CARPUELA	100	4
44	CHAUPI GUARANGUI	100	5
45	SAN CLEMENTE	100	6
46	SIN ZONA	105	0
47	ANCON/PALMA REAL	110	1
48	CAUCHAL	110	2
49	SIN ZONA	115	0
50	SIN ZONA	120	0
51	ANGAMARCA	125	1
52	CHINE ALTO	125	2
53	MOCATA	125	3
54	PIGUA-QUINDIGUA	125	4
55	ANGOCHAGUA	130	1
56	ZULETA	130	2
57	LA MERCED	130	3
58	SIN ZONA	135	0
59	ANTONIO SOTOMAYOR	140	1
60	BAGATELA	140	2
61	CLARIZA	140	5
62	SIN ZONA	145	0
63	PATRICIA PILAR	150	1
64	LOS ANGELES	150	2
65	SIN ZONA	155	0
66	SIN ZONA	160	0
67	SIN ZONA	165	0
68	SIN ZONA	170	0
69	LA ASUNCION	175	1
70	LENTAG	175	2
71	ASUNCION	180	1
72	SAN JOSE SUR	180	2
73	SUNKANTS	180	3
74	SIN ZONA	185	0
75	SIN ZONA	190	0
76	SIN ZONA	195	0
77	ATAHUALPA/CAMARONES	200	1
78	JUAN MONTALVO	200	2
79	SIN ZONA	205	0
80	AUGUSTO N. MARTINEZ	210	1
81	LLATANTOMA	210	2
82	SAMANGA	210	3
83	LAQUIGO	210	4
84	AVILA	215	1
85	AVILA VIEJO	215	2
86	PUSCO COCHA	215	3
87	SAN BARTOLO	215	4
88	SIN ZONA	220	0
89	SIN ZONA	225	0
90	EL REVENTADOR	230	1
91	SIMÓN BOLÍVAR	230	2
92	BELLA VISTA	235	1
93	EL CASCAJO EL CAMOTE	235	2
94	SIN ZONA	240	0
95	SIN ZONA	245	0
96	SIN ZONA	250	0
97	EL RETIRO	255	1
98	NUEVA ESPERANZA	255	2
99	GUARUMAL 2	255	3
100	LA MARÍA	255	4
101	SIN ZONA	260	0
102	SIN ZONA	265	0
103	SIN ZONA	270	0
104	SIN ZONA	275	0
105	LIMONES	280	1
106	TRONCO QUEMADO	280	2
107	BAÑOS	285	1
108	COCHAPAMBA	285	2
109	GARZAREAL	290	1
110	COCHAS DEL ALMENDRO	290	2
111	SIN ZONA	295	0
112	SIN ZONA	300	0
113	VALLE HERMOSO	305	1
114	CRISTOBAL COLON	305	2
115	LA MARIANITA	305	3
116	CHIGUILPE	305	4
117	EL RECREO	305	5
118	LA ASUNCION	305	6
119	AUTENTICOS CAMPESINOS	305	7
120	UNION GANADERA	305	8
121	SUMAYPAMBA	310	1
122	MOSTAZAPAMBA	310	2
123	SIN ZONA	315	0
124	BELLAVISTA	320	1
125	JIBIRUCHE	320	2
126	BELLAVISTA	325	1
127	SAN AGUSTIN	325	2
128	SAN JOSÉ	325	3
129	BELLAVISTA	330	1
130	EL ESFUERZO	330	2
131	SIN ZONA	335	0
132	SIN ZONA	340	0
133	BILOVAN	345	1
134	LAS GUARDIAS	345	2
135	MATAPALO	345	3
136	SAN JORGE	345	4
137	BOMBOIZA	350	1
138	TINK	350	2
139	AYANTAS	350	3
140	CHUMPIAS	350	4
141	MONTERREY	350	5
142	SHUAR SAKANAS	350	6
143	SHAIME	350	7
144	KAYAMAS	350	8
145	BOLIVAR	355	1
146	MOMPICHE	355	2
147	SIN ZONA	360	0
148	SIN ZONA	365	0
149	SIN ZONA	370	0
150	SIN ZONA	375	0
151	SIN ZONA	380	0
152	SIN ZONA	385	0
153	SIN ZONA	390	0
154	SIN ZONA	395	0
155	SIN ZONA	400	0
156	CHIBUNGA	405	1
157	SAN JUAN DE BUA	405	2
158	SAN FRANCISCO DE YAHUILA	405	3
159	BOCA DE BARBUDAL	405	4
160	SANTA ROSA DE CUCHARA	405	5
161	SIN ZONA	410	0
162	SIN ZONA	415	0
163	SIN ZONA	420	0
164	SIN ZONA	425	0
165	SIN ZONA	430	0
166	SIN ZONA	435	0
167	CALDERON	440	1
168	CARAPUNGO	440	2
169	SAN MIGUEL DEL COMÚN	440	3
170	MARIANITAS	440	4
171	SAN JUAN DE CALDERON	440	5
172	SAN JOSE DE MORAN	440	6
173	LLANO GRANDE	440	7
174	BICENTENARIO	440	8
175	CALPI	445	1
176	NITILUISA	445	2
177	SIN ZONA	450	0
178	SIN ZONA	455	0
179	CAMPOZANO	460	1
180	SANTA BÁRBARA	460	2
181	SIN ZONA	465	0
182	SIN ZONA	470	0
183	CANELOS	475	1
184	CHONTOA	475	2
185	EL NARANJAL	475	3
186	CANGAHUA	480	1
187	CHUMILLOS	480	2
188	SAN ANTONIO	480	3
189	PISAMBILLA	480	4
190	SANTA ROSA DE PACCHA	480	5
191	SAN LUIS DE GUACHALÁ	480	6
192	SIN ZONA	485	0
193	SIN ZONA	490	0
194	CANUTO	495	1
195	SAN PABLO DE TARUGO	495	2
196	SIN ZONA	500	0
197	CAPIRO	505	1
198	GUERRAS	505	2
199	TINAJAS	505	3
200	LOS AMARILLOS	505	4
201	CONCHICOLA	505	5
202	SIN ZONA	510	0
203	SIN ZONA	515	0
204	SIN ZONA	520	0
205	SHIMPIS	525	1
206	COMUNA GRANDE	525	2
207	CAROLINA /GUALLUPI	530	1
208	CUAJARA	530	2
209	CARONDELET	535	1
210	LA BOCA	535	2
211	SIN ZONA	540	0
212	SIN ZONA	545	0
213	MANGAHURCO	550	1
214	LA LEONERA	550	4
215	CEBADAS	555	1
216	TRANCA SAN LUIS	555	2
217	SIN ZONA	560	0
218	CIANO	565	1
219	LAS COCHAS	565	2
220	SIN ZONA	570	0
221	COCHAPATA	575	1
222	ÑAMARIN	575	2
223	COJIMIES	580	1
224	BECHE	580	2
225	ELOY ALFARO	580	3
226	CHEVE ARRIBA	580	4
227	LOS ZENGUES	580	5
228	CORAZÓN DE BORDONES	580	6
229	PAVÓN	580	7
230	SIN ZONA	585	0
231	COLAIZACA	590	1
232	CHINCHANGA CENTRO	590	2
233	HUASAGA /WAMPUIK	595	1
234	KAIPTASH	595	2
235	ACHUAR WACHIRPAS	595	3
236	IPIAK	595	4
237	PAKINTS	595	5
238	COMUNIDAD ACHUAR SHUIN MAMUS	595	6
239	SAN PEDRO DE LOS COFANES	600	1
240	JIVINO VERDE	600	2
241	COLONCHE	605	1
242	PALMAR	605	2
243	MANANTIAL DE GUANGALA	605	3
244	MONTEVERDE	605	4
245	BAMBIL DESECHO	605	5
246	LOMA ALTA	605	6
247	LAS BALSAS	605	7
248	SALANGUILLO	605	8
249	AYANGUE	605	9
250	AGUADITA	605	10
251	MANANTIAL DE COLONCHE	605	11
252	COLUMBE	610	1
253	PULUCATES	610	2
254	LLINLLIN	610	3
255	SAN GUISEL ALTO	610	4
256	SIN ZONA	615	0
257	CONCEPCION	620	1
258	GUAYABAL	620	2
259	19 DE MARZO	620	3
260	YALARE	620	4
261	CONOCOTO	625	1
262	LA ARMENIA	625	2
263	HOSPITALARIA	625	3
264	SANTA MONICA	625	4
265	ONTANEDA LA SALLE	625	5
266	CAI FEMENINO - QUITO	625	61
267	CONONACO - KAWIMENO	630	1
268	DIKARO	630	2
269	BAMENO	630	3
270	SIN ZONA	635	0
271	CONVENTO	640	1
272	JAMITA	640	2
273	SIN ZONA	645	0
274	SIN ZONA	650	0
275	SIN ZONA	655	0
276	CRNEL. LORENZO GARAICOA	660	1
277	INÉS MARIA	660	2
278	EL GUISMI	665	1
279	LA ARGELIA	665	2
280	MIASI	665	3
281	CHUCHUMBLETZA	665	4
282	SIN ZONA	670	0
283	SIN ZONA	675	0
284	SIN ZONA	680	0
285	COTUNDO	685	1
286	KM 18	685	2
287	PAPANKU	685	3
288	SIN ZONA	690	0
289	SIN ZONA	695	0
290	CUBE / CHANCAMA	700	1
291	CHUCAPLE	700	2
292	TAHUALES	700	3
293	ACHICUBE	700	4
294	SIN ZONA	705	0
295	SIN ZONA	710	0
296	CUMANDA	715	1
297	OTO AROSEMENA 1	715	2
298	CUMBARATZA	720	1
299	NAMBIJA BAJO	720	2
300	LA QUEBRADA DE CUMBARATZA	720	3
301	CUMBAYA	725	1
302	COLEGIO MENOR	725	2
303	LUMBISÍ	725	3
304	SIN ZONA	730	0
305	CURARAY	735	1
306	VILLANO	735	2
307	TOÑAMPARI	735	3
308	TIWINO	735	5
309	CHUYAYACU	735	6
310	JAIME ROLDOS	735	7
311	MEÑEMPARE	735	8
312	LIKINO	735	9
313	SIN ZONA	740	0
314	SIN ZONA	745	0
315	SIN ZONA	750	0
316	CUTUGLAGUA	755	1
317	SANTA ROSA	755	2
318	CUYABENO	760	1
319	ZABALO	760	2
320	SIN ZONA	765	0
321	CRUCITA	770	1
322	LOS RANCHOS - ARENALES	770	2
323	SAN SILVESTRE	770	3
324	SIN ZONA	775	0
325	SIETE DE JULIO	780	1
326	LUZ DE AMERICA	780	2
327	SIN ZONA	785	0
328	EL INGENIO	790	1
329	GRANADILLO	790	2
330	CONSAGUANA	790	3
331	SAN LUIS DE PAMBIL	795	1
332	SAN FERNANDO	795	2
333	JILIMBÍ	795	3
334	SIN ZONA	800	0
335	SIN ZONA	805	0
336	UNAMUNCHO	810	1
337	LA PRIMAVERA	810	2
338	PUERTO ARTURO	810	3
339	SIN ZONA	815	0
340	CHANDUY	820	1
341	ZAPOTAL	820	3
342	TUGADUAJA / ENGUNGA	820	4
343	PECHICHE / EL REAL	820	5
344	SAN GERONIMO	820	6
345	SIN ZONA	825	0
346	SIN ZONA	830	0
347	CHAQUINAL	835	1
348	EL PAPAYO	835	2
349	CHARAPOTO	840	1
350	SAN ALEJO	840	2
351	SAN CLEMENTE	840	3
352	SAN JACINTO	840	4
353	CHAUCHA /ANGAS	845	1
354	SAN ANTONIO	845	2
355	CEDRO	845	3
356	CASCAJO	845	4
357	SIN ZONA	850	0
358	SIN ZONA	855	0
359	SIN ZONA	860	0
360	SIN ZONA	865	0
361	CHICAN /G. ORTEGA	870	1
362	UZHUPUD	870	2
363	CHIGUAZA	875	1
364	SAN PABLO	875	2
365	SAN JUAN	875	3
366	SAN JUAN BOSCO	875	4
367	SHUAR TUNA CHIWIAS-MARIA AUXILIADORA	875	5
368	COOP. 5 DE NOVIEMBRE	875	6
369	TSEMANTSMAN SAN JOSÉ	875	7
370	CENTRO SHUAR KAYAMENTSA	875	8
371	SIN ZONA	880	0
372	SIN ZONA	885	0
373	DUG - DUG	890	1
374	LAZUL	890	2
375	SIN ZONA	895	0
376	VOTO EN CASA	895	89
377	SIN ZONA	900	0
378	SIN ZONA	905	0
379	SIN ZONA	910	0
380	CHITO	915	1
381	NUEVOS HORIZONTES	915	2
382	SALTO DEL INCA	915	3
383	SIN ZONA	920	0
384	SIN ZONA	925	0
385	CHONTADURO	930	1
386	PARTIDERO	930	2
387	CHONTAMARCA	935	1
388	CIMIENTOS	935	2
389	CHONTAPUNTA	940	1
390	AGUA SANTA	940	2
391	ÑUCANCHI LLAKTA KM 28	940	3
392	ÑUCANCHI ALPA	940	4
393	CRUZCHICTA	940	5
394	GARENO	940	6
395	COLONIA LOS RIOS	940	7
396	CAMPO ALEGRE	940	8
397	SHIRIPUNO 2	940	9
398	MANGO PLAYA	940	10
399	FUERZAS UNIDAS	940	11
400	SAN ALBERTO DE BELLAVISTA BAJA	940	12
401	LAS CANELAS	940	13
402	SIN ZONA	945	0
403	SIN ZONA	950	0
404	CHUGA	955	1
405	SAN FRANCISCO DE LOS PALMARES	955	2
406	CHUGCHILAN	960	1
407	GUAYAMA SAN PEDRO QUILOTOA	960	4
408	SARAWASI	960	5
409	SAN MIGUEL DE PILAPUCHIN	960	6
410	SAN MIGUEL DE GUARUMAL	960	7
411	CHUMUNDE	965	1
412	CAPULÍ	965	2
413	MARIBÉ	965	3
414	RASCADERA	965	4
415	PERLA ESMERALDEÑA/SAN RUFINO	965	5
416	LA UNIÓN DE CHUMUNDÉ	965	6
417	SIN ZONA	970	0
418	SIN ZONA	975	0
419	SIN ZONA	980	0
420	CHICANA	985	1
421	SAN VICENTE DE CANEY	985	2
422	LA YONA	985	3
423	COCHAPAMBA	990	1
424	YANAHURCO GRANDE	990	2
425	SIN ZONA	995	0
426	SIN ZONA	1000	0
427	SIN ZONA	1005	0
428	DAULE	1010	1
429	PEDRO CARBO	1010	2
430	PACHICUTZA	1015	1
431	SAN ROQUE	1015	2
432	SHACAY	1015	3
433	G. DIAZ DE PINEDA	1020	1
434	SAN LUIS	1020	2
435	10 DE AGOSTO	1025	1
436	SAN RAMON	1025	2
437	10 DE AGOSTO	1030	1
438	SANTA TERESA	1030	2
439	12 DE DICIEMBRE	1035	1
440	CURIACHI	1035	2
441	SIN ZONA	1040	0
442	SIN ZONA	1045	0
443	PUERTO MURIALDO	1050	1
444	BAJO HUINO	1050	2
445	JANDIA YACU	1050	3
446	SAN RAFAEL	1055	1
447	CALDERA	1055	2
448	SAN SEBASTIAN	1060	1
449	LA AZUCENA	1060	2
450	BOCA DE CAÑA	1060	3
451	BARRAGANETE	1065	1
452	RIO VENDIDO	1065	2
453	EL DIQUE	1065	3
454	CABECERA DE RIO SALAZAR	1065	4
455	EL MORAL-TRES PUNTAS	1065	5
456	WILFRIDO LOOR M.	1070	1
457	TEODOMIRO	1070	2
458	SIN ZONA	1075	0
459	EL PARAISO	1080	1
460	EL TIGRE 1	1080	2
461	SIN ZONA	1085	0
462	GONZALO PIZARRO	1090	1
463	DASHINO	1090	2
464	PANDAYACU	1090	3
465	AMAZONAS	1090	4
466	SIN ZONA	1095	0
467	LA LIBERTAD	1100	1
468	PUYANGO DE LA LIBERTAD	1100	2
469	SAN PABLO	1105	1
470	AGUA FRÍA EN MEDIO	1105	2
471	EL ALTAR	1110	1
472	UTUÑAG	1110	2
473	SIN ZONA	1115	0
474	NUEVO QUITO	1120	1
475	PTO. MINERO LA PUNTA	1120	2
476	CONGUIME	1120	3
477	LA HERRADURA	1120	4
478	SIN ZONA	1125	0
479	SIN ZONA	1130	0
480	SIN ZONA	1135	0
481	SIN ZONA	1140	0
482	SIN ZONA	1145	0
483	EL GOALTAL / LAS JUNTAS	1150	1
484	CORAZON DE MUNDO NUEVO	1150	2
485	EL LIMO /MARIANA DE JESUS	1155	1
486	MANGURQUILLO	1155	2
487	ELOY ALFARO	1160	1
488	CUCUY	1160	2
489	LAS PIEDRAS	1160	3
490	MUCHIQUE 1	1160	4
491	SAN AGUSTÍN	1160	5
492	BOCA DE CAÑALES	1160	6
493	SIN ZONA	1165	0
494	SIN ZONA	1170	0
495	SIN ZONA	1175	0
496	SIN ZONA	1180	0
497	SIN ZONA	1185	0
498	SIN ZONA	1190	0
499	EL CHICAL	1195	1
500	SAN MARCOS	1195	2
501	EL TAMBO	1200	1
502	LA MERCED	1200	2
503	TUTINENTZA	1205	1
504	TUKUP	1205	2
505	YAMANUNKA	1205	3
506	KAPANTINENTSA	1205	4
507	KUSUIMI	1205	5
508	SHUAR KASHAI	1205	6
509	SHIRAMENTSA	1205	7
510	SHUAR ETSA	1205	8
511	PUTUNTS	1205	9
512	JEMPENTS	1205	10
513	PUKAR	1205	11
514	PUTUIM	1205	12
515	SHUAR CHIWIAS	1205	13
516	SHUAR KAPITIAN	1205	14
517	LIBERTAD SUR	1205	15
518	NAYANTS	1205	16
519	SIN ZONA	1210	0
520	SIN ZONA	1215	0
521	SIN ZONA	1220	0
522	PROGRESO	1225	1
523	GALAYACU	1225	2
524	LA CADENA	1225	3
525	ROSA DE ORO	1225	4
526	MUYUYACU	1225	5
527	LA PLAYA	1225	6
528	RÁJARO	1225	7
529	DUCOS	1225	8
530	SIN ZONA	1230	0
531	DAYUMA	1235	1
532	EL ANGEL	1235	2
533	ESFUERZO AMAZONICO	1235	3
534	PUERTO PINDO	1235	4
535	RIO TIPUTINI	1235	5
536	MIWAGUNO	1235	6
537	TIGUANO	1235	7
538	EL PORVENIR DEL CARMEN	1240	1
539	SANTA CLARA	1240	2
540	CUMANDA	1240	3
541	LOYOLA	1240	5
542	NUMBALA	1240	6
543	TARACOA	1245	1
544	SAN CARLOS	1245	2
545	SAN VICENTE	1245	3
546	PAMIWA KUCHA	1245	4
547	SIN ZONA	1250	0
548	FACUNDO VELA	1255	1
549	EL PORVENIR	1255	3
550	SIN ZONA	1260	0
551	FEBRES CORDERO	1265	1
552	MATILDE ESTHER	1265	2
553	PUEBLO NUEVO	1265	3
554	FERNANDEZ SALVADOR	1270	1
555	SAN FRANCISCO DE LA LINEA ROJA	1270	2
556	SIN ZONA	1275	0
557	FLORES	1280	1
558	GUANTUL GRANDE	1280	2
559	NAUBUG	1280	3
560	EL ENO	1285	1
561	ATARY	1285	2
562	EL TRIUNFO UNO	1285	3
563	PACAYACU	1290	1
564	CHONE UNO	1290	2
565	CHIRITZA	1290	3
566	JUAN MONTALVO	1290	4
567	PUERTO NUEVO	1290	5
568	SAN JOSE DE MORONA	1295	1
569	CENTRO CHAU	1295	3
570	PUERTO MORONA	1295	4
571	PANINTS	1295	5
572	KAANK GRANDE	1295	6
573	RIO AMAZONAS	1295	7
574	LA UNIÓN	1295	8
575	SAN JOSE DE ANCON	1300	1
576	PROSPERIDAD / EL TAMBO	1300	2
577	GALERA	1305	1
578	ESTERO DE PLATANO	1305	2
579	GARCIA MORENO /LLURIMAGUA	1310	1
580	NARANJITO	1310	2
581	LA MADGALENA BAJA	1310	3
582	EL CHONTAL	1310	5
583	CIELO VERDE	1310	6
584	LAS GOLONDRINAS	1310	7
585	LA INDEPENDIENTE	1310	8
586	RUMIÑAHUI	1310	9
587	GARCIA MORENO	1315	1
588	EL TAMBO	1315	2
589	SIN ZONA	1320	0
590	SIN ZONA	1325	0
591	GENERAL FARFAN	1330	1
592	TRES PALMAS	1330	2
593	PATRIA NUEVA	1330	3
594	CORAZÓN ORENSE	1330	4
595	SIN ZONA	1335	0
596	SIN ZONA	1340	0
597	SIN ZONA	1345	0
598	SIN ZONA	1350	0
599	SIN ZONA	1355	0
600	GONZALEZ SUAREZ	1360	1
601	PIJAL ALTO	1360	2
602	SAN FCO. DE CHINIMBIMI	1365	1
603	PANIA	1365	2
604	YAKUANK	1365	3
605	SIN ZONA	1370	0
606	SIN ZONA	1375	0
607	GUACHANAMA	1380	1
608	BRAMADEROS	1380	2
609	EL DULCE	1380	3
610	EL LIMON	1380	4
611	SARACAY	1385	1
612	CAMARONES	1385	2
613	LAS ORQUIDEAS	1385	3
614	GUADALUPE	1390	1
615	GUAGUAYME ALTO	1390	2
616	SOAPACA	1390	3
617	PIUNTZA	1390	4
618	SIN ZONA	1395	0
619	SIN ZONA	1400	0
620	SIN ZONA	1405	0
621	GUALLETURO	1410	1
622	PURUBIN	1410	2
623	GER	1410	3
624	SHUYA	1410	4
625	SIN ZONA	1415	0
626	GUANAZAN	1420	1
627	GUARTIGURO	1420	2
628	SIN ZONA	1425	0
629	GUANGAJE	1430	1
630	YAGUARTOA	1430	2
631	SAN JACINTO	1435	1
632	LONDON	1435	2
633	POTRERITOS	1435	3
634	SIN ZONA	1440	0
635	GUAPAN	1445	1
636	ZHINDILIG	1445	2
637	AGUILAN	1445	3
638	VOTO EN CASA	1445	89
639	SIN ZONA	1450	0
640	GUARAINAC	1455	1
641	JUNTAS	1455	2
642	GUARE	1460	1
643	LA CARMELA	1460	2
644	EL GUAYABO	1460	3
645	CAMPO ALEGRE	1460	4
646	SIN ZONA	1465	0
647	GUAYAS / PUERTO NUEVO	1470	1
648	DAULE - PERIPA	1470	2
649	SIN ZONA	1475	0
650	SIN ZONA	1480	0
651	SIN ZONA	1485	0
652	CPL COTOPAXI Nº 1	1485	61
653	SIN ZONA	1490	0
654	SIN ZONA	1495	0
655	GUASAGANDA	1500	1
656	QUINDIGUA	1500	2
657	MALQUI	1500	3
658	SAN JOSE DE CAYAPAS	1505	1
659	PICHIYACU CHACHI	1505	2
660	PLAYA GRANDE	1505	3
661	HERRADURA	1505	4
662	SIN ZONA	1510	0
663	SIN ZONA	1515	0
664	SIN ZONA	1520	0
665	LA UNION	1525	1
666	EL CUATRO	1525	2
667	LA UNION	1530	1
668	LA INDEPENDENCIA	1530	2
669	LIBERTAD DE PLAYA	1530	3
670	BOCANA DEL BUA	1530	4
671	LA ESMERALDA	1530	6
672	MATAMBA	1530	7
673	EL SILENCIO	1530	8
674	NUEVO AZUAY	1530	9
675	LA VIRGENCITA	1530	10
676	EL BELEN	1530	11
677	LOS ÁNGELES	1530	12
678	NUEVOS HORIZONTES	1530	13
679	LOS ANDES 1	1530	14
680	SIN ZONA	1535	0
681	SIN ZONA	1540	0
682	SIN ZONA	1545	0
683	SIN ZONA	1550	0
684	AGUAS NEGRAS	1555	1
685	SAN VICTORIANO	1555	2
686	REY DE LOS ANDES	1555	3
687	SIN ZONA	1560	0
688	INES ARANGO	1565	1
689	TIGUINO	1565	2
690	HUANCAVILCA	1565	3
691	SIN ZONA	1570	0
692	SIN ZONA	1575	0
693	SIN ZONA	1585	0
694	SIN ZONA	1590	0
695	JUNQUILLAL	1595	1
696	EL LAUREL DE SALITRE	1595	2
697	NOVILLO	1600	1
698	SAN AGUSTIN RIO DE LAS VACAS	1600	2
699	SAN ANTONIO DE TIGRE-PATA DE MULA	1600	4
700	BOCA DE TIGRE	1600	5
701	LOS VIVERES DE LA POLVOSA	1600	6
702	SIN ZONA	1605	0
703	HONORATO VASQUEZ	1610	1
704	LA SAIBA	1610	2
705	LA CHONTILLA 1	1610	3
706	TONSUPA	1615	1
707	TASECHE	1615	2
708	PIEDRA FINA	1615	3
709	SIN ZONA	1620	0
710	HUACHI GRANDE	1625	1
711	HUACHI SAN FRANCISCO	1625	2
712	SIN ZONA	1630	0
713	HUAMBI	1635	1
714	CUMBATZA	1635	2
715	SIN ZONA	1640	0
716	SIN ZONA	1645	0
717	SAN VICENTE	1650	1
718	LA MERCED	1650	2
719	SANTA TERESITA	1650	3
720	SIN ZONA	1655	0
721	SIN ZONA	1660	0
722	BELLAMARIA	1665	1
723	VALLE HERMOSO	1665	2
724	SIN ZONA	1670	0
725	ZURMI	1675	1
726	SHAIMI	1675	3
727	SAN JOSE DE DAHUANO	1680	1
728	LA PAZ	1680	2
729	PALTA COCHA	1680	3
730	SAN CARLOS DE RIO BUENO	1680	4
731	MUSHUK LLAKTA	1680	5
732	ARAPINO	1680	6
733	SIN ZONA	1685	0
734	SAN RAFAEL DE SHARUG	1690	1
735	GUARUMAL	1690	2
736	SIN ZONA	1695	0
737	SIN ZONA	1700	0
738	SIN ZONA	1705	0
739	IMANTAG	1710	1
740	PIÑAN	1710	2
741	SIN ZONA	1715	0
742	SIN ZONA	1720	0
743	INGAPIRCA	1725	1
744	SISID	1725	2
745	SIN ZONA	1730	0
746	VOTO EN CASA	1730	89
747	ISINLIVI	1735	1
748	GUANTOALO	1735	2
749	SIN ZONA	1740	0
750	SIN ZONA	1745	0
751	SIN ZONA	1750	0
752	LUZ DE AMÉRICA	1755	1
753	EL CONGOMA	1755	2
754	SAN VICENTE DEL NILA	1755	3
755	30 DE NOVIEMBRE	1755	4
756	LA SUSANITA	1755	5
757	SIN ZONA	1760	0
758	SIN ZONA	1765	0
759	SAN CARLOS DE LAS MINAS	1770	1
760	NAMBIJA	1770	2
761	SIN ZONA	1775	0
762	SIN ZONA	1780	0
763	SIN ZONA	1785	0
764	SANTA CECILIA	1790	1
765	LUZ Y VIDA	1790	2
766	AKIWARI	1790	3
767	CUCHAPAMBA	1790	4
768	LUCHA DE LOS POBRES	1790	5
769	JAMBELI	1795	1
770	BARRANCA BERMEJA	1795	2
771	SIN ZONA	1800	0
772	JADAN	1805	1
773	SANTA ROSA DE CHICHIN	1805	2
774	EL CARMEN	1805	3
775	GARCIA MORENO	1810	1
776	CASPISAPA	1810	2
777	JAMBELI	1815	1
778	PONGALILLO-LAS CASITAS	1815	2
779	LAS HUACAS	1815	3
780	LA BELLEZA	1820	1
781	JAGUAR DOS	1820	2
782	LAS DELICIAS	1820	3
783	CANAAN SANGAY	1820	4
784	PALMA ROJA	1820	5
785	ELOY ALFARO	1820	6
786	CACIQUE JUMANDY	1820	8
787	JAVIER LOYOLA / CHUQUIPATA	1825	1
788	AYANCAY	1825	2
789	VOTO EN CASA	1825	89
790	SIN ZONA	1830	0
791	JIJON Y CAAMAÑO	1835	1
792	RIO VERDE	1835	2
793	JIMBILLA	1840	1
794	JESÚS MARÍA BAJO	1840	2
795	SIN ZONA	1845	0
796	JOSE LUIS TAMAYO / MUEY	1850	1
797	EL PARAISO	1850	2
798	SIN ZONA	1855	0
799	SIN ZONA	1860	0
800	JUAN DE VELASCO	1865	1
801	TAMBILLO BAJO	1865	2
802	JUAN GOMEZ RENDON	1870	1
803	BAJADA DE CHANDUY	1870	2
804	JUAN MONTALVO	1875	1
805	SANTIAGUILLO	1875	2
806	SIN ZONA	1880	0
807	SIN ZONA	1885	0
808	JULIO MORENO	1890	1
809	RODEOPAMBA	1890	2
810	DUCUR	1895	1
811	JAVIN	1895	2
812	CHIL CHIL	1895	3
813	JUNCAL	1900	1
814	CHARCAY	1900	2
815	SIN ZONA	1905	0
816	SIN ZONA	1910	0
817	SIN ZONA	1915	0
818	SALANGO	1920	1
819	LAS TUNAS	1920	2
820	CHIRIJOS	1925	1
821	TRES CAMINOS	1925	2
822	TALAG	1930	1
823	ILAYAKU	1930	2
824	JATUN YAKU	1930	3
825	SAN LUIS DE ARMENIA	1935	1
826	ALTO MANDURO	1935	2
827	NUEVO PARAISO	1940	1
828	SAN LORENZO DE ACORANO	1940	2
829	SAN JOSE DE GUAYUSA	1945	1
830	10 DE AGOSTO	1945	2
831	KANOA YAKU	1945	3
832	SIN ZONA	1950	0
833	TRES DE NOVIEMBRE	1955	1
834	25 DE DICIEMBRE	1955	2
835	LAGO SAN PEDRO	1960	1
836	MIRAFLORES	1960	2
837	UNION MILAGREÑA	1965	1
838	SANTA ROSA	1965	2
839	SAN JACINTO DEL BUA	1970	1
840	UMPECHICO	1970	2
841	SAN VICENTE DEL BUA	1970	3
842	SAN FRANCISCO DE CHILA	1970	4
843	SAN PEDRO DEL LAUREL	1970	5
844	SIN ZONA	1975	0
845	SAN PEDRO DE SUMA	1980	1
846	PUERTO NUEVO	1980	2
847	LAS MERCEDES DE AGUAS SUCIA	1980	3
848	SIN ZONA	1985	0
849	EL ESFUERZO	1990	1
850	LA REFORMA	1990	2
851	PALMAR DEL BIMBE	1990	3
852	SIN ZONA	1995	0
853	BOLASPAMBA	2000	1
854	VEGA ALTA	2000	2
855	SIN ZONA	2005	0
856	LA CONCEPCION	2010	1
857	PALO BLANCO	2010	2
858	SANTA LUCIA	2010	3
859	NARANJITO	2010	4
860	SIN ZONA	2015	0
861	SIN ZONA	2020	0
862	SIN ZONA	2025	0
863	SIN ZONA	2030	0
864	LAGARTO	2035	1
865	BOCANA DEL LAGARTO	2035	2
866	VAINILLA	2035	3
867	SIN ZONA	2040	0
868	SANTA MARIA DEL TOACHI	2045	1
869	CORINA PARRAL	2045	2
870	SAN JOSE DEL MIRADOR	2045	3
871	LA MORENA	2045	4
872	RIO BONITO	2050	1
873	SAN MIGUEL DE BRAZIL	2050	2
874	SAN VICENTE	2050	3
875	PAGUA	2050	4
876	SIN ZONA	2055	0
877	LA MERCED DE BUENOS AIRES	2060	1
878	PALMIRA DE TOCTEMI - AWA	2060	2
879	SIN ZONA	2065	0
880	LA PAZ	2070	1
881	CHAPINTZA BAJO	2070	2
882	KURINTS	2070	3
883	NUEVO PORVENIR	2070	4
884	SIN ZONA	2075	0
885	SIN ZONA	2080	0
886	SIN ZONA	2085	0
887	SIN ZONA	2090	0
888	SIN ZONA	2095	0
889	SIN ZONA	2100	0
890	SIN ZONA	2105	0
891	SIN ZONA	2110	0
892	SIN ZONA	2115	0
893	SIN ZONA	2120	0
894	LA TOLA	2125	1
895	SAN PEDRO	2125	2
896	SIN ZONA	2130	0
897	LA UNION	2135	1
898	CHICOMPE	2135	2
899	LAURO GUERRERO	2140	1
900	LA PALMA	2140	2
901	SIN ZONA	2145	0
902	SIN ZONA	2150	0
903	LA VICTORIA DE IMBANA	2155	1
904	EL TIBIO	2155	2
905	TAMBO BLANCO	2155	3
906	SIN ZONA	2160	0
907	LICTO	2165	1
908	TUNSHI SAN NICOLAS	2165	2
909	SIN ZONA	2170	0
910	LIMONCOCHA	2175	1
911	NUEVO PARAISO	2175	2
912	UNIÓN AMAZÓNICA	2175	3
913	24 DE MAYO	2175	4
914	YAMANUNKA	2175	5
915	SANI ISLA	2175	6
916	SIN ZONA	2180	0
917	SIN ZONA	2185	0
918	LOS ANDES	2205	1
919	PIQUIUCHO	2205	2
920	CUNQUER	2205	3
921	SIN ZONA	2210	0
922	LUDO	2215	1
923	BUENA VISTA	2215	2
924	HATOBOLO	2215	3
925	SIN ZONA	2220	0
926	SIN ZONA	2225	0
927	SIN ZONA	2230	0
928	LOS ENCUENTROS	2240	1
929	EL ZARZA	2240	2
930	SIN ZONA	2255	0
931	LLAGOS	2260	1
932	JOYAGSHI	2260	2
933	SIN ZONA	2265	0
934	SIN ZONA	2270	0
935	LLOA	2275	1
936	CHIRIBOGA	2275	2
937	SAN JUAN DE LLOA	2275	3
938	SIN ZONA	2280	0
939	MACUMA	2285	1
940	YUWINTS	2285	2
941	MAMAYAK	2285	3
942	KUSUTKA	2285	5
943	YAMPUNA NORTE	2285	6
944	CENTRO SHUAR KANKAIM NORTE	2285	7
945	MACHALILLA	2305	1
946	AGUA BLANCA	2305	2
947	MADRE TIERRA	2310	1
948	SANTA ANA	2310	2
949	AMAZONAS	2310	3
950	NUEVA VIDA	2310	4
951	CPPL MIXTO PASTAZA N°1	2310	61
952	SIN ZONA	2315	0
953	SIN ZONA	2320	0
954	MALACATOS/VALLADOLID	2325	1
955	RUMISHITANA	2325	2
956	SIN ZONA	2330	0
957	SIN ZONA	2335	0
958	MALDONADO	2340	1
959	CHILMA ALTO	2340	2
960	MALIMPIA /GUAYLLABAMBA	2345	1
961	AGUA CLARA	2345	3
962	EL RECREO	2345	4
963	LA T	2345	5
964	NARANJAL DE LOS CHACHIS	2345	6
965	VALLE DEL SADE	2345	7
966	RONCA TIGRILLO	2345	8
967	5 DE AGOSTO	2345	9
968	VALLE ESMERALDEÑO	2345	10
969	ZAPALLO	2345	11
970	CRISTOBAL COLON	2345	12
971	GUAYACANA	2345	13
972	LAS PAVAS	2345	14
973	AGUA CLARA CHACHI	2345	15
974	UNION MANABITA	2345	16
975	ÑAMPI	2345	17
976	SIN ZONA	2350	0
977	MANGLARALTO	2355	1
978	SAN PEDRO / VALDIVIA	2355	2
979	SINCHAL	2355	3
980	OLON	2355	4
981	LA ENTRADA	2355	5
982	CADEATE	2355	6
983	MONTAÑITA	2355	7
984	LA RINCONADA	2355	8
985	DOS MANGAS	2355	9
986	SITIO NUEVO	2355	10
987	MANU	2360	1
988	TAGUARCOCHA	2360	2
989	MANUEL J. CALLE	2365	1
990	SAN ISIDRO	2365	2
991	SIN ZONA	2375	0
992	SIN ZONA	2380	0
993	MARIANO MORENO/CALLASAY	2385	1
994	CERTAG	2385	2
995	SIN ZONA	2390	0
996	MATAJE	2395	1
997	MATAJE ALTO	2395	2
998	LA CADENA	2395	3
999	SIN ZONA	2400	0
1000	SIN ZONA	2405	0
1001	MINDO	2410	1
1002	PUEBLO NUEVO	2410	2
1003	MOLLETURO	2430	1
1004	JESUS DEL GRAN PODER	2430	2
1005	ZHAGAL	2430	3
1006	SAN JOSE DE RECREO	2430	4
1007	TAMARINDO	2430	5
1008	AGUAS CALIENTES	2430	6
1009	ESTERO PIEDRA	2430	7
1010	ABDON CALDERÓN	2430	8
1011	FLOR Y SELVA	2430	9
1012	CAYMATAN 	2430	10
1013	SIN ZONA	2435	0
1014	SIN ZONA	2445	0
1015	MONTALVO /ANDOAS	2450	1
1016	KAPAWI	2450	2
1017	CHARAPACOCHA	2450	4
1018	BUFEO	2450	5
1019	KURINTZA	2450	6
1020	WUAYUSENTSA	2450	7
1021	NUMBAIMI	2450	8
1022	CONAMBO	2450	9
1023	JANDIAYACU	2450	10
1024	PINDUYACU	2450	11
1025	KAPAWARI	2450	12
1026	TERESA MAMA	2450	13
1027	NUEVO SAN JOSÉ DE MONTALVO	2450	14
1028	MONTEOLIVO	2455	1
1029	PUEBLO NUEVO	2455	2
1030	EL MOTILON	2455	3
1031	MORASPUNGO	2460	1
1032	GUAPARA	2460	2
1033	PIEDACITA	2460	3
1034	EL DESEO	2460	4
1035	CALABICITO	2460	5
1036	MOROMORO	2465	1
1037	PALO SOLO	2465	2
1038	SIN ZONA	2470	0
1039	SIN ZONA	2475	0
1040	SIN ZONA	2480	0
1041	SIN ZONA	2485	0
1042	SIN ZONA	2490	0
1043	NAMBACOLA	2520	1
1044	POTRERILLOS	2520	2
1045	SIN ZONA	2525	0
1046	NANEGALITO	2530	1
1047	SANTA ELENA	2530	2
1048	SIN ZONA	2540	0
1049	SIN ZONA	2545	0
1050	LAS NIEVES	2550	1
1051	LA PAZ	2550	2
1052	NOBOA	2555	1
1053	EL ENCUENTRO	2555	2
1054	SIN ZONA	2560	0
1055	SIN ZONA	2565	0
1056	MULTI /  NULTI	2570	1
1057	CHALLUABAMBA NULTI	2570	2
1058	SIN ZONA	2575	0
1059	SIN ZONA	2595	0
1060	SIN ZONA	2600	0
1061	SIN ZONA	2620	0
1062	ORIANGA	2630	1
1063	NARANJILLO	2630	2
1064	SIN ZONA	2635	0
1065	SIN ZONA	2640	0
1066	SIN ZONA	2670	0
1067	PABLO ARENAS	2675	1
1068	LA VICTORIA	2675	2
1069	SIN ZONA	2680	0
1070	PACTO	2690	1
1071	SAGUANGAL	2690	2
1072	PACHIJAL	2690	3
1073	PALETILLAS	2710	1
1074	AÑANCAL	2710	2
1075	CAUCHO GRANDE	2710	3
1076	PALMALES	2715	1
1077	MANABI DE EL ORO	2715	2
1078	SIN ZONA	2720	0
1079	PALMAS	2725	1
1080	JURUPILLOS	2725	2
1081	SANTA ROSA	2725	3
1082	PALMIRA	2730	1
1083	TIPIN	2730	2
1084	GALTES	2730	3
1085	PANCHO NEGRO	2745	1
1086	LA PUNTILLA	2745	2
1087	SIN ZONA	2750	0
1088	SIN ZONA	2755	0
1089	SIN ZONA	2760	0
1090	PANACOCHA	2765	1
1091	PUKA PEÑA	2765	2
1092	SIN ZONA	2770	0
1093	PASA	2775	1
1094	MOGATO	2775	2
1095	SIN ZONA	2785	0
1096	PATUCA	2795	1
1097	IPIAKIM	2795	2
1098	SIN ZONA	2810	0
1099	PEÑAHERRERA	2820	1
1100	EL CRISTAL	2820	2
1101	NANGULVI BAJO	2820	3
1102	SIN ZONA	2825	0
1103	PICAYHUA	2830	1
1104	SIGSIPAMBA	2830	2
1105	PIEDRAS	2850	1
1106	EL CARMEN	2850	2
1107	PIFO	2855	1
1108	SIGSIPAMBA	2855	2
1109	PALUGO	2855	3
1110	LA VIRGINIA	2855	4
1111	PILAHUIN	2860	1
1112	TAMBO LOMA	2860	2
1113	EL SALADO	2860	3
1114	PILALO	2865	1
1115	APAGUA	2865	2
1116	PIMOCHA	2875	1
1117	ISABEL MARIA	2875	2
1118	LA VIRGINIA	2875	3
1119	PINDILIG	2885	1
1120	SHAL	2885	2
1121	SIN ZONA	2890	0
1122	PINTAG	2895	1
1123	UBILLUS	2895	2
1124	TOLONTAG	2895	3
1125	SAN AGUSTÍN	2895	4
1126	SANTA TERESA	2895	5
1127	SIN ZONA	2900	0
1128	SIN ZONA	2905	0
1129	SIN ZONA	2915	0
1130	SIN ZONA	2920	0
1131	POMASQUI	2925	1
1132	PUSUQUI	2925	2
1133	POMPEYA	2930	1
1134	SAN ANTONIO	2930	2
1135	SIN ZONA	2940	0
1136	SIN ZONA	2945	0
1137	SIN ZONA	2950	0
1138	SIN ZONA	2955	0
1139	SIN ZONA	2965	0
1140	SIN ZONA	2970	0
1141	SIN ZONA	2975	0
1142	PUELLARO	2980	1
1143	ALOGUINCHO	2980	2
1144	ALCHIPICHI	2980	3
1145	SIN ZONA	2985	0
1146	PUERTO CAYO	2990	1
1147	CANTA GALLO	2990	2
1148	PUERTO MISAHUALLI	3000	1
1149	SAN MIGUEL DE PALMERAS	3000	2
1150	VENECIA DERECHA	3000	3
1151	SIN ZONA	3005	0
1152	SIN ZONA	3015	0
1153	SIN ZONA	3020	0
1154	SIN ZONA	3025	0
1155	PUNA	3030	1
1156	CAUCHICHE	3030	2
1157	CAMPO ALEGRE	3030	3
1158	LOS MORREÑOS	3030	4
1159	PUERTO ROMA	3030	5
1160	MATORRILLO	3030	6
1161	MONDRAGÓN	3030	7
1162	PUNGALA	3035	1
1163	ALAO	3035	2
1164	ASHPAPUNGO	3035	3
1165	PUNIN	3040	1
1166	TZALARON	3040	2
1167	SIN ZONA	3045	0
1168	PUERTO NAPO	3050	1
1169	ATAHUALPA	3050	2
1170	SIN ZONA	3055	0
1171	QUIMIAG	3095	1
1172	PIÑAÑAU	3095	2
1173	PUCULPALA	3095	3
1174	QUINCHE	3100	1
1175	SAN VICENTE DE CUPUCURO	3100	2
1176	IGUIÑARO	3100	3
1177	QUINGEO	3105	1
1178	MONJAS	3105	2
1179	PIRICOCHA	3105	3
1180	SIN ZONA	3110	0
1181	SIN ZONA	3115	0
1182	QUISAPINCHA	3120	1
1183	ILLAGUA CHICO	3120	2
1184	SIN ZONA	3125	0
1185	RAMON CAMPAÑA	3155	1
1186	PILANCÓN	3155	2
1187	SIN ZONA	3160	0
1188	RICAURTE	3165	1
1189	LA DOLOROSA	3165	2
1190	RICAURTE	3170	1
1191	PAVON	3170	2
1192	SESME	3170	3
1193	COLORADO	3170	4
1194	NUEVO BACHILLERO	3170	5
1195	RIO SANTO	3170	6
1196	LAS GARZAS	3170	7
1197	LOS ÁNGELES	3170	8
1198	LA LAGUNA DE RIO PLATA	3170	9
1199	RICAURTE	3175	1
1200	SALAMPE	3175	2
1201	LA INDUSTRIA	3175	3
1202	SAN JOSE DE PIJULLO	3175	4
1203	LA HOJITA	3175	5
1204	POTOSI	3175	6
1205	MAKUSAR	3180	1
1206	TINKIAS	3180	4
1207	YUTSUNTSA	3180	5
1208	SIN ZONA	3185	0
1209	CPL MANABI Nº 4	3185	61
1210	SIN ZONA	3190	0
1211	SURAKA	3195	1
1212	WIRIRIMA	3195	3
1213	LOROCACHI	3195	4
1214	YANDANA ENTSA	3195	5
1215	NINA AMARUM	3195	6
1216	SIN ZONA	3200	0
1217	SIN ZONA	3210	0
1218	ROCAFUERTE	3215	1
1219	CHUNGUILLO	3215	2
1220	ROSA FLORIDA	3220	1
1221	LA BARQUILLA	3220	2
1222	SIN ZONA	3225	0
1223	SIN ZONA	3230	0
1224	SIN ZONA	3235	0
1225	SIN ZONA	3250	0
1226	SABANILLA	3255	1
1227	HIGUERON	3255	2
1228	POTRERILLOS - VICIN	3255	3
1229	SIN ZONA	3260	0
1230	SIN ZONA	3265	0
1231	SACAPALCA	3270	1
1232	CRUZ DE YAZAPA	3270	2
1233	LIMON VEGA	3270	3
1234	VEGA GRANDE	3270	4
1235	SIN ZONA	3275	0
1236	SIN ZONA	3280	0
1237	SALINAS	3285	1
1238	LA PALMA	3285	2
1239	CHAZOJUAN	3285	3
1240	GRAMALOTE	3285	4
1241	SIN ZONA	3290	0
1242	SAN ANDRES	3295	1
1243	CALSHI	3295	2
1244	SAN ANDRES	3300	1
1245	HUAPANTE GRANDE	3300	2
1246	SAN ANTONIO	3305	1
1247	ZHUCAY	3305	2
1248	CARGUA	3305	3
1249	MANTA REAL	3305	4
1250	SAN ANTONIO	3315	1
1251	TANGUARIN	3315	2
1252	SANTO DOMINGO	3315	3
1253	LA COMPANIA	3315	4
1254	LOS SOLES	3315	5
1255	VOTO EN CASA	3315	89
1256	SAN ANTONIO	3320	1
1257	YANGUZA	3320	2
1258	YUNGUMAS	3320	3
1259	LA VICTORIA	3320	4
1260	WARINTZA	3320	5
1261	SAN ANTONIO	3325	1
1262	RUMICUCHO	3325	2
1263	SAN ANTONIO	3330	1
1264	LAGUNA DE CAÑAS	3330	2
1265	SIN ZONA	3335	0
1266	SAN ANTONIO DE CUMBE	3340	1
1267	CHAMICAL	3340	2
1268	GUELEDEL	3340	3
1269	SIN ZONA	3345	0
1270	SAN ANTONIO /DEL PELUDO	3350	1
1271	BARQUERO	3350	2
1272	BRAVOS CHICOS	3350	3
1273	SAN BARTOLOME	3355	1
1274	ANGAMARQUILLO	3355	2
1275	SAN BARTOLOMÉ	3360	1
1276	LA LIBERTAD	3360	2
1277	SIGSIGLLANO	3360	3
1278	SAN BLAS	3365	1
1279	IRUGUINCHO	3365	2
1280	SIN ZONA	3370	0
1281	SAN CRISTOBAL	3375	1
1282	GUACHUN	3375	2
1283	SIN ZONA	3380	0
1284	SAN FRANCISCO	3390	1
1285	EL SALTO	3390	2
1286	SIN ZONA	3395	0
1287	SIN ZONA	3400	0
1288	SAN FRANCISCO DE ONZOLE	3405	1
1289	ZANCUDO	3405	2
1290	SIN ZONA	3410	0
1291	SAN FCO. SIGSIPAMBA	3415	1
1292	SHANSHIPAMBA	3415	2
1293	SANGAY	3420	1
1294	CHINIMPI	3420	2
1295	PAQUISHA	3420	3
1296	SIN ZONA	3425	0
1297	SAN GREGORIO	3430	1
1298	BALSALITO	3430	2
1299	BOCA DEL SUCIO	3430	3
1300	TRES VIAS	3430	4
1301	SAN SALVADOR CHACHI	3430	5
1302	TIGRILLO	3430	6
1303	SIN ZONA	3435	0
1304	SIN ZONA	3440	0
1305	SAN ISIDRO	3445	1
1306	SAN MIGUEL DE PIQUIGUA	3445	2
1307	9 DE OCTUBRE	3445	3
1308	SAN ISIDRO DE PATULU	3450	1
1309	CHOCAVI	3450	2
1310	SAN JAVIER DE CACHABI	3455	1
1311	CHILLAVI DEL CEIBO	3455	2
1312	SAN JOAQUIN	3460	1
1313	BARABON	3460	2
1314	SIN ZONA	3465	0
1315	SIN ZONA	3470	0
1316	SAN JOSE DE MINAS	3475	1
1317	EL MERIDIANO	3475	2
1318	PLAYA RICA	3475	3
1319	SAN JOSE DE PAYAMINO	3480	1
1320	VERDE SUMACO	3480	2
1321	SAN FRANCISCO DE ASIS	3480	3
1322	UNION Y PROGRESO	3480	4
1323	JUAN PIO MONTUFAR	3480	5
1324	SIN ZONA	3485	0
1325	SAN JOSE DE QUICHINCHE	3490	1
1326	INGUINCHO	3490	2
1327	SAN JOSE DE RARANGA	3495	1
1328	LA ESMERALDA	3495	2
1329	SAN JOSE DE TAMBO	3500	1
1330	STA ROSA DE AGUA CLARA	3500	2
1331	ANGELICA	3500	3
1332	VALPARAISO	3500	4
1333	JUNTA NUEVA	3500	5
1334	SIN ZONA	3505	0
1335	SIN ZONA	3510	0
1336	SIN ZONA	3515	0
1337	SIN ZONA	3525	0
1338	VOTO EN CASA	3525	89
1339	SAN JUAN DE PASTOCALLE	3530	1
1340	LA LIBERTAD	3530	2
1341	SAN JUAN DE POZUL	3535	1
1342	POTRERILLOS	3535	2
1343	SIN ZONA	3545	0
1344	VOTO EN CASA	3545	89
1345	SIN ZONA	3550	0
1346	SAN LUCAS	3555	1
1347	LAS JUNTAS	3555	2
1348	SAN LUIS	3560	1
1349	SAN ANTONIO DE GUASLAN	3560	2
1350	SIN ZONA	3565	0
1351	SAN MATEO	3570	1
1352	TIMBRE	3570	2
1353	SIN ZONA	3575	0
1354	SIN ZONA	3580	0
1355	SIN ZONA	3585	0
1356	SAN PABLO	3590	1
1357	EL TOPO	3590	2
1358	SAN PABLO DE ATENAS	3595	1
1359	GUAMALÁN	3595	2
1360	SIN ZONA	3600	0
1361	SAN PABLO DE USHPAYACU	3605	1
1362	POROTOYACU	3605	2
1363	SIN ZONA	3610	0
1364	PUERTO LIBRE	3615	1
1365	SINANGUE	3615	2
1366	EL RECODO	3615	3
1367	EL CABENO	3615	4
1368	SAN PLACIDO	3625	1
1369	EL PROGRESO	3625	2
1370	SIN ZONA	3630	0
1371	SANTA MARIA	3632	1
1372	LA PALIZADA	3632	2
1373	SANTA TERESA	3632	3
1374	VOTO EN CASA	3632	89
1375	LA 14/EL PARAISO	3635	1
1376	EL ROSARIO	3635	2
1377	EL DESCANSO	3635	3
1378	VOTO EN CASA	3635	89
1379	SIN ZONA	3640	0
1380	VOTO EN CASA	3640	89
1381	SAN ROQUE	3645	1
1382	SAN PABLO	3645	2
1383	TIERRAS ORIENTALES	3645	3
1384	NUEVA VIDA	3645	4
1385	SIN ZONA	3650	0
1386	SIN ZONA	3655	0
1387	SAN SEBASTIAN DE COCA	3660	1
1388	SAN PABLO	3660	2
1389	SARDINAS	3660	3
1390	HUATARACU	3660	4
1391	SAN SEBASTIAN DE YULOG	3665	1
1392	UCHUCAY	3665	2
1393	SAN SIMON	3670	1
1394	GRADAS	3670	2
1395	SAN VICENTE DE PUSIR	3680	1
1396	PUSIR GRANDE	3680	2
1397	TUMBATÚ	3680	3
1398	SIN ZONA	3685	0
1399	SIN ZONA	3690	0
1400	SANTA ELENA	3705	1
1401	UNIÓN ORENSE	3705	2
1402	EL PALMAR	3705	3
1403	SIN ZONA	3710	0
1404	SIN ZONA	3720	0
1405	SANTA RITA	3725	1
1406	SAN FRANCISCO DE BOGOTA	3725	2
1407	SANTA ROSA	3730	1
1408	CUATRO ESQUINAS	3730	2
1409	SIN ZONA	3735	0
1410	SANTA ROSA DE FLANDES	3740	1
1411	VILLA NUEVA	3740	2
1412	SANTA ROSA DE QUIJOS	3745	1
1413	CASCABEL	3745	2
1414	SIN ZONA	3750	0
1415	SANTA RUFINA	3755	1
1416	LOZUMBE	3755	2
1417	SANTA SUSANA DE CHIVIAZA	3760	1
1418	LA ESPERANZA	3760	2
1419	PUPUNAS	3760	3
1420	SANTA TERESITA	3765	1
1421	TUNDURAMA	3765	2
1422	COLLINGORA	3765	3
1423	SIN ZONA	3770	0
1424	SANTIAGO	3775	1
1425	TOTORAS	3775	2
1426	VOTO EN CASA	3775	89
1427	SIN ZONA	3780	0
1428	ZARAYACU	3785	1
1429	PACAYACU	3785	2
1430	MORETECOCHA	3785	3
1431	JATUN MOLINO	3785	4
1432	SANTIAK	3785	5
1433	ACHUAR	3785	6
1434	RAYAYACU	3785	7
1435	PIWIRI	3785	8
1436	GUARANI	3785	9
1437	UYUIMI	3785	10
1438	LLANCHAMA COCHA	3785	11
1439	SIN ZONA	3790	0
1440	SAYAUSI	3795	1
1441	SAN MIGUEL	3795	2
1442	BELLAVISTA	3795	3
1443	SIN ZONA	3800	0
1444	SELVA ALEGRE	3805	1
1445	PALMA REAL	3805	2
1446	SIN ZONA	3810	0
1447	SIN ZONA	3815	0
1448	SIN ZONA	3820	0
1449	SEVILLA DON BOSCO	3830	1
1450	SAN LUIS DE ININKIS	3830	2
1451	UUNT WICHIM	3830	3
1452	SANTA ROSA	3830	4
1453	UUNT SUANTS	3830	5
1454	MUTINTS	3830	6
1455	PANKINTS CUTUCU	3830	7
1456	MIAZAL	3830	8
1457	SHUAR KURINUNKA	3830	9
1458	SAN JOSE DE KUSUIM	3830	10
1459	UCHICH SUANTS	3830	11
1460	TSENKUSH	3830	12
1461	TUYUNTZA NORTE	3830	13
1462	CENTRO NUWENTS	3830	15
1463	UYUNTS	3830	16
1464	NUMPAIM	3830	17
1465	DON BOSCO	3830	18
1466	CHAPIS	3830	19
1467	ANTUASH	3830	20
1468	COMUNIDAD DE SANTA ANA	3830	21
1469	SHAGLLI	3835	1
1470	HUERTAS	3835	2
1471	PUCULCAY	3835	3
1472	SIN ZONA	3840	0
1473	SIN ZONA	3845	0
1474	SIDCAY	3850	1
1475	BIBIN	3850	2
1476	ALTOS DE MACHANGARA	3850	3
1477	SIMIATUG	3860	1
1478	MINDINA	3860	2
1479	SANTA TERESA	3860	3
1480	INGAPIRCA	3860	4
1481	TALAHUA	3860	5
1482	SININCAY	3870	1
1483	CRUCE DEL CARMEN	3870	2
1484	SAN JOSE DE BALZAY	3870	3
1485	SIN ZONA	3875	0
1486	SUA/BOCANA	3880	1
1487	MUCHIN	3880	2
1488	SIN ZONA	3885	0
1489	SIN ZONA	3890	0
1490	SIN ZONA	3900	0
1491	SIN ZONA	3905	0
1492	SIMON BOLIVAR	3915	1
1493	JUNTAS DEL PACIFICO	3915	2
1494	SUBE Y BAJA	3915	3
1495	LIMONCITO	3915	4
1496	LA FRUTILLA	3915	5
1497	SAN CARLOS DE LIMON	3920	1
1498	NUMPATKAIN	3920	2
1499	WAAPIS	3920	3
1500	SIN ZONA	3925	0
1501	SIN ZONA	3930	0
1502	TACAMOROS	3935	1
1503	LA DELICIA	3935	2
1504	PANDUANA	3935	3
1505	SIN ZONA	3940	0
1506	SIN ZONA	3945	0
1507	TAMBILLO	3955	1
1508	EL PROGRESO	3955	2
1509	TAMBILLO	3960	1
1510	EL MURCO	3960	2
1511	SIN ZONA	3965	0
1512	TAQUIL /MIGUEL RIOFRIO	3970	1
1513	CERA	3970	3
1514	SIN ZONA	3975	0
1515	TARQUI	3980	1
1516	TUTUPALI BAJO	3980	2
1517	GULLANZHAPA	3980	3
1518	TARQUI	3985	1
1519	PUTUIMI	3985	2
1520	SAN JACINTO	3985	3
1521	SAN PEDRO	3985	4
1522	SIN ZONA	3990	0
1523	TELIMBELA	3995	1
1524	UNION DE TIANDIAGOTE	3995	2
1525	TABLAS LA FLORIDA	3995	3
1526	TENDALES	4000	1
1527	BAJO ALTO	4000	2
1528	TNTE. HUGO ORTIZ	4005	1
1529	LA MARISCAL	4005	2
1530	BOAYACU	4005	3
1531	TIMBARA	4010	1
1532	ROMERILLOS BAJOS	4010	2
1533	LA PITUCA	4010	3
1534	TINGO	4015	1
1535	EL PROGRESO	4015	2
1536	PUEMBO	4015	3
1537	TIXAN	4030	1
1538	COCANES	4030	2
1539	SIN ZONA	4035	0
1540	TOBAR DONOSO	4040	1
1541	EL BABOSO	4040	2
1542	SIN ZONA	4045	0
1543	SIN ZONA	4050	0
1544	TONCHIGUE	4055	1
1545	QUITITO	4055	2
1546	SAME	4055	3
1547	EL CABITO	4055	4
1548	MACARÁ	4055	5
1549	ESTERO ANCHO	4055	6
1550	TOTORAS	4065	1
1551	HUACHI TOTORAS	4065	2
1552	SIN ZONA	4070	0
1553	TULULBI /RICAURTE	4075	1
1554	LA CEIBA	4075	2
1555	CENTRO AWA PAMBILAR	4075	3
1556	CENTRO AWA GUADUALITO	4075	4
1557	BALSAREÑO	4075	5
1558	SIN ZONA	4080	0
1559	TUMBACO	4085	1
1560	TOLA GRANDE	4085	2
1561	LA MORITA	4085	3
1562	TOLA CHICA	4085	4
1563	COLLAQUI	4085	5
1564	TUPIGACHI	4090	1
1565	LA FLORENCIA	4090	2
1566	SIN ZONA	4095	0
1567	CPL AZUAY N° 1	4095	61
1568	SIN ZONA	4100	0
1569	TUTUPALI	4105	1
1570	SAYUPAMBA	4105	2
1571	LA ESPERANZA	4105	3
1572	SIN ZONA	4110	0
1573	SIN ZONA	4115	0
1574	SIN ZONA	4120	0
1575	SIN ZONA	4125	0
1576	SIN ZONA	4130	0
1577	ULBA	4135	1
1578	VIZCAYA	4135	2
1579	SIN ZONA	4145	0
1580	SIN ZONA	4150	0
1581	SIN ZONA	4155	0
1582	SIN ZONA	4160	0
1583	SIN ZONA	4165	0
1584	TELEMBI	4170	1
1585	LOMA LINDA	4170	2
1586	CORRIENTE GRANDE	4170	3
1587	JEYAMBI	4170	4
1588	GUALPI DEL CAYAPAS	4170	5
1589	SIN ZONA	4185	0
1590	VALLADOLID	4195	1
1591	TAPALA	4195	2
1592	FATIMA	4195	3
1593	VALLE	4200	1
1594	CHILCAPAMBA	4200	2
1595	GUALALCAY	4200	3
1596	SIN ZONA	4205	0
1597	VICENTINO	4210	1
1598	GUATUNUMÁ	4210	2
1599	LA VICTORIA	4215	1
1600	RIO NEGRO	4215	2
1601	SIN ZONA	4220	0
1602	SIN ZONA	4225	0
1603	SIN ZONA	4230	0
1604	SIN ZONA	4235	0
1605	SIN ZONA	4240	0
1606	SIN ZONA	4275	0
1607	SIN ZONA	4280	0
1608	SIN ZONA	4290	0
1609	YASUNI	4295	1
1610	FRONTERAS DEL ECUADOR	4295	2
1611	YAUPI	4300	1
1612	YAAP	4300	2
1613	TUMPAIM	4300	3
1614	SANTIAGO TUKUP	4300	4
1615	SIN ZONA	4305	0
1616	SIN ZONA	4310	0
1617	SIN ZONA	4325	0
1618	ZAPOTAL	4330	1
1619	NUEVO ZAPOTAL	4330	2
1620	TARIRA	4330	3
1621	AGUAS FRIAS DE MEDELLIN	4330	4
1622	ZHIDMAD	4340	1
1623	SAN JOSE DE LALCOTE	4340	2
1624	SIN ZONA	4345	0
1625	SIN ZONA	4360	0
1626	ZUMBAHUA	4365	1
1627	LA COCHA	4365	2
1628	TIGUA WANAPAMPA	4365	3
1629	SIN ZONA	4385	0
1630	SIN ZONA	4415	0
1631	SIN ZONA	4420	0
1632	SIN ZONA	4425	0
1633	SIN ZONA	4430	0
1634	PUERTO LIMÓN	4440	1
1635	SANTA CECILIA DE PUPUSA	4440	2
1636	SAN REMO	4440	3
1637	VICENTE ROCAFUERTE	4440	4
1638	EL PROGRESO	4440	5
1639	COPALITO	4440	6
1640	SAN JUAN	4440	7
1641	SIN ZONA	4445	0
1642	SIN ZONA	4450	0
1643	SIN ZONA	4455	0
1644	SIN ZONA	4460	0
1645	SANTO DOMINGO DE ONZOLE	4465	1
1646	COLON DE ONZOLE	4465	2
1647	CHACHI CAPULÍ	4465	3
1648	CHACHI GUALPÍ DE ONZOLE	4465	4
1649	HOJAS BLANCAS	4465	5
1650	HOJAS BLANCAS CHACHI	4465	6
1651	SIN ZONA	4475	0
1652	SIN ZONA	4480	0
1653	SIN ZONA	4485	0
1654	SIN ZONA	4490	0
1655	SIN ZONA	4495	0
1656	SIN ZONA	4500	0
1657	SAN FRANCISCO DEL VERGEL	4505	1
1658	SAN JUAN DE PUNCHES	4505	2
1659	SAN MARTIN DE PORRES	4505	3
1660	SIMON BOLIVAR	4510	1
1661	CHAPINTZA	4510	2
1662	SHARUPI	4510	3
1663	SAN CARLOS	4510	4
1664	CHICO COPATAZA	4510	5
1665	COPATAZA	4510	6
1666	CHUWITAYU	4510	7
1667	ANKUASH	4510	8
1668	TSURAKU	4510	9
1669	SIN ZONA	4515	0
1670	SIN ZONA	4520	0
1671	TORATA	4525	1
1672	EL GUAYABO	4525	2
1673	SIN ZONA	4530	0
1674	SIN ZONA	4535	0
1675	SIN ZONA	4540	0
1676	MILAGROS	4545	1
1677	EL GUANDO	4545	2
1678	SIN ZONA	4550	0
1679	SIN ZONA	4555	0
1680	SIN ZONA	4560	0
1681	SIN ZONA	4565	0
1682	NUEVO PARAISO	4570	1
1683	YAWI	4570	2
1684	SELVA ALEGRE	4570	3
1685	PUMPUENTSA	4575	1
1686	WAZAKENTZA	4575	2
1687	MASHUMARENTZA	4575	3
1688	ACHUAR SAAPAPENTSA	4575	4
1689	SEBASTIAN	4575	5
1690	ACHUAR WICHIM	4575	6
1691	JUYUKAMENTSA	4575	7
1692	COMUNIDAD ACHUAR SETUCH	4575	8
1693	COMUNIDAD ACHUAR KUPIT	4575	9
1694	SAN JUAN DE MUYUNA	4580	1
1695	CALVARIO	4580	2
1696	WAYRAYAKU	4580	3
1697	SIN ZONA	4585	0
1698	SIN ZONA	4590	0
1699	SIN ZONA	4595	0
1700	SIN ZONA	4600	0
1701	SIN ZONA	4605	0
1702	SIN ZONA	4610	0
1703	SIN ZONA	4615	0
1704	SIN ZONA	4620	0
1705	10 DE AGOSTO	4625	1
1706	SALINAS	4625	2
1707	SAN PEDRO (EL CONDOR)	4625	3
1708	RECINTO ORELLANA	4625	4
1709	10 DE AGOSTO	4630	1
1710	WAMANÍ	4630	2
1711	WAWA SUMACO	4630	3
1712	PACTO SUMACO	4630	4
1713	CHALLWAYAKU	4630	5
1714	MONTERREY	4635	1
1715	SAN MIGUEL DE GUABAL	4635	2
1716	SIN ZONA	4640	0
1717	SIN ZONA	4645	0
1718	LA CUCA	4650	1
1719	LOS GUAYACANES	4650	2
1720	SIN ZONA	4655	0
1721	NUEVA TRONCAL	4740	1
1722	LOS ANGELES	4740	2
1723	LOS MADEROS	4740	3
1724	MUSHUK KAWSAY	4740	4
1725	KUYLLIS	4740	5
1726	SANSAHUARI	4745	1
1727	UNIÓN NACIONAL	4745	2
1728	SOSOTE	4750	1
1729	EL HIGUERON	4750	2
1730	SIN ZONA	4755	0
1731	LA MAGDALENA	4760	1
1732	18 DE NOVIEMBRE	4760	2
1733	VOTO EN CASA	4760	89
1734	SIN ZONA	4765	0
1735	SIN ZONA	5005	0
1736	ALAUSI	5010	1
1737	NIZAG	5010	2
1738	CHIMBACALLE	5015	1
1739	ALPAHUASI	5015	2
1740	LA MEXICO	5015	3
1741	LOS ANDES	5015	4
1742	LULUNCOTO	5015	5
1743	PIO XII	5015	6
1744	SIN ZONA	5020	0
1745	SIN ZONA	5025	0
1746	ANDRES DE VERA	5030	1
1747	EL FLORON	5030	2
1748	SAN ALEJO	5030	3
1749	SAN GREGORIO	5030	4
1750	URUGUAY	5030	5
1751	VOTO EN CASA	5030	89
1752	ANGEL POLIVIO CHAVEZ	5035	1
1753	GUACHANA	5035	2
1754	SAN JUAN DE LLULLUNDONGO	5035	3
1755	VOTO EN CASA	5035	89
1756	SIN ZONA	5040	0
1757	ATOCHA FICOA	5045	1
1758	ATOCHA	5045	2
1759	SIN ZONA	5050	0
1760	SIN ZONA	5055	0
1761	AZOGUES	5065	1
1762	LA PLAYA	5065	2
1763	FERROVIARIA	5065	3
1764	CIUDADELA DEL CHOFER	5065	4
1765	UCHUPUCUN	5065	5
1766	CPL-CAÑAR NRO.2	5065	61
1767	VOTO EN CASA	5065	89
1768	ARCHIDONA	5070	1
1769	SANTA RITA	5070	2
1770	CPL NAPO N° 1	5070	61
1771	SIN ZONA	5075	0
1772	SIN ZONA	5080	0
1773	SIN ZONA	5085	0
1774	SIN ZONA	5090	0
1775	SIN ZONA	5095	0
1776	BALZAR	5100	1
1777	LA GUAYAQUIL	5100	2
1778	SIN ZONA	5105	0
1779	VOTO EN CASA	5105	89
1780	SIN ZONA	5115	0
1781	SIN ZONA	5120	0
1782	SIN ZONA	5125	0
1783	SIN ZONA	5130	0
1784	SIN ZONA	5135	0
1785	CAI CUENCA 	5135	61
1786	MACHÁNGARA	5140	1
1787	CAPULISPAMBA	5140	2
1788	CHALLUABAMBA MACHANGARA	5140	3
1789	OCHOA LEON	5140	4
1790	QUINTA CHICA	5140	5
1791	SIN ZONA	5145	0
1792	CALCETA	5150	1
1793	SAN PABLO DE SEVERINO	5150	2
1794	SIN ZONA	5155	0
1795	CAÑAR	5160	1
1796	QUILLOAC	5160	2
1797	NAR	5160	3
1798	CRS-CAÑAR N°1	5160	61
1799	SIN ZONA	5165	0
1800	SIN ZONA	5170	0
1801	SIN ZONA	5175	0
1802	SIN ZONA	5180	0
1803	SIN ZONA	5185	0
1804	SIN ZONA	5190	0
1805	SIN ZONA	5195	0
1806	SIN ZONA	5200	0
1807	SIN ZONA	5205	0
1808	CAI- ESMERALDAS 	5205	61
1809	VOTO EN CASA	5205	89
1810	5 DE AGOSTO	5210	1
1811	PROPICIA 1	5210	2
1812	PROPICIA 4	5210	3
1813	VOTO EN CASA	5210	89
1814	CLEMENTE BAQUERIZO	5215	1
1815	PUERTA NEGRA	5215	2
1816	VOTO EN CASA	5215	89
1817	COTOCOLLAO	5220	1
1818	23 DE JUNIO	5220	2
1819	JARRIN - LOMA HERMOSA	5220	3
1820	QUITO NORTE	5220	4
1821	THOMAS	5220	5
1822	CRS MASCULINO PICHINCHA Nº 2	5220	61
1823	VOTO EN CASA	5220	89
1824	SIN ZONA	5225	0
1825	SIN ZONA	5230	0
1826	SIN ZONA	5240	0
1827	CHILLANES	5245	1
1828	ACHIN	5245	2
1829	PALMIRA	5245	3
1830	SAN VICENTE DE POROTOPAMBA	5245	4
1831	SAN JOSÉ DE GUAYABAL	5245	5
1832	ARRAYANPAMBA	5245	6
1833	SANTA ROSA DE CERRITOS	5245	7
1834	UNDUSHI	5245	8
1835	SIN ZONA	5250	0
1836	VOTO EN CASA	5250	89
1837	SIN ZONA	5255	0
1838	CHILLOGALLO	5260	1
1839	BUENA VENTURA	5260	2
1840	EL TRANSITO	5260	3
1841	SAN LUIS	5260	4
1842	SANTA MARTHA	5260	5
1843	VENCEREMOS	5260	6
1844	VOTO EN CASA	5260	89
1845	COLON	5265	1
1846	PACHINCHE EN MEDIO	5265	2
1847	LOS ÁNGELES	5265	3
1848	VOTO EN CASA	5265	89
1849	CATAMAYO	5270	1
1850	CHICHACA	5270	2
1851	SIN ZONA	5275	0
1852	12 DE MARZO	5280	1
1853	FORESTAL	5280	2
1854	VOTO EN CASA	5280	89
1855	DR. CAMILO PONCE E.	5285	1
1856	SAN JOSÉ	5285	2
1857	SIN ZONA	5290	0
1858	EL ANGEL	5295	1
1859	INGUEZA	5295	2
1860	EL CARMEN	5300	1
1861	LA BRAMADORA	5300	2
1862	EL PORVENIR	5300	3
1863	ALEJANDRINO VELÁSQUEZ	5300	4
1864	SAN PABLO RIO DE ORO	5300	5
1865	FLOR DE MANABI	5300	6
1866	BOCA DE ONZA	5300	7
1867	SAN RAMON DE TIGRILLO	5300	8
1868	EL CORAZON	5305	1
1869	QUISHPE	5305	2
1870	SIN ZONA	5310	0
1871	EL ROSARIO	5315	1
1872	LANGOS PANAMERICANA	5315	2
1873	VOTO EN CASA	5315	89
1874	SIN ZONA	5320	0
1875	EL VECINO	5330	1
1876	MIRAFLORES	5330	2
1877	LA CATÓLICA	5330	3
1878	VOTO EN CASA	5330	89
1879	ESMERALDAS	5335	1
1880	ISLA LUIS VARGAS TORRES	5335	2
1881	CPL ESMERALDAS N° 1	5335	61
1882	VOTO EN CASA	5335	89
1883	EL GUABO	5340	1
1884	TILLALES	5340	2
1885	EL RETIRO	5340	3
1886	SIN ZONA	5345	0
1887	ECHEANDIA	5350	1
1888	SABANETILLAS	5350	2
1889	FEBRES CORDERO	5355	1
1890	PATRIA ECUATORIANA	5355	2
1891	BARRIO PUERTO LISA	5355	3
1892	BATALLÓN DEL SUBURBIO	5355	4
1893	HOSPITAL GUAYAQUIL	5355	5
1894	LA Q	5355	6
1895	CUARTEL CUATRO	5355	7
1896	DIOS PATRIA Y LIBERTAD	5355	8
1897	ESTERO SALADO	5355	9
1898	COLEGIO GARCIA GOYENA	5355	10
1899	LA COLMENA	5355	11
1900	CISNE 2 - LA PISTA	5355	12
1901	PUENTE PATRIA	5355	13
1902	VIRGEN DE FATIMA	5355	14
1903	VOTO EN CASA	5355	89
1904	SIN ZONA	5360	0
1905	VOTO EN CASA	5360	89
1906	COLIMES	5365	1
1907	EL RELICARIO	5365	2
1908	YANUNCAY	5370	1
1909	MISICATA	5370	2
1910	CDLA SIMON BOLIVAR	5370	3
1911	GABRIEL I VEINTIMILLA	5375	1
1912	INTI CHURI - CASAICHE	5375	2
1913	CPL BOLIVAR N° 1	5375	61
1914	VOTO EN CASA	5375	89
1915	GARCIA MORENO	5380	1
1916	GUAYAQUIL	5380	2
1917	CAI - VARONES GUAYAQUIL	5380	61
1918	SIN ZONA	5385	0
1919	SIN ZONA	5390	0
1920	SIN ZONA	5395	0
1921	SIN ZONA	5400	0
1922	SIN ZONA	5405	0
1923	GONZALEZ SUAREZ	5415	1
1924	CHAPUEL	5415	2
1925	EL BOSQUE	5415	3
1926	CPL CARCHI N°1	5415	61
1927	VOTO EN CASA	5415	89
1928	GUALACEO	5420	1
1929	BULLCAY	5420	2
1930	VOTO EN CASA	5420	89
1931	GUALAQUIZA	5425	1
1932	TUCUMBAZA	5425	2
1933	PROVEEDURIA	5425	3
1934	GUAMOTE	5430	1
1935	PULL CHICO	5430	2
1936	JATUN PAMBA	5430	3
1937	LAIME SAN CARLOS	5430	4
1938	TIOCAJAS PALACIO HUATANA	5430	5
1939	SIN ZONA	5440	0
1940	SIN ZONA	5445	0
1941	CPL  TUNGURAHUA N° 1	5445	61
1942	VOTO EN CASA 1	5445	89
1943	SIN ZONA	5450	0
1944	SIN ZONA	5455	0
1945	IGNACIO FLORES	5465	1
1946	PALOPO CENTRO	5465	2
1947	BALAO	5470	1
1948	CIEN FAMILIAS	5470	2
1949	CHAMBO	5475	1
1950	PANTAÑO	5475	2
1951	GUAYLLABAMBA	5475	3
1952	FLAVIO ALFARO	5480	1
1953	LA CRESPA	5480	2
1954	SAN JOSE DE TRIPA DE POLLO	5480	3
1955	LA CODICIA	5480	4
1956	LA LAGUNA DE CUCHARA	5480	5
1957	EL DESCANSO DE LOS ROMEROS	5480	6
1958	LA MATUTINA	5480	7
1959	LA AVISPA	5480	8
1960	JIPIJAPA	5485	1
1961	SANCAN	5485	2
1962	CRS MASCULINO MANABÍ N°2	5485	61
1963	JORDAN	5490	1
1964	LA COMPANIA	5490	2
1965	VOTO EN CASA	5490	89
1966	SIN ZONA	5500	0
1967	JUNIN	5505	1
1968	MONTAÑITA	5505	2
1969	SIN ZONA	5510	0
1970	SIN ZONA	5515	0
1971	SIN ZONA	5520	0
1972	SIN ZONA	5525	0
1973	LA LIBERTAD	5535	1
1974	LA CANTERA	5535	2
1975	LA ERMITA	5535	3
1976	LOS LIBERTADORES	5535	4
1977	LA MAGDALENA	5540	1
1978	EL PINTADO	5540	2
1979	LA ATAHUALPA	5540	3
1980	LOS DOS PUENTES	5540	4
1981	PRIMERO DE MAYO	5540	5
1982	VILLAFLORA	5540	6
1983	LA MATRIZ	5545	1
1984	MIRAFLORES	5545	2
1985	LA MATRIZ	5550	1
1986	PUNGAL GRANDE	5550	2
1987	SIN ZONA	5555	0
1988	VOTO EN CASA	5555	89
1989	SIN ZONA	5560	0
1990	LA PROVIDENCIA	5565	1
1991	RAYITO DE LUZ	5565	2
1992	LA IBERIA	5565	3
1993	LOS VERGELES	5565	4
1994	VOTO EN CASA	5565	89
1995	ESTEROS	5570	1
1996	EL PALMAR	5570	2
1997	ALTAGRACIA	5570	3
1998	LA PRADERA	5570	4
1999	VOTO EN CASA	5570	89
2000	LEONIDAS PLAZA G.	5580	1
2001	SAN AGUSTÍN	5580	2
2002	CRS MASCULINO MANABI Nº 3	5580	61
2003	LETAMENDI	5585	1
2004	4 DE NOVIEMBRE	5585	2
2005	VIRGEN DEL SOTO	5585	3
2006	SIN ZONA	5590	0
2007	VOTO EN CASA	5590	89
2008	LOURDES	5595	1
2009	LAS COCHAS	5595	2
2010	SAN VICENTE DEL RIO	5595	3
2011	SIN ZONA	5600	0
2012	SIN ZONA	5605	0
2013	LA TRONCAL	5610	1
2014	VOLUNTAD DE DIOS	5610	2
2015	COCHANCAY	5610	3
2016	ROBERTO ISAIAS	5610	4
2017	JAIME ROLDOS	5610	5
2018	JULIO MARIA MATOVELLE	5610	6
2019	SIN ZONA	5615	0
2020	CPL MORONA SANTIAGO Nº 1	5615	61
2021	VOTO EN CASA	5615	89
2022	SIN ZONA	5620	0
2023	SIN ZONA	5625	0
2024	CPL EL ORO No.1	5625	61
2025	VOTO EN CASA	5625	89
2026	SIN ZONA	5630	0
2027	MANTA - PEDRO FERMIN	5635	1
2028	SANTA MARTHA	5635	2
2029	UNIVERSIDAD	5635	3
2030	VOTO EN CASA	5635	89
2031	MONTALVO /SABANETA	5640	1
2032	LA PRETORIA	5640	2
2033	VOTO EN CASA	5640	89
2034	SIN ZONA	5645	0
2035	SIN ZONA	5650	0
2036	SIN ZONA	5655	0
2037	MILAGRO	5660	1
2038	CRNL. ENRIQUE VALDEZ	5660	2
2039	ESTATAL	5660	3
2040	ERNESTO SEMINARIO	5660	4
2041	OTTO AROSEMENA	5660	5
2042	CHIRIJOS	5660	6
2043	CAMILO ANDRADE	5660	7
2044	MILAGRO NORTE	5660	8
2045	DIEZ DE AGOSTO	5660	9
2046	VOTO EN CASA 1	5660	89
2047	MONTECRISTI	5665	1
2048	LOS BAJOS DE PECHICHE	5665	2
2049	BAJO DE LA PALMA	5665	4
2050	PILE	5665	5
2051	VOTO EN CASA	5665	89
2052	MUISNE	5670	1
2053	NUEVO MUISNE	5670	3
2054	SAN PEDRO DE BILSA	5670	4
2055	SIN ZONA	5675	0
2056	MACARA	5680	1
2057	ALGODONAL	5680	2
2058	MIRA	5685	1
2059	MASCARILLA	5685	2
2060	HATO DE MIRA	5685	3
2061	PUCARA	5690	1
2062	SARAYUNGA	5690	2
2063	GRAMALOTE	5690	3
2064	CERRO NEGRO	5690	4
2065	PELINCAY	5690	5
2066	CALIGUIÑA	5690	7
2067	LA DOLOROSA	5690	8
2068	LAS PALMAS	5690	9
2069	SANTA CECILIA	5690	10
2070	SAN ANTONIO DE ÑUGRO	5690	11
2071	SIN ZONA	5695	0
2072	SIN ZONA	5700	0
2073	NARANJITO	5705	1
2074	SAN FRANCISCO	5705	2
2075	NUEVA LOJA	5710	1
2076	PUERTO AGUARICO	5710	2
2077	LA PISTA	5710	3
2078	CPL SUCUMBiOS Nº 1	5710	61
2079	VOTO EN CASA	5710	89
2080	CHILLA	5715	1
2081	PLAYAS DE DAUCAY	5715	2
2082	PEJEYACU	5715	3
2083	DUMARI	5715	4
2084	CARABOTA	5715	5
2085	SIN ZONA	5720	0
2086	SIN ZONA	5725	0
2087	ABRAHAM CALAZACON	5730	1
2088	15 DE SEPTIEMBRE	5730	2
2089	LAS PLAYAS	5730	3
2090	LOS COLONOS	5730	4
2091	LUZ DEL DIA	5730	5
2092	NUEVA AURORA	5730	6
2093	PLAN DE VIVIENDA	5730	7
2094	PROLETARIADO	5730	8
2095	VILLA FLORIDA	5730	9
2096	SAN MIGUEL	5730	10
2097	VOTO EN CASA	5730	89
2098	PEDRO CARBO	5735	1
2099	VILLAO	5735	2
2100	SIN ZONA	5740	0
2101	SIN ZONA	5745	0
2102	PIMAMPIRO	5750	1
2103	CHALGUAYACO	5750	2
2104	PUEBLO NUEVO DE YUQUIN	5750	3
2105	EL INCA	5750	4
2106	SIN ZONA	5755	0
2107	SIN ZONA	5760	0
2108	SIN ZONA	5765	0
2109	SIN ZONA	5770	0
2110	PAUTE	5775	1
2111	VILLAFLOR	5775	2
2112	ZHUMIR	5775	3
2113	SIN ZONA	5780	0
2114	VOTO EN CASA	5780	89
2115	SIN ZONA	5785	0
2116	SIN ZONA	5790	0
2117	PORTOVIEJO - PARQUE CENTRAL	5795	1
2118	RAFAEL MARIA MENDOZA	5795	2
2119	SIN ZONA	5800	0
2120	VOTO EN CASA	5800	89
2121	SIN ZONA	5805	0
2122	VOTO EN CASA	5805	89
2123	SIN ZONA	5810	0
2124	EL COCA	5815	1
2125	SAN JOSE DEL COCA	5815	2
2126	FLOR DE ORIENTE	5815	3
2127	FLOR DE PANTANO	5815	4
2128	AMAZONAS	5815	5
2129	JORGE RODRIGUEZ ROMAN	5815	6
2130	VOTO EN CASA	5815	89
2131	PUJILI	5820	1
2132	JUIGUA YACYBAMBA	5820	2
2133	SIN ZONA	5825	0
2134	VOTO EN CASA	5825	89
2135	SIN ZONA	5830	0
2136	VOTO EN CASA	5830	89
2137	SIN ZONA	5835	0
2138	PISHILATA	5840	1
2139	SAN VICENTE	5840	2
2140	LA JOYA	5840	3
2141	TECHO PROPIO - TIUGUA	5840	4
2142	PICOAZA	5845	1
2143	MEJIA	5845	2
2144	HIGUERON ADENTRO	5845	3
2145	VOTO EN CASA	5845	89
2146	SIN ZONA	5850	0
2147	QUEVEDO	5855	1
2148	QUEVEDO NORTE	5855	2
2149	VOTO EN CASA	5855	89
2150	BOMBOLI	5860	1
2151	LAS DELICIAS	5860	2
2152	NUEVO ISRAEL	5860	3
2153	AVISPA CHILA	5860	4
2154	LIBERTAD LOJANA	5860	5
2155	EL PORTÓN	5860	6
2156	ACACIAS	5860	7
2157	CHE GUEVARA	5860	8
2158	CIUDAD NUEVA	5860	9
2159	ECHANIQUE	5860	10
2160	JUAN EULOGIO	5860	11
2161	LOS ROSALES	5860	12
2162	TERMINAL TERRESTRE	5860	13
2163	UCOM	5860	14
2164	COLORADOS DEL BUA	5860	15
2165	SAN PABLO DE CHILA	5860	16
2166	VOTO EN CASA	5860	89
2167	RIO VERDE	5865	1
2168	JULIO MORENO ESPINOZA	5865	2
2169	CRISTO VIVE	5865	3
2170	LA PEPSI	5865	4
2171	LA QUEVEDO	5865	5
2172	SANTA MARTHA -2-	5865	6
2173	SANTA MARTHA -1-	5865	7
2174	20 DE OCTUBRE	5865	8
2175	AQUEPÍ	5865	9
2176	LA CADENA	5865	10
2177	LAS PALMERAS	5865	11
2178	CPL SANTO DOMINGO Nº 1	5865	61
2179	CPL SANTO DOMINGO Nº 2	5865	62
2180	VOTO EN CASA	5865	89
2181	RIO TOACHI	5870	1
2182	EL PLACER DEL TOACHI	5870	2
2183	LAS MERCEDES	5870	3
2184	EL PARAISO	5870	4
2185	BRASILIA DEL TOACHI	5870	5
2186	VELASCO IBARRA	5870	6
2187	LIBERTAD DEL TOACHI	5870	7
2188	10 DE AGOSTO	5870	8
2189	LA ALIANZA	5870	9
2190	SIN ZONA	5875	0
2191	SIN ZONA	5880	0
2192	ROCAFUERTE	5885	1
2193	EL RESBALÓN	5885	4
2194	SAN ELOY	5885	5
2195	SIN ZONA	5890	0
2196	ROSA ZARATE	5895	1
2197	LA SEXTA	5895	2
2198	SAN RAMON	5895	4
2199	LA Y DE LA LAGUNA DE HERRERA	5895	5
2200	HERRERA	5895	7
2201	CUPA	5895	8
2202	NUEVO QUININDÉ	5895	9
2203	PUEBLO NUEVO	5895	10
2204	SIN ZONA	5900	0
2205	SIN ZONA	5905	0
2206	SIN ZONA	5910	0
2207	SIN ZONA	5915	0
2208	CPL IMBABURA Nº 1	5915	61
2209	CAI IBARRA	5915	62
2210	VOTO EN CASA	5915	89
2211	SIN ZONA	5920	0
2212	VOTO EN CASA	5920	89
2213	SAMBORONDON	5925	1
2214	EL ROSARIO	5925	2
2215	SIN ZONA	5930	0
2216	SIN ZONA	5940	0
2217	SIN ZONA	5945	0
2218	SIN ZONA	5950	0
2219	SIN ZONA	5955	0
2220	VOTO EN CASA	5955	89
2221	SAN FRANCISCO	5960	1
2222	MANZANO GUARANGUI	5960	2
2223	VOTO EN CASA	5960	89
2224	SIN ZONA	5965	0
2225	SAN JOSE	5970	1
2226	EL CAPULÍ	5970	2
2227	CANCHAGUANO	5970	3
2228	SIN ZONA	5975	0
2229	SIN ZONA	5980	0
2230	SIN ZONA	5990	0
2231	SAN MIGUEL	5995	1
2232	QUISACOTO	5995	2
2233	VOTO EN CASA	5995	89
2234	SAN MIGUEL DE SALCEDO	6000	1
2235	CHAMBAPONGO	6000	2
2236	SAN FRANCISCO DE COLLANAS	6000	3
2237	SALACHE BARBAPAMBA	6000	4
2238	SAN SEBASTIAN	6010	1
2239	SAN PEDRO DEL CEBOLLAR	6010	2
2240	SIN ZONA	6015	0
2241	CPL LOJA N°1	6015	61
2242	VOTO EN CASA	6015	89
2243	SIN ZONA	6025	0
2244	SANTA ANA	6030	1
2245	PEMINCHE	6030	2
2246	CHAMUCAME	6030	3
2247	VISQUIJE	6030	4
2248	SANTA ELENA	6040	1
2249	SAN PABLO	6040	2
2250	OTTO AROSEMENA	6040	3
2251	AZUCAR	6040	4
2252	SAN VICENTE	6040	5
2253	BAÑOS DE SAN VICENTE	6040	6
2254	VOTO EN CASA	6040	89
2255	SANTA ISABEL	6045	1
2256	JUBONES	6045	3
2257	VOTO EN CASA	6045	89
2258	SANTA RITA	6055	1
2259	PUEBLITO (RIO GRANDE)	6055	2
2260	PUERTO EL MATE	6055	3
2261	ÑAUSE	6055	4
2262	QUEBRADA DEL BEJUCO	6055	5
2263	CARRASCO	6055	6
2264	TABLADA DE SÁNCHEZ	6055	7
2265	EL CEIBO	6055	8
2266	SAN PEDRO DE LIMÓN	6055	9
2267	SAN PEDRO DE ORO	6055	10
2268	PLATANALES	6055	11
2269	SIN ZONA	6060	0
2270	SANTO DOMINGO	6065	1
2271	CLEMENCIA DE MORA	6065	3
2272	30 DE JULIO -1-	6065	4
2273	VOTO EN CASA	6065	89
2274	SIN ZONA	6070	0
2275	SIN ZONA	6075	0
2276	SIN ZONA	6080	0
2277	SIGSIG	6085	1
2278	PIRUNCAY	6085	2
2279	SIN ZONA	6090	0
2280	SIN ZONA	6095	0
2281	MIRAFLORES	6100	1
2282	CELI ROMÁN	6100	3
2283	CLODOVEO	6100	4
2284	BELÉN	6100	5
2285	MENFIS-OBRAPIA	6100	6
2286	BOLONIA	6100	7
2287	GRAN COLOMBIA	6100	8
2288	TIERRAS COLORADAS	6100	9
2289	SIN ZONA	6105	0
2290	SUCUA	6110	1
2291	SAN PABLO	6110	2
2292	SAIP	6110	3
2293	VOTO EN CASA	6110	89
2294	SIN ZONA	6115	0
2295	VOTO EN CASA	6115	89
2296	SIN ZONA	6120	0
2297	PUERTO QUITO	6125	1
2298	SIMON BOLIVAR	6125	2
2299	LA ABUNDANCIA	6125	3
2300	SANTA MARIANITA	6125	4
2301	LAS MARAVILLAS	6125	5
2302	BUENOS AIRES	6125	6
2303	SIN ZONA	6130	0
2304	SIN ZONA	6135	0
2305	SHUSHUFINDI CENTRAL	6140	1
2306	MISS ECUADOR	6140	2
2307	CUMANDA	6140	3
2308	PROVINCIAS UNIDAS	6140	5
2309	SIN ZONA	6145	0
2310	TARQUI	6150	1
2311	ACUARELA - SAUCES	6150	2
2312	ALBORADA	6150	3
2313	ATARAZANA	6150	4
2314	CHONGON	6150	5
2315	LOS CEIBOS	6150	6
2316	COLINAS DE LA FLORIDA	6150	7
2317	MARTHA ROLDOS	6150	8
2318	EL CONDOR	6150	9
2319	JUAN MONTALVO	6150	10
2320	LA PROSPERINA	6150	11
2321	URDESA	6150	12
2322	QUINTO GUAYAS	6150	13
2323	SAN EDUARDO	6150	14
2324	URDENOR	6150	15
2325	NUEVA PROSPERINA	6150	16
2326	VÍA A LA COSTA	6150	17
2327	SABANA GRANDE	6150	18
2328	CONSUELO	6150	19
2329	MAPASINGUE ESTE	6150	20
2330	LOMAS DE LA FLORIDA	6150	21
2331	SAUCES OESTE	6150	22
2332	SAMANES	6150	23
2333	ALBORADA OESTE	6150	24
2334	ALBORADA ESTE	6150	25
2335	GUAYACANES	6150	26
2336	KENNEDY	6150	27
2337	MIRAFLORES	6150	28
2338	BELAVISTA-FERROVIARIA	6150	29
2339	GARZOTA	6150	30
2340	SOCIO VIVIENDA	6150	31
2341	LA FLORIDA	6150	32
2342	MAPASINGUE OESTE	6150	33
2343	CAI FEMENINO GUAYAQUIL 	6150	61
2344	VOTO EN CASA	6150	89
2345	CENTRO DE TARQUI	6155	1
2346	SAN PEDRO	6155	2
2347	JOCAY	6155	3
2348	MARIA AUXILIADORA NRO 2	6155	4
2349	VOTO EN CASA	6155	89
2350	SIN ZONA	6160	0
2351	VOTO EN CASA	6160	89
2352	TULCAN	6165	1
2353	LA ESTRELLITA	6165	2
2354	LAS GRADAS	6165	3
2355	VOTO EN CASA	6165	89
2356	TOSAGUA	6170	1
2357	EL TAMBO	6170	2
2358	EL JUNCO	6170	3
2359	CERRO VERDE	6170	4
2360	BOTIJAS AFUERA	6170	5
2361	CHIGUILPE	6175	1
2362	SAN GABRIEL DEL BABA	6175	2
2363	JULIO MORENO - SAN VICENTE DE AQUEPI	6175	3
2364	NUEVO CAMINO	6175	4
2365	UNIFICADOS	6175	5
2366	MARINA PEÑAHERRERA	6175	6
2367	NUEVO SANTO DOMINGO	6175	7
2368	ZARACAY	6180	1
2369	9 DE DICIEMBRE	6180	2
2370	SIN ZONA	6185	0
2371	SIN ZONA	6190	0
2372	SIN ZONA	6195	0
2373	JOYA DE LOS SACHAS	6200	1
2374	MARISCAL SUCRE	6200	2
2375	12 DE FEBRERO	6200	3
2376	EL ORO	6200	4
2377	VALDEZ/LIMONES/	6205	1
2378	TOLITA PAMPA DE ORO	6205	2
2379	SIN ZONA	6210	0
2380	VOTO EN CASA	6210	89
2381	SIN ZONA	6215	0
2382	SIN ZONA	6220	0
2383	VOTO EN CASA	6220	89
2384	VELASCO IBARRA	6225	1
2385	ATILIO VÉLEZ	6225	2
2386	29 DE OCTUBRE	6225	3
2387	SIN ZONA	6230	0
2388	CPL CHIMBORAZO Nº 1	6230	61
2389	CPL CHIMBORAZO N°3	6230	62
2390	CAI MASCULINO - RIOBAMBA	6230	63
2391	VENTANAS	6235	1
2392	LAS MALVINAS	6235	2
2393	MIRAFLORES	6235	3
2394	RINCÓN DEL CURA	6235	4
2395	VOTO EN CASA	6235	89
2396	VINCES	6245	1
2397	BALZAR DE VINCES	6245	2
2398	LA MECHA	6245	3
2399	MACUL	6245	4
2400	SIN ZONA	6250	0
2401	PLAYAS	6255	1
2402	SAN ANTONIO	6255	2
2403	DATA DE VILLAMIL	6255	3
2404	ENGABAO	6255	4
2405	PLAYAS NORTE	6255	5
2406	SIN ZONA	6260	0
2407	XIMENA	6265	1
2408	ESTEROS	6265	2
2409	ACACIAS-GUANGALA	6265	3
2410	FERTISA	6265	4
2411	HUANCAVILCA - COVIEM	6265	5
2412	ISLA TRINITARIA	6265	6
2413	PRADERA	6265	7
2414	LOS ALMENDROS - SAIBA	6265	8
2415	GUASMO SUR-LA PLAYITA	6265	9
2416	GUASMO NORTE	6265	10
2417	FLORESTA	6265	11
2418	MATERNIDAD DEL GUASMO	6265	12
2419	CENTENARIO	6265	13
2420	VALDIVIA - LAS TEJAS	6265	14
2421	JAIME ROLDÓS – LOS CLAVELES	6265	15
2422	MALVINAS	6265	16
2423	UNIÓN DE BANANEROS	6265	17
2424	LAS ESCLUSAS – STELLA MARIS	6265	18
2425	TRINIPUERTO	6265	19
2426	VOTO EN CASA	6265	89
2427	SIN ZONA	6270	0
2428	SIN ZONA	6275	0
2429	SIN ZONA	6280	0
2430	YAGUACHI NUEVO	6285	1
2431	CENTENARIO	6285	2
2432	SIN ZONA	6290	0
2433	YANZATZA	6295	1
2434	SAN SEBASTIAN	6295	2
2435	NUEVA ESPERANZA	6295	3
2436	VOTO EN CASA	6295	89
2437	SIN ZONA	6300	0
2438	SIN ZONA	6305	0
2439	VOTO EN CASA	6305	89
2440	SIN ZONA	6310	0
2441	CPL EL ORO Nº 2	6310	61
2442	ZUMBA	6315	1
2443	EL PROGRESO	6315	2
2444	BELLAVISTA	6315	3
2445	LA DIVERSION	6315	4
2446	LA GUAYUSA	6315	5
2447	GUARIMIZAL	6315	6
2448	LA PALMA	6315	7
2449	VOTO EN CASA	6315	89
2450	SIN ZONA	6320	0
2451	EL DORADO DE CASCALES	6325	1
2452	BERMEJO	6325	5
2453	TARUKA	6325	6
2454	PALENQUE	6330	1
2455	LA LIBERTAD	6330	2
2456	JAUNECHE	6330	3
2457	SIN ZONA	6335	0
2458	CALUMA /SAN ANTONIO	6340	1
2459	PASAGUA	6340	2
2460	YATUVI	6340	3
2461	SAN PABLO DE PITA	6340	4
2462	EL TAMBO	6345	1
2463	MARIA AUXILIADORA	6345	2
2464	PILCOPATA	6345	3
2465	S.MIGUEL DE LOS BANCOS	6350	1
2466	GANADEROS ORENSES	6350	2
2467	SAN BERNABE	6350	3
2468	RÍO BLANCO	6350	4
2469	EL PANGUI	6355	1
2470	KUNKI	6355	2
2471	UWENTS	6355	3
2472	OÑA	6360	1
2473	MORAS LOMA	6360	2
2474	SIN ZONA	6365	0
2475	SIN ZONA	6370	0
2476	SIN ZONA	6375	0
2477	ATACAMES	6380	1
2478	ESTERO DEL MEDIO	6380	2
2479	CHONE	6380	3
2480	VOTO EN CASA	6380	89
2481	SIN ZONA	6385	0
2482	HUAMBOYA	6390	1
2483	NAMAKIM	6390	2
2484	SHUAR PANKINTS	6390	3
2485	SANTA CLARA	6395	1
2486	SAN FRANCISCO DE PUNIN	6395	2
2487	PASCUALES	6405	1
2488	BASTIÓN POPULAR	6405	2
2489	EL PARAISO DE LA FLOR	6405	3
2490	LAS ORQUIDEAS - MUCHO LOTE	6405	4
2491	LOS VERGELES	6405	5
2492	MONTEBELLO	6405	6
2493	FLOR DE BASTIÓN	6405	7
2494	METROPOLIS	6405	8
2495	PUENTE LUCIA	6405	9
2496	SERGIO TORAL	6405	10
2497	MONTE SINAI	6405	11
2498	BALERIO ESTACIO	6405	12
2499	SAN FRANCISCO	6405	13
2500	CAPEIRA	6405	14
2501	CIUDAD VICTORIA	6405	15
2502	EL FORTÍN	6405	16
2503	CPL GUAYAS Nº 1-PABELLON-1	6405	61
2504	CPL GUAYAS Nº 1-PABELLON-3	6405	63
2505	CPL GUAYAS Nº 1-PABELLON-4	6405	64
2506	CPL GUAYAS Nº 1-PABELLON-5	6405	65
2507	CPL GUAYAS Nº 1-PABELLON-8	6405	66
2508	CPL GUAYAS Nº 1-PABELLON-9	6405	67
2509	CPL GUAYAS Nº 1-PABELLON-11	6405	69
2510	CPL GUAYAS Nº 1-PABELLON-12	6405	70
2511	CPL GUAYAS Nº 5	6405	71
2512	CRS MASCULINO GUAYAS Nº 4	6405	73
2513	CPL GUAYAS Nº 2	6405	74
2514	CPL GUAYAS Nº 1-PABELLON-6	6405	77
2515	CPL GUAYAS Nº 1-PABELLON-7	6405	78
2516	VOTO EN CASA 1	6405	89
2517	VOTO EN CASA 2	6405	90
2518	CRNL MARCELINO MARIDUENAS	6410	1
2519	LA ISLA	6410	2
2520	PEDRO VICENTE MALDONADO	6415	1
2521	LA CELICA	6415	2
2522	ANDOAS	6415	3
2523	SALCEDO LINDO	6415	4
2524	CUMANDA	6420	1
2525	SUNCAMAL	6420	3
2526	DELEG	6425	1
2527	BAYANDEL	6425	2
2528	HORNAPALA	6425	3
2529	PEDERNALES	6430	1
2530	SERRANO	6430	2
2531	CAÑAVERAL DEL NARANJO	6430	3
2532	PUNTA BLANCA	6430	4
2533	ESTERO SECO	6430	5
2534	SIN ZONA	6435	0
2535	SIN ZONA	6440	0
2536	SAN JUAN BOSCO	6445	1
2537	CALAGLAS	6445	2
2538	SIN ZONA	6450	0
2539	LORETO	6455	1
2540	ALTAMIRA	6455	2
2541	NARCISA DE JESUS	6460	1
2542	PETRILLO	6460	2
2543	SN JACINTO DE BUENA FE	6465	1
2544	FUMISA	6465	2
2545	LAS NAVES	6470	1
2546	JERUSALEN	6470	2
2547	SIN ZONA	6475	0
2548	SEVILLA DE ORO	6480	1
2549	CAIGUAS	6480	2
2550	CHIMUL	6480	3
2551	SIN ZONA	6485	0
2552	9 DE MAYO	6490	1
2553	KM. 15	6490	5
2554	VOTO EN CASA	6490	89
2555	OLMEDO	6495	1
2556	LA FLORIDA	6495	2
2557	SIN ZONA	6500	0
2558	SIN ZONA	6505	0
2559	VOTO EN CASA	6505	89
2560	SIN ZONA	6510	0
2561	VOTO EN CASA	6510	89
2562	SIN ZONA	6515	0
2563	VOTO EN CASA	6515	89
2564	BOLIVAR	6520	1
2565	ALOOR	6520	2
2566	CUESACA	6520	3
2567	ELOY ALFARO / DURAN	6525	1
2568	LOS HELECHOS	6525	2
2569	PANORAMA	6525	5
2570	YAMILE	6525	7
2571	ROSA ELVIRA	6525	8
2572	LOS ANGELES	6525	9
2573	UNA SOLA FUERZA	6525	10
2574	ELOY ALFARO NORTE	6525	11
2575	SIN ZONA	6530	0
2576	SIN ZONA	6535	0
2577	PALLATANGA	6540	1
2578	LAS ROSAS	6540	2
2579	RODEO VAQUERIA	6540	3
2580	SIN ZONA	6545	0
2581	PICHINCHA /GERMUD	6550	1
2582	EL AJO	6550	2
2583	CAÑALES	6550	3
2584	SIN ZONA	6555	0
2585	MOCHA	6560	1
2586	YANAHURCO	6560	2
2587	SIN ZONA	6565	0
2588	SIN ZONA	6570	0
2589	SIN ZONA	6575	0
2590	SANTA LUCIA	6580	1
2591	EL LIMON	6580	2
2592	LAS GABARRAS	6580	3
2593	SIN ZONA	6585	0
2594	VOTO EN CASA	6585	89
2595	SIN ZONA	6590	0
2596	NABON	6595	1
2597	ZHIÑA	6595	2
2598	RAÑAS	6595	3
2599	CHUNASANA	6595	4
2600	SIN ZONA	6600	0
2601	SIN ZONA	6605	0
2602	LA LIBERTAD	6610	1
2603	ZONA 3	6610	2
2604	ZONA 1	6610	3
2605	ZONA 2	6610	4
2606	ZONA 4	6610	5
2607	VOTO EN CASA	6610	89
2608	GUACHAPALA	6615	1
2609	SACRE	6615	2
2610	SIN ZONA	6620	0
2611	ZUMBI	6625	1
2612	NANGUIPA ALTO	6625	3
2613	LA WINTZA	6625	4
2614	SAN PABLO	6625	6
2615	GUANUJO	6630	1
2616	CUATRO ESQUINAS	6630	4
2617	PACHAKUTIK	6630	6
2618	VOTO EN CASA	6630	89
2619	SIN ZONA	6635	0
2620	SIN ZONA	6640	0
2621	SIN ZONA	6645	0
2622	CPL LOS RIOS Nº 2	6645	61
2623	SIN ZONA	6650	0
2624	SIN ZONA	6655	0
2625	SIN ZONA	6660	0
2626	HUACA	6665	1
2627	CUASPUD	6665	2
2628	VOTO EN CASA	6665	89
2629	SIN ZONA	6670	0
2630	SIN ZONA	6675	0
2631	SIN ZONA	6680	0
2632	VALENCIA	6685	1
2633	EL VERGEL	6685	2
2634	COSTA AZUL	6685	3
2635	FEDERICO INTRIAGO	6685	4
2636	RIO CHILA	6685	5
2637	COOPERATIVA 6 DE AGOSTO	6685	6
2638	GONZALEZ SUAREZ	6685	7
2639	LA UNIÓN	6685	8
2640	MONTE NUEVO	6685	9
2641	SIN ZONA	6690	0
2642	MOCACHE	6695	1
2643	AGUAS FRIAS	6695	2
2644	SAN LUIS	6695	3
2645	ALEJO LASCANO	6695	4
2646	TAISHA	6700	1
2647	LA LIBERTAD	6700	2
2648	PIMPINTS	6700	3
2649	SHINKIATAM	6700	4
2650	TINTIUKENTSA	6700	5
2651	SHAINKIAM	6700	6
2652	SASAIMI	6700	7
2653	CANGAIME SUR	6700	8
2654	ISHPINK	6700	9
2655	CHIARENTSA	6700	11
2656	ARAJUNO	6705	1
2657	PITACOCHA	6705	2
2658	OBEPARE	6705	3
2659	SIN ZONA	6710	0
2660	SUSCAL	6715	1
2661	SUSCALPAMBA	6715	2
2662	RIO VERDE	6720	1
2663	CABUYAL	6720	2
2664	VOTO EN CASA	6720	89
2665	LODANA	6725	1
2666	CAMINO NUEVO	6725	2
2667	SIN ZONA	6730	0
2668	SIN ZONA	6735	0
2669	PALANDA	6740	1
2670	VALLE HERMOZO	6740	2
2671	PUCARON	6740	3
2672	CENTRO ELOY ALFARO	6745	1
2673	TERESA DE CALCUTA	6745	2
2674	KIWANI	6745	3
2675	LA AURORA	6745	4
2676	VOTO EN CASA	6745	89
2677	JAMA	6750	1
2678	LA MOCORA	6750	2
2679	RAMBUCHE	6750	3
2680	BIGUA	6750	4
2681	COLORADO	6750	5
2682	SIN ZONA	6755	0
2683	VOTO EN CASA	6755	89
2684	CARLOS J. AROSEMENA TOLA	6760	1
2685	NUEVA ESPERANZA	6760	2
2686	TARAPOA	6765	1
2687	CENTRO UNIÓN	6765	2
2688	CENTRO ENO	6765	3
2689	TAIKIWA	6765	4
2690	SOTOSIAYA	6765	5
2691	PAZ Y BIEN	6765	6
2692	18 DE OCTUBRE - COLISEO ELOY ALFARO	6770	1
2693	EL MAESTRO	6770	2
2694	EL PERIODISTA	6770	3
2695	MUNICIPAL	6770	4
2696	VOTO EN CASA	6770	89
2697	FRANCISCO PACHECO	6775	1
2698	FATIMA	6775	2
2699	NUEVO PORTOVIEJO	6775	3
2700	CPL MANABI Nº 1	6775	61
2701	VOTO EN CASA	6775	89
2702	SIN ZONA	6780	0
2703	SAN VICENTE	6785	1
2704	SALINAS	6785	2
2705	SIN ZONA	6790	0
2706	EL CAMBIO	6795	1
2707	LA UNION COLOMBIANA	6795	3
2708	CORRALITOS	6795	4
2709	SIN ZONA	6800	0
2710	SIN ZONA	6805	0
2711	SIN ZONA	6810	0
2712	SIN ZONA	6815	0
2713	SIN ZONA	6820	0
2714	SIN ZONA	6825	0
2715	BARREIRO /SANTA RITA	6830	1
2716	BARREIRO NUEVO	6830	2
2717	SIN ZONA	6835	0
2718	SIN ZONA	6840	0
2719	SIN ZONA	6845	0
2720	LA AURORA	6850	1
2721	RÍO DAULE	6850	2
2722	HERMANO MIGUEL	6865	1
2723	UNCOVIA	6865	2
2724	EL PROGRESO	6865	3
2725	PABLO SEXTO	6870	1
2726	LA OCTAVA	6870	2
2727	CAMILO PONCE ENRIQUEZ	6875	1
2728	ZHUMIRAL	6875	2
2729	SAN ALFONSO	6875	3
2730	SANTA MARTHA	6875	4
2731	BELLA RICA	6875	5
2732	SAN GERARDO	6875	6
2733	SIN ZONA	6880	0
2734	PAQUISHA	6885	1
2735	RIO BLANCO	6885	2
2736	SANTIAGO	6890	1
2737	TAYUNTS	6890	2
2738	COMUNIDAD MAYAIK	6890	3
2739	PEÑAS	6890	4
2740	EL TRIUNFO	6895	1
2741	CHIPE HAMBURGO 1	6895	2
2742	CHIPE HAMBURGO 2	6895	3
2743	ESTERO HONDO	6895	4
2744	SIN ZONA	6900	0
2745	SIMON PLATA TORRES	6905	1
2746	VALLE DE SAN RAFAEL	6905	2
2747	CASA BONITA	6905	3
2748	LA TOLITA	6905	4
2749	CPL ESMERALDAS N° 2	6905	61
2750	VOTO EN CASA	6905	89
2751	SIN ZONA	6910	0
2752	VOTO EN CASA	6910	89
2753	QUINSALOMA	6915	1
2754	PAMBILAR DE CALOPE	6915	2
2755	SIN ZONA	6925	0
2756	PLATANILLOS	6950	1
2757	VALLE HERMOSO	6950	2
2758	SIN ZONA	6985	0
2759	SIN ZONA	6990	0
2760	BELISARIO QUEVEDO	7130	1
2761	LA GASCA	7130	2
2762	LA PRIMAVERA	7130	3
2763	LAS CASAS - LA GRANJA	7130	4
2764	PAMBACHUPA	7130	5
2765	CARCELEN	7135	1
2766	BALCON DEL NORTE	7135	2
2767	CARCELEN BAJO	7135	3
2768	CARCELEN LIBRE	7135	4
2769	CORAZON DE JESUS	7135	5
2770	LOS EUCALIPTOS	7135	6
2771	LOS MASTODONTES	7135	7
2772	CENTRO HISTORICO	7140	1
2773	DON BOSCO	7140	2
2774	LA LOMA	7140	3
2775	LA VICTORIA	7140	4
2776	PANECILLO	7140	5
2777	RECOLETA	7140	6
2778	VOTO EN CASA	7140	89
2779	COCHAPAMBA	7145	1
2780	ATUCUCHO	7145	2
2781	BELLAVISTA	7145	3
2782	CORDILLERA - EL PORVENIR	7145	4
2783	EL PINAR ALTO	7145	5
2784	LA PULIDA	7145	6
2785	SAN VICENTE	7145	7
2786	COMITE DEL PUEBLO	7150	1
2787	CARRETAS	7150	2
2788	LA BOTA	7150	3
2789	COLLA LOMA	7150	4
2790	CHILIBULO	7155	1
2791	CUARTEL MARISCAL SUCRE	7155	2
2792	LA SANTIAGO	7155	3
2793	MAGDALENA ALTA	7155	4
2794	MAGDALENA BAJA	7155	5
2795	SAN JOSE DE CHILIBULO	7155	6
2796	YAGUACHI	7155	7
2797	EL CONDADO	7160	1
2798	COLINAS DEL NORTE	7160	2
2799	ROLDOS - PISULI	7160	3
2800	RANCHO BAJO	7160	4
2801	LA CAMPIÑA	7160	5
2802	SANTA ANITA	7160	6
2803	GUAMANÍ	7165	1
2804	NUEVA AURORA	7165	2
2805	PLAN VICTORIA	7165	3
2806	JOSE PERALTA	7165	4
2807	MATILDE ALVAREZ	7165	5
2808	TURUBAMBA DE MONJAS	7165	6
2809	IÑAQUITO	7170	1
2810	24 DE MAYO	7170	2
2811	BATAN - LA PAZ	7170	3
2812	BENALCAZAR	7170	4
2813	LA CAROLINA	7170	5
2814	ITCHIMBIA	7175	1
2815	GUAPULO	7175	2
2816	LA VICENTINA	7175	3
2817	SAN PABLO	7175	4
2818	TOLA BAJA	7175	5
2819	JIPIJAPA	7180	1
2820	EL INCA	7180	2
2821	LOS LAURELES	7180	3
2822	MONTESERRIN	7180	4
2823	ZALDUMBIDE	7180	5
2824	KENNEDY	7185	1
2825	RUMIÑAHUI	7185	2
2826	DAMMER - LOS ALAMOS	7185	3
2827	LA LUZ	7185	4
2828	LAS ACACIAS	7185	5
2829	LOS PINOS	7185	6
2830	COFAVI	7185	7
2831	SANTA LUCIA	7185	8
2832	CPPL MASCULINO PICHINCHA Nº 1	7185	61
2833	LA ARGELIA	7190	1
2834	EL MIRADOR - SANTA ROSA	7190	2
2835	LUCHA DE LOS POBRES - GUAJALO	7190	3
2836	ORIENTE QUITEÑO	7190	4
2837	SAN MARTIN	7190	5
2838	LA CONCEPCION	7195	1
2839	SAN CARLOS	7195	2
2840	AEROPUERTO	7195	3
2841	EL ROSARIO	7195	4
2842	LA ECUATORIANA	7200	1
2843	2 DE FEBRERO	7200	2
2844	LAS ORQUIDEAS	7200	3
2845	LAS ORQUIDEAS ALTAS	7200	4
2846	MANUELA SAENZ	7200	5
2847	NUEVOS HORIZONTES	7200	6
2848	LA FERROVIARIA	7205	1
2849	20 DE MAYO - LAS VERTIENTES	7205	2
2850	CHAHUARQUINGO	7205	3
2851	EL RECREO	7205	4
2852	ELOY ALFARO	7205	5
2853	FORESTAL	7205	6
2854	SAN PATRICIO	7205	7
2855	LA MENA	7210	1
2856	TARQUI	7210	2
2857	SANTA BARBARA	7210	3
2858	SANTA ROSA	7210	4
2859	SAN FERNANDO	7210	5
2860	MARISCAL SUCRE	7215	1
2861	LA FLORESTA	7215	2
2862	PONCEANO	7220	1
2863	PONCEANO ALTO	7220	2
2864	LA OFELIA	7220	3
2865	PUENGASI	7225	1
2866	BALCON DEL VALLE	7225	2
2867	EDEN DEL VALLE	7225	3
2868	JARDIN DEL VALLE - ALMA LOJANA	7225	4
2869	ORQUIDEAS	7225	5
2870	SAN JOSE DE MONJAS	7225	6
2871	QUITUMBE	7230	1
2872	EJERCITO NACIONAL	7230	2
2873	EL VERGEL	7230	3
2874	NUEVOS HORIZONTES DEL SUR	7230	4
2875	PUEBLO SOLO PUEBLO	7230	5
2876	PUEBLO UNIDO	7230	6
2877	SALVADOR ALLENDE	7230	7
2878	CPL PICHINCHA N° 3	7230	61
2879	RUMIPAMBA	7235	1
2880	GRANDA CENTENO	7235	2
2881	QUITO TENNIS	7235	3
2882	SAN GABRIEL	7235	4
2883	SAN BARTOLO	7240	1
2884	BARRIONUEVO	7240	2
2885	QUITO SUR	7240	3
2886	CLEMENTE BALLEN	7240	4
2887	EL CALZADO	7240	5
2888	SAN ISIDRO DEL INCA	7245	1
2889	AMAGASI	7245	2
2890	LA QUINTANA	7245	3
2891	LOS ALAMOS	7245	4
2892	SOLCA	7245	5
2893	SAN JUAN	7250	1
2894	BARRIO LARREA	7250	2
2895	EL PLACER - EL TEJAR	7250	3
2896	LA AMERICA	7250	4
2897	MIRAFLORES BAJO	7250	5
2898	TOCTIUCO	7250	6
2899	SOLANDA	7255	1
2900	GONZ. ZALDUMBIDE - MAYORISTA	7255	2
2901	SANTA RITA	7255	3
2902	REGISTRO CIVIL	7255	4
2903	TURUBAMBA	7260	1
2904	CAUPICHU	7260	2
2905	ETERNIT	7260	3
2906	BEATERIO	7260	4
2907	EL CONDE	7260	5
2908	CAMPO ALEGRE	7260	6
2909	SANTO THOMAS	7260	7
2910	SIN ZONA	7425	0
2911	LA PUNTILLA(SATELITE)	7445	1
2912	LA PUNTILLA NORTE	7445	2
2913	EL RECREO	7455	1
2914	LA LOMA	7455	2
2915	ANIBAL SAN ANDRES	7460	1
2916	PEPA DE HUSO-LA SEQUITA	7460	2
2917	SIN ZONA	7465	0
2918	SIN ZONA	7470	0
2919	SIN ZONA	7475	0
2920	SIN ZONA	7480	0
2921	SIN ZONA	7485	0
2922	SIN ZONA	7490	0
2923	LEONIDAS PROAÑO	7495	1
2924	TIERRA SANTA	7495	2
2925	SIN ZONA	7500	0
2926	SIN ZONA	7505	0
2927	JAMBELI	7510	1
2928	CIUDADELA 10 DE SEPTIEMBRE	7510	2
2929	DIVINO NIÑO	7515	1
2930	SECAP	7515	2
2931	HÉCTOR COBOS	7515	3
2932	LA CONCORDIA	7520	1
2933	FLOR DEL VALLE	7520	2
2934	LAS VEGAS	7520	3
2935	SANTA ROSA	7520	4
2936	VIRGEN DEL CISNE	7520	5
2937	10 DE AGOSTO	7520	6
2938	ALIANZA	7520	7
2939	VOTO EN CASA	7520	89
2940	CARIGAN	7525	1
2941	LAS PITAS	7525	2
2942	LA BANDA	7525	3
2943	VOTO EN CASA	7525	89
2944	LA ARGELIA	7530	1
2945	LA TEBAIDA	7530	3
2946	SAN PEDRO	7530	4
2947	COLINAS LOJANAS	7530	5
2948	CAI LOJA	7530	61
2949	VOTO EN CASA	7530	89
2950	SIN ZONA	7535	0
2951	BERLIN	9001	1
2952	BONN	9001	2
2953	HAMBURGO	9002	1
2954	.BUENOS AIRES	9003	1
2955	CAMBERRA	9005	1
2956	SYDNEY	9005	2
2957	.VIENA	9006	1
2958	.BRUSELAS	9007	1
2959	.LA PAZ	9008	1
2960	.BRASILIA	9009	1
2961	.TORONTO	9011	1
2962	OTTAWA	9012	1
2963	MONTREAL	9012	2
2964	.BOGOTA	9013	1
2965	IPIALES	9015	1
2966	CALI	9015	2
2967	.SEUL	9016	1
2968	.SAN JOSE	9017	1
2969	HABANA / HABANA	9018	1
2970	HABANA / SANTA CLARA	9018	5
2971	.SANTIAGO	9019	1
2972	.BEIJING	9020	1
2973	.PALMA DE MALLORCA	9021	1
2974	.SAN SALVADOR	9022	1
2975	.BARCELONA	9023	1
2976	BARCELONA / TERRASSA	9023	2
2977	BARCELONA / NAVARRA	9023	3
2978	.MADRID	9024	1
2979	MADRID / TOLEDO	9024	2
2980	.VALENCIA	9025	1
2981	.ALICANTE	9025	2
2982	.MURCIA	9026	1
2983	MURCIA / JUMILLA - YECLA	9026	2
2984	MURCIA / LORCA	9026	3
2985	MURCIA / CARTAGENA MAR MENOR	9026	4
2986	.CHICAGO	9027	1
2987	MIAMI / MIAMI	9028	1
2988	MIAMI / ORLANDO	9028	2
2989	.NUEVA YORK	9029	1
2990	NUEVA YORK / QUEENS	9029	2
2991	NUEVA YORK / HUDSON VALLEY	9029	3
2992	NUEVA YORK / LONG ISLAND	9029	4
2993	.WASHINGTON	9031	1
2994	LOS ANGELES	9032	1
2995	SAN FRANCISCO	9032	2
2996	.CONNECTICUT	9033	1
2997	CONNECTICUT / GREATER DANBURY	9033	2
2998	HOUSTON	9034	1
2999	NEW ORLEANS	9034	2
3000	.NEW JERSEY	9035	1
3001	NEW JERSEY / PLAINFIELD	9035	2
3002	NEW JERSEY / HIGHSTOWN - TRENTON	9035	3
3003	.PARIS	9036	1
3004	LONDRES	9037	1
3005	LISBOA	9037	2
3006	.GUATEMALA	9038	1
3007	TEGUCIGALPA	9039	1
3008	MANAGUA	9039	2
3009	.BUDAPEST	9040	1
3010	.TEL AVIV	9042	1
3011	MILAN / MILAN	9043	1
3012	MILAN / TURIN	9043	2
3013	.GENOVA	9044	1
3014	.ROMA	9045	1
3015	.TOKIO	9046	1
3016	.MEXICO	9047	1
3017	.LA HAYA	9049	1
3018	.PANAMA	9050	1
3019	.ASUNCION	9051	1
3020	.LIMA	9052	1
3021	TUMBES	9054	1
3022	PIURA	9054	2
3023	.EL CAIRO	9055	1
3024	.SANTO DOMINGO	9056	1
3025	.ESTOCOLMO	9057	1
3026	BERNA	9058	1
3027	LAUSANNE	9058	2
3028	MOSCU	9060	1
3029	BELARÚS	9060	2
3030	.MONTEVIDEO	9061	1
3031	CARACAS	9062	1
3032	VALENCIA	9062	3
3033	.YAKARTA	9063	1
3034	MALAGA / MALAGA	9066	1
3035	MALAGA / SEVILLA Y CORDOVA	9066	2
3036	MALAGA / ALMERIA	9066	3
3037	MALAGA / GRANADA	9066	4
3038	MALAGA / MARBELLA	9066	5
3039	MALAGA / HUELVA	9066	6
3040	MALAGA / VERA	9066	8
3041	SAO PAULO	9067	1
3042	RIO DE JANEIRO	9067	2
3043	.SHANGAI	9068	1
3044	.MINNEAPOLIS	9069	1
3045	.ATLANTA	9071	1
3046	ATLANTA / CHARLOTTE	9071	2
3047	.PHOENIX	9073	1
3048	.GUANGZHOU	9075	1
3049	.PRETORIA	9077	1
3050	.ANKARA	9078	1
3051	.MONTERREY	9086	1
\.


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

SELECT pg_catalog.setval('public.blacktoken_id_seq', 77, true);


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

SELECT pg_catalog.setval('public.menu_id_seq', 18, true);


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

SELECT pg_catalog.setval('public.permisos_id_seq', 176, true);


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

SELECT pg_catalog.setval('public.rol_id_seq', 16, true);


--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 220
-- Name: rolusuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rolusuario_id_seq', 188, true);


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


-- Completed on 2024-07-01 09:43:09 -05

--
-- PostgreSQL database dump complete
--

