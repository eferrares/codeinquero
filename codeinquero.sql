--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO erich;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO erich;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO erich;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO erich;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO erich;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO erich;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: celery_taskmeta; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text
);


ALTER TABLE celery_taskmeta OWNER TO erich;

--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE celery_taskmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE celery_taskmeta_id_seq OWNER TO erich;

--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE celery_taskmeta_id_seq OWNED BY celery_taskmeta.id;


--
-- Name: celery_tasksetmeta; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(255) NOT NULL,
    result text NOT NULL,
    date_done timestamp with time zone NOT NULL,
    hidden boolean NOT NULL
);


ALTER TABLE celery_tasksetmeta OWNER TO erich;

--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE celery_tasksetmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE celery_tasksetmeta_id_seq OWNER TO erich;

--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE celery_tasksetmeta_id_seq OWNED BY celery_tasksetmeta.id;


--
-- Name: core_coment; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE core_coment (
    id integer NOT NULL,
    post_id integer NOT NULL
);


ALTER TABLE core_coment OWNER TO erich;

--
-- Name: core_coment_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE core_coment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_coment_id_seq OWNER TO erich;

--
-- Name: core_coment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE core_coment_id_seq OWNED BY core_coment.id;


--
-- Name: core_enterprise; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE core_enterprise (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(50) NOT NULL,
    user_id integer NOT NULL,
    main_photo character varying(200)
);


ALTER TABLE core_enterprise OWNER TO erich;

--
-- Name: core_enterprise_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE core_enterprise_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_enterprise_id_seq OWNER TO erich;

--
-- Name: core_enterprise_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE core_enterprise_id_seq OWNED BY core_enterprise.id;


--
-- Name: core_like; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE core_like (
    id integer NOT NULL,
    post_id integer NOT NULL
);


ALTER TABLE core_like OWNER TO erich;

--
-- Name: core_like_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE core_like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_like_id_seq OWNER TO erich;

--
-- Name: core_like_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE core_like_id_seq OWNED BY core_like.id;


--
-- Name: core_moderation; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE core_moderation (
    id integer NOT NULL,
    username character varying(200),
    accepted boolean NOT NULL,
    enterprise_id integer NOT NULL,
    post_id integer
);


ALTER TABLE core_moderation OWNER TO erich;

--
-- Name: core_moderation_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE core_moderation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_moderation_id_seq OWNER TO erich;

--
-- Name: core_moderation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE core_moderation_id_seq OWNED BY core_moderation.id;


--
-- Name: core_post; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE core_post (
    id integer NOT NULL,
    file character varying(200),
    username character varying(200) NOT NULL,
    text text NOT NULL,
    date_posted timestamp with time zone NOT NULL,
    enterprise_id integer,
    user_display_name character varying(100),
    show boolean NOT NULL
);


ALTER TABLE core_post OWNER TO erich;

--
-- Name: core_post_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE core_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_post_id_seq OWNER TO erich;

--
-- Name: core_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE core_post_id_seq OWNED BY core_post.id;


--
-- Name: core_user; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE core_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    name character varying(250),
    email character varying(254) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE core_user OWNER TO erich;

--
-- Name: core_user_groups; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE core_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE core_user_groups OWNER TO erich;

--
-- Name: core_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE core_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_user_groups_id_seq OWNER TO erich;

--
-- Name: core_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE core_user_groups_id_seq OWNED BY core_user_groups.id;


--
-- Name: core_user_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE core_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_user_id_seq OWNER TO erich;

--
-- Name: core_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE core_user_id_seq OWNED BY core_user.id;


--
-- Name: core_user_user_permissions; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE core_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE core_user_user_permissions OWNER TO erich;

--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE core_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_user_user_permissions_id_seq OWNER TO erich;

--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE core_user_user_permissions_id_seq OWNED BY core_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO erich;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO erich;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO erich;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO erich;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO erich;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO erich;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO erich;

