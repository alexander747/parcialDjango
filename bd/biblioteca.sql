--
-- PostgreSQL database dump
--

-- Dumped from database version 10.14 (Ubuntu 10.14-1.pgdg18.04+1)
-- Dumped by pg_dump version 13.0 (Ubuntu 13.0-1.pgdg18.04+1)

-- Started on 2020-10-23 20:38:06 -05

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

--
-- TOC entry 203 (class 1259 OID 18461)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- TOC entry 202 (class 1259 OID 18459)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 18471)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- TOC entry 204 (class 1259 OID 18469)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 18453)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- TOC entry 200 (class 1259 OID 18451)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 18479)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin;

--
-- TOC entry 209 (class 1259 OID 18489)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- TOC entry 208 (class 1259 OID 18487)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 18477)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin;

--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 18497)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- TOC entry 210 (class 1259 OID 18495)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 215 (class 1259 OID 18593)
-- Name: autor_autores; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.autor_autores (
    "idAutor" integer NOT NULL,
    nombre character varying(100) NOT NULL,
    nacionalidad character varying(50) NOT NULL,
    idlibro_id integer NOT NULL
);


ALTER TABLE public.autor_autores OWNER TO admin;

--
-- TOC entry 213 (class 1259 OID 18557)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- TOC entry 212 (class 1259 OID 18555)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 18443)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- TOC entry 198 (class 1259 OID 18441)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 18432)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- TOC entry 196 (class 1259 OID 18430)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 216 (class 1259 OID 18604)
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- TOC entry 214 (class 1259 OID 18588)
-- Name: libro_libros; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.libro_libros (
    "idLibro" integer NOT NULL,
    codigo integer NOT NULL,
    titulo character varying(100) NOT NULL,
    isbn character varying(30) NOT NULL,
    editorial character varying(60) NOT NULL,
    "numPags" integer NOT NULL
);


ALTER TABLE public.libro_libros OWNER TO admin;

--
-- TOC entry 218 (class 1259 OID 18620)
-- Name: prestamo_prestamos; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.prestamo_prestamos (
    "idPrestamo" integer NOT NULL,
    "fechaPrestamo" timestamp with time zone NOT NULL,
    "fechaDevolucion" timestamp with time zone NOT NULL,
    "idUsuario_id" integer NOT NULL,
    idlibro_id integer NOT NULL
);


ALTER TABLE public.prestamo_prestamos OWNER TO admin;

--
-- TOC entry 217 (class 1259 OID 18615)
-- Name: usuario_usuarios; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.usuario_usuarios (
    "idUsuario" integer NOT NULL,
    "numUsuario" integer NOT NULL,
    nif character varying(20) NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(20) NOT NULL
);


ALTER TABLE public.usuario_usuarios OWNER TO admin;

--
-- TOC entry 2901 (class 2604 OID 18464)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 18474)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2900 (class 2604 OID 18456)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 18482)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 18492)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2905 (class 2604 OID 18500)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2906 (class 2604 OID 18560)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2899 (class 2604 OID 18446)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 18435)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3106 (class 0 OID 18461)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3108 (class 0 OID 18471)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3104 (class 0 OID 18453)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add libros	7	add_libros
26	Can change libros	7	change_libros
27	Can delete libros	7	delete_libros
28	Can view libros	7	view_libros
29	Can add autores	8	add_autores
30	Can change autores	8	change_autores
31	Can delete autores	8	delete_autores
32	Can view autores	8	view_autores
33	Can add usuarios	9	add_usuarios
34	Can change usuarios	9	change_usuarios
35	Can delete usuarios	9	delete_usuarios
36	Can view usuarios	9	view_usuarios
37	Can add prestamos	10	add_prestamos
38	Can change prestamos	10	change_prestamos
39	Can delete prestamos	10	delete_prestamos
40	Can view prestamos	10	view_prestamos
\.


--
-- TOC entry 3110 (class 0 OID 18479)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$X2Gns4dDWdyp$NFmKIMSKsNuTrXgI6cH2Ui9Y5+OBUiBrKBEjIllcIUU=	2020-10-23 20:06:32.632159-05	t	alex			alex@gmail.com	t	t	2020-10-23 20:06:10.255508-05
\.


--
-- TOC entry 3112 (class 0 OID 18489)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3114 (class 0 OID 18497)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3118 (class 0 OID 18593)
-- Dependencies: 215
-- Data for Name: autor_autores; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.autor_autores ("idAutor", nombre, nacionalidad, idlibro_id) FROM stdin;
655	kalifa	brazil	9
2	juan	colombia	9
3	manuel	colombai	9
4	MARIA	ecuador	323
32	miguel	ungara	56
2424	juan carlos	venezuela	665
2423	maria	eeuu	65445
233	maria	pastusa	6765
24	pedro	eeuu	9
488	marta al	venezuela	656
\.