--
-- Name: djcelery_crontabschedule; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE djcelery_crontabschedule (
    id integer NOT NULL,
    minute character varying(64) NOT NULL,
    hour character varying(64) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(64) NOT NULL,
    month_of_year character varying(64) NOT NULL
);


ALTER TABLE djcelery_crontabschedule OWNER TO erich;

--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE djcelery_crontabschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_crontabschedule_id_seq OWNER TO erich;

--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE djcelery_crontabschedule_id_seq OWNED BY djcelery_crontabschedule.id;


--
-- Name: djcelery_intervalschedule; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE djcelery_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


ALTER TABLE djcelery_intervalschedule OWNER TO erich;

--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE djcelery_intervalschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_intervalschedule_id_seq OWNER TO erich;

--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE djcelery_intervalschedule_id_seq OWNED BY djcelery_intervalschedule.id;


--
-- Name: djcelery_periodictask; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE djcelery_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    CONSTRAINT djcelery_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


ALTER TABLE djcelery_periodictask OWNER TO erich;

--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE djcelery_periodictask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_periodictask_id_seq OWNER TO erich;

--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE djcelery_periodictask_id_seq OWNED BY djcelery_periodictask.id;


--
-- Name: djcelery_periodictasks; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE djcelery_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


ALTER TABLE djcelery_periodictasks OWNER TO erich;

--
-- Name: djcelery_taskstate; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE djcelery_taskstate (
    id integer NOT NULL,
    state character varying(64) NOT NULL,
    task_id character varying(36) NOT NULL,
    name character varying(200),
    tstamp timestamp with time zone NOT NULL,
    args text,
    kwargs text,
    eta timestamp with time zone,
    expires timestamp with time zone,
    result text,
    traceback text,
    runtime double precision,
    retries integer NOT NULL,
    hidden boolean NOT NULL,
    worker_id integer
);


ALTER TABLE djcelery_taskstate OWNER TO erich;

--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE djcelery_taskstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_taskstate_id_seq OWNER TO erich;

--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE djcelery_taskstate_id_seq OWNED BY djcelery_taskstate.id;


--
-- Name: djcelery_workerstate; Type: TABLE; Schema: public; Owner: erich; Tablespace: 
--

CREATE TABLE djcelery_workerstate (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    last_heartbeat timestamp with time zone
);


ALTER TABLE djcelery_workerstate OWNER TO erich;

--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE; Schema: public; Owner: erich
--

CREATE SEQUENCE djcelery_workerstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_workerstate_id_seq OWNER TO erich;

--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: erich
--