--
-- TOC entry 3116 (class 0 OID 18557)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-10-23 20:21:00.19598-05	2	juan	1	[{"added": {}}]	8	1
2	2020-10-23 20:21:18.243814-05	3	manuel	1	[{"added": {}}]	8	1
3	2020-10-23 20:21:34.815187-05	4	MARIA	1	[{"added": {}}]	8	1
4	2020-10-23 20:21:56.38785-05	1	marta	1	[{"added": {}}]	9	1
5	2020-10-23 20:22:09.827998-05	2	jose	1	[{"added": {}}]	9	1
6	2020-10-23 20:22:24.027004-05	5	llanten	1	[{"added": {}}]	9	1
7	2020-10-23 20:22:37.833393-05	7	armando navarro	1	[{"added": {}}]	9	1
8	2020-10-23 20:22:51.794222-05	887	emerito	1	[{"added": {}}]	9	1
9	2020-10-23 20:23:10.313097-05	876655	miguel	1	[{"added": {}}]	9	1
10	2020-10-23 20:23:22.39498-05	8877	camilo	1	[{"added": {}}]	9	1
11	2020-10-23 20:23:34.752689-05	8778	carolina	1	[{"added": {}}]	9	1
12	2020-10-23 20:23:47.524179-05	66556	carlos	1	[{"added": {}}]	9	1
13	2020-10-23 20:24:00.119509-05	787	rafael	1	[{"added": {}}]	9	1
14	2020-10-23 20:24:27.981572-05	56	56	1	[{"added": {}}]	7	1
15	2020-10-23 20:24:40.659911-05	244	244	1	[{"added": {}}]	7	1
16	2020-10-23 20:24:53.601066-05	665	665	1	[{"added": {}}]	7	1
17	2020-10-23 20:25:07.052962-05	566	566	1	[{"added": {}}]	7	1
18	2020-10-23 20:25:24.366349-05	6765	6765	1	[{"added": {}}]	7	1
19	2020-10-23 20:25:38.032307-05	65445	65445	1	[{"added": {}}]	7	1
20	2020-10-23 20:25:52.950719-05	4224	4224	1	[{"added": {}}]	7	1
21	2020-10-23 20:26:09.921553-05	242	242	1	[{"added": {}}]	7	1
22	2020-10-23 20:26:28.019092-05	656	656	1	[{"added": {}}]	7	1
23	2020-10-23 20:26:59.989687-05	32	miguel	1	[{"added": {}}]	8	1
24	2020-10-23 20:27:13.106652-05	2424	juan carlos	1	[{"added": {}}]	8	1
25	2020-10-23 20:27:27.425722-05	2423	maria	1	[{"added": {}}]	8	1
26	2020-10-23 20:27:43.138435-05	233	maria	1	[{"added": {}}]	8	1
27	2020-10-23 20:27:56.302503-05	24	pedro	1	[{"added": {}}]	8	1
28	2020-10-23 20:28:10.30253-05	488	marta al	1	[{"added": {}}]	8	1
29	2020-10-23 20:28:55.638935-05	776	776	1	[{"added": {}}]	10	1
30	2020-10-23 20:29:07.579452-05	244	244	1	[{"added": {}}]	10	1
31	2020-10-23 20:29:22.42835-05	42452	42452	1	[{"added": {}}]	10	1
32	2020-10-23 20:29:35.51351-05	5524	5524	1	[{"added": {}}]	10	1
33	2020-10-23 20:29:52.497401-05	654	654	1	[{"added": {}}]	10	1
34	2020-10-23 20:30:06.403349-05	442	442	1	[{"added": {}}]	10	1
35	2020-10-23 20:30:27.751863-05	24	24	1	[{"added": {}}]	10	1
36	2020-10-23 20:30:37.489485-05	24446	24446	1	[{"added": {}}]	10	1
37	2020-10-23 20:30:47.880595-05	424	424	1	[{"added": {}}]	10	1
\.


--
-- TOC entry 3102 (class 0 OID 18443)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	libro	libros
8	autor	autores
9	usuario	usuarios
10	prestamo	prestamos
\.