ALTER SEQUENCE djcelery_workerstate_id_seq OWNED BY djcelery_workerstate.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY celery_taskmeta ALTER COLUMN id SET DEFAULT nextval('celery_taskmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY celery_tasksetmeta ALTER COLUMN id SET DEFAULT nextval('celery_tasksetmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_coment ALTER COLUMN id SET DEFAULT nextval('core_coment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_enterprise ALTER COLUMN id SET DEFAULT nextval('core_enterprise_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_like ALTER COLUMN id SET DEFAULT nextval('core_like_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_moderation ALTER COLUMN id SET DEFAULT nextval('core_moderation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_post ALTER COLUMN id SET DEFAULT nextval('core_post_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_user ALTER COLUMN id SET DEFAULT nextval('core_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_user_groups ALTER COLUMN id SET DEFAULT nextval('core_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('core_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY djcelery_crontabschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_crontabschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY djcelery_intervalschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_intervalschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY djcelery_periodictask ALTER COLUMN id SET DEFAULT nextval('djcelery_periodictask_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY djcelery_taskstate ALTER COLUMN id SET DEFAULT nextval('djcelery_taskstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: erich
--

ALTER TABLE ONLY djcelery_workerstate ALTER COLUMN id SET DEFAULT nextval('djcelery_workerstate_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add group	1	add_group
2	Can change group	1	change_group
3	Can delete group	1	delete_group
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add content type	3	add_contenttype
8	Can change content type	3	change_contenttype
9	Can delete content type	3	delete_contenttype
10	Can add session	4	add_session
11	Can change session	4	change_session
12	Can delete session	4	delete_session
13	Can add log entry	5	add_logentry
14	Can change log entry	5	change_logentry
15	Can delete log entry	5	delete_logentry
16	Can add crontab	6	add_crontabschedule
17	Can change crontab	6	change_crontabschedule
18	Can delete crontab	6	delete_crontabschedule
19	Can add task	7	add_taskstate
20	Can change task	7	change_taskstate
21	Can delete task	7	delete_taskstate
22	Can add worker	8	add_workerstate
23	Can change worker	8	change_workerstate
24	Can delete worker	8	delete_workerstate
25	Can add periodic task	9	add_periodictask
26	Can change periodic task	9	change_periodictask
27	Can delete periodic task	9	delete_periodictask
28	Can add interval	10	add_intervalschedule
29	Can change interval	10	change_intervalschedule
30	Can delete interval	10	delete_intervalschedule
31	Can add saved group result	11	add_tasksetmeta
32	Can change saved group result	11	change_tasksetmeta
33	Can delete saved group result	11	delete_tasksetmeta
34	Can add periodic tasks	12	add_periodictasks
35	Can change periodic tasks	12	change_periodictasks
36	Can delete periodic tasks	12	delete_periodictasks
37	Can add task state	13	add_taskmeta
38	Can change task state	13	change_taskmeta
39	Can delete task state	13	delete_taskmeta
40	Can add Usuário	14	add_user
41	Can change Usuário	14	change_user
42	Can delete Usuário	14	delete_user
43	Can add enterprise	15	add_enterprise
44	Can change enterprise	15	change_enterprise
45	Can delete enterprise	15	delete_enterprise
46	Can add coment	16	add_coment
47	Can change coment	16	change_coment
48	Can delete coment	16	delete_coment
49	Can add like	17	add_like
50	Can change like	17	change_like
51	Can delete like	17	delete_like
52	Can add post	18	add_post
53	Can change post	18	change_post
54	Can delete post	18	delete_post
55	Can add moderation	19	add_moderation
56	Can change moderation	19	change_moderation
57	Can delete moderation	19	delete_moderation
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('auth_permission_id_seq', 57, true);


--
-- Data for Name: celery_taskmeta; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY celery_taskmeta (id, task_id, status, result, date_done, traceback, hidden, meta) FROM stdin;
\.


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('celery_taskmeta_id_seq', 1, false);


--
-- Data for Name: celery_tasksetmeta; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY celery_tasksetmeta (id, taskset_id, result, date_done, hidden) FROM stdin;
\.


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('celery_tasksetmeta_id_seq', 1, false);


--
-- Data for Name: core_coment; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY core_coment (id, post_id) FROM stdin;
\.


--
-- Name: core_coment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_coment_id_seq', 1, false);


--
-- Data for Name: core_enterprise; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY core_enterprise (id, name, slug, user_id, main_photo) FROM stdin;
1	Quero Educação	quero	1	DccpoB3W4AEv9mT.jpg_large.jpeg
\.


--
-- Name: core_enterprise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_enterprise_id_seq', 1, true);


--
-- Data for Name: core_like; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY core_like (id, post_id) FROM stdin;
\.


--
-- Name: core_like_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_like_id_seq', 1, false);


--
-- Data for Name: core_moderation; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY core_moderation (id, username, accepted, enterprise_id, post_id) FROM stdin;
\.


--
-- Name: core_moderation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_moderation_id_seq', 1, false);


--
-- Data for Name: core_post; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY core_post (id, file, username, text, date_posted, enterprise_id, user_display_name, show) FROM stdin;
1	https://pbs.twimg.com/media/DceX0cEXUAA3DMu.jpg	costamarcospro	Teste #minhatagdeteste https://t.co/NUO1juZrav	2018-05-05 21:49:00-03	\N	Marcos Costa	t
2	https://pbs.twimg.com/media/DceCt2KWAAANWP6.jpg	Waterboyradio	RT @WOAPRadio: #OtherEyesBand          #NowOn.. #TWITTER  #FollowThem ..@OthersEyesBand https://t.co/sEOxhab4Z1	2018-05-05 21:58:51-03	\N	@Waterboyradio	t
3	https://pbs.twimg.com/media/Cw-sZ-VUcAAoZQb.jpg	yamijonano4649	RT @otakunews6398: アニメが好きな人\n\nYes→RT\nNo→いいね\n\n#Twitterにどれだけ正直者がいるか調査 \n#拡散希望 https://t.co/1ZJ9KzOjfK	2018-05-05 21:59:37-03	\N	闇女	t
4	https://pbs.twimg.com/media/DceApVmX4AI9HlM.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/n45Ynz5RZT	2018-05-05 21:59:52-03	\N	@Waterboyradio	t
5	https://pbs.twimg.com/media/DceAjO0WkAQN6_N.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/6uCjeaUqYV	2018-05-05 22:00:01-03	\N	@Waterboyradio	t
6	https://pbs.twimg.com/media/DceAZlxXUAAbEZ9.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/varDYayHBP	2018-05-05 22:00:01-03	\N	@Waterboyradio	t
7	https://pbs.twimg.com/media/DceaXIUV0AAxXDf.jpg	mymamweb	今年のハロウィンはイオンで決まり！みんなで「ハロウィンクエスト」に参加しよう♪　https://t.co/u1UTblDhNQ #家族 #親子 #アート #写真 #パーティー #親 #Twitter #ハッシュタグ #目 #イベント https://t.co/qNqE7wVXQd	2018-05-05 22:00:03-03	\N	マイマム	t
8	https://pbs.twimg.com/media/DceaXVvW0AIhFZv.jpg	apcelent	The Forgotten Optional `else` in Python Loops\nhttps://t.co/desOfqzei0 #Loops #Programming #Python https://t.co/kLPcwzmPyy	2018-05-05 22:00:04-03	\N	apcelent	t
9	https://pbs.twimg.com/media/DceaXA9VwAA2aFU.jpg	515Deepspace	妻と娘はお出かけのようだ💆💇💄👜\nでGW 最後の奉仕🍳🔪🍴　遅い朝食☕🍞出来上がり～🙋　#お腹ペコリン部　#Twitter家庭料理部　#おうちごはん　#料理好きな人と繋がりたい https://t.co/NNuVAWE5LM	2018-05-05 22:00:04-03	\N	セブン	t
10	https://pbs.twimg.com/media/DceaYHEVwAEdrNi.jpg	bocobuffs	Find the Best #Twitter #Hashtags like #potus #trump #smm #seo #ceo #cxo #cmo https://t.co/EKywFqefIV https://t.co/NsX6wWvmnS	2018-05-05 22:00:07-03	\N	bocobuffs	t
11	https://pbs.twimg.com/media/DceYivcU8AA1840.jpg	daichaning2	RT @kazhomely: 本日の朝食。ザジキソースにフレッシュトマトをのせたザジキパン。やっぱり美味しい。鮮烈な酸味で目が覚める。\n#Twitter家庭料理部 https://t.co/wllC0eUTOq	2018-05-05 22:00:08-03	\N	レオナルド・ダ・便器	t
12	https://pbs.twimg.com/media/DceAN1BVQAARwBF.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/aH5zKNsQiN	2018-05-05 22:00:09-03	\N	@Waterboyradio	t
13	https://pbs.twimg.com/media/DceAT9xW0AIMJLQ.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/hawFb4SKhJ	2018-05-05 22:00:09-03	\N	@Waterboyradio	t
14	https://pbs.twimg.com/media/DcbhMe1UQAAeceH.jpg	reina170629	RT @Dv95ICXCSk7r6Pf: #Twitter上にいるアイナナ好き全員と繋がるのが密かな夢だったりするのでとりあえずこれを見たアイナナ好きはrtもしくはフォローしてくれたら全力でフォローしに行きます\n\n天にぃ押しです！ https://t.co/0DrRAq9GL9	2018-05-05 22:00:15-03	\N	はやぴー	t
15	https://pbs.twimg.com/media/DceAFMqUQAYeXs5.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/HeLBmrZxCv	2018-05-05 22:00:17-03	\N	@Waterboyradio	t
16	https://pbs.twimg.com/tweet_video_thumb/DceadpYV4AAnHl-.jpg	cheesygorditi	I am promising myself to use #Twitter more! #facebook is getting boring. https://t.co/iQMMfyGXbz	2018-05-05 22:00:31-03	\N	Ashley Castilla Torres	t
\.


--
-- Name: core_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_post_id_seq', 16, true);


--
-- Data for Name: core_user; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY core_user (id, password, last_login, is_superuser, name, email, is_active, is_staff, date_joined) FROM stdin;
1	bcrypt_sha256$$2b$12$ORB7pHy1mO/cZCvivPbAdeu1GdtHyQ0S5Cj1OmPiq/ha1dBJ1qGaq	2018-05-05 17:33:02.387701-03	t	erich	erich.rodriguesf@gmail.com	t	t	2018-05-05 17:30:39.850273-03
\.


--
-- Data for Name: core_user_groups; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY core_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: core_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_user_groups_id_seq', 1, false);


--
-- Name: core_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_user_id_seq', 1, true);


--
-- Data for Name: core_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY core_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-05-05 19:22:25.543008-03	1	Enterprise object	1	[{"added": {}}]	15	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	auth	group
2	auth	permission
3	contenttypes	contenttype
4	sessions	session
5	admin	logentry
6	djcelery	crontabschedule
7	djcelery	taskstate
8	djcelery	workerstate
9	djcelery	periodictask
10	djcelery	intervalschedule
11	djcelery	tasksetmeta
12	djcelery	periodictasks
13	djcelery	taskmeta
14	core	user
15	core	enterprise
16	core	coment
17	core	like
18	core	post
19	core	moderation
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('django_content_type_id_seq', 19, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-05-05 16:39:20.031624-03
2	contenttypes	0002_remove_content_type_name	2018-05-05 16:39:20.050158-03
3	auth	0001_initial	2018-05-05 16:39:20.113228-03
4	auth	0002_alter_permission_name_max_length	2018-05-05 16:39:20.122672-03
5	auth	0003_alter_user_email_max_length	2018-05-05 16:39:20.131727-03
6	auth	0004_alter_user_username_opts	2018-05-05 16:39:20.141189-03
7	auth	0005_alter_user_last_login_null	2018-05-05 16:39:20.151799-03
8	auth	0006_require_contenttypes_0002	2018-05-05 16:39:20.153938-03
9	auth	0007_alter_validators_add_error_messages	2018-05-05 16:39:20.166484-03
10	auth	0008_alter_user_username_max_length	2018-05-05 16:39:20.177182-03
11	core	0001_initial	2018-05-05 16:39:20.225832-03
12	admin	0001_initial	2018-05-05 16:39:20.259612-03
13	admin	0002_logentry_remove_auto_add	2018-05-05 16:39:20.281232-03
14	djcelery	0001_initial	2018-05-05 16:39:20.405574-03
15	sessions	0001_initial	2018-05-05 16:39:20.420555-03
16	core	0002_enterprise	2018-05-05 16:44:41.780514-03
17	core	0003_auto_20180505_1416	2018-05-05 18:16:30.876024-03
18	core	0004_auto_20180505_1519	2018-05-05 19:19:29.85143-03
19	core	0005_auto_20180505_1533	2018-05-05 19:34:11.425994-03
20	core	0006_auto_20180505_1715	2018-05-05 21:48:10.809277-03
21	core	0007_auto_20180505_1717	2018-05-05 21:48:10.840051-03
22	core	0008_auto_20180505_1748	2018-05-05 21:48:22.957393-03
23	core	0009_auto_20180505_1757	2018-05-05 21:57:49.201633-03
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('django_migrations_id_seq', 23, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
lpjlog429494gvipbqkkpp3qtn6i2tau	NjcwYjcxOTQ5YjkzM2EyY2YwYzk2NjhlMGUxZWQ0Y2Q1YzI1NDAxMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjNiZjRkYzRiNzE3NzVjNGRhYjE5OGRjNmU1OWUzMWNkNjZiNTcyIn0=	2018-05-19 17:33:02.390276-03
\.


--
-- Data for Name: djcelery_crontabschedule; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) FROM stdin;
\.


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('djcelery_crontabschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_intervalschedule; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY djcelery_intervalschedule (id, every, period) FROM stdin;
\.


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('djcelery_intervalschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictask; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) FROM stdin;
\.


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('djcelery_periodictask_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictasks; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY djcelery_periodictasks (ident, last_update) FROM stdin;
\.


--
-- Data for Name: djcelery_taskstate; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY djcelery_taskstate (id, state, task_id, name, tstamp, args, kwargs, eta, expires, result, traceback, runtime, retries, hidden, worker_id) FROM stdin;
\.


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('djcelery_taskstate_id_seq', 1, false);


--
-- Data for Name: djcelery_workerstate; Type: TABLE DATA; Schema: public; Owner: erich
--

COPY djcelery_workerstate (id, hostname, last_heartbeat) FROM stdin;
\.


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('djcelery_workerstate_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta_task_id_key; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);


--
-- Name: celery_tasksetmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_tasksetmeta_taskset_id_key; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);


--
-- Name: core_coment_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_coment
    ADD CONSTRAINT core_coment_pkey PRIMARY KEY (id);


--
-- Name: core_enterprise_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_enterprise
    ADD CONSTRAINT core_enterprise_pkey PRIMARY KEY (id);


--
-- Name: core_like_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_like
    ADD CONSTRAINT core_like_pkey PRIMARY KEY (id);


--
-- Name: core_moderation_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_moderation
    ADD CONSTRAINT core_moderation_pkey PRIMARY KEY (id);


--
-- Name: core_post_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_post
    ADD CONSTRAINT core_post_pkey PRIMARY KEY (id);


--
-- Name: core_user_email_key; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_user
    ADD CONSTRAINT core_user_email_key UNIQUE (email);


--
-- Name: core_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_user_groups
    ADD CONSTRAINT core_user_groups_pkey PRIMARY KEY (id);


--
-- Name: core_user_groups_user_id_group_id_c82fcad1_uniq; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_group_id_c82fcad1_uniq UNIQUE (user_id, group_id);


--
-- Name: core_user_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_user
    ADD CONSTRAINT core_user_pkey PRIMARY KEY (id);


--
-- Name: core_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: core_user_user_permissions_user_id_permission_id_73ea0daa_uniq; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_permission_id_73ea0daa_uniq UNIQUE (user_id, permission_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: djcelery_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_crontabschedule
    ADD CONSTRAINT djcelery_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_intervalschedule
    ADD CONSTRAINT djcelery_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_name_key UNIQUE (name);


--
-- Name: djcelery_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictasks
    ADD CONSTRAINT djcelery_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: djcelery_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_pkey PRIMARY KEY (id);


--
-- Name: djcelery_taskstate_task_id_key; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_task_id_key UNIQUE (task_id);


--
-- Name: djcelery_workerstate_hostname_key; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_hostname_key UNIQUE (hostname);


--
-- Name: djcelery_workerstate_pkey; Type: CONSTRAINT; Schema: public; Owner: erich; Tablespace: 
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: celery_taskmeta_hidden_23fd02dc; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX celery_taskmeta_hidden_23fd02dc ON celery_taskmeta USING btree (hidden);


--
-- Name: celery_taskmeta_task_id_9558b198_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX celery_taskmeta_task_id_9558b198_like ON celery_taskmeta USING btree (task_id varchar_pattern_ops);


--
-- Name: celery_tasksetmeta_hidden_593cfc24; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX celery_tasksetmeta_hidden_593cfc24 ON celery_tasksetmeta USING btree (hidden);


--
-- Name: celery_tasksetmeta_taskset_id_a5a1d4ae_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX celery_tasksetmeta_taskset_id_a5a1d4ae_like ON celery_tasksetmeta USING btree (taskset_id varchar_pattern_ops);


--
-- Name: core_coment_post_id_b285b597; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_coment_post_id_b285b597 ON core_coment USING btree (post_id);


--
-- Name: core_enterprise_slug_c4bee12b; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_enterprise_slug_c4bee12b ON core_enterprise USING btree (slug);


--
-- Name: core_enterprise_slug_c4bee12b_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_enterprise_slug_c4bee12b_like ON core_enterprise USING btree (slug varchar_pattern_ops);


--
-- Name: core_enterprise_user_id_3edbac24; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_enterprise_user_id_3edbac24 ON core_enterprise USING btree (user_id);


--
-- Name: core_like_post_id_83b37050; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_like_post_id_83b37050 ON core_like USING btree (post_id);


--
-- Name: core_moderation_enterprise_id_423fcaf3; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_moderation_enterprise_id_423fcaf3 ON core_moderation USING btree (enterprise_id);


--
-- Name: core_moderation_post_id_845e308f; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_moderation_post_id_845e308f ON core_moderation USING btree (post_id);


--
-- Name: core_post_enterprise_id_1ca7a24e; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_post_enterprise_id_1ca7a24e ON core_post USING btree (enterprise_id);


--
-- Name: core_user_email_92a71487_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_user_email_92a71487_like ON core_user USING btree (email varchar_pattern_ops);


--
-- Name: core_user_groups_group_id_fe8c697f; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_user_groups_group_id_fe8c697f ON core_user_groups USING btree (group_id);


--
-- Name: core_user_groups_user_id_70b4d9b8; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_user_groups_user_id_70b4d9b8 ON core_user_groups USING btree (user_id);


--
-- Name: core_user_user_permissions_permission_id_35ccf601; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_user_user_permissions_permission_id_35ccf601 ON core_user_user_permissions USING btree (permission_id);


--
-- Name: core_user_user_permissions_user_id_085123d3; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX core_user_user_permissions_user_id_085123d3 ON core_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: djcelery_periodictask_crontab_id_75609bab; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_periodictask_crontab_id_75609bab ON djcelery_periodictask USING btree (crontab_id);


--
-- Name: djcelery_periodictask_interval_id_b426ab02; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_periodictask_interval_id_b426ab02 ON djcelery_periodictask USING btree (interval_id);


--
-- Name: djcelery_periodictask_name_cb62cda9_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_periodictask_name_cb62cda9_like ON djcelery_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_hidden_c3905e57; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_taskstate_hidden_c3905e57 ON djcelery_taskstate USING btree (hidden);


--
-- Name: djcelery_taskstate_name_8af9eded; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_taskstate_name_8af9eded ON djcelery_taskstate USING btree (name);


--
-- Name: djcelery_taskstate_name_8af9eded_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_taskstate_name_8af9eded_like ON djcelery_taskstate USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_state_53543be4; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_taskstate_state_53543be4 ON djcelery_taskstate USING btree (state);


--
-- Name: djcelery_taskstate_state_53543be4_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_taskstate_state_53543be4_like ON djcelery_taskstate USING btree (state varchar_pattern_ops);


--
-- Name: djcelery_taskstate_task_id_9d2efdb5_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_taskstate_task_id_9d2efdb5_like ON djcelery_taskstate USING btree (task_id varchar_pattern_ops);


--
-- Name: djcelery_taskstate_tstamp_4c3f93a1; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_taskstate_tstamp_4c3f93a1 ON djcelery_taskstate USING btree (tstamp);


--
-- Name: djcelery_taskstate_worker_id_f7f57a05; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_taskstate_worker_id_f7f57a05 ON djcelery_taskstate USING btree (worker_id);


--
-- Name: djcelery_workerstate_hostname_b31c7fab_like; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_workerstate_hostname_b31c7fab_like ON djcelery_workerstate USING btree (hostname varchar_pattern_ops);


--
-- Name: djcelery_workerstate_last_heartbeat_4539b544; Type: INDEX; Schema: public; Owner: erich; Tablespace: 
--

CREATE INDEX djcelery_workerstate_last_heartbeat_4539b544 ON djcelery_workerstate USING btree (last_heartbeat);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_coment_post_id_b285b597_fk_core_post_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_coment
    ADD CONSTRAINT core_coment_post_id_b285b597_fk_core_post_id FOREIGN KEY (post_id) REFERENCES core_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_enterprise_user_id_3edbac24_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_enterprise
    ADD CONSTRAINT core_enterprise_user_id_3edbac24_fk_core_user_id FOREIGN KEY (user_id) REFERENCES core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_like_post_id_83b37050_fk_core_post_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_like
    ADD CONSTRAINT core_like_post_id_83b37050_fk_core_post_id FOREIGN KEY (post_id) REFERENCES core_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_moderation_enterprise_id_423fcaf3_fk_core_enterprise_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_moderation
    ADD CONSTRAINT core_moderation_enterprise_id_423fcaf3_fk_core_enterprise_id FOREIGN KEY (enterprise_id) REFERENCES core_enterprise(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_moderation_post_id_845e308f_fk_core_post_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_moderation
    ADD CONSTRAINT core_moderation_post_id_845e308f_fk_core_post_id FOREIGN KEY (post_id) REFERENCES core_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_post_enterprise_id_1ca7a24e_fk_core_enterprise_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_post
    ADD CONSTRAINT core_post_enterprise_id_1ca7a24e_fk_core_enterprise_id FOREIGN KEY (enterprise_id) REFERENCES core_enterprise(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_groups_group_id_fe8c697f_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_user_groups
    ADD CONSTRAINT core_user_groups_group_id_fe8c697f_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_groups_user_id_70b4d9b8_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_70b4d9b8_fk_core_user_id FOREIGN KEY (user_id) REFERENCES core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_user_permi_permission_id_35ccf601_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_user_user_permissions
    ADD CONSTRAINT core_user_user_permi_permission_id_35ccf601_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_user_permissions_user_id_085123d3_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_085123d3_fk_core_user_id FOREIGN KEY (user_id) REFERENCES core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_user_id FOREIGN KEY (user_id) REFERENCES core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_periodictas_crontab_id_75609bab_fk_djcelery_; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictas_crontab_id_75609bab_fk_djcelery_ FOREIGN KEY (crontab_id) REFERENCES djcelery_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_periodictas_interval_id_b426ab02_fk_djcelery_; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictas_interval_id_b426ab02_fk_djcelery_ FOREIGN KEY (interval_id) REFERENCES djcelery_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_; Type: FK CONSTRAINT; Schema: public; Owner: erich
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_ FOREIGN KEY (worker_id) REFERENCES djcelery_workerstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: erich
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM erich;
GRANT ALL ON SCHEMA public TO erich;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