--
-- TOC entry 3100 (class 0 OID 18432)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-10-23 17:19:58.292694-05
2	auth	0001_initial	2020-10-23 17:19:58.374012-05
3	admin	0001_initial	2020-10-23 17:19:58.51751-05
4	admin	0002_logentry_remove_auto_add	2020-10-23 17:19:58.553747-05
5	admin	0003_logentry_add_action_flag_choices	2020-10-23 17:19:58.566859-05
6	contenttypes	0002_remove_content_type_name	2020-10-23 17:19:58.599411-05
7	auth	0002_alter_permission_name_max_length	2020-10-23 17:19:58.61439-05
8	auth	0003_alter_user_email_max_length	2020-10-23 17:19:58.631187-05
9	auth	0004_alter_user_username_opts	2020-10-23 17:19:58.653245-05
10	auth	0005_alter_user_last_login_null	2020-10-23 17:19:58.669495-05
11	auth	0006_require_contenttypes_0002	2020-10-23 17:19:58.673549-05
12	auth	0007_alter_validators_add_error_messages	2020-10-23 17:19:58.690304-05
13	auth	0008_alter_user_username_max_length	2020-10-23 17:19:58.718668-05
14	auth	0009_alter_user_last_name_max_length	2020-10-23 17:19:58.745541-05
15	auth	0010_alter_group_name_max_length	2020-10-23 17:19:58.759509-05
16	auth	0011_update_proxy_permissions	2020-10-23 17:19:58.774792-05
17	auth	0012_alter_user_first_name_max_length	2020-10-23 17:19:58.790124-05
18	libro	0001_initial	2020-10-23 17:19:58.802878-05
19	autor	0001_initial	2020-10-23 17:19:58.826773-05
20	sessions	0001_initial	2020-10-23 17:19:58.864162-05
21	usuario	0001_initial	2020-10-23 17:45:01.994551-05
22	prestamo	0001_initial	2020-10-23 18:18:14.649745-05
\.


--
-- TOC entry 3119 (class 0 OID 18604)
-- Dependencies: 216
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
765qt1uneuk3ydgh51a2ui90m4fu4d8u	.eJxVjMsOwiAQRf-FtSG8YVy69xsIw4BUDU1KuzL-uzbpQrf3nHNfLKZtbXEbZYkTsTOT7PS7YcqP0ndA99RvM89zX5cJ-a7wgw5-nak8L4f7d9DSaN9aK-0APXoIJVdhTALtQRIJGzCBqUpkRegAwKpac5bkrBaANYhC3rP3B9RSN8A:1kW80u:dOsNduEaZbeUG1oYYsLoWpztZ2PRtnVsv3MuPUI9RNs	2020-11-06 20:06:32.63736-05
\.


--
-- TOC entry 3117 (class 0 OID 18588)
-- Dependencies: 214
-- Data for Name: libro_libros; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.libro_libros ("idLibro", codigo, titulo, isbn, editorial, "numPags") FROM stdin;
9	9	9	9	9	9
323	3	avantasiass	73	nu	32
56	5645	venteña	767	ventaña	2424
244	667	la iliada	424	pasto	424
665	5656	cree en ti	4224	carajos	24
566	655	armandisate	44	armando	4224
6765	54	la hojarasca	667	hoja	424
65445	445	45 dias	5546	una	224
4224	5554	el señor de los anillos	42	anillos	2476
242	5	amigo mio	24	batalla	24
656	556	homero	48	simpson	224
\.


--
-- TOC entry 3121 (class 0 OID 18620)
-- Dependencies: 218
-- Data for Name: prestamo_prestamos; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.prestamo_prestamos ("idPrestamo", "fechaPrestamo", "fechaDevolucion", "idUsuario_id", idlibro_id) FROM stdin;
734	2020-09-08 19:00:00-05	2020-09-08 19:00:00-05	8	9
73	2020-09-08 19:00:00-05	2020-09-08 19:00:00-05	8	9
776	2020-10-14 20:28:48-05	2020-10-14 01:00:00-05	2	323
244	2020-10-13 19:00:00-05	2020-10-07 01:00:00-05	887	665
42452	2020-10-13 13:00:00-05	2020-10-14 20:29:21-05	7	665
5524	2020-10-21 13:00:00-05	2020-10-16 07:00:00-05	887	566
654	2020-10-05 01:00:00-05	2020-10-21 01:00:00-05	887	242
442	2020-10-21 07:00:00-05	2020-10-05 19:00:00-05	7	566
24	2020-10-20 20:30:24-05	2020-10-18 20:30:26-05	7	665
24446	2020-10-23 20:30:35-05	2020-10-23 20:30:36-05	7	244
424	2020-10-23 20:30:43-05	2020-10-23 20:30:46-05	7	566
\.


--
-- TOC entry 3120 (class 0 OID 18615)
-- Dependencies: 217
-- Data for Name: usuario_usuarios; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.usuario_usuarios ("idUsuario", "numUsuario", nif, nombre, direccion, telefono) FROM stdin;
8	8	8	8	8	8
1	1	1	marta	la union	3233232
2	2	2	jose	putumayo	4424
5	5	5	llanten	popayan	83783
7	7	7	armando navarro	cauca	447724
887	6	6	emerito	bogota	48248
876655	7656	565656	miguel	popayan	4342
8877	7	767	camilo	popayan	424242
8778	7878	8765	carolina	bogota	43423
66556	56565	6756	carlos	pasto	242442
787	777	6765	rafael	cauca	8777
\.


--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 37, true);


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- TOC entry 2921 (class 2606 OID 18586)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2926 (class 2606 OID 18513)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2929 (class 2606 OID 18476)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2923 (class 2606 OID 18466)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2916 (class 2606 OID 18504)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2918 (class 2606 OID 18458)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2937 (class 2606 OID 18494)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2940 (class 2606 OID 18528)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2931 (class 2606 OID 18484)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2943 (class 2606 OID 18502)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2946 (class 2606 OID 18542)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2934 (class 2606 OID 18580)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2955 (class 2606 OID 18597)
-- Name: autor_autores autor_autores_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.autor_autores
    ADD CONSTRAINT autor_autores_pkey PRIMARY KEY ("idAutor");


--
-- TOC entry 2949 (class 2606 OID 18566)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2911 (class 2606 OID 18450)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2913 (class 2606 OID 18448)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 18440)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2958 (class 2606 OID 18611)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2952 (class 2606 OID 18592)
-- Name: libro_libros libro_libros_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.libro_libros
    ADD CONSTRAINT libro_libros_pkey PRIMARY KEY ("idLibro");


--
-- TOC entry 2965 (class 2606 OID 18624)
-- Name: prestamo_prestamos prestamo_prestamos_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.prestamo_prestamos
    ADD CONSTRAINT prestamo_prestamos_pkey PRIMARY KEY ("idPrestamo");


--
-- TOC entry 2961 (class 2606 OID 18619)
-- Name: usuario_usuarios usuario_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.usuario_usuarios
    ADD CONSTRAINT usuario_usuarios_pkey PRIMARY KEY ("idUsuario");


--
-- TOC entry 2919 (class 1259 OID 18587)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2924 (class 1259 OID 18524)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2927 (class 1259 OID 18525)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2914 (class 1259 OID 18510)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2935 (class 1259 OID 18540)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2938 (class 1259 OID 18539)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2941 (class 1259 OID 18554)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2944 (class 1259 OID 18553)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2932 (class 1259 OID 18581)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2953 (class 1259 OID 18603)
-- Name: autor_autores_idlibro_id_b14c4a24; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX autor_autores_idlibro_id_b14c4a24 ON public.autor_autores USING btree (idlibro_id);


--
-- TOC entry 2947 (class 1259 OID 18577)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2950 (class 1259 OID 18578)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2956 (class 1259 OID 18613)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2959 (class 1259 OID 18612)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2962 (class 1259 OID 18635)
-- Name: prestamo_prestamos_idUsuario_id_28cff275; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX "prestamo_prestamos_idUsuario_id_28cff275" ON public.prestamo_prestamos USING btree ("idUsuario_id");


--
-- TOC entry 2963 (class 1259 OID 18636)
-- Name: prestamo_prestamos_idlibro_id_bbce8bcd; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX prestamo_prestamos_idlibro_id_bbce8bcd ON public.prestamo_prestamos USING btree (idlibro_id);


--
-- TOC entry 2968 (class 2606 OID 18519)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2967 (class 2606 OID 18514)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2966 (class 2606 OID 18505)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2970 (class 2606 OID 18534)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2969 (class 2606 OID 18529)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2972 (class 2606 OID 18548)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2971 (class 2606 OID 18543)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2975 (class 2606 OID 18598)
-- Name: autor_autores autor_autores_idlibro_id_b14c4a24_fk_libro_libros_idLibro; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.autor_autores
    ADD CONSTRAINT "autor_autores_idlibro_id_b14c4a24_fk_libro_libros_idLibro" FOREIGN KEY (idlibro_id) REFERENCES public.libro_libros("idLibro") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2973 (class 2606 OID 18567)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2974 (class 2606 OID 18572)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2976 (class 2606 OID 18625)
-- Name: prestamo_prestamos prestamo_prestamos_idUsuario_id_28cff275_fk_usuario_u; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.prestamo_prestamos
    ADD CONSTRAINT "prestamo_prestamos_idUsuario_id_28cff275_fk_usuario_u" FOREIGN KEY ("idUsuario_id") REFERENCES public.usuario_usuarios("idUsuario") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2977 (class 2606 OID 18630)
-- Name: prestamo_prestamos prestamo_prestamos_idlibro_id_bbce8bcd_fk_libro_libros_idLibro; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.prestamo_prestamos
    ADD CONSTRAINT "prestamo_prestamos_idlibro_id_bbce8bcd_fk_libro_libros_idLibro" FOREIGN KEY (idlibro_id) REFERENCES public.libro_libros("idLibro") DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-10-23 20:38:06 -05

--
-- PostgreSQL database dump complete
--

