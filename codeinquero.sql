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
    main_photo character varying(200),
    hashtag character varying(100),
    description text
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
    show boolean NOT NULL,
    external_id bigint,
    moderated boolean NOT NULL
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

COPY core_enterprise (id, name, slug, user_id, main_photo, hashtag, description) FROM stdin;
2	uCoder	ucoder	1	mao-lmao-16278011.png	#pizza	
3	CodeInQuero	codeinquero	1	Screen_Shot_2018-03-13_at_11.44.17.png	#codeinquero	
4	Google	google	1	file_7.jpg	#altashoras	
1	Quero Educação	quero	1	DccpoB3W4AEv9mT.jpg_large.jpeg	#queroeducacao	Enchendo a sala de aula, um aluno de cada vez.\r\nNossa plataforma conecta estudantes com a faculdade perfeita para realizar seus sonhos.
\.


--
-- Name: core_enterprise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_enterprise_id_seq', 4, true);


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

COPY core_post (id, file, username, text, date_posted, enterprise_id, user_display_name, show, external_id, moderated) FROM stdin;
1371	\N	Kaiserreich	Pizza time #pizza #pizzatime #onomnom #food #tasty #israel #telaviv #tlv… https://t.co/3rz6cVrZ5F	2018-05-06 09:33:13-03	2	Kaiser	t	993106407271665664	f
1372	https://pbs.twimg.com/media/DcetKRLWAAIx6EC.jpg	Erica_OC	RT @PatriciaPatu: A cara dos adolescentes olhando para o Supla, está impagável...🤔🤔\n#AltasHoras #supla https://t.co/l3czPc7fB9	2018-05-06 09:33:28-03	4	Erica Pottérica	t	993106469540253697	f
1373	https://pbs.twimg.com/media/Dcg5F3IX4AA6FEU.jpg	cassioferreira9	Milf in  Konotop. Can someone make me cum on kik? Add me : BOMOSO. #pizza #italy #italian #italianfood https://t.co/kh6d9nBvtN	2018-05-06 09:33:58-03	2	Julia	t	993106596514451456	f
1374	\N	bn_alass5	I'm gonna to eat a lot of #pizza 🍕🍕  It was made by my #mom\nShe makes a good #pizza 😍🍕🙏	2018-05-06 09:35:10-03	2	Amr Haj Omar	t	993106901356371969	f
1375	\N	Kaiserreich	Enjoying the evening Pizza time #pizza #pizzatime #onomnom #food #tasty… https://t.co/F69GdNDdTZ	2018-05-06 09:36:07-03	2	Kaiser	t	993107140117123072	f
1376	\N	mrbsolutions	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 09:36:45-03	2	mark beaumont	t	993107295843311616	f
1377	\N	otatatata	癒しのGW鎌倉🌿\n食べてボーッとして食べて歩いて…🚶‍♀️\n#鎌倉 #GW #pizza #🍕\n#ソフトクリーム #🍦\n#明月院 #建長寺 場所: 鎌倉建長寺 https://t.co/keGtRxtchL	2018-05-06 09:36:53-03	2	たらこ唇	t	993107333013299200	f
1378	\N	CalebBlock1	Artisan #Pizza Co Parker Color https://t.co/TTmLcuOScD #artisanpizzaco #craftbeer #craftpizza #localrestaurants #parkercoloradorestaurants	2018-05-06 09:37:57-03	2	Caleb Block	t	993107601188708352	f
1379	https://pbs.twimg.com/media/Dcg6GsXWAAAjM8r.jpg	OutdoorGourmets	Team OG at the Elsecar #beer Festival #BankHolidayWeekend fun #pizza today and tomorrow https://t.co/TF7mEBugb0	2018-05-06 09:38:16-03	2	The Outdoor Gourmets	t	993107679223734272	f
1380	\N	tiobred	#pizza #Salvador #bredpizza #comida #RodíziodePizza em Edificio Torre da Graca https://t.co/JmP8UU5G0R	2018-05-06 09:39:34-03	2	Anderson	t	993108004672241664	f
1381	\N	Jules_CHM	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 09:40:07-03	4	Jules	t	993108145873604614	f
1382	https://pbs.twimg.com/media/DcbyAYyXUAA5MDo.jpg	doaaamaral	RT @oserginho: Hoje tem Rodrigo e Jô no #AltasHoras. https://t.co/zFL9F5QdGX	2018-05-06 09:40:55-03	4	Amaral Jr	t	993108345040011264	f
1383	\N	pizzadomicilio1	La Saporita en #ACoruña Calle la Franja Delicioso menÃº a domicilio #Italiana #Pizza # https://t.co/63LVLq3p8T	2018-05-06 09:41:02-03	2	Pizza a domicilio	t	993108376761589760	f
1384	\N	gtboard	#daughter #dotter #pappa #dad #pizza #stockholm #sweden #gtboard #italy https://t.co/gwEzyoLwzZ	2018-05-06 09:41:25-03	2	gtboard	t	993108473553530880	f
1385	\N	ebenTHEODORA	RT @WerKauftDasDenn: Ein eigener Pizzaofen – das ist doch mal stylisch 🍕 #pizza https://t.co/a1XwwLMYKD	2018-05-06 09:41:44-03	2	The Lady is a Tramp	t	993108552024805378	f
1386	\N	bacteria76	Saudade das brincadeiras saudáveis do nosso tempo... isso moldava o caráter, hj em dia tudo é mimimi #AltasHoras https://t.co/60uOzg0C4C	2018-05-06 09:42:18-03	4	joão de oliveira	t	993108693540536320	f
1387	\N	marodontl	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 09:42:43-03	4	marcela rodríguez	t	993108800667254784	f
1388	\N	gerardo71984563	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 09:44:33-03	4	gerardo	t	993109259121553408	f
1389	\N	PaliosAllen	#Sunday #funday enjoy your day with  #Palios #pizza and of course with  your favorite drink #wine #beer #BYOB… https://t.co/7VdENl6xsI	2018-05-06 09:45:05-03	2	Palio's Pizza Cafe	t	993109393955803136	f
1390	\N	BeerAndPizzaDay	RT @PaliosAllen: #Sunday #funday enjoy your day with  #Palios #pizza and of course with  your favorite drink #wine #beer #BYOB #weekend #we…	2018-05-06 09:45:27-03	2	Beer and Pizza Day!	t	993109488591781889	f
1391	\N	krnries	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 09:45:40-03	2	Karen Ries	t	993109543499583489	f
1392	\N	eRtwngr	In other words, “cleanup requested in aisle 4”. Lets get this covered up fast #pizza https://t.co/VPVATyMwav	2018-05-06 09:45:45-03	2	RightWinger	t	993109564169117696	f
1393	https://pbs.twimg.com/tweet_video_thumb/Dcg77mrXcAI-J2J.jpg	maykoncomk	#TudoPeloHexa VAI BRASSSSSSIL CARALHO \n\n#AltasHoras #GleiciCampea https://t.co/wxaxBHgkn8	2018-05-06 09:46:01-03	4	mykon	t	993109628299939846	f
1394	\N	lacuocagalante	Esiste l’attenuante specifica per chi timbra al lavoro e poi va, a mangiare una #pizza ?? #furbettidelcartellino 😂😂😂 https://t.co/jEQCVOZmpV	2018-05-06 09:46:01-03	2	la cuoca galante	f	993109630556483585	f
1395	https://pbs.twimg.com/media/Dcg6GsXWAAAjM8r.jpg	BeerAndPizzaDay	RT @OutdoorGourmets: Team OG at the Elsecar #beer Festival #BankHolidayWeekend fun #pizza today and tomorrow https://t.co/TF7mEBugb0	2018-05-06 09:47:29-03	2	Beer and Pizza Day!	t	993109999126642688	f
1396	\N	Jenba590	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 09:47:33-03	2	Jenny Jones	t	993110016835182592	f
1397	\N	Jenba590	@Hyperec_HRS wow this would be lovely RT thanks #Competition #giveaway #WIN  #pizza #pasta #food	2018-05-06 09:47:50-03	2	Jenny Jones	t	993110087370727424	f
1398	\N	Avas_tweets	RT @Jenba590: @Hyperec_HRS wow this would be lovely RT thanks #Competition #giveaway #WIN  #pizza #pasta #food	2018-05-06 09:48:29-03	2	Ava	t	993110249388339200	f
1399	\N	cryptobserver24	RT @ElixiumCrypto: When you ❤️ #Cryptocurrency and even your #Pizza reminds you of it 🍕\n\nLeverage Available ✅\n\n▶️ https://t.co/ZrfIwrZH7j…	2018-05-06 09:48:36-03	2	Crypto Observer	t	993110279532810243	f
516	\N	kccstylxs	#AltasHoras #DomingoDetremuraSDV https://t.co/MieMufK7x1	2018-05-06 01:53:34-03	4	.	t	992990732062547968	f
1400	\N	theRLPD	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 09:48:52-03	2	Rachel	t	993110346322890752	f
1401	\N	earlyhigh	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 09:49:06-03	2	Amrit	t	993110407383519233	f
1402	\N	ranadarbyshire	Now THIS is how pizza should be. 👌🏽 #pizza #Perugia #Italy #lunch #foodie #holiday #fromwhereistand #traveltheworld… https://t.co/JNv8z9ytRK	2018-05-06 09:49:45-03	2	Rana Darbyshire	t	993110568046383105	f
1403	\N	EnzoBattarra	Oggi #pranzodelladomenica con la #pizza 🍕 #gourmet di #casavitiello #alternativeditradizione con lo #chef… https://t.co/4cybX5qEWj	2018-05-06 09:51:20-03	2	Enzo Battarra	t	993110966064828416	f
1404	\N	OndaWebTv	RT @EnzoBattarra: Oggi #pranzodelladomenica con la #pizza 🍕 #gourmet di #casavitiello #alternativeditradizione con lo #chef #DomenicoIavaro…	2018-05-06 09:52:07-03	2	OndaWebTv	t	993111162949652480	f
1405	\N	lolal8837	https://t.co/LC7BOIAM0Y - Get 🍕EPS in the Initial Slice Offering https://t.co/8KDn16KjaB #ICO #cyrpto #eos #btc #pizza с помощью @EOSPizza	2018-05-06 09:52:23-03	2	лола лама	t	993111233040715776	f
1406	https://pbs.twimg.com/media/Dcg9dP_XkAE9eiu.jpg	costamarcospro	#codeinquero #queroeducacao https://t.co/Y2eboowil7	2018-05-06 09:52:41-03	3	Marcos Costa	t	993111305988001797	f
1407	\N	GoodVintageArt1	RT @GoodVintageArt1: #Wooden #rolling #pin #Dough #roller #Handled pin #Pizza #maker #Vintage rolling #dough #Pastry rolling #Kitchen #tool…	2018-05-06 09:54:59-03	2	GoodVintageArt	t	993111888094466048	f
1408	\N	luigicastronuov	RT @calabriaonline: #Pizza di farina 🌾 bio #multicereali cotta nel forno a legna, con #speck locale, #caciocavallo #Sila, #marmellata di #c…	2018-05-06 09:55:02-03	2	luigi castronuovo	t	993111898488008705	f
1409	\N	GildedyTableaux	#timedexercise #timeddrawing #pens #ballpointpen #pizza #crystalball… https://t.co/CgWjm2O2a1	2018-05-06 09:55:19-03	2	I am Gildedy, a Tableaux.	t	993111969828917248	f
1410	\N	DebRooney3	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 09:55:29-03	2	Deb Rooney	t	993112013428621312	f
1411	\N	samstanley1972	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 09:55:44-03	2	Sam Stanley 📕🎶🍷👗💤	t	993112076569710592	f
1412	\N	reiter_rob	SUV #crashesinto #PapaMurphys #Pizza #restaurant #OakCreek #Wisconsin #storefrontcrash #60timesperday  https://t.co/aN1MAqbd2K	2018-05-06 09:56:24-03	2	Rob Reiter	t	993112244417318912	f
1413	\N	javierled22	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 09:58:07-03	4	Javier Luca- ✌	t	993112674966933505	f
1414	\N	su__chama	manjo surprise 🎂🌺\n\n#mybirthday #0505 #thnks \n#italian #pizza #pizza #localbar… https://t.co/oEEM7dHeQP	2018-05-06 09:58:07-03	2	すっち	t	993112675159760896	f
1415	\N	altrinchammkt	The #Brunch #pizza is back once again! Packed with pancetta, #organic potatoes, wood roasted tomatoes, parsley &amp; du… https://t.co/lqdIomjcnj	2018-05-06 09:58:16-03	2	Altrincham Market	t	993112713940426752	f
1416	https://pbs.twimg.com/media/Dcg_PrZXkAA_aIv.jpg	IVPizza	#Pizza, the answer to all of our problems!! #Italianvillapizza #orlandpark ivpizza https://t.co/VgxvlJTzcC	2018-05-06 10:00:26-03	2	Italian Villa Pizza	t	993113258004484097	f
1417	\N	sowinesofood	La Città della #Pizza delizia #Roma: la #manifestazione, alla quale moltissimi #romani hanno scelto di partecipare,… https://t.co/fZU1oAF8DF	2018-05-06 10:00:36-03	2	So Wine So Food	t	993113301520396290	f
1418	\N	TwitItalianWine	RT @lacuocagalante: Esiste l’attenuante specifica per chi timbra al lavoro e poi va, a mangiare una #pizza ?? #furbettidelcartellino 😂😂😂 ht…	2018-05-06 10:01:11-03	2	ItalianWineMarketing	f	993113445892575232	f
1419	\N	MarketHouseAlty	RT @altrinchammkt: The #Brunch #pizza is back once again! Packed with pancetta, #organic potatoes, wood roasted tomatoes, parsley &amp; duck eg…	2018-05-06 10:02:51-03	2	Market House*	t	993113865675329537	f
1420	\N	FranWellBrewPub	Chill out with us this evening with Brewhouse Jazz at 6.30pm! #BeerGarden #LongWeekend #Pizza #CraftBeer	2018-05-06 10:04:08-03	2	FranWellBrewPub	t	993114189345492997	f
1421	\N	Jinty85	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 10:04:48-03	2	Janice	t	993114355133763584	f
1422	\N	FCOGLOBORIO	RT @RedeGlobo: Não é todo dia que temos Rodrigo Santoro, Jô Soares, Vladimir Brichta e @suplaoriginal até #AltasHoras não é mesmo?  ❤️ http…	2018-05-06 10:05:18-03	4	Globo RJ 53 anos No Ar	t	993114480665092096	f
1423	https://pbs.twimg.com/media/Dcerrg0VMAAwwio.jpg	FCOGLOBORIO	RT @RedeGlobo: Amizade do POP! 💕 #AltasHoras https://t.co/0lxisIRGs1	2018-05-06 10:05:28-03	4	Globo RJ 53 anos No Ar	t	993114524894056449	f
1424	https://pbs.twimg.com/media/DchAioeWAAEZZ9O.jpg	fio_gadea	#BuenosDías #Rubia #Fio #AltasHoras #PREMIOSMTVMIAW https://t.co/yNjJeh7BWA	2018-05-06 10:06:10-03	4	Fio GaGa	t	993114699909779457	f
1425	https://pbs.twimg.com/ext_tw_video_thumb/993114892260597760/pu/img/t513d2YiojDFib-S.jpg	Andreveiculos	Vamos ajudar a atingir a meta para ajudar ao próximo. #AltasHoras #Internacional #família #lucianohuck https://t.co/munwvgJ3fA	2018-05-06 10:07:05-03	4	Andre Veiculos	t	993114930730668032	f
1426	\N	GGRUEDA	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 10:07:05-03	4	Gabriel Guillermo	t	993114932525895683	f
1427	\N	paulpoker182	2 pizzas gone! Awesome,they needed them I think. #pizza #daughters #vegan https://t.co/H2MSHCsPKf	2018-05-06 10:07:39-03	2	Paul Gestalt	t	993115075107082240	f
1428	\N	rl_89in	RT @Exposed_Amateur: #teasing #pizza #delivery @top_upskirt @exhibiendo @PizzaDares @exhibiendome @nudainpubblico @flashingwives @publicfla…	2018-05-06 10:08:02-03	2	Rio	t	993115168891719680	f
1429	\N	andy_wedge	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 10:09:16-03	2	Andy Wedge	t	993115480113238016	f
1430	\N	JorgeAl50571975	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 10:09:49-03	4	Jorge Alves	t	993115620354019329	f
1431	\N	Tobithomas	🍕🍝🍧\n---\n#larochelle #italianfood #pizza #pasta à La Rochelle, France https://t.co/tY79E1l593	2018-05-06 10:12:24-03	2	Fleurettiste 🤺	t	993116270664077313	f
1432	https://pbs.twimg.com/media/DcbyAYyXUAA5MDo.jpg	informa_arara	RT @oserginho: Hoje tem Rodrigo e Jô no #AltasHoras. https://t.co/zFL9F5QdGX	2018-05-06 10:13:44-03	4	@Arara Informa	t	993116606640414721	f
1433	\N	Freeman_Group	RT @millracepub: Got any plans for the #BankHoliday? We’re reintroducing our popular #pizza evenings. Starting on Sunday 4pm - 8pm and thro…	2018-05-06 10:14:06-03	2	MF Freeman	t	993116698827001856	f
1434	https://pbs.twimg.com/ext_tw_video_thumb/993115789187313665/pu/img/vLM6TFIVMUa6RKTe.jpg	AcaiMal	@AcaiMal #Açaí #acai #AltasHoras https://t.co/V0yX1ymGMx	2018-05-06 10:14:29-03	4	Açaí Do Mal	t	993116793857347584	f
1435	https://pbs.twimg.com/media/Dcg1QKsXkAAznk8.jpg	jules0455	RT @LouBcakes: Home made #pizza &amp; #sausagerolls 😀 https://t.co/I0Z1cDfucw	2018-05-06 10:14:47-03	2	jules	t	993116868977332225	f
1436	\N	HGFarina	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 10:14:48-03	4	Hernán	t	993116875142893568	f
1437	\N	pizzadomicilio1	Enzo's en #ACoruña Calle Agar  bajo  #Italiana #Pizza # #sugerenciasdelchef/surtidodecroquetas(jamónymarisco) https://t.co/Plz2NeneJt	2018-05-06 10:15:03-03	2	Pizza a domicilio	t	993116934907617280	f
1438	\N	yamenava	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 10:15:08-03	4	Yame Nava	t	993116956306919425	f
1439	\N	rayspizza1	Eat In / Take Out - And WE DELIVER too!! Go to https://t.co/lGi9tdMMlc to see our menu and call ahead with your order. #Pizza	2018-05-06 10:15:23-03	2	Rays Pizza - Closter	t	993117019817070593	f
1440	\N	GuidoRicchio	RT @feelmoreIT: Il “Maestro” Giorgio Moffa il vero artista della pizza Napoletana .... #pizza #gourmet #italianfood #diegocusano #pizzaArt…	2018-05-06 10:15:29-03	2	Guido	t	993117044844482560	f
1441	\N	detalhesidols	RT @NNoveleiro: Não existe gente feio, existe gente que não conhece os produtos Jequiti\n\nRodrigo Santoro\n\n#AltasHoras https://t.co/B0dxJCPj…	2018-05-06 10:15:44-03	4	Karol 🌺	f	993117109092782081	f
1442	https://pbs.twimg.com/media/Dcg1QKsXkAAznk8.jpg	Sexyladi84Nicks	RT @LouBcakes: Home made #pizza &amp; #sausagerolls 😀 https://t.co/I0Z1cDfucw	2018-05-06 10:16:38-03	2	Charlie nicks	t	993117334884749312	f
1443	https://pbs.twimg.com/media/Dcerrg0VMAAwwio.jpg	AntroReality	RT @RedeGlobo: Amizade do POP! 💕 #AltasHoras https://t.co/0lxisIRGs1	2018-05-06 10:17:11-03	4	AntroReality Renault	t	993117471338090497	f
582	\N	Hpsantos_	123702 #AltasHoras #DomingoDetremuraSDV https://t.co/02SrRpoXlP	2018-05-06 02:00:10-03	4	Mr. Santos	t	992992393233301504	f
627	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	\N	f
701	\N	teknoproblem	Dove la #pizza è #passione	2018-05-06 02:33:31-03	2	Energy broker	t	993000785851101186	f
791	\N	darthdrids	Eu odeio esse programa. Boa noite.  #AltasHoras	2018-05-06 03:17:56-03	4	darthdrids	t	993011966359818240	f
802	\N	PamPammyjean	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:27:37-03	2	PAMELA HUTCHINSON	t	993014402470301697	f
955	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	1749609393740409909	f
1029	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	1773015625558181222	f
1058	https://instagram.fsjk2-1.fna.fbcdn.net/vp/a1b2404497adbd9792329a4fee8c81d9/5B99CF2C/t51.2885-15/e35/23347928_436805526721117_4503815866088947712_n.jpg	262073731	#enem2017 #queroeducacao #queroenem	2017-11-10 12:30:21-02	1	\N	t	1645041260501057531	f
1068	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d62627e7cf9cda0b6902c616c5f2b6a8/5AF13A45/t51.2885-15/e35/21985276_1794626007233937_3607962288885071872_n.jpg	311698400	Um dia normal aqui😗😗 #querobolsa#queroeducacao	2017-09-29 18:00:14-03	1	\N	t	1614796910865084983	f
517	https://pbs.twimg.com/tweet_video_thumb/DceshVDXkAAuaVD.jpg	yaaboysalles	RT @calinhares69: #AltasHoras acho q é o primeiro programa em meses q não tem sertanejo! https://t.co/3Hv0RMcYv1	2018-05-06 01:53:48-03	4	Yaaboysalles	t	992990794641498112	f
518	https://pbs.twimg.com/tweet_video_thumb/Dce1BPnXcAE4LNg.jpg	yaaboysalles	RT @cassiodcf: Rodrigo Santoro contando que sofreu preconceito por ser bonito.  #AltasHoras https://t.co/M73QXiEhs4	2018-05-06 01:54:08-03	4	Yaaboysalles	t	992990877894299648	f
519	\N	yaaboysalles	RT @OpaCole: #AltasHoras Supla meu anjo, senta ali e não canta não, por favor.	2018-05-06 01:54:26-03	4	Yaaboysalles	t	992990953119141888	f
520	\N	Deborahsouzama	RT @rafaeelfranco: Tentando entender pq o Léo Santana foi até o #AltasHoras cantar a música dos outros, sendo que ele tem muitas musicas ót…	2018-05-06 01:54:56-03	4	Dєвσяαн	t	992991077387915264	f
521	https://pbs.twimg.com/media/Dcerrg0VMAAwwio.jpg	Nowa87013290	RT @RedeGlobo: Amizade do POP! 💕 #AltasHoras https://t.co/0lxisIRGs1	2018-05-06 01:55:00-03	4	Nowa	t	992991094081191936	f
522	\N	DivulgacoesLisa	A CHAVE \nhttps://t.co/bqKyIB15mg\n#AutoEstimaPraCimaArmy #fabricadecasamentos #SabrinaGrávida #AltasHoras… https://t.co/SuN93rYipd	2018-05-06 01:55:00-03	4	Lisa Divulgações	t	992991094211338240	f
523	\N	Deborahsouzama	RT @OpaCole: #AltasHoras Vaaaaai dar pt vaaaaai dá, Léo Santana prevendo as eleições de 2018	2018-05-06 01:55:11-03	4	Dєвσяαн	t	992991139350315008	f
524	\N	kccstylxs	#AltasHoras #DomingoDetremuraSDV https://t.co/MieMufK7x1	2018-05-06 01:55:35-03	4	.	t	992991243021021184	f
525	\N	yaaboysalles	RT @adryanars: Supla é aquele ser que só de se mexer a gente ja sente vergonha alheia!!! #altashoras	2018-05-06 01:56:36-03	4	Yaaboysalles	t	992991495614550017	f
542	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5a74f7dbb1f9f631746e69dc673bde1a/5B77BB02/t51.2885-15/e35/29417977_554597174925305_4297028729978224640_n.jpg	366384893	Eu amo meu trabalho ♥️😂😍 #eadieta #queroeducacao #ovosdepascoa	2018-03-29 12:34:00-03	1	\N	t	\N	f
543	https://instagram.fsjk2-1.fna.fbcdn.net/vp/666288e5333effaa2fa76a466ac91bc6/5B879EE3/t51.2885-15/e35/28427348_1721218044606598_8903026927510487040_n.jpg	1072847106	Queridos!! #familiaquero #querobolsa #queroeducacao	2018-03-09 18:55:29-03	1	\N	t	\N	f
544	https://instagram.fsjk2-1.fna.fbcdn.net/vp/af7fc26fad495d0c1c641f39bcc43379/5B9989A3/t51.2885-15/e35/26864040_2027044477553148_7792113346974580736_n.jpg	258105290	A vida me ensinou a nunca desistir Nem ganhar, nem perder mas procurar evoluir Podem me tirar tudo que tenho Só não podem me tirar as coisas boas que eu já fiz #querido #queroquero #photooftheday #happy #sp #sjc #queroeducacao	2018-01-26 09:48:40-02	1	\N	t	\N	f
545	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1fda1bd0043ad420837bbb2d71594f17/5B818C35/t51.2885-15/e35/26285565_538989903142663_6989314045874536448_n.jpg	1808627157	Empresa Boa é ver pessoas felizes! Hoje foi o dia do picolé gourmet na quero bolsas! Leve para sua empresa nossos picolés gourmet!  #parceirostudodibom #picolégourmet #tendencia #top #quero #querobolsas #queroeducacao	2018-01-18 15:03:07-02	1	\N	t	\N	f
546	https://instagram.fsjk2-1.fna.fbcdn.net/vp/67531d9a192f99b8df18bb0483790a35/5B940850/t51.2885-15/e35/26072397_1975036312714240_1880886863204450304_n.jpg	1376284178	Novo projeto 2018 #querobolsa #queroeducacao #jovempansjc	2018-01-08 09:30:59-02	1	\N	t	\N	f
569	\N	Deborahsouzama	RT @patrickpachecco: léo santana maravilhoso tava no #AltasHoras eu só sei lembra desses dois vídeos tbm maravilhosos https://t.co/ZK6rf274…	2018-05-06 01:57:17-03	4	Dєвσяαн	t	992991667782381568	f
572	\N	yaaboysalles	RT @_wesleyalvs: toda vez que eu vejo o supla só consigo me lembrar daquele encontro histórico q ele teve com a ana Maria braga\n#AltasHoras…	2018-05-06 01:57:42-03	4	Yaaboysalles	t	992991773940207616	f
607	\N	TheBlargg	Jesus, can someone, anyone, open a #DeepDish #pizza restaurant in #Vancouver	2018-05-06 02:12:55-03	2	Andre	t	992995601615736832	f
1	https://pbs.twimg.com/media/DceX0cEXUAA3DMu.jpg	costamarcospro	Teste #minhatagdeteste https://t.co/NUO1juZrav	2018-05-05 21:49:00-03	1	Marcos Costa	t	\N	f
2	https://pbs.twimg.com/media/DceCt2KWAAANWP6.jpg	Waterboyradio	RT @WOAPRadio: #OtherEyesBand          #NowOn.. #TWITTER  #FollowThem ..@OthersEyesBand https://t.co/sEOxhab4Z1	2018-05-05 21:58:51-03	1	@Waterboyradio	t	\N	f
3	https://pbs.twimg.com/media/Cw-sZ-VUcAAoZQb.jpg	yamijonano4649	RT @otakunews6398: アニメが好きな人\n\nYes→RT\nNo→いいね\n\n#Twitterにどれだけ正直者がいるか調査 \n#拡散希望 https://t.co/1ZJ9KzOjfK	2018-05-05 21:59:37-03	1	闇女	t	\N	f
4	https://pbs.twimg.com/media/DceApVmX4AI9HlM.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/n45Ynz5RZT	2018-05-05 21:59:52-03	1	@Waterboyradio	t	\N	f
5	https://pbs.twimg.com/media/DceAjO0WkAQN6_N.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/6uCjeaUqYV	2018-05-05 22:00:01-03	1	@Waterboyradio	t	\N	f
6	https://pbs.twimg.com/media/DceAZlxXUAAbEZ9.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/varDYayHBP	2018-05-05 22:00:01-03	1	@Waterboyradio	t	\N	f
7	https://pbs.twimg.com/media/DceaXIUV0AAxXDf.jpg	mymamweb	今年のハロウィンはイオンで決まり！みんなで「ハロウィンクエスト」に参加しよう♪　https://t.co/u1UTblDhNQ #家族 #親子 #アート #写真 #パーティー #親 #Twitter #ハッシュタグ #目 #イベント https://t.co/qNqE7wVXQd	2018-05-05 22:00:03-03	1	マイマム	t	\N	f
8	https://pbs.twimg.com/media/DceaXVvW0AIhFZv.jpg	apcelent	The Forgotten Optional `else` in Python Loops\nhttps://t.co/desOfqzei0 #Loops #Programming #Python https://t.co/kLPcwzmPyy	2018-05-05 22:00:04-03	1	apcelent	t	\N	f
9	https://pbs.twimg.com/media/DceaXA9VwAA2aFU.jpg	515Deepspace	妻と娘はお出かけのようだ💆💇💄👜\nでGW 最後の奉仕🍳🔪🍴　遅い朝食☕🍞出来上がり～🙋　#お腹ペコリン部　#Twitter家庭料理部　#おうちごはん　#料理好きな人と繋がりたい https://t.co/NNuVAWE5LM	2018-05-05 22:00:04-03	1	セブン	t	\N	f
10	https://pbs.twimg.com/media/DceaYHEVwAEdrNi.jpg	bocobuffs	Find the Best #Twitter #Hashtags like #potus #trump #smm #seo #ceo #cxo #cmo https://t.co/EKywFqefIV https://t.co/NsX6wWvmnS	2018-05-05 22:00:07-03	1	bocobuffs	t	\N	f
19	https://pbs.twimg.com/media/DceuBHMXUAA1H6r.jpg	cigarretxz	RT @RainhaCarminha: Rodrigo Santoro, você é muito Maravilhoso entenda #AltasHoras https://t.co/UUXeJY5NUn	2018-05-06 00:08:57-03	4	👑👭gio	t	992964407180308480	f
20	https://pbs.twimg.com/tweet_video_thumb/Dce1BPnXcAE4LNg.jpg	pleasureAmmy	RT @cassiodcf: Rodrigo Santoro contando que sofreu preconceito por ser bonito.  #AltasHoras https://t.co/M73QXiEhs4	2018-05-06 00:16:23-03	4	Um ó de pessoa	t	992966277730840576	f
21	https://pbs.twimg.com/media/Dce5mqGW0AAHzro.jpg	Max100KC	Webinars: How to Market and Sell Using Webinars https://t.co/gHLAIeYnFw #media #influence #facebook #twitter https://t.co/mzaKyaWy5H	2018-05-06 00:16:35-03	1	MaxP	t	992966326888095744	f
11	https://pbs.twimg.com/media/DceYivcU8AA1840.jpg	daichaning2	RT @kazhomely: 本日の朝食。ザジキソースにフレッシュトマトをのせたザジキパン。やっぱり美味しい。鮮烈な酸味で目が覚める。\n#Twitter家庭料理部 https://t.co/wllC0eUTOq	2018-05-05 22:00:08-03	1	レオナルド・ダ・便器	t	\N	f
12	https://pbs.twimg.com/media/DceAN1BVQAARwBF.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/aH5zKNsQiN	2018-05-05 22:00:09-03	1	@Waterboyradio	t	\N	f
13	https://pbs.twimg.com/media/DceAT9xW0AIMJLQ.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/hawFb4SKhJ	2018-05-05 22:00:09-03	1	@Waterboyradio	t	\N	f
14	https://pbs.twimg.com/media/DcbhMe1UQAAeceH.jpg	reina170629	RT @Dv95ICXCSk7r6Pf: #Twitter上にいるアイナナ好き全員と繋がるのが密かな夢だったりするのでとりあえずこれを見たアイナナ好きはrtもしくはフォローしてくれたら全力でフォローしに行きます\n\n天にぃ押しです！ https://t.co/0DrRAq9GL9	2018-05-05 22:00:15-03	1	はやぴー	t	\N	f
15	https://pbs.twimg.com/media/DceAFMqUQAYeXs5.jpg	Waterboyradio	RT @WOAPRadio: #ShootTheRooster             https://t.co/bOCCOrhGWy …    #Twitter. @shoot_rooster https://t.co/HeLBmrZxCv	2018-05-05 22:00:17-03	1	@Waterboyradio	t	\N	f
16	https://pbs.twimg.com/tweet_video_thumb/DceadpYV4AAnHl-.jpg	cheesygorditi	I am promising myself to use #Twitter more! #facebook is getting boring. https://t.co/iQMMfyGXbz	2018-05-05 22:00:31-03	1	Ashley Castilla Torres	t	\N	f
17	https://pbs.twimg.com/media/Cw-sZ-VUcAAoZQb.jpg	5bEjJmTOaLowzxY	RT @otakunews6398: アニメが好きな人\n\nYes→RT\nNo→いいね\n\n#Twitterにどれだけ正直者がいるか調査 \n#拡散希望 https://t.co/1ZJ9KzOjfK	2018-05-05 23:46:29-03	1	来栖	t	992958751089963010	f
18	https://pbs.twimg.com/media/DceqFZcW4AEfOM1.jpg	Srta_Nasciment0	RT @pjvirtuous: Rodrigo Santoro é o verdadeiro homão da porra! #AltasHoras https://t.co/e8SM5fOYG2	2018-05-06 00:07:49-03	1	Waleria ♥	t	992964121837654016	f
526	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	\N	f
527	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	\N	f
528	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	\N	f
529	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	\N	f
530	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	\N	f
531	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	\N	f
532	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	\N	f
533	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	\N	f
534	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	\N	f
535	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	\N	f
536	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	\N	f
537	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	\N	f
538	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	\N	f
539	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	\N	f
540	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	\N	f
541	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	\N	f
547	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b65d6769b16c81b77b04efade786fc78/5B9AC728/t51.2885-15/e35/26158479_341285343018361_5825048334343077888_n.jpg	3984491654	Acabei de receber um cartão de Natal e Fim de Ano da @querobolsa ! 😍 Como vocês sabem, em 2017, tive a felicidade de ser escolhido para o projeto Guia da Faculdade para escrever algumas matérias para a revista QB, e em 2018, tenho certeza que essa parceria continuará firme e forte.  Mafê, Dri, e todos que fazem parte desse projeto e que sempre me trataram com muito carinho, o meu muito obrigado! 💙❤💚 #querobolsa #queroeducacao #faculdade #universitário #letras #pedagogia #RJ #obrigado #muitoamorenvolvido	2018-01-04 17:05:43-02	1	\N	t	\N	f
548	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f1b47b22fa0f1ad52a9f2d1993a6a83b/5AF10D84/t51.2885-15/e15/25014460_1536695553073152_171475757543981056_n.jpg	276511545	Uma festa de Natal dessas bichooo #querobolsa #queroeducacao #confra	2017-12-23 08:23:15-02	1	\N	t	\N	f
565	https://instagram.fsjk2-1.fna.fbcdn.net/vp/fb1b584b75ded61d95443f5016d945d7/5AF09185/t51.2885-15/e35/21985276_1794626007233937_3607962288885071872_n.jpg	311698400	Um dia normal aqui😗😗 #querobolsa#queroeducacao	2017-09-29 18:00:14-03	1	\N	t	\N	f
566	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ecbc3d716befab267d45c25b64881e3e/5B82F3CB/t51.2885-15/e35/21985275_132996120765031_3118196533783166976_n.jpg	274479807	Aniversariantes do mês do nosso jeitinho!  #queroeducacao #coreotop #family	2017-09-29 17:57:36-03	1	\N	t	\N	f
567	https://instagram.fsjk2-1.fna.fbcdn.net/vp/19b36524bd99bb215417ea41b14020c5/5AF157F1/t51.2885-15/e35/26183813_1614706058643081_6698618324135182336_n.jpg	585035149	Povo que trabalha aqui deve ser plenamente feliz. Slc kk #codeinthedark #querobolsa #queroeducacao	2017-09-24 23:40:39-03	1	\N	t	\N	f
549	https://instagram.fsjk2-1.fna.fbcdn.net/vp/caa58240b7f4640b1e59279ff36cddf7/5B927B77/t51.2885-15/e35/25022237_2031115147145536_8923232008449032192_n.jpg	238678792	Há alguns dias uma nova etapa da minha vida começou! Muitas mudanças aconteceram, muito amadurecimento, muitas saudades de casa... mas enfim é necessário que mudanças aconteçam pra que a gente possa crescer e se desenvolver como ser humano, acredito que tudo que acontece tem um motivo, e Deus prepara tudo direitinho! Posso dizer que Ele preparou tudo pra mim e pra me deixar super feliz, me deu uma oportunidade de me desenvolver profissionalmente em uma empresa incrível a @queroedu. Agradeço a eles por confiarem em mim para compor essa família que é demaisss!!! Enfim, acho que chegou a hora de mirar novos horizontes, mudar, melhorar e o principal, vestir mesmo essa camisa da Quero Educação e transformar a vida das pessoas por meio da educação! 😍😍❤ #queroeducacao #trabalho #melhorempresa #familiaqueroquero #sjc #life	2017-12-13 20:27:19-02	1	\N	t	\N	f
550	https://instagram.fsjk2-1.fna.fbcdn.net/vp/33cd6a0679982f025111313467a16cf7/5B7D75F3/t51.2885-15/e35/24177644_168878290514587_6478922904334499840_n.jpg	39140288	Queri Perry, representando. #querobolsa #queroeducacao #startup #mascote #querido	2017-11-30 22:21:40-02	1	\N	t	\N	f
551	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8c830dfb067879bf7364b9563146df3e/5B893146/t51.2885-15/s1080x1080/e15/fr/23734103_298508407306434_4806539957273362432_n.jpg	497896926	Presente de aniversário da #queroeducacao 💞💞💞💞	2017-11-22 17:05:48-02	1	\N	t	\N	f
552	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f6d3ae96cdcf6a107d4dd8c55af1bbd2/5AF16725/t51.2885-15/e15/23594285_1979238058981831_2407180250006945792_n.jpg	5374086283	Dia 13/11 foi o Dia Mundial da Gentileza. E como todos os dias vivemos e vemos troca de gentilezas entre todo o time, fizemos a Semana Quero Gentileza. Teve presente, recadinhos, troca de carinho e felicidade!  Tudo porque acreditamos que gentileza gera gentileza! #SemanaQueroGentileza #gentileza #queroeducacao #gestaodefelicidade	2017-11-17 21:15:20-02	1	\N	t	\N	f
553	https://instagram.fsjk2-1.fna.fbcdn.net/vp/80d2be7a5575f1b2b3dd307a38d35667/5B84FA47/t51.2885-15/e35/23595823_378647939239851_4315875810977251328_n.jpg	262736763	Quem disse que anjos não existem?! 😇  Um simples ato de carinho cria uma onda sem fim!  #SemanaDaGentileza #QueroEducacao #QueroBolsa #GentilezaGeraGentileza	2017-11-16 15:32:40-02	1	\N	t	\N	f
554	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d5807ea0c2ba7a7699209f4f6db230c7/5B90C406/t51.2885-15/e35/23507207_2034369553510997_4799254623292489728_n.jpg	199506765	Das emoções das Bancas de Monografia. A aluna Estéfani Naara surpreendeu-me com essa linda gravura. Vai para quadro. Recebi, dizendo, você não vai me fazer chorar, né? #adoreioreconhecimento #direitoemusica #direito #musica #fip #paraiba #monografia #garoto #queroeducacao	2017-11-14 18:59:44-02	1	\N	t	\N	f
555	https://instagram.fsjk2-1.fna.fbcdn.net/vp/a1b2404497adbd9792329a4fee8c81d9/5B99CF2C/t51.2885-15/e35/23347928_436805526721117_4503815866088947712_n.jpg	262073731	#enem2017 #queroeducacao #queroenem	2017-11-10 12:30:21-02	1	\N	t	\N	f
556	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b2aa264e0cf03ae98dd3e831def04fa3/5B851828/t51.2885-15/e35/23416840_503869826654213_6977058279385989120_n.jpg	1376284178	Começando cedo! #querobolsa #queroeducacao	2017-11-10 07:41:24-02	1	\N	t	\N	f
557	https://instagram.fsjk2-1.fna.fbcdn.net/vp/44e0fd2dbe17aa87022b2496c1121ec6/5B7C7043/t51.2885-15/e35/23280060_847792982012675_1059904444394635264_n.jpg	42105459	Enquanto vão prestigiar os atrasados do ENEM, nós trabalhamos pra ninguém atrasar! #queroeducacao #querobolsa #queroenem ❤️ Por um país com mais educação ❤️	2017-11-07 22:57:06-02	1	\N	t	\N	f
558	https://instagram.fsjk2-1.fna.fbcdn.net/vp/88b164da64147ba55b7e80e884cbb9f2/5B98D9EC/t51.2885-15/e35/23098494_153681475236559_3765635653627281408_n.jpg	42105459	Halloween 🎃 #Queroeducacao	2017-11-01 21:15:22-02	1	\N	t	\N	f
559	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1a042e30f6b348c648c87efedd2bc7c4/5B84542B/t51.2885-15/e35/22860725_366481520460489_303477767750549504_n.jpg	262073731	Quero quero... #queroeducacao	2017-11-01 10:46:32-02	1	\N	t	\N	f
560	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8f5eb4f63bff747aec2dd53db70ecc16/5B8AD2EA/t51.2885-15/e35/22858451_1673246299372397_656970013051191296_n.jpg	274479807	Sobre um lugar cheeeeio de malucos! #queroeducacao #familiiaquero #malucos #aniverdomes #halloween	2017-10-31 19:37:50-02	1	\N	t	\N	f
561	https://instagram.fsjk2-1.fna.fbcdn.net/vp/391b0a6c02b22199fb503f8ea6d9efd1/5B83DBA5/t51.2885-15/e35/22802371_489241758115705_816793975292690432_n.jpg	3993501518	#elixirday #queroeducacao #querobolsa pq hoje é dia de programar	2017-10-28 09:04:35-02	1	\N	t	\N	f
562	https://instagram.fsjk2-1.fna.fbcdn.net/vp/92f24e626b083fb122d6d37088d14fcb/5B7FB149/t51.2885-15/e35/22710671_122932481733498_4646686565915951104_n.jpg	1460755894	O país é nosso; o dinheiro é nosso e continua faltando para educação, saúde, moradia, etc. Mas as ruas continuam vazias!! O povo só vai pras ruas para protestos vazios, gritos de ódio e disputas  de bandeiras que não mudam nada! Só o que parece importar é vestir camisa de tal cor e fazer selfies para as redes sociais!  #inaceitável !  Quem faz este país SOMOS NÓS  e isso tudo só vai mudar quando a população entender que NÓS PODEMOS TUDO! NÓS É QUE PODEMOS FAZER ACONTECER!!!! Faça acontecer! Diga não aos políticos sujos e corruptos nas urnas. Vamos começar a limpar este país para que ELE seja realmente nosso! 🤘🤘 #acredite #facaacontecer #essepaisemeu  #inaceitável #chegadecorrupcao  #queroeducacao #querosaude #queroseguranca #queroumpaismelhor #naovaomecalar #euvoulutarsempre	2017-10-25 10:32:58-02	1	\N	t	\N	f
563	https://instagram.fsjk2-1.fna.fbcdn.net/vp/51822c5a62854aa27cf64293cb15a251/5B86AB31/t51.2885-15/e35/22280879_141114443197371_4174374381083951104_n.jpg	1958774183	Que role mais empreendedor! ♡ #serempreendedor #queroeducacao #polijunior #ligaoarmotorista	2017-10-09 10:54:48-03	1	\N	t	\N	f
570	\N	yaaboysalles	RT @fernandalins_: A mocinha no #AltasHoras: "Meu sonho é me formar e fazer três viagens por ano". E aí, vocês contam ou eu conto?	2018-05-06 01:57:23-03	4	Yaaboysalles	t	992991694869159937	f
571	\N	gugu_Mito	RT @AndreSarges: #AltasHoras porra o Supla cantando um clássico e essa platéia parada no Serginho , essa geração tá perdida mesmo.	2018-05-06 01:57:28-03	4	Augustcho⚡️	t	992991715190562821	f
564	https://instagram.fsjk2-1.fna.fbcdn.net/vp/694e61dc9f1d227d90c5ca35e84f674d/5B794654/t51.2885-15/e35/22157943_1530171793688131_8380063673665716224_n.jpg	213226786	Quando um experiente que guia (dá conselhos) para você e seu time (sócios), apresentando a intenção, propósito, espírito, paixão. [Por Extensão] do direcionamento, desenvolve, produz ou cria projetos, ideias, obras etc. Mentor Intelectual, são os nossos heróis internos. Aqueles nos quais nos espelhamos, que se transformam nos nossos role-models e cujas expectativas (reais ou supostas) tentamos atender ao longo da nossa vida, mesmo que não estejam mais conosco. . #querobolsa #queroeducacao #startups #educacaoempreendedora #sonho #tech #parquetecnologico #mentoria #empreendedorismo #sonhogrande #inquieto #pensesimples #empreendedorismosocial #business #anjos #startup #acreditar #desenvolvimentopessoal #time	2017-10-01 09:36:23-03	1	\N	t	\N	f
568	https://instagram.fsjk2-1.fna.fbcdn.net/vp/783d9711a5700d7b7e0f43acb34ece01/5AF17D7E/t51.2885-15/e35/21827750_745130949017389_8807059967795265536_n.jpg	4476582566	#Repost @justgigio ・・・ Sobre uma sensação incrível... #tbt #codeinthedarkbr #queroeducacao #frontinvale  Com a palavra, o campeão da edição Vale do Paraíba!	2017-09-21 18:48:00-03	1	\N	t	\N	f
573	https://pbs.twimg.com/ext_tw_video_thumb/990415269041528832/pu/img/DuAx9jT_1mrfE-Ym.jpg	izabela_farias1	RT @0_mxdk_0: assistindo a participação do Marco Luque no #AltasHoras like https://t.co/Ec09KZg2SU	2018-05-06 01:58:06-03	4	Xuxuzinho	t	992991876092489728	f
574	https://pbs.twimg.com/tweet_video_thumb/DSQWdpQX4AA0W54.jpg	yaaboysalles	RT @FrNandol7: Minha reação seria essa se eu estivesse na plateia enquanto supla cantava #AltasHoras https://t.co/IF5dmi28Wt	2018-05-06 01:58:07-03	4	Yaaboysalles	t	992991881016602624	f
575	\N	yaaboysalles	RT @Walthersena: Supla poderia largar essa onda fixa de querer ser cantor e ingressar na carreira de prof de inglês #AltasHoras	2018-05-06 01:58:26-03	4	Yaaboysalles	t	992991958313336832	f
576	https://pbs.twimg.com/media/DceqVkpW0AEwKsm.jpg	yaaboysalles	RT @thiagose_sena: Rodrigo Santoro representando o Brasil em #Westworld e muito bem !!\nORGULHO #AltasHoras https://t.co/gdELmHmg1m	2018-05-06 01:58:40-03	4	Yaaboysalles	t	992992017083977728	f
577	\N	DivulgacoesLisa	A CHAVE \nhttps://t.co/bqKyIB15mg\n#AutoEstimaPraCimaArmy #fabricadecasamentos #SabrinaGrávida #AltasHoras… https://t.co/KSPwHxuLAa	2018-05-06 01:58:47-03	4	Lisa Divulgações	t	992992044841865216	f
578	https://pbs.twimg.com/media/DceuBHMXUAA1H6r.jpg	luis_tjg	RT @RainhaCarminha: Rodrigo Santoro, você é muito Maravilhoso entenda #AltasHoras https://t.co/UUXeJY5NUn	2018-05-06 01:58:49-03	4	ㅤㅤㅤFelipe Silva	t	992992054182596608	f
579	https://pbs.twimg.com/tweet_video_thumb/Dcetiz7W0AECy4b.jpg	yaaboysalles	RT @OpaCole: #AltasHoras Supla cantando e me fazendo passar vergonha https://t.co/RLlOVuHhFh	2018-05-06 02:00:01-03	4	Yaaboysalles	t	992992355199438849	f
580	https://pbs.twimg.com/media/Db6uBLSW4AArttG.jpg	_ariannabanana	RT @MemeeVida: Da série "Momentos da TV brasileira impossíveis de explicar" \n\n#altashoras https://t.co/eX4r5ZdE7Z	2018-05-06 02:00:01-03	4	ari de sá	t	992992357929844736	f
581	\N	cindyofsamoa	It’s #pizza time at Samoa’s #best pizza 🍕 place #giordanos @ Giordano's… https://t.co/xiK1igW1VZ	2018-05-06 02:00:09-03	2	Cindy Of Samoa	t	992992392725712896	f
583	\N	willianckto	#AltasHoras nunca olhei isso, programa bem bosta kk	2018-05-06 02:00:10-03	4	Wil 🇦🇹	t	992992394965602304	f
584	\N	StandardPromo	50 pizzas 20 minutes https://t.co/kFsZRrHnRO #woodfired #neapolitan #brickoven #pizza #fastcasual #pizzaequipment… https://t.co/y6R7qwvlZE	2018-05-06 02:00:22-03	2	StandardPandM	t	992992447172096001	f
585	https://pbs.twimg.com/media/DcfRYYlXcAEjcZ0.jpg	IVPizza	They say when you meet the pizza of your dreams, time stops. And that's true. #pizza #OrlandPark #Italianvillapizza https://t.co/8sLYwYThqp	2018-05-06 02:00:26-03	2	Italian Villa Pizza	t	992992460887425024	f
586	\N	itawasaaa	初リップルしてきた。\n\n#北海道 #リップル #ピザ #グルメ #オーシャンビュー #pizza 場所: リップル https://t.co/PA8Gtfxpq2	2018-05-06 02:00:27-03	2	Toshio Katakura	t	992992465295732737	f
587	\N	Fear_God_No_Man	@Swamy39 #LeBron\n#الامتحانات\n#اهم_شي_عند_البنات\n#AltasHoras\n#PodemosHablar\nGW最終日\nDeRozan\nBrad Stevens\nKyle Connor\nX… https://t.co/OEHZ7NSpNi	2018-05-06 02:00:44-03	4	Truth Only Wins !	t	992992538968707074	f
588	https://pbs.twimg.com/media/DcfRjYSX0AAwgLh.jpg	IVPizza	#Pizza, the answer to all of our problems!! #Italianvillapizza #orlandpark ivpizza https://t.co/ft8txKblcC	2018-05-06 02:01:11-03	2	Italian Villa Pizza	t	992992650818211840	f
589	https://pbs.twimg.com/media/Dce0vVmX0AArL50.jpg	yaaboysalles	RT @RainhaCarminha: Casal do pop e talentoso da televisão brasileira quem concorda respira #AltasHoras https://t.co/TXTww53MxN	2018-05-06 02:02:17-03	4	Yaaboysalles	t	992992926912405504	f
590	https://pbs.twimg.com/media/Dce5uGbXUAEjq2j.jpg	Cabelo_Carvalho	RT @gshow: Jô Soares se emociona com declaração de Rodrigo Santoro. Veja mais 👉 \nhttps://t.co/HNgA6j2Nlq #AltasHoras https://t.co/EsdCW2WYUq	2018-05-06 02:02:36-03	4	Minero	t	992993005991800838	f
591	https://pbs.twimg.com/media/Dce6gtwXUAA1dcv.jpg	yaaboysalles	RT @RainhaCarminha: Que tristeza encerrar o fim de noite com Supla cantando e com esses gritos #AltasHoras https://t.co/B9JsbKjXiq	2018-05-06 02:03:17-03	4	Yaaboysalles	t	992993180420333568	f
592	https://pbs.twimg.com/media/Dce5PXDW0AE7XAg.jpg	serjao_	RT @laribueno00: você quer ânimo @? #AltasHoras https://t.co/s4o2Bq4HI8	2018-05-06 02:03:19-03	4	Sergio_16	t	992993189240991745	f
593	https://pbs.twimg.com/media/Dce74AWW0AAqr1d.jpg	yaaboysalles	RT @carolinatuita: #AltasHoras\nsupla: a\neu: https://t.co/BQZxh0iuYC	2018-05-06 02:03:38-03	4	Yaaboysalles	t	992993268374949888	f
594	https://pbs.twimg.com/media/DcepzSyXcAAhQzj.jpg	yaaboysalles	RT @blogdoeg: ESSE HOMEM NÃO PODE SER AFASTADO DA TV #AltasHoras https://t.co/0XFpIGTYFg	2018-05-06 02:04:09-03	4	Yaaboysalles	t	992993399337902080	f
595	\N	yaaboysalles	RT @patrickpachecco: léo santana maravilhoso tava no #AltasHoras eu só sei lembra desses dois vídeos tbm maravilhosos https://t.co/ZK6rf274…	2018-05-06 02:05:35-03	4	Yaaboysalles	t	992993757191696385	f
596	\N	DivulgacoesLisa	A CHAVE \nhttps://t.co/bqKyIB15mg\n#AutoEstimaPraCimaArmy #fabricadecasamentos #SabrinaGrávida #AltasHoras… https://t.co/NVjYyj9Xem	2018-05-06 02:06:08-03	4	Lisa Divulgações	t	992993898405474305	f
597	\N	edoody2011	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 02:07:39-03	2	Liz	t	992994279667781632	f
598	\N	HanaH_88	Não gosto muito do Supla,mas a melhor parte do programa,foi ele cantando 'Garota de Berlim',clássico!! 🤘👅 #AltasHoras	2018-05-06 02:08:11-03	4	Ana Claudia	t	992994413814173696	f
599	\N	danielrojazo	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 02:08:30-03	4	#GLOBERTO CAVALLO	t	992994492813803520	f
600	https://pbs.twimg.com/tweet_video_thumb/Dce1BPnXcAE4LNg.jpg	anneloise	RT @cassiodcf: Rodrigo Santoro contando que sofreu preconceito por ser bonito.  #AltasHoras https://t.co/M73QXiEhs4	2018-05-06 02:09:02-03	4	falsi anne 🎟	t	992994624682815489	f
601	https://pbs.twimg.com/media/DcfTi18WsAACOpa.jpg	Aurelio16_	#AltasHoras\nJá fui mais gordinho :) kkkk\n'-' https://t.co/fYzMfc2R0G	2018-05-06 02:09:57-03	4	AURÉLIO 💀	t	992994857336672257	f
602	\N	Millswaith	The perils of tweeting just anything that's on your mind: \n#pizza	2018-05-06 02:10:28-03	2	Chipper	t	992994987615764481	f
603	\N	amandhayal	#domino #pizza @ Noida, India https://t.co/Ra2FqyBR9D	2018-05-06 02:10:46-03	2	अमन धायल	t	992995062559772674	f
604	\N	echoserviceinfo	Why the Bank of Japan could still shock markets : https://t.co/to6BClKuCE      |      #AltasHoras	2018-05-06 02:11:03-03	4	echoService	t	992995133682528257	f
605	\N	ikeneko7	COBY（コビー）北谷店 980円で激安ピザ食べ放題のお店 https://t.co/YBbyupNewy #COBY #北谷 #PIZZA #コビー #マルゲリータ #COBY北谷店 #沖縄 #食べ放題 #オーダーバイキング #ピザ	2018-05-06 02:11:25-03	2	いけてそうな人をフォローする猫	t	992995227118915585	f
606	\N	luis_tjg	RT @patrickpachecco: léo santana maravilhoso tava no #AltasHoras eu só sei lembra desses dois vídeos tbm maravilhosos https://t.co/ZK6rf274…	2018-05-06 02:12:21-03	4	ㅤㅤㅤFelipe Silva	t	992995461706539008	f
608	https://pbs.twimg.com/media/Dce5uGbXUAEjq2j.jpg	Camilamaria2s	RT @gshow: Jô Soares se emociona com declaração de Rodrigo Santoro. Veja mais 👉 \nhttps://t.co/HNgA6j2Nlq #AltasHoras https://t.co/EsdCW2WYUq	2018-05-06 02:13:09-03	4	Caca	t	992995662328401921	f
609	\N	a24559956	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 02:13:24-03	4	Daniel.A24559956	t	992995724144054272	f
610	https://pbs.twimg.com/tweet_video_thumb/Dce1BPnXcAE4LNg.jpg	ChinaaPH	RT @cassiodcf: Rodrigo Santoro contando que sofreu preconceito por ser bonito.  #AltasHoras https://t.co/M73QXiEhs4	2018-05-06 02:13:43-03	4	Paquetá 🔴⚫	t	992995803332530178	f
611	\N	followme_speed	RT @itawasaaa: 初リップルしてきた。\n\n#北海道 #リップル #ピザ #グルメ #オーシャンビュー #pizza 場所: リップル https://t.co/Pn39CxCffA	2018-05-06 02:14:24-03	2	瀧本伊織@仮想通貨専業トレーダー	t	992995975873683457	f
612	\N	luis_tjg	RT @_mile01: Léo Santana ignorado,nem chamaram o bichinho pra contar a história dele\n #AltasHoras	2018-05-06 02:14:25-03	4	ㅤㅤㅤFelipe Silva	t	992995980982276096	f
613	\N	luis_tjg	RT @guii_mont: vejo o Leo Santana e só lembro daquele pau 🌝 #altashoras	2018-05-06 02:14:30-03	4	ㅤㅤㅤFelipe Silva	t	992996001098227712	f
614	\N	luis_tjg	RT @diogoalcan: Leo Santana é muito pro meu ❤️ #AltasHoras	2018-05-06 02:14:41-03	4	ㅤㅤㅤFelipe Silva	t	992996046849691649	f
615	\N	pizzamaniaNJ	Our catering @pizzamania_garfieldnj #catering #pizzamania #garfield #nj #newjerseyeats #pizza #🥧  @ New Jersey	2018-05-06 02:14:44-03	2	PizzaMania Garfield	t	992996058685943810	f
616	\N	heyyisis_	O Vladimir e o Santoro pra mim são meus dois crushs desde de sempre, é isto\n #AltasHoras	2018-05-06 02:14:51-03	4	Arabella シ	t	992996090331959296	f
617	\N	luis_tjg	RT @NaiaraValle1: #AltasHoras Leo Santana gostoso toda vida.	2018-05-06 02:14:59-03	4	ㅤㅤㅤFelipe Silva	t	992996121676075008	f
618	\N	luis_tjg	RT @imyourscamz: O Leo Santana já cantou alguma música dele ? #AltasHoras	2018-05-06 02:15:17-03	4	ㅤㅤㅤFelipe Silva	t	992996198503141377	f
619	\N	Fear_God_No_Man	@tweet2el #LeBron\n#الامتحانات\n#اهم_شي_عند_البنات\n#AltasHoras\n#PodemosHablar\nGW最終日\nDeRozan\nBrad Stevens\nKyle Connor… https://t.co/SXfRK1MHLe	2018-05-06 02:15:21-03	4	Truth Only Wins !	t	992996214168866816	f
620	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	\N	f
621	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	\N	f
622	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	\N	f
623	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	\N	f
624	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	\N	f
625	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	\N	f
626	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	\N	f
628	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	\N	f
629	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	\N	f
630	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	\N	f
631	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	\N	f
632	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	\N	f
633	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	\N	f
634	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	\N	f
635	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	\N	f
636	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5a74f7dbb1f9f631746e69dc673bde1a/5B77BB02/t51.2885-15/e35/29417977_554597174925305_4297028729978224640_n.jpg	366384893	Eu amo meu trabalho ♥️😂😍 #eadieta #queroeducacao #ovosdepascoa	2018-03-29 12:34:00-03	1	\N	t	\N	f
637	https://instagram.fsjk2-1.fna.fbcdn.net/vp/666288e5333effaa2fa76a466ac91bc6/5B879EE3/t51.2885-15/e35/28427348_1721218044606598_8903026927510487040_n.jpg	1072847106	Queridos!! #familiaquero #querobolsa #queroeducacao	2018-03-09 18:55:29-03	1	\N	t	\N	f
638	https://instagram.fsjk2-1.fna.fbcdn.net/vp/af7fc26fad495d0c1c641f39bcc43379/5B9989A3/t51.2885-15/e35/26864040_2027044477553148_7792113346974580736_n.jpg	258105290	A vida me ensinou a nunca desistir Nem ganhar, nem perder mas procurar evoluir Podem me tirar tudo que tenho Só não podem me tirar as coisas boas que eu já fiz #querido #queroquero #photooftheday #happy #sp #sjc #queroeducacao	2018-01-26 09:48:40-02	1	\N	t	\N	f
639	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1fda1bd0043ad420837bbb2d71594f17/5B818C35/t51.2885-15/e35/26285565_538989903142663_6989314045874536448_n.jpg	1808627157	Empresa Boa é ver pessoas felizes! Hoje foi o dia do picolé gourmet na quero bolsas! Leve para sua empresa nossos picolés gourmet!  #parceirostudodibom #picolégourmet #tendencia #top #quero #querobolsas #queroeducacao	2018-01-18 15:03:07-02	1	\N	t	\N	f
640	https://instagram.fsjk2-1.fna.fbcdn.net/vp/67531d9a192f99b8df18bb0483790a35/5B940850/t51.2885-15/e35/26072397_1975036312714240_1880886863204450304_n.jpg	1376284178	Novo projeto 2018 #querobolsa #queroeducacao #jovempansjc	2018-01-08 09:30:59-02	1	\N	t	\N	f
641	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b65d6769b16c81b77b04efade786fc78/5B9AC728/t51.2885-15/e35/26158479_341285343018361_5825048334343077888_n.jpg	3984491654	Acabei de receber um cartão de Natal e Fim de Ano da @querobolsa ! 😍 Como vocês sabem, em 2017, tive a felicidade de ser escolhido para o projeto Guia da Faculdade para escrever algumas matérias para a revista QB, e em 2018, tenho certeza que essa parceria continuará firme e forte.  Mafê, Dri, e todos que fazem parte desse projeto e que sempre me trataram com muito carinho, o meu muito obrigado! 💙❤💚 #querobolsa #queroeducacao #faculdade #universitário #letras #pedagogia #RJ #obrigado #muitoamorenvolvido	2018-01-04 17:05:43-02	1	\N	t	\N	f
642	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f1b47b22fa0f1ad52a9f2d1993a6a83b/5AF10D84/t51.2885-15/e15/25014460_1536695553073152_171475757543981056_n.jpg	276511545	Uma festa de Natal dessas bichooo #querobolsa #queroeducacao #confra	2017-12-23 08:23:15-02	1	\N	t	\N	f
643	https://instagram.fsjk2-1.fna.fbcdn.net/vp/caa58240b7f4640b1e59279ff36cddf7/5B927B77/t51.2885-15/e35/25022237_2031115147145536_8923232008449032192_n.jpg	238678792	Há alguns dias uma nova etapa da minha vida começou! Muitas mudanças aconteceram, muito amadurecimento, muitas saudades de casa... mas enfim é necessário que mudanças aconteçam pra que a gente possa crescer e se desenvolver como ser humano, acredito que tudo que acontece tem um motivo, e Deus prepara tudo direitinho! Posso dizer que Ele preparou tudo pra mim e pra me deixar super feliz, me deu uma oportunidade de me desenvolver profissionalmente em uma empresa incrível a @queroedu. Agradeço a eles por confiarem em mim para compor essa família que é demaisss!!! Enfim, acho que chegou a hora de mirar novos horizontes, mudar, melhorar e o principal, vestir mesmo essa camisa da Quero Educação e transformar a vida das pessoas por meio da educação! 😍😍❤ #queroeducacao #trabalho #melhorempresa #familiaqueroquero #sjc #life	2017-12-13 20:27:19-02	1	\N	t	\N	f
644	https://instagram.fsjk2-1.fna.fbcdn.net/vp/33cd6a0679982f025111313467a16cf7/5B7D75F3/t51.2885-15/e35/24177644_168878290514587_6478922904334499840_n.jpg	39140288	Queri Perry, representando. #querobolsa #queroeducacao #startup #mascote #querido	2017-11-30 22:21:40-02	1	\N	t	\N	f
645	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8c830dfb067879bf7364b9563146df3e/5B893146/t51.2885-15/s1080x1080/e15/fr/23734103_298508407306434_4806539957273362432_n.jpg	497896926	Presente de aniversário da #queroeducacao 💞💞💞💞	2017-11-22 17:05:48-02	1	\N	t	\N	f
646	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f6d3ae96cdcf6a107d4dd8c55af1bbd2/5AF16725/t51.2885-15/e15/23594285_1979238058981831_2407180250006945792_n.jpg	5374086283	Dia 13/11 foi o Dia Mundial da Gentileza. E como todos os dias vivemos e vemos troca de gentilezas entre todo o time, fizemos a Semana Quero Gentileza. Teve presente, recadinhos, troca de carinho e felicidade!  Tudo porque acreditamos que gentileza gera gentileza! #SemanaQueroGentileza #gentileza #queroeducacao #gestaodefelicidade	2017-11-17 21:15:20-02	1	\N	t	\N	f
647	https://instagram.fsjk2-1.fna.fbcdn.net/vp/80d2be7a5575f1b2b3dd307a38d35667/5B84FA47/t51.2885-15/e35/23595823_378647939239851_4315875810977251328_n.jpg	262736763	Quem disse que anjos não existem?! 😇  Um simples ato de carinho cria uma onda sem fim!  #SemanaDaGentileza #QueroEducacao #QueroBolsa #GentilezaGeraGentileza	2017-11-16 15:32:40-02	1	\N	t	\N	f
648	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d5807ea0c2ba7a7699209f4f6db230c7/5B90C406/t51.2885-15/e35/23507207_2034369553510997_4799254623292489728_n.jpg	199506765	Das emoções das Bancas de Monografia. A aluna Estéfani Naara surpreendeu-me com essa linda gravura. Vai para quadro. Recebi, dizendo, você não vai me fazer chorar, né? #adoreioreconhecimento #direitoemusica #direito #musica #fip #paraiba #monografia #garoto #queroeducacao	2017-11-14 18:59:44-02	1	\N	t	\N	f
649	https://instagram.fsjk2-1.fna.fbcdn.net/vp/a1b2404497adbd9792329a4fee8c81d9/5B99CF2C/t51.2885-15/e35/23347928_436805526721117_4503815866088947712_n.jpg	262073731	#enem2017 #queroeducacao #queroenem	2017-11-10 12:30:21-02	1	\N	t	\N	f
650	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b2aa264e0cf03ae98dd3e831def04fa3/5B851828/t51.2885-15/e35/23416840_503869826654213_6977058279385989120_n.jpg	1376284178	Começando cedo! #querobolsa #queroeducacao	2017-11-10 07:41:24-02	1	\N	t	\N	f
651	https://instagram.fsjk2-1.fna.fbcdn.net/vp/44e0fd2dbe17aa87022b2496c1121ec6/5B7C7043/t51.2885-15/e35/23280060_847792982012675_1059904444394635264_n.jpg	42105459	Enquanto vão prestigiar os atrasados do ENEM, nós trabalhamos pra ninguém atrasar! #queroeducacao #querobolsa #queroenem ❤️ Por um país com mais educação ❤️	2017-11-07 22:57:06-02	1	\N	t	\N	f
652	https://instagram.fsjk2-1.fna.fbcdn.net/vp/88b164da64147ba55b7e80e884cbb9f2/5B98D9EC/t51.2885-15/e35/23098494_153681475236559_3765635653627281408_n.jpg	42105459	Halloween 🎃 #Queroeducacao	2017-11-01 21:15:22-02	1	\N	t	\N	f
653	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1a042e30f6b348c648c87efedd2bc7c4/5B84542B/t51.2885-15/e35/22860725_366481520460489_303477767750549504_n.jpg	262073731	Quero quero... #queroeducacao	2017-11-01 10:46:32-02	1	\N	t	\N	f
654	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8f5eb4f63bff747aec2dd53db70ecc16/5B8AD2EA/t51.2885-15/e35/22858451_1673246299372397_656970013051191296_n.jpg	274479807	Sobre um lugar cheeeeio de malucos! #queroeducacao #familiiaquero #malucos #aniverdomes #halloween	2017-10-31 19:37:50-02	1	\N	t	\N	f
655	https://instagram.fsjk2-1.fna.fbcdn.net/vp/391b0a6c02b22199fb503f8ea6d9efd1/5B83DBA5/t51.2885-15/e35/22802371_489241758115705_816793975292690432_n.jpg	3993501518	#elixirday #queroeducacao #querobolsa pq hoje é dia de programar	2017-10-28 09:04:35-02	1	\N	t	\N	f
656	https://instagram.fsjk2-1.fna.fbcdn.net/vp/92f24e626b083fb122d6d37088d14fcb/5B7FB149/t51.2885-15/e35/22710671_122932481733498_4646686565915951104_n.jpg	1460755894	O país é nosso; o dinheiro é nosso e continua faltando para educação, saúde, moradia, etc. Mas as ruas continuam vazias!! O povo só vai pras ruas para protestos vazios, gritos de ódio e disputas  de bandeiras que não mudam nada! Só o que parece importar é vestir camisa de tal cor e fazer selfies para as redes sociais!  #inaceitável !  Quem faz este país SOMOS NÓS  e isso tudo só vai mudar quando a população entender que NÓS PODEMOS TUDO! NÓS É QUE PODEMOS FAZER ACONTECER!!!! Faça acontecer! Diga não aos políticos sujos e corruptos nas urnas. Vamos começar a limpar este país para que ELE seja realmente nosso! 🤘🤘 #acredite #facaacontecer #essepaisemeu  #inaceitável #chegadecorrupcao  #queroeducacao #querosaude #queroseguranca #queroumpaismelhor #naovaomecalar #euvoulutarsempre	2017-10-25 10:32:58-02	1	\N	t	\N	f
657	https://instagram.fsjk2-1.fna.fbcdn.net/vp/51822c5a62854aa27cf64293cb15a251/5B86AB31/t51.2885-15/e35/22280879_141114443197371_4174374381083951104_n.jpg	1958774183	Que role mais empreendedor! ♡ #serempreendedor #queroeducacao #polijunior #ligaoarmotorista	2017-10-09 10:54:48-03	1	\N	t	\N	f
658	https://instagram.fsjk2-1.fna.fbcdn.net/vp/694e61dc9f1d227d90c5ca35e84f674d/5B794654/t51.2885-15/e35/22157943_1530171793688131_8380063673665716224_n.jpg	213226786	Quando um experiente que guia (dá conselhos) para você e seu time (sócios), apresentando a intenção, propósito, espírito, paixão. [Por Extensão] do direcionamento, desenvolve, produz ou cria projetos, ideias, obras etc. Mentor Intelectual, são os nossos heróis internos. Aqueles nos quais nos espelhamos, que se transformam nos nossos role-models e cujas expectativas (reais ou supostas) tentamos atender ao longo da nossa vida, mesmo que não estejam mais conosco. . #querobolsa #queroeducacao #startups #educacaoempreendedora #sonho #tech #parquetecnologico #mentoria #empreendedorismo #sonhogrande #inquieto #pensesimples #empreendedorismosocial #business #anjos #startup #acreditar #desenvolvimentopessoal #time	2017-10-01 09:36:23-03	1	\N	t	\N	f
659	https://instagram.fsjk2-1.fna.fbcdn.net/vp/fb1b584b75ded61d95443f5016d945d7/5AF09185/t51.2885-15/e35/21985276_1794626007233937_3607962288885071872_n.jpg	311698400	Um dia normal aqui😗😗 #querobolsa#queroeducacao	2017-09-29 18:00:14-03	1	\N	t	\N	f
660	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ecbc3d716befab267d45c25b64881e3e/5B82F3CB/t51.2885-15/e35/21985275_132996120765031_3118196533783166976_n.jpg	274479807	Aniversariantes do mês do nosso jeitinho!  #queroeducacao #coreotop #family	2017-09-29 17:57:36-03	1	\N	t	\N	f
661	https://instagram.fsjk2-1.fna.fbcdn.net/vp/19b36524bd99bb215417ea41b14020c5/5AF157F1/t51.2885-15/e35/26183813_1614706058643081_6698618324135182336_n.jpg	585035149	Povo que trabalha aqui deve ser plenamente feliz. Slc kk #codeinthedark #querobolsa #queroeducacao	2017-09-24 23:40:39-03	1	\N	t	\N	f
662	https://instagram.fsjk2-1.fna.fbcdn.net/vp/783d9711a5700d7b7e0f43acb34ece01/5AF17D7E/t51.2885-15/e35/21827750_745130949017389_8807059967795265536_n.jpg	4476582566	#Repost @justgigio ・・・ Sobre uma sensação incrível... #tbt #codeinthedarkbr #queroeducacao #frontinvale  Com a palavra, o campeão da edição Vale do Paraíba!	2017-09-21 18:48:00-03	1	\N	t	\N	f
663	\N	Jane_Parish	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 02:16:20-03	2	Jane Parish	t	992996464191295488	f
664	https://pbs.twimg.com/media/Db6uBLSW4AArttG.jpg	Mandyna__	RT @MemeeVida: Da série "Momentos da TV brasileira impossíveis de explicar" \n\n#altashoras https://t.co/eX4r5ZdE7Z	2018-05-06 02:16:37-03	4	Amanda Rabello	t	992996532826918912	f
665	https://pbs.twimg.com/media/DcfVI6qWsAAp6i_.jpg	Adenilson_Bahia	#AltasHoras https://t.co/BkvnDx5DHi	2018-05-06 02:16:56-03	4	Adenilson Dos Santos	t	992996616255819777	f
666	\N	PedroMateusCos1	RT @TelemaniacosTV: 23h57\n\n#AltasHoras 14.9\n#SabrinaGrávida @SabrinaSato @DudaNagle 11.5\n#SupernaturalNoSBT 5.2\n#OCéuÉOLimite 2.1\n#AmauryJr…	2018-05-06 02:17:03-03	4	Pedro Mateus Costa	t	992996642038181888	f
667	\N	Fear_God_No_Man	@sagarikaghose #اهم_شي_عند_البنات\n#AltasHoras\n#PodemosHablar\nGW最終日\nDeRozan\nBrad Stevens\nKyle Connor\nXolos… https://t.co/Cfm0rtsfr3	2018-05-06 02:18:20-03	4	Truth Only Wins !	t	992996966337531905	f
668	\N	kites_cafe	Delightful party with Kites’ combo.\nOrder #Online Now! https://t.co/rVo7NKydUv  \n#NeverFrozen #Pizza #FrenchFries… https://t.co/vsCtVJ8Auf	2018-05-06 02:20:05-03	2	Kites Cafe	t	992997407158951937	f
669	\N	ElctricLoneWolf	Haveta get Xtra sauce, all about the sauceeee \n\n#pizza	2018-05-06 02:20:22-03	2	S.H.A.Y.	t	992997479376343040	f
670	\N	Hpsantos_	580733 #AltasHoras #DomingoDetremuraSDV https://t.co/02SrRpoXlP	2018-05-06 02:21:04-03	4	Mr. Santos	t	992997652794167296	f
671	\N	dreworrys	Qual o nome mais bonito e único ?  #AltasHoras	2018-05-06 02:21:19-03	4	vv	t	992997715670982656	f
672	https://pbs.twimg.com/tweet_video_thumb/DSQWdpQX4AA0W54.jpg	ManuTobias13	RT @FrNandol7: Minha reação seria essa se eu estivesse na plateia enquanto supla cantava #AltasHoras https://t.co/IF5dmi28Wt	2018-05-06 02:22:42-03	4	Love, Tobias	t	992998063626182656	f
673	https://pbs.twimg.com/media/DcetKRLWAAIx6EC.jpg	recherchelory	RT @PatriciaPatu: A cara dos adolescentes olhando para o Supla, está impagável...🤔🤔\n#AltasHoras #supla https://t.co/l3czPc7fB9	2018-05-06 02:23:05-03	4	eu sou trouxa #NoitedoFL	t	992998162318143488	f
674	\N	recherchelory	RT @_wesleyalvs: toda vez que eu vejo o supla só consigo me lembrar daquele encontro histórico q ele teve com a ana Maria braga\n#AltasHoras…	2018-05-06 02:23:14-03	4	eu sou trouxa #NoitedoFL	t	992998199278428160	f
675	\N	DilmaRousseffV	#AltasHoras e eu ouvindo barulho de vizinhos fazendo festa. Pra que pagar altos impostos por salários caros de depu… https://t.co/C20ULBhRhY	2018-05-06 02:23:16-03	4	R$ 1,48 bilhão em propinas	t	992998209957105664	f
676	\N	poltroneri	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 02:23:37-03	4	edit poltroneri	t	992998296540114944	f
677	\N	Fear_God_No_Man	@narendramodi #اهم_شي_عند_البنات\n#AltasHoras\n#PodemosHablar\nGW最終日\nDeRozan\nBrad Stevens\nKyle Connor\nXolos… https://t.co/MTD1Rx63h9	2018-05-06 02:24:42-03	4	Truth Only Wins !	t	992998567878057984	f
678	\N	recherchelory	RT @OpaCole: #AltasHoras Supla meu anjo, senta ali e não canta não, por favor.	2018-05-06 02:24:52-03	4	eu sou trouxa #NoitedoFL	t	992998609133232134	f
679	\N	ingridpianta9	RT @DilmaRousseffV: #AltasHoras e eu ouvindo barulho de vizinhos fazendo festa. Pra que pagar altos impostos por salários caros de deputado…	2018-05-06 02:25:40-03	4	Ingrid	t	992998812523401216	f
680	https://pbs.twimg.com/media/Dce5uGbXUAEjq2j.jpg	ManuDiasD	RT @gshow: Jô Soares se emociona com declaração de Rodrigo Santoro. Veja mais 👉 \nhttps://t.co/HNgA6j2Nlq #AltasHoras https://t.co/EsdCW2WYUq	2018-05-06 02:27:03-03	4	🐦  ديديتي سيمويس SIVIGONHAFORÇADA⭐️	t	992999159870492672	f
681	\N	somedaypicks	RT @berlyskitchen: #ad Click here for a $1 #Coupon &gt;&gt; https://t.co/LNQS3CJ9r0 Build a hearty supreme #pizza grilled cheese with Pepperidge…	2018-05-06 02:27:02-03	2	Chelsea and Nate Day	t	992999156347092992	f
682	\N	cherry_Sangalo	RT @RainhaCarminha: Ivete Sangalo no próximo programa, já sabemos que o programa vai ser bom com Ivete tudo é melhor!!!!! #AltasHoras https…	2018-05-06 02:27:10-03	4	Cherry Sangalo	t	992999188639121408	f
683	\N	jffc_in	#Pizza downs 7 children in #Quezon #City | #News \nhttps://t.co/mAbLo97ZKA\n#Avenue #Balita #Barangay #Center #Credo… https://t.co/dqse7z7NUg	2018-05-06 02:27:13-03	2	JFFC.IN	t	992999202371395584	f
684	\N	YoriRsr	E não, eu não assisto #AltasHoras. Eu me respeito demais pra ver essa bosta. Só vi o nome do cover da Ana Maria Braga nos trends.	2018-05-06 02:27:48-03	4	Yori R. Santos-Ramos	t	992999348857434112	f
685	\N	My_life_Ahmad19	RT @aam_dy_jao: Mera hath tham kr mujy iss jaga le jao jahan #pizza free milta hai 🍕😍	2018-05-06 02:27:54-03	2	😎 รเץคקค 🔥	t	992999372962004992	f
686	\N	_felixjuniorr	RT @NNoveleiro: Não existe gente feio, existe gente que não conhece os produtos Jequiti\n\nRodrigo Santoro\n\n#AltasHoras https://t.co/B0dxJCPj…	2018-05-06 02:28:48-03	4	di Angelo	t	992999601480327170	f
687	\N	belezanaweb01	Boa Noite #DomingoDetremuraSDV #AutoEstimaPraCimaArmy #askgreys #AltasHoras #ProgramaDaSabrina	2018-05-06 02:29:50-03	4	Beleza na Web	t	992999861225185280	f
688	https://pbs.twimg.com/media/DcfYL4bW4AIe0Rk.jpg	IVPizza	Nothing Beats a Hot FRESH PIZZA !!#pizza #OrlandPark #Italianvillapizza https://t.co/2Ab6kHe4lv	2018-05-06 02:30:10-03	2	Italian Villa Pizza	t	992999942988947457	f
689	\N	belezanaweb01	RT @belezanaweb01: Boa Noite #DomingoDetremuraSDV #AutoEstimaPraCimaArmy #askgreys #AltasHoras #ProgramaDaSabrina	2018-05-06 02:30:17-03	4	Beleza na Web	t	992999973817024512	f
690	\N	IVPizza	THUR 12-8 Fri-Sat- SUN 12-8 pm 20% OFF!!! ON ALL REGULAR PRICED ORDERS!! #OrlandPark #italianvillapizza #pizza ivpi… https://t.co/n1L4PdhLzn	2018-05-06 02:30:19-03	2	Italian Villa Pizza	t	992999982931247106	f
691	\N	_____Simon	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 02:31:19-03	2	Simon Adams	t	993000235780726784	f
692	\N	allanghanistan	RT @_wesleyalvs: toda vez que eu vejo o supla só consigo me lembrar daquele encontro histórico q ele teve com a ana Maria braga\n#AltasHoras…	2018-05-06 02:31:46-03	4	Allan, The Creator	t	993000346573246464	f
693	https://pbs.twimg.com/tweet_video_thumb/Dce1BPnXcAE4LNg.jpg	yuuram4ever	RT @cassiodcf: Rodrigo Santoro contando que sofreu preconceito por ser bonito.  #AltasHoras https://t.co/M73QXiEhs4	2018-05-06 02:31:56-03	4	🌹 ｍａｙｓａ 🌹	t	993000389564911622	f
694	\N	DebbieGadelha	RT @RedeGlobo: Não é todo dia que temos Rodrigo Santoro, Jô Soares, Vladimir Brichta e @suplaoriginal até #AltasHoras não é mesmo?  ❤️ http…	2018-05-06 02:31:57-03	4	Deborah Gadelha	t	993000391381061633	f
695	\N	NoveroMirta	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 02:32:37-03	4	Mirta Noemi Novero	t	993000560067571713	f
696	\N	Chelly61436524	Um olho no Tt e um olho no #AltasHoras	2018-05-06 02:32:58-03	4	Chelly oliver ☀♌👑	t	993000649553039360	f
697	\N	NoveroMirta	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 02:33:00-03	4	Mirta Noemi Novero	t	993000656465211392	f
698	\N	ClareDavies99	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 02:33:07-03	2	Clare Davies	t	993000685519167488	f
699	\N	danielrojazo	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 02:33:10-03	4	#GLOBERTO CAVALLO	t	993000698156601346	f
700	\N	danielrojazo	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 02:33:26-03	4	#GLOBERTO CAVALLO	t	993000768323182592	f
702	https://pbs.twimg.com/media/DcfZD5eUQAIcsWQ.jpg	JewelHarvest	"Fixer Upper" star writes cookbook. #pizza https://t.co/9b3vZL5BhP https://t.co/i8cTw9EHct	2018-05-06 02:33:59-03	2	jewel harvest	t	993000906395471872	f
703	\N	lucindalucind12	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 02:34:07-03	4	lucinda lucinda	t	993000937508757504	f
704	\N	Chelly61436524	Kkkk tem gente q gosta de ser engraçado Ne kkk prova disso é o Supla kkkk #AltasHoras https://t.co/KVFIpE0TMW	2018-05-06 02:34:17-03	4	Chelly oliver ☀♌👑	t	993000981242793984	f
705	\N	RosaSusanaReyn2	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 02:34:39-03	4	Rebelde con causa.	t	993001073274249216	f
706	https://pbs.twimg.com/media/Dce74AWW0AAqr1d.jpg	OAndyCitou	RT @carolinatuita: #AltasHoras\nsupla: a\neu: https://t.co/BQZxh0iuYC	2018-05-06 02:35:00-03	4	Andy🌈	t	993001160977141760	f
707	\N	jkarreiro	Tanto sono que tô entendendo o Serginho falar “zaltazora” volta já  #AltasHoras	2018-05-06 02:36:48-03	4	🅙🅚🅐🅡🅡🅔🅘🅡🅞	t	993001614783860737	f
708	\N	mundotrak_	La mejor pizza margarita 🍕#Food #Pizza #Margarita #Receta #Cocina https://t.co/qPFPiNvjRJ	2018-05-06 02:39:15-03	2	Mundotrak	t	993002229538881536	f
709	\N	Fear_God_No_Man	@sagarikaghose #اهم_شي_عند_البنات\n#AltasHoras\n#PodemosHablar\nGW最終日\nDeRozan\nBrad Stevens\nKyle Connor\nXolos… https://t.co/TyUTh4DWjQ	2018-05-06 02:39:15-03	4	Truth Only Wins !	t	993002232521154565	f
710	https://pbs.twimg.com/tweet_video_thumb/DcfafBpW4AA3tck.jpg	Svenual_Jackson	Wenn dich jemand fragt, ob er ein Stück von deiner #Pizza haben darf. https://t.co/btjiPFQybS	2018-05-06 02:40:14-03	2	Obi Wan Svenobi	t	993002478059884544	f
711	\N	deboralm34	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 02:41:14-03	4	❤Deborah✌	t	993002728652722176	f
712	\N	Fear_God_No_Man	@sagarikaghose #اهم_شي_عند_البنات\n#AltasHoras\n#PodemosHablar\nGW最終日\nDeRozan\nBrad Stevens\nKyle Connor\nXolos… https://t.co/2K9zfcah7D	2018-05-06 02:41:17-03	4	Truth Only Wins !	t	993002740379979776	f
713	\N	AdrianaContari1	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 02:41:20-03	4	Adriana Contarino	t	993002753411739649	f
714	\N	AlawForsythe	Finished my plate before Mr F...unheard of! Naples = Pizza Alaw = heaven 🍕🇮🇹 #forsytherobertson2018 #pizza #napoli… https://t.co/AhlTiKvWuq	2018-05-06 02:41:23-03	2	Alaw Forsythe	t	993002769039708160	f
715	https://pbs.twimg.com/media/DcfJE4vV4AA1P1o.jpg	CraigHoffman11	RT @CraigHoffman11: Thanks again @dominos_JP for making this week a GOLDEN ONE!!!\n\n#japan\n#pizza\n#AWESOME! https://t.co/Ng84GT50MI	2018-05-06 02:41:45-03	2	Craig Hoffman	t	993002860731252736	f
716	\N	isafaceangel	RT @DilmaRousseffV: #AltasHoras e eu ouvindo barulho de vizinhos fazendo festa. Pra que pagar altos impostos por salários caros de deputado…	2018-05-06 02:43:10-03	4	Isah	t	993003216857022465	f
717	\N	AKMLamaga	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 02:43:28-03	4	♥ Karina ✌🐧🇦🇷®	t	993003291352162304	f
718	https://pbs.twimg.com/media/Db6uBLSW4AArttG.jpg	jorjooj	RT @MemeeVida: Da série "Momentos da TV brasileira impossíveis de explicar" \n\n#altashoras https://t.co/eX4r5ZdE7Z	2018-05-06 02:44:45-03	4	Jorj	t	993003612564541441	f
719	\N	OlRengy	RT @Essem_Jay: Watch out! Your map is in pizza! #Onlyinadndgame #dungeonsanddragons #pizza #dnd5e	2018-05-06 02:45:07-03	2	Joe 🌊	t	993003706726563840	f
720	\N	mrstevecole	RT @chicagotown: We know yo'da love to win our #CheesyFridayGiveaway!\nRT &amp; follow to #WIN free #pizza, you must! #MayTheFourthBeWithYou htt…	2018-05-06 02:45:22-03	2	Steve Cole	t	993003771553832960	f
721	\N	CiprianiAlfredo	#pizza Patty at zero gravity! https://t.co/LkNy5sU44n	2018-05-06 02:45:58-03	2	Alfredo Cipriani	t	993003921764487168	f
722	\N	sarahinclover	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 02:46:29-03	2	Sarah Clover	t	993004052383518720	f
723	\N	silvanacpiazza	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 02:46:40-03	4	silvana piazza	t	993004094989185024	f
724	https://pbs.twimg.com/media/DcfcF2PU0AEv_4g.jpg	TheBeachScene	Pizza Scissors Spatula https://t.co/BaWJBXxRuK #Pizza #Scissors #Spatula https://t.co/QZ70UWY0OT	2018-05-06 02:47:14-03	2	The Beach Scene	t	993004237868150784	f
725	https://pbs.twimg.com/media/DcdmSM6W4AYcW63.jpg	1071Chris	RT @FoodFantazy: sourdough pull apart bread with arugula, mozzarella. and turkey #food #foodporn #yummy #pizza https://t.co/LjuNdftXM7	2018-05-06 02:47:21-03	2	Chris von Westphalen	t	993004267773530113	f
726	\N	mailde	RT @jefferson_lont: Eu vendo #AltasHoras me deu uma saudade do programa #Josoares	2018-05-06 02:47:22-03	4	Mailde Costa#TimBeta	t	993004271443554304	f
727	https://pbs.twimg.com/media/DcfOcP7U0AAVPEh.jpg	OiltogetherEvoo	RT @longhaircowboy: The #chef said it was #italian but it sure was bland #ciro #pizza #food #evoo #cook https://t.co/sCIaHmkV3v	2018-05-06 02:47:44-03	2	Oiltogether_EVOO	t	993004366562058240	f
728	https://pbs.twimg.com/media/Dce6gtwXUAA1dcv.jpg	animeforever_	RT @RainhaCarminha: Que tristeza encerrar o fim de noite com Supla cantando e com esses gritos #AltasHoras https://t.co/B9JsbKjXiq	2018-05-06 02:48:11-03	4	vivendo por BTS 🎡♡†	t	993004478549897216	f
729	https://pbs.twimg.com/media/Dce5uGbXUAEjq2j.jpg	exercitodsr	RT @gshow: Jô Soares se emociona com declaração de Rodrigo Santoro. Veja mais 👉 \nhttps://t.co/HNgA6j2Nlq #AltasHoras https://t.co/EsdCW2WYUq	2018-05-06 02:48:18-03	4	Exército DSR	t	993004507360645122	f
730	\N	sammdavey	RT @pwhpub: #sun is out! #pizza #beer #wine #pubfood #beergarden @CamberwellGrove @SambrookAle @RamPubs @YoungsPubs @PubsInLondon @TheLondo…	2018-05-06 02:48:55-03	2	Sam Davey-Joy	t	993004663317434368	f
731	\N	BerroSophia	eu não acredito que eu perdi um #AltasHoras com Jô Soares, Rodrigo Santoro e Leo Santana 😭😭	2018-05-06 02:49:32-03	4	Daniel	t	993004819777548288	f
732	https://pbs.twimg.com/media/Db6uBLSW4AArttG.jpg	juuhdylong	RT @MemeeVida: Da série "Momentos da TV brasileira impossíveis de explicar" \n\n#altashoras https://t.co/eX4r5ZdE7Z	2018-05-06 02:49:50-03	4	Juuh	t	993004895891574784	f
733	\N	BerroSophia	POR ACASO A MEL TAVA NA PLATEIA DO #AltasHoras Rodrigo Santoro	2018-05-06 02:49:54-03	4	Daniel	t	993004912744304640	f
734	\N	Bangbus_MG	#AltasHoras \nTá na hora de se aposentar Serginho	2018-05-06 02:50:02-03	4	Leandro Freak Show	t	993004944625143809	f
735	\N	sparkel35	RT @Exposed_Amateur: #teasing #pizza #delivery @top_upskirt @exhibiendo @PizzaDares @exhibiendome @nudainpubblico @flashingwives @publicfla…	2018-05-06 02:50:16-03	2	Mirror Man	t	993005004347846656	f
736	\N	AnthonyJenner1	RT @chicagotown: We know yo'da love to win our #CheesyFridayGiveaway!\nRT &amp; follow to #WIN free #pizza, you must! #MayTheFourthBeWithYou htt…	2018-05-06 02:50:35-03	2	Anthony Jenner	t	993005082785480704	f
737	https://pbs.twimg.com/media/DcdmSM6W4AYcW63.jpg	BulixsterZFR_py	RT @FoodFantazy: sourdough pull apart bread with arugula, mozzarella. and turkey #food #foodporn #yummy #pizza https://t.co/LjuNdftXM7	2018-05-06 02:50:36-03	2	Dengi♥| Happy | Miq	t	993005088821121025	f
738	\N	hornyboy_bwc	RT @Exposed_Amateur: #teasing #pizza #delivery @top_upskirt @exhibiendo @PizzaDares @exhibiendome @nudainpubblico @flashingwives @publicfla…	2018-05-06 02:51:16-03	2	BWCboy	t	993005253292318721	f
739	https://pbs.twimg.com/media/DcetKRLWAAIx6EC.jpg	juuhdylong	RT @PatriciaPatu: A cara dos adolescentes olhando para o Supla, está impagável...🤔🤔\n#AltasHoras #supla https://t.co/l3czPc7fB9	2018-05-06 02:51:39-03	4	Juuh	t	993005350306697216	f
740	\N	RitaRocha74	RT @ViWildhagen: Não tem como não amar Rodrigo Santoro, falando para o Jô o que o Brasil inteiro sempre quis dizer. #AltasHoras https://t.c…	2018-05-06 02:51:59-03	4	Rita Rocha	t	993005436323418112	f
741	https://pbs.twimg.com/media/DcfcF2PU0AEv_4g.jpg	alternances	RT @TheBeachScene: Pizza Scissors Spatula https://t.co/BaWJBXxRuK #Pizza #Scissors #Spatula https://t.co/QZ70UWY0OT	2018-05-06 02:52:25-03	2	lagauche2017	t	993005543257190400	f
742	\N	promotecomics	RT @CCCrewHumor: Happy #FREECOMICBOOKDAY #FCBD2018\n#Beer #Pizza #Funny #cute #Comics\n#Comedy #College #Humor #T-Shirts \n#Sorority #webcomic…	2018-05-06 02:53:37-03	2	Promote Indie Comics	t	993005845767180288	f
743	https://pbs.twimg.com/media/Dcerrg0VMAAwwio.jpg	dryquinhacrist2	RT @RedeGlobo: Amizade do POP! 💕 #AltasHoras https://t.co/0lxisIRGs1	2018-05-06 02:54:45-03	4	Adriana Cristina	t	993006130581442560	f
744	\N	marcelometal2	RT @BerroSophia: POR ACASO A MEL TAVA NA PLATEIA DO #AltasHoras Rodrigo Santoro	2018-05-06 02:54:52-03	4	marcelo monteiro	t	993006158553210880	f
745	\N	marcelometal2	RT @BerroSophia: eu não acredito que eu perdi um #AltasHoras com Jô Soares, Rodrigo Santoro e Leo Santana 😭😭	2018-05-06 02:54:55-03	4	marcelo monteiro	t	993006173732433920	f
746	https://pbs.twimg.com/media/Dce5uGbXUAEjq2j.jpg	dryquinhacrist2	RT @gshow: Jô Soares se emociona com declaração de Rodrigo Santoro. Veja mais 👉 \nhttps://t.co/HNgA6j2Nlq #AltasHoras https://t.co/EsdCW2WYUq	2018-05-06 02:55:04-03	4	Adriana Cristina	t	993006211472781312	f
747	https://pbs.twimg.com/tweet_video_thumb/Dce1BPnXcAE4LNg.jpg	Tamilla_aridi	RT @cassiodcf: Rodrigo Santoro contando que sofreu preconceito por ser bonito.  #AltasHoras https://t.co/M73QXiEhs4	2018-05-06 02:55:05-03	4	tami  🦅	t	993006214719115265	f
748	\N	Adrianymyrian	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 02:55:26-03	4	Adrián González	t	993006304863117312	f
749	\N	Wesleyjuniocha2	RT @RedeGlobo: Não é todo dia que temos Rodrigo Santoro, Jô Soares, Vladimir Brichta e @suplaoriginal até #AltasHoras não é mesmo?  ❤️ http…	2018-05-06 02:55:31-03	4	Wesley junio chaves nascimento	t	993006323305508864	f
750	https://pbs.twimg.com/media/Dcfd-QnU8AAMsVa.jpg	donshaek	When your friend is the next Bachelorette you get ❤ shaped pizzas delivered for free. #pizza https://t.co/aHchZxaLs7	2018-05-06 02:55:41-03	2	Donshae Jeffries (Kaesler)	t	993006367651737600	f
751	\N	Tamilla_aridi	RT @gshow: .@NegodoBorel quer uma parceria com @justinbieber e já mostrou sua versão de “Sorry” para ser aprovada 😅 #AltasHoras https://t.c…	2018-05-06 02:55:55-03	4	tami  🦅	t	993006425755586560	f
752	https://pbs.twimg.com/media/DceuBHMXUAA1H6r.jpg	fefemao	RT @RainhaCarminha: Rodrigo Santoro, você é muito Maravilhoso entenda #AltasHoras https://t.co/UUXeJY5NUn	2018-05-06 02:56:02-03	4	Nanda👠	t	993006452360011776	f
753	\N	Deals4Every	New Lyft Users get $50 Free Lyft credit And the code is? ZOOT &gt;&gt; Antico Pizza Napoletana #pizza #neapolatin * Deals 4 Everyone * - Love you!	2018-05-06 02:56:06-03	2	Lyft Promo Code LINX	t	993006472073236480	f
754	https://pbs.twimg.com/ext_tw_video_thumb/992026945411043328/pu/img/xGKMmjgGQZG383ri.jpg	Tamilla_aridi	RT @marcoluque: Oiii minino, cê tá ino pa copa? ☕️ @neymarjr #MaryHelp #AltasHoras #Tbt https://t.co/Ry8hKfl6bF	2018-05-06 02:56:59-03	4	tami  🦅	t	993006691313770497	f
755	\N	Tamilla_aridi	RT @adryanars: Supla é aquele ser que só de se mexer a gente ja sente vergonha alheia!!! #altashoras	2018-05-06 02:57:28-03	4	tami  🦅	t	993006815574220800	f
756	\N	jaspixie	RT @_wesleyalvs: toda vez que eu vejo o supla só consigo me lembrar daquele encontro histórico q ele teve com a ana Maria braga\n#AltasHoras…	2018-05-06 02:57:49-03	4	jason	t	993006903067336706	f
757	https://pbs.twimg.com/ext_tw_video_thumb/992980437923520512/pu/img/iYB5SlTS_dswRl3t.jpg	Tamilla_aridi	RT @patrickpachecco: faria muito #AltasHoras https://t.co/BciLRcWukn	2018-05-06 02:58:43-03	4	tami  🦅	t	993007130100879360	f
758	\N	Tamilla_aridi	RT @patrickpachecco: léo santana maravilhoso tava no #AltasHoras eu só sei lembra desses dois vídeos tbm maravilhosos https://t.co/ZK6rf274…	2018-05-06 02:58:52-03	4	tami  🦅	t	993007166326964224	f
759	\N	Tamilla_aridi	RT @fernandalins_: A mocinha no #AltasHoras: "Meu sonho é me formar e fazer três viagens por ano". E aí, vocês contam ou eu conto?	2018-05-06 02:59:37-03	4	tami  🦅	t	993007357708984320	f
760	\N	syfenix	RT @RedeGlobo: Não é todo dia que temos Rodrigo Santoro, Jô Soares, Vladimir Brichta e @suplaoriginal até #AltasHoras não é mesmo?  ❤️ http…	2018-05-06 02:59:54-03	4	Sy Fênix 🐷💚	t	993007425547571200	f
761	https://pbs.twimg.com/media/Dce5uGbXUAEjq2j.jpg	syfenix	RT @gshow: Jô Soares se emociona com declaração de Rodrigo Santoro. Veja mais 👉 \nhttps://t.co/HNgA6j2Nlq #AltasHoras https://t.co/EsdCW2WYUq	2018-05-06 02:59:58-03	4	Sy Fênix 🐷💚	t	993007443155222528	f
762	https://pbs.twimg.com/media/DcffK2bWsAA9XZ8.jpg	IVPizza	#Pizza, the answer to all of our problems!! #Italianvillapizza #orlandpark ivpizza https://t.co/qz8LT7MNFp	2018-05-06 03:00:40-03	2	Italian Villa Pizza	t	993007622201790464	f
763	\N	NEATBUZZ	10 Top Pizzas In The Usa https://t.co/Mre2mkX7h3 #pizza #health #weight #USA via @NEATBUZZ	2018-05-06 03:01:01-03	2	NEATBUZZ	t	993007708482752512	f
764	https://pbs.twimg.com/media/Db6uBLSW4AArttG.jpg	kyoukazumi	RT @MemeeVida: Da série "Momentos da TV brasileira impossíveis de explicar" \n\n#altashoras https://t.co/eX4r5ZdE7Z	2018-05-06 03:01:18-03	4	Kaziklu Bey	t	993007781442654208	f
765	\N	mandyR33	Watching #my600lblife and craving a #pizza	2018-05-06 03:01:37-03	2	Mandy Norris	t	993007860232663041	f
766	\N	cacazinnha	RT @jose_gayegos: Vladmir Britcha e Rodrigo Santoro ao mesmo tempo e no mesmo lugar #AltasHoras.  Meus sais. Meus pais. Meu Deus. Tô pêsseg…	2018-05-06 03:01:59-03	4	CACÁ🇧🇼🇧🇼🇧🇼🇧🇼🇧🇼	t	993007950108209157	f
767	\N	Aurekes	#pizza https://t.co/0cwmG8CrNB	2018-05-06 03:02:01-03	2	Aurelien	t	993007961378304000	f
768	\N	dryquinhacrist2	RT @jose_gayegos: Vladmir Britcha e Rodrigo Santoro ao mesmo tempo e no mesmo lugar #AltasHoras.  Meus sais. Meus pais. Meu Deus. Tô pêsseg…	2018-05-06 03:02:08-03	4	Adriana Cristina	t	993007987907289089	f
769	\N	RamPubs	RT @pwhpub: #sun is out! #pizza #beer #wine #pubfood #beergarden @CamberwellGrove @SambrookAle @RamPubs @YoungsPubs @PubsInLondon @TheLondo…	2018-05-06 03:03:23-03	2	Ram Pubs	t	993008305881649152	f
770	\N	saltamontes33	RT @Juanjos_RP: Los Reyes de la MENTIRA...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad S…	2018-05-06 03:03:38-03	4	Leandro	t	993008365600112641	f
771	https://pbs.twimg.com/media/CfYM74FVIAAu3_u.jpg	__________Pizza	ピザできたて♡ https://t.co/o3pCGFdnWA #pizza	2018-05-06 03:04:12-03	2	Pizza	t	993008508273487877	f
772	\N	srob030869	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:04:38-03	2	Shaun Robertson	t	993008617971429376	f
773	https://pbs.twimg.com/media/DceuBHMXUAA1H6r.jpg	_badgiirl4	RT @RainhaCarminha: Rodrigo Santoro, você é muito Maravilhoso entenda #AltasHoras https://t.co/UUXeJY5NUn	2018-05-06 03:06:05-03	4	Chloe	t	993008983312125952	f
774	\N	AbanteNews	Pito katao nalason sa pagkain ng pizza\nhttps://t.co/J0UdxvTSTa\n#Pizza \n#TunayNaTabloidista #1allFilipinonewswebsite	2018-05-06 03:06:43-03	2	Abante News Online	t	993009143945412608	f
775	\N	Comregino	Estava incrível o programa hj , a entrevista com o @MarceloTas   , o mito Jô #AltasHoras	2018-05-06 03:07:22-03	4	RiosGino	t	993009306034458624	f
776	https://pbs.twimg.com/tweet_video_thumb/DcesU1BXkAIxgk4.jpg	stephanybells	RT @Slaiazzine: #AltasHoras animação da plateia vendo o supla cantar https://t.co/FDVsOtoAo3	2018-05-06 03:07:50-03	4	stephany	t	993009421856006145	f
777	https://pbs.twimg.com/media/Dcfg2TbWkAAKz4t.jpg	Scontividilo	Unieuro: extra sconto del 5% e risparmio di 20€ con PayPal! -&gt; https://t.co/ZaKi91Qeyy | #gf15 #primavera #pizza https://t.co/r3WoigA2vr	2018-05-06 03:08:02-03	2	Sconti Condivisi	t	993009472678359046	f
778	https://pbs.twimg.com/media/Dcfgx3sUQAAjBs_.png	russsdimasssrus	Add me on kik fot sext @ OSOMPO  #pizza #italy #italian #italianfood https://t.co/MYrUlcGzdN	2018-05-06 03:08:19-03	2	Diana	t	993009545206292481	f
779	\N	mjbt777	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:08:33-03	2	Margaret Dunlop	t	993009602416513024	f
780	\N	MoretonBayMum	Making #pizza #MBM #moretonbaymum #yummy #yummyfood #yummymummy #queensland https://t.co/BgbSSrLxHC	2018-05-06 03:09:29-03	2	Moreton Bay Mum	t	993009839063396352	f
781	\N	Jazzywazzyding	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:10:00-03	2	Amber Baxter	t	993009970282196992	f
782	\N	greendi321allen	RT @chicagotown: We know yo'da love to win our #CheesyFridayGiveaway!\nRT &amp; follow to #WIN free #pizza, you must! #MayTheFourthBeWithYou htt…	2018-05-06 03:11:25-03	2	Diane Allen	t	993010323866210304	f
783	\N	katarinahit	SARAH DOUBLE-CHECKED MY ORDER FOR PERFECTION AT 1:12 AM. BLESS YOU SARAH. #athlete #pizza	2018-05-06 03:14:00-03	2	Katarina Hit	t	993010975543582720	f
784	\N	GordonGekkoFan	STF #LulaPreso #Encontro #fantastico #DomingoDetremuraSDV #AltasHoras #SabrinaGrávida #SupernaturalNoSBT https://t.co/bImKO0RCYz	2018-05-06 03:15:22-03	4	Gordon Gekko Fan	t	993011320340516864	f
785	\N	greendi321allen	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:15:41-03	2	Diane Allen	t	993011401319825410	f
786	\N	thedealmatch	RT @berlyskitchen: #ad Click here for a $1 #Coupon &gt;&gt; https://t.co/LNQS3CJ9r0 Build a hearty supreme #pizza grilled cheese with Pepperidge…	2018-05-06 03:16:06-03	2	Rika	t	993011502440366082	f
787	\N	MeeeZ19	#صنعاء\n#ظهر_الامام_المهدي_المنتظر_ناصر_محمد_اليماني\nAwaited King\nhttps://t.co/s17RKk3Nur #AltasHoras #رمضان #Byfuglien	2018-05-06 03:16:08-03	4	MeeeZ	t	993011512129327104	f
788	\N	dailydelights3	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:16:28-03	2	Tara Bush	t	993011597605040128	f
789	https://pbs.twimg.com/media/DceXJQYWAAAMyg_.jpg	JDalilaAranha1	RT @marcoluque: Lógu maiz tên #AltasHoras, jow! Num vassíla! Cola ni nóiz queiróiz! 🤪🤪🤪 #JacksonFaive @RedeGlobo https://t.co/ahHyVruLQk	2018-05-06 03:16:41-03	4	Dalila Aranha	t	993011650532990976	f
790	\N	buccimarian1	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 03:17:07-03	4	ANGELES BUCCI	t	993011758645366784	f
792	https://pbs.twimg.com/media/DcfjJ87WAAELWyf.jpg	tweetypai16	@swiggy_in this is Wat was #delivered to me #pizza #disaster https://t.co/NDYzV1XwdB	2018-05-06 03:18:11-03	2	T£Ch Kud!🤷‍♀️😜🥂🍻👸🏼	t	993012029681291264	f
793	\N	Glenn34_5	RT @chicagotown: We know yo'da love to win our #CheesyFridayGiveaway!\nRT &amp; follow to #WIN free #pizza, you must! #MayTheFourthBeWithYou htt…	2018-05-06 03:18:17-03	2	Glenn Maycock	t	993012052649267200	f
794	\N	CruiseTheNews	Instagrammer Phil Duncan Travels World Taking Pictures of Pizza, Article: https://t.co/rNcRzHfbo3 via: @Thrillist #travel #cruise #pizza	2018-05-06 03:19:22-03	2	Cruise: The News	t	993012325752954880	f
795	\N	hannahbjm	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:21:39-03	2	Hannah I	t	993012902348181504	f
796	https://pbs.twimg.com/media/Db6oQwfW0AAivr2.jpg	minaquemorali	RT @RainhaCarminha: O programa começou com músicas do balão mágico\n\nEu:\n#AltasHoras https://t.co/curMX5GlWN	2018-05-06 03:21:43-03	4	Sereya	t	993012915539251200	f
797	\N	DeanMahaffey	It's May 5, 2018 at 11:11PM. My Domino's order is on the way! @dominos #pizza	2018-05-06 03:22:26-03	2	Dean	t	993013099086139392	f
798	\N	dreamstory69	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:25:07-03	2	Daiva Preston	t	993013775161806848	f
799	\N	Carolyn_Eliza	😋🍕 #latenight #vegetarian #pizza #yum https://t.co/wo65kCM5LW	2018-05-06 03:25:25-03	2	Carolyn Eliza	t	993013848109006848	f
800	https://pbs.twimg.com/media/Dce8CD6XcAESzEQ.jpg	AlessandroErick	RT @pattymeel: Pq nunca me falaram que era o Supla em De Volta pro Futuro? #AltasHoras https://t.co/z233gjTRgk	2018-05-06 03:25:57-03	4	Erick Alessandro	t	993013982851227648	f
801	\N	kuryusthelord	Só eu que perdi um #AltasHoras com Rodrigo Santoro, Vladmir Brichta e Jô Soares? https://t.co/9GHoBTOrc7	2018-05-06 03:26:28-03	4	kuryusthelord	t	993014114644471809	f
803	https://pbs.twimg.com/media/Dcfl6ohX4AAvubV.jpg	IVPizza	Nothing Beats a Hot FRESH PIZZA !!#pizza #OrlandPark #Italianvillapizza https://t.co/20Q13FDYpF	2018-05-06 03:30:09-03	2	Italian Villa Pizza	t	993015039585144832	f
804	\N	IVPizza	THUR 12-8 Fri-Sat- SUN 12-8 pm 20% OFF!!! ON ALL REGULAR PRICED ORDERS!! #OrlandPark #italianvillapizza #pizza ivpi… https://t.co/6iv1fuVrfN	2018-05-06 03:30:17-03	2	Italian Villa Pizza	t	993015074997592064	f
805	https://pbs.twimg.com/media/Db6k9cIVAAAweVJ.jpg	thaysalvino	RT @RedeGlobo: Vem viajar nesse balão com a gente até #AltasHoras! 🙃 https://t.co/8o2Fe7jZnu	2018-05-06 03:32:01-03	4	Thaynara Lucena	t	993015508835414016	f
806	\N	Sam_Macaree	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:32:54-03	2	Sam Macaree	t	993015730638610432	f
807	\N	petrageka	RT @NanciPerri: Num País que temos uma Presidenta Anta , temos Supla como cantor ,vergonha alheia !! 🙏🙏😫😫 #altashoras	2018-05-06 03:34:17-03	4	PETRA GEKA	t	993016081500557312	f
808	\N	MaryetTom	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:34:28-03	2	Tom And Mary	t	993016126958424064	f
809	\N	Lorenageovanaf	Fui assistir o #AltasHoras pelo Gshow e não tem a parte do @MarceloTas! Fiquei triste... não consegui assistir na h… https://t.co/v5hpulbanC	2018-05-06 03:34:47-03	4	lorena	t	993016206323015680	f
810	https://pbs.twimg.com/media/DcfBA2vW4AY_bbY.jpg	petrageka	RT @BarbozaLaila: quando o supla começa a cantar #AltasHoras https://t.co/WLYXNEBk6x	2018-05-06 03:36:21-03	4	PETRA GEKA	t	993016602214924288	f
811	https://pbs.twimg.com/media/DcfBA2vW4AY_bbY.jpg	vivykens	RT @BarbozaLaila: quando o supla começa a cantar #AltasHoras https://t.co/WLYXNEBk6x	2018-05-06 03:36:37-03	4	desmemoriada	t	993016666815639552	f
812	https://pbs.twimg.com/media/Dcfnhs2W4AEuya-.jpg	vishwagujarat	#Indian #Actress In Bathtub Goes Naked For Passionate #Photoshoot With #Pizza\nRead More : https://t.co/QrusTQ7YEC https://t.co/ZKqSEJa9w9	2018-05-06 03:37:13-03	2	Vishwa Gujarat	t	993016817554804736	f
813	\N	Elijah8089	RT @Exposed_Amateur: #teasing #pizza #delivery @top_upskirt @exhibiendo @PizzaDares @exhibiendome @nudainpubblico @flashingwives @publicfla…	2018-05-06 03:37:40-03	2	Elijah	t	993016930280837120	f
814	\N	ekowa1	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 03:37:48-03	4	ekowa	t	993016965659807746	f
815	\N	caygijan46	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:40:25-03	2	Janet Caygill	t	993017624471703552	f
816	\N	Neise_love	RT @LabelleFernanda: Rodrigo Santoro é a elegância em pessoa. #AltasHoras	2018-05-06 03:40:28-03	4	NEISINHA  ️💜🚕	t	993017635204935685	f
817	\N	Neise_love	RT @BrazilTopTrends: 1º #SabrinaGrávida (Ouro)\n2º #fabricadecasamentos (Prata)\n3º #AutoEstimaPraCimaArmy (Bronze)\n4º #AltasHoras\n5º #SkutaN…	2018-05-06 03:40:41-03	4	NEISINHA  ️💜🚕	t	993017692675289089	f
818	\N	cochino_xxx	RT @Exposed_Amateur: #teasing #pizza #delivery @top_upskirt @exhibiendo @PizzaDares @exhibiendome @nudainpubblico @flashingwives @publicfla…	2018-05-06 03:41:20-03	2	Mr.Porn😏	t	993017855120629761	f
819	\N	kittykomp	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:44:11-03	2	Catharine Amaro	t	993018571910537218	f
820	\N	ryunosuke_h	#4連休最終日 #昼からビール #昼ビー\n#lunch #pizza #自家製 #homemade #生地から作った #アスパラとベーコンと茄子のピザ… https://t.co/YRwLDFplpG	2018-05-06 03:45:47-03	2	ryunosuke_h	t	993018973410217984	f
821	\N	party_on_cheers	Join 6 people right now at "Madden Creative Director Is Leaving EA" #cheers #beer #pizza #games #gaming #technology… https://t.co/rpc4jnED6s	2018-05-06 03:46:00-03	2	Cheers for Parties	t	993019028393213952	f
822	\N	danielsotoK3	RT @Juanjos_RP: como llegamos al 2019...\n#MacricidioDia879 #6May #AltasHoras\n#BuenDomingo #MiPaísNunca\n#LaNocheDeML #PodemosHablar\nBrad Ste…	2018-05-06 03:46:30-03	4	daniel soto	t	993019152871849984	f
823	https://pbs.twimg.com/media/DcfpyU1V4AEg4Bo.jpg	VSGSinoville	Eat Italian this Sunday. #ItalianFood #Pizza #Pasta #VSGSinoville https://t.co/oBMQjw6cCU	2018-05-06 03:47:04-03	2	Villa San Giovanni Sinoville	t	993019295780212736	f
824	https://pbs.twimg.com/media/Dcfp0YvWkAAbM-c.png	MirikBuerakov96	Sext in  Campobasso. Can someone make me cum on kik? Add me : ASOMPO. #pizza #italy #italian #italianfood https://t.co/d4UiFzDenx	2018-05-06 03:47:49-03	2	Isabella	t	993019487459971072	f
825	\N	Foodieman2	RT @Hyperec_HRS: #Competition #giveaway #WIN a £20 Pizza Express Gift Card! To be in with a chance, just RT and follow @Hyperec_HRS #pizza…	2018-05-06 03:48:03-03	2	Foodieman	t	993019546251522048	f
826	\N	coreyleung	When it's cheat day... #seafood #pizza #pizzas #steveston #oceanside #food #foodporn #foodies #foodcoma #bread… https://t.co/46EL5rJinw	2018-05-06 03:48:04-03	2	Corey Leung	t	993019548587655168	f
827	https://pbs.twimg.com/media/DcetKRLWAAIx6EC.jpg	DaneMaZucatelli	RT @PatriciaPatu: A cara dos adolescentes olhando para o Supla, está impagável...🤔🤔\n#AltasHoras #supla https://t.co/l3czPc7fB9	2018-05-06 03:49:29-03	4	Danilo Silva	t	993019903883071488	f
828	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	\N	f
829	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	\N	f
830	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	\N	f
831	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	\N	f
832	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	\N	f
833	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	\N	f
834	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	\N	f
835	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	\N	f
836	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	\N	f
837	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	\N	f
838	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	\N	f
839	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	\N	f
840	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	\N	f
841	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	\N	f
842	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	\N	f
843	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	\N	f
844	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5a74f7dbb1f9f631746e69dc673bde1a/5B77BB02/t51.2885-15/e35/29417977_554597174925305_4297028729978224640_n.jpg	366384893	Eu amo meu trabalho ♥️😂😍 #eadieta #queroeducacao #ovosdepascoa	2018-03-29 12:34:00-03	1	\N	t	\N	f
845	https://instagram.fsjk2-1.fna.fbcdn.net/vp/666288e5333effaa2fa76a466ac91bc6/5B879EE3/t51.2885-15/e35/28427348_1721218044606598_8903026927510487040_n.jpg	1072847106	Queridos!! #familiaquero #querobolsa #queroeducacao	2018-03-09 18:55:29-03	1	\N	t	\N	f
846	https://instagram.fsjk2-1.fna.fbcdn.net/vp/af7fc26fad495d0c1c641f39bcc43379/5B9989A3/t51.2885-15/e35/26864040_2027044477553148_7792113346974580736_n.jpg	258105290	A vida me ensinou a nunca desistir Nem ganhar, nem perder mas procurar evoluir Podem me tirar tudo que tenho Só não podem me tirar as coisas boas que eu já fiz #querido #queroquero #photooftheday #happy #sp #sjc #queroeducacao	2018-01-26 09:48:40-02	1	\N	t	\N	f
847	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1fda1bd0043ad420837bbb2d71594f17/5B818C35/t51.2885-15/e35/26285565_538989903142663_6989314045874536448_n.jpg	1808627157	Empresa Boa é ver pessoas felizes! Hoje foi o dia do picolé gourmet na quero bolsas! Leve para sua empresa nossos picolés gourmet!  #parceirostudodibom #picolégourmet #tendencia #top #quero #querobolsas #queroeducacao	2018-01-18 15:03:07-02	1	\N	t	\N	f
848	https://instagram.fsjk2-1.fna.fbcdn.net/vp/67531d9a192f99b8df18bb0483790a35/5B940850/t51.2885-15/e35/26072397_1975036312714240_1880886863204450304_n.jpg	1376284178	Novo projeto 2018 #querobolsa #queroeducacao #jovempansjc	2018-01-08 09:30:59-02	1	\N	t	\N	f
849	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b65d6769b16c81b77b04efade786fc78/5B9AC728/t51.2885-15/e35/26158479_341285343018361_5825048334343077888_n.jpg	3984491654	Acabei de receber um cartão de Natal e Fim de Ano da @querobolsa ! 😍 Como vocês sabem, em 2017, tive a felicidade de ser escolhido para o projeto Guia da Faculdade para escrever algumas matérias para a revista QB, e em 2018, tenho certeza que essa parceria continuará firme e forte.  Mafê, Dri, e todos que fazem parte desse projeto e que sempre me trataram com muito carinho, o meu muito obrigado! 💙❤💚 #querobolsa #queroeducacao #faculdade #universitário #letras #pedagogia #RJ #obrigado #muitoamorenvolvido	2018-01-04 17:05:43-02	1	\N	t	\N	f
850	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f1b47b22fa0f1ad52a9f2d1993a6a83b/5AF10D84/t51.2885-15/e15/25014460_1536695553073152_171475757543981056_n.jpg	276511545	Uma festa de Natal dessas bichooo #querobolsa #queroeducacao #confra	2017-12-23 08:23:15-02	1	\N	t	\N	f
851	https://instagram.fsjk2-1.fna.fbcdn.net/vp/caa58240b7f4640b1e59279ff36cddf7/5B927B77/t51.2885-15/e35/25022237_2031115147145536_8923232008449032192_n.jpg	238678792	Há alguns dias uma nova etapa da minha vida começou! Muitas mudanças aconteceram, muito amadurecimento, muitas saudades de casa... mas enfim é necessário que mudanças aconteçam pra que a gente possa crescer e se desenvolver como ser humano, acredito que tudo que acontece tem um motivo, e Deus prepara tudo direitinho! Posso dizer que Ele preparou tudo pra mim e pra me deixar super feliz, me deu uma oportunidade de me desenvolver profissionalmente em uma empresa incrível a @queroedu. Agradeço a eles por confiarem em mim para compor essa família que é demaisss!!! Enfim, acho que chegou a hora de mirar novos horizontes, mudar, melhorar e o principal, vestir mesmo essa camisa da Quero Educação e transformar a vida das pessoas por meio da educação! 😍😍❤ #queroeducacao #trabalho #melhorempresa #familiaqueroquero #sjc #life	2017-12-13 20:27:19-02	1	\N	t	\N	f
852	https://instagram.fsjk2-1.fna.fbcdn.net/vp/33cd6a0679982f025111313467a16cf7/5B7D75F3/t51.2885-15/e35/24177644_168878290514587_6478922904334499840_n.jpg	39140288	Queri Perry, representando. #querobolsa #queroeducacao #startup #mascote #querido	2017-11-30 22:21:40-02	1	\N	t	\N	f
853	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8c830dfb067879bf7364b9563146df3e/5B893146/t51.2885-15/s1080x1080/e15/fr/23734103_298508407306434_4806539957273362432_n.jpg	497896926	Presente de aniversário da #queroeducacao 💞💞💞💞	2017-11-22 17:05:48-02	1	\N	t	\N	f
854	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f6d3ae96cdcf6a107d4dd8c55af1bbd2/5AF16725/t51.2885-15/e15/23594285_1979238058981831_2407180250006945792_n.jpg	5374086283	Dia 13/11 foi o Dia Mundial da Gentileza. E como todos os dias vivemos e vemos troca de gentilezas entre todo o time, fizemos a Semana Quero Gentileza. Teve presente, recadinhos, troca de carinho e felicidade!  Tudo porque acreditamos que gentileza gera gentileza! #SemanaQueroGentileza #gentileza #queroeducacao #gestaodefelicidade	2017-11-17 21:15:20-02	1	\N	t	\N	f
855	https://instagram.fsjk2-1.fna.fbcdn.net/vp/80d2be7a5575f1b2b3dd307a38d35667/5B84FA47/t51.2885-15/e35/23595823_378647939239851_4315875810977251328_n.jpg	262736763	Quem disse que anjos não existem?! 😇  Um simples ato de carinho cria uma onda sem fim!  #SemanaDaGentileza #QueroEducacao #QueroBolsa #GentilezaGeraGentileza	2017-11-16 15:32:40-02	1	\N	t	\N	f
856	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d5807ea0c2ba7a7699209f4f6db230c7/5B90C406/t51.2885-15/e35/23507207_2034369553510997_4799254623292489728_n.jpg	199506765	Das emoções das Bancas de Monografia. A aluna Estéfani Naara surpreendeu-me com essa linda gravura. Vai para quadro. Recebi, dizendo, você não vai me fazer chorar, né? #adoreioreconhecimento #direitoemusica #direito #musica #fip #paraiba #monografia #garoto #queroeducacao	2017-11-14 18:59:44-02	1	\N	t	\N	f
857	https://instagram.fsjk2-1.fna.fbcdn.net/vp/a1b2404497adbd9792329a4fee8c81d9/5B99CF2C/t51.2885-15/e35/23347928_436805526721117_4503815866088947712_n.jpg	262073731	#enem2017 #queroeducacao #queroenem	2017-11-10 12:30:21-02	1	\N	t	\N	f
858	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b2aa264e0cf03ae98dd3e831def04fa3/5B851828/t51.2885-15/e35/23416840_503869826654213_6977058279385989120_n.jpg	1376284178	Começando cedo! #querobolsa #queroeducacao	2017-11-10 07:41:24-02	1	\N	t	\N	f
859	https://instagram.fsjk2-1.fna.fbcdn.net/vp/44e0fd2dbe17aa87022b2496c1121ec6/5B7C7043/t51.2885-15/e35/23280060_847792982012675_1059904444394635264_n.jpg	42105459	Enquanto vão prestigiar os atrasados do ENEM, nós trabalhamos pra ninguém atrasar! #queroeducacao #querobolsa #queroenem ❤️ Por um país com mais educação ❤️	2017-11-07 22:57:06-02	1	\N	t	\N	f
860	https://instagram.fsjk2-1.fna.fbcdn.net/vp/88b164da64147ba55b7e80e884cbb9f2/5B98D9EC/t51.2885-15/e35/23098494_153681475236559_3765635653627281408_n.jpg	42105459	Halloween 🎃 #Queroeducacao	2017-11-01 21:15:22-02	1	\N	t	\N	f
861	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1a042e30f6b348c648c87efedd2bc7c4/5B84542B/t51.2885-15/e35/22860725_366481520460489_303477767750549504_n.jpg	262073731	Quero quero... #queroeducacao	2017-11-01 10:46:32-02	1	\N	t	\N	f
862	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8f5eb4f63bff747aec2dd53db70ecc16/5B8AD2EA/t51.2885-15/e35/22858451_1673246299372397_656970013051191296_n.jpg	274479807	Sobre um lugar cheeeeio de malucos! #queroeducacao #familiiaquero #malucos #aniverdomes #halloween	2017-10-31 19:37:50-02	1	\N	t	\N	f
863	https://instagram.fsjk2-1.fna.fbcdn.net/vp/391b0a6c02b22199fb503f8ea6d9efd1/5B83DBA5/t51.2885-15/e35/22802371_489241758115705_816793975292690432_n.jpg	3993501518	#elixirday #queroeducacao #querobolsa pq hoje é dia de programar	2017-10-28 09:04:35-02	1	\N	t	\N	f
864	https://instagram.fsjk2-1.fna.fbcdn.net/vp/92f24e626b083fb122d6d37088d14fcb/5B7FB149/t51.2885-15/e35/22710671_122932481733498_4646686565915951104_n.jpg	1460755894	O país é nosso; o dinheiro é nosso e continua faltando para educação, saúde, moradia, etc. Mas as ruas continuam vazias!! O povo só vai pras ruas para protestos vazios, gritos de ódio e disputas  de bandeiras que não mudam nada! Só o que parece importar é vestir camisa de tal cor e fazer selfies para as redes sociais!  #inaceitável !  Quem faz este país SOMOS NÓS  e isso tudo só vai mudar quando a população entender que NÓS PODEMOS TUDO! NÓS É QUE PODEMOS FAZER ACONTECER!!!! Faça acontecer! Diga não aos políticos sujos e corruptos nas urnas. Vamos começar a limpar este país para que ELE seja realmente nosso! 🤘🤘 #acredite #facaacontecer #essepaisemeu  #inaceitável #chegadecorrupcao  #queroeducacao #querosaude #queroseguranca #queroumpaismelhor #naovaomecalar #euvoulutarsempre	2017-10-25 10:32:58-02	1	\N	t	\N	f
865	https://instagram.fsjk2-1.fna.fbcdn.net/vp/51822c5a62854aa27cf64293cb15a251/5B86AB31/t51.2885-15/e35/22280879_141114443197371_4174374381083951104_n.jpg	1958774183	Que role mais empreendedor! ♡ #serempreendedor #queroeducacao #polijunior #ligaoarmotorista	2017-10-09 10:54:48-03	1	\N	t	\N	f
866	https://instagram.fsjk2-1.fna.fbcdn.net/vp/694e61dc9f1d227d90c5ca35e84f674d/5B794654/t51.2885-15/e35/22157943_1530171793688131_8380063673665716224_n.jpg	213226786	Quando um experiente que guia (dá conselhos) para você e seu time (sócios), apresentando a intenção, propósito, espírito, paixão. [Por Extensão] do direcionamento, desenvolve, produz ou cria projetos, ideias, obras etc. Mentor Intelectual, são os nossos heróis internos. Aqueles nos quais nos espelhamos, que se transformam nos nossos role-models e cujas expectativas (reais ou supostas) tentamos atender ao longo da nossa vida, mesmo que não estejam mais conosco. . #querobolsa #queroeducacao #startups #educacaoempreendedora #sonho #tech #parquetecnologico #mentoria #empreendedorismo #sonhogrande #inquieto #pensesimples #empreendedorismosocial #business #anjos #startup #acreditar #desenvolvimentopessoal #time	2017-10-01 09:36:23-03	1	\N	t	\N	f
867	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d62627e7cf9cda0b6902c616c5f2b6a8/5AF13A45/t51.2885-15/e35/21985276_1794626007233937_3607962288885071872_n.jpg	311698400	Um dia normal aqui😗😗 #querobolsa#queroeducacao	2017-09-29 18:00:14-03	1	\N	t	\N	f
868	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ecbc3d716befab267d45c25b64881e3e/5B82F3CB/t51.2885-15/e35/21985275_132996120765031_3118196533783166976_n.jpg	274479807	Aniversariantes do mês do nosso jeitinho!  #queroeducacao #coreotop #family	2017-09-29 17:57:36-03	1	\N	t	\N	f
869	https://instagram.fsjk2-1.fna.fbcdn.net/vp/19b36524bd99bb215417ea41b14020c5/5AF157F1/t51.2885-15/e35/26183813_1614706058643081_6698618324135182336_n.jpg	585035149	Povo que trabalha aqui deve ser plenamente feliz. Slc kk #codeinthedark #querobolsa #queroeducacao	2017-09-24 23:40:39-03	1	\N	t	\N	f
870	https://instagram.fsjk2-1.fna.fbcdn.net/vp/783d9711a5700d7b7e0f43acb34ece01/5AF17D7E/t51.2885-15/e35/21827750_745130949017389_8807059967795265536_n.jpg	4476582566	#Repost @justgigio ・・・ Sobre uma sensação incrível... #tbt #codeinthedarkbr #queroeducacao #frontinvale  Com a palavra, o campeão da edição Vale do Paraíba!	2017-09-21 18:48:00-03	1	\N	t	\N	f
871	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	1773015625558181222	f
872	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	1772896785146328206	f
873	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	1770589969024594937	f
874	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	1765001412365033038	f
875	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	1762638551148043668	f
876	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	1761793428805800175	f
877	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	1760587384716810596	f
878	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	1754688708692445144	f
879	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	1751900587840400551	f
880	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	1751899290013628385	f
881	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	1751844380215676513	f
882	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	1750298554880025841	f
883	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	1749609393740409909	f
884	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	1745886747513757744	f
885	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	1745827129105708685	f
886	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	1745822988764504354	f
887	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	1773015625558181222	f
888	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	1772896785146328206	f
889	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	1770589969024594937	f
890	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	1765001412365033038	f
891	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	1762638551148043668	f
892	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	1761793428805800175	f
893	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	1760587384716810596	f
894	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	1754688708692445144	f
895	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	1751900587840400551	f
896	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	1751899290013628385	f
897	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	1751844380215676513	f
898	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	1750298554880025841	f
899	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	1749609393740409909	f
900	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	1745886747513757744	f
901	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	1745827129105708685	f
902	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	1745822988764504354	f
903	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5a74f7dbb1f9f631746e69dc673bde1a/5B77BB02/t51.2885-15/e35/29417977_554597174925305_4297028729978224640_n.jpg	366384893	Eu amo meu trabalho ♥️😂😍 #eadieta #queroeducacao #ovosdepascoa	2018-03-29 12:34:00-03	1	\N	t	1745817124028616790	f
904	https://instagram.fsjk2-1.fna.fbcdn.net/vp/666288e5333effaa2fa76a466ac91bc6/5B879EE3/t51.2885-15/e35/28427348_1721218044606598_8903026927510487040_n.jpg	1072847106	Queridos!! #familiaquero #querobolsa #queroeducacao	2018-03-09 18:55:29-03	1	\N	t	1731513611255255015	f
905	https://instagram.fsjk2-1.fna.fbcdn.net/vp/af7fc26fad495d0c1c641f39bcc43379/5B9989A3/t51.2885-15/e35/26864040_2027044477553148_7792113346974580736_n.jpg	258105290	A vida me ensinou a nunca desistir Nem ganhar, nem perder mas procurar evoluir Podem me tirar tudo que tenho Só não podem me tirar as coisas boas que eu já fiz #querido #queroquero #photooftheday #happy #sp #sjc #queroeducacao	2018-01-26 09:48:40-02	1	\N	t	1700767611410593865	f
906	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1fda1bd0043ad420837bbb2d71594f17/5B818C35/t51.2885-15/e35/26285565_538989903142663_6989314045874536448_n.jpg	1808627157	Empresa Boa é ver pessoas felizes! Hoje foi o dia do picolé gourmet na quero bolsas! Leve para sua empresa nossos picolés gourmet!  #parceirostudodibom #picolégourmet #tendencia #top #quero #querobolsas #queroeducacao	2018-01-18 15:03:07-02	1	\N	t	1695127673067326815	f
907	https://instagram.fsjk2-1.fna.fbcdn.net/vp/67531d9a192f99b8df18bb0483790a35/5B940850/t51.2885-15/e35/26072397_1975036312714240_1880886863204450304_n.jpg	1376284178	Novo projeto 2018 #querobolsa #queroeducacao #jovempansjc	2018-01-08 09:30:59-02	1	\N	t	1687712752238212438	f
908	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b65d6769b16c81b77b04efade786fc78/5B9AC728/t51.2885-15/e35/26158479_341285343018361_5825048334343077888_n.jpg	3984491654	Acabei de receber um cartão de Natal e Fim de Ano da @querobolsa ! 😍 Como vocês sabem, em 2017, tive a felicidade de ser escolhido para o projeto Guia da Faculdade para escrever algumas matérias para a revista QB, e em 2018, tenho certeza que essa parceria continuará firme e forte.  Mafê, Dri, e todos que fazem parte desse projeto e que sempre me trataram com muito carinho, o meu muito obrigado! 💙❤💚 #querobolsa #queroeducacao #faculdade #universitário #letras #pedagogia #RJ #obrigado #muitoamorenvolvido	2018-01-04 17:05:43-02	1	\N	t	1685042522677456017	f
909	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f1b47b22fa0f1ad52a9f2d1993a6a83b/5AF10D84/t51.2885-15/e15/25014460_1536695553073152_171475757543981056_n.jpg	276511545	Uma festa de Natal dessas bichooo #querobolsa #queroeducacao #confra	2017-12-23 08:23:15-02	1	\N	t	1676081196809200492	f
910	https://instagram.fsjk2-1.fna.fbcdn.net/vp/caa58240b7f4640b1e59279ff36cddf7/5B927B77/t51.2885-15/e35/25022237_2031115147145536_8923232008449032192_n.jpg	238678792	Há alguns dias uma nova etapa da minha vida começou! Muitas mudanças aconteceram, muito amadurecimento, muitas saudades de casa... mas enfim é necessário que mudanças aconteçam pra que a gente possa crescer e se desenvolver como ser humano, acredito que tudo que acontece tem um motivo, e Deus prepara tudo direitinho! Posso dizer que Ele preparou tudo pra mim e pra me deixar super feliz, me deu uma oportunidade de me desenvolver profissionalmente em uma empresa incrível a @queroedu. Agradeço a eles por confiarem em mim para compor essa família que é demaisss!!! Enfim, acho que chegou a hora de mirar novos horizontes, mudar, melhorar e o principal, vestir mesmo essa camisa da Quero Educação e transformar a vida das pessoas por meio da educação! 😍😍❤ #queroeducacao #trabalho #melhorempresa #familiaqueroquero #sjc #life	2017-12-13 20:27:19-02	1	\N	t	1669198919489050784	f
911	https://instagram.fsjk2-1.fna.fbcdn.net/vp/33cd6a0679982f025111313467a16cf7/5B7D75F3/t51.2885-15/e35/24177644_168878290514587_6478922904334499840_n.jpg	39140288	Queri Perry, representando. #querobolsa #queroeducacao #startup #mascote #querido	2017-11-30 22:21:40-02	1	\N	t	1659834394549842162	f
912	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8c830dfb067879bf7364b9563146df3e/5B893146/t51.2885-15/s1080x1080/e15/fr/23734103_298508407306434_4806539957273362432_n.jpg	497896926	Presente de aniversário da #queroeducacao 💞💞💞💞	2017-11-22 17:05:48-02	1	\N	t	1653877206274757752	f
913	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f6d3ae96cdcf6a107d4dd8c55af1bbd2/5AF16725/t51.2885-15/e15/23594285_1979238058981831_2407180250006945792_n.jpg	5374086283	Dia 13/11 foi o Dia Mundial da Gentileza. E como todos os dias vivemos e vemos troca de gentilezas entre todo o time, fizemos a Semana Quero Gentileza. Teve presente, recadinhos, troca de carinho e felicidade!  Tudo porque acreditamos que gentileza gera gentileza! #SemanaQueroGentileza #gentileza #queroeducacao #gestaodefelicidade	2017-11-17 21:15:20-02	1	\N	t	1650373141099682827	f
914	https://instagram.fsjk2-1.fna.fbcdn.net/vp/80d2be7a5575f1b2b3dd307a38d35667/5B84FA47/t51.2885-15/e35/23595823_378647939239851_4315875810977251328_n.jpg	262736763	Quem disse que anjos não existem?! 😇  Um simples ato de carinho cria uma onda sem fim!  #SemanaDaGentileza #QueroEducacao #QueroBolsa #GentilezaGeraGentileza	2017-11-16 15:32:40-02	1	\N	t	1649481674079091123	f
915	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d5807ea0c2ba7a7699209f4f6db230c7/5B90C406/t51.2885-15/e35/23507207_2034369553510997_4799254623292489728_n.jpg	199506765	Das emoções das Bancas de Monografia. A aluna Estéfani Naara surpreendeu-me com essa linda gravura. Vai para quadro. Recebi, dizendo, você não vai me fazer chorar, né? #adoreioreconhecimento #direitoemusica #direito #musica #fip #paraiba #monografia #garoto #queroeducacao	2017-11-14 18:59:44-02	1	\N	t	1648136341073880442	f
916	https://instagram.fsjk2-1.fna.fbcdn.net/vp/a1b2404497adbd9792329a4fee8c81d9/5B99CF2C/t51.2885-15/e35/23347928_436805526721117_4503815866088947712_n.jpg	262073731	#enem2017 #queroeducacao #queroenem	2017-11-10 12:30:21-02	1	\N	t	1645041260501057531	f
917	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b2aa264e0cf03ae98dd3e831def04fa3/5B851828/t51.2885-15/e35/23416840_503869826654213_6977058279385989120_n.jpg	1376284178	Começando cedo! #querobolsa #queroeducacao	2017-11-10 07:41:24-02	1	\N	t	1644895828311868031	f
918	https://instagram.fsjk2-1.fna.fbcdn.net/vp/44e0fd2dbe17aa87022b2496c1121ec6/5B7C7043/t51.2885-15/e35/23280060_847792982012675_1059904444394635264_n.jpg	42105459	Enquanto vão prestigiar os atrasados do ENEM, nós trabalhamos pra ninguém atrasar! #queroeducacao #querobolsa #queroenem ❤️ Por um país com mais educação ❤️	2017-11-07 22:57:06-02	1	\N	t	1643182382733528675	f
919	https://instagram.fsjk2-1.fna.fbcdn.net/vp/88b164da64147ba55b7e80e884cbb9f2/5B98D9EC/t51.2885-15/e35/23098494_153681475236559_3765635653627281408_n.jpg	42105459	Halloween 🎃 #Queroeducacao	2017-11-01 21:15:22-02	1	\N	t	1638782528628342094	f
920	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1a042e30f6b348c648c87efedd2bc7c4/5B84542B/t51.2885-15/e35/22860725_366481520460489_303477767750549504_n.jpg	262073731	Quero quero... #queroeducacao	2017-11-01 10:46:32-02	1	\N	t	1638466021507741792	f
921	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8f5eb4f63bff747aec2dd53db70ecc16/5B8AD2EA/t51.2885-15/e35/22858451_1673246299372397_656970013051191296_n.jpg	274479807	Sobre um lugar cheeeeio de malucos! #queroeducacao #familiiaquero #malucos #aniverdomes #halloween	2017-10-31 19:37:50-02	1	\N	t	1638008664592080428	f
922	https://instagram.fsjk2-1.fna.fbcdn.net/vp/391b0a6c02b22199fb503f8ea6d9efd1/5B83DBA5/t51.2885-15/e35/22802371_489241758115705_816793975292690432_n.jpg	3993501518	#elixirday #queroeducacao #querobolsa pq hoje é dia de programar	2017-10-28 09:04:35-02	1	\N	t	1635515605343061218	f
923	https://instagram.fsjk2-1.fna.fbcdn.net/vp/92f24e626b083fb122d6d37088d14fcb/5B7FB149/t51.2885-15/e35/22710671_122932481733498_4646686565915951104_n.jpg	1460755894	O país é nosso; o dinheiro é nosso e continua faltando para educação, saúde, moradia, etc. Mas as ruas continuam vazias!! O povo só vai pras ruas para protestos vazios, gritos de ódio e disputas  de bandeiras que não mudam nada! Só o que parece importar é vestir camisa de tal cor e fazer selfies para as redes sociais!  #inaceitável !  Quem faz este país SOMOS NÓS  e isso tudo só vai mudar quando a população entender que NÓS PODEMOS TUDO! NÓS É QUE PODEMOS FAZER ACONTECER!!!! Faça acontecer! Diga não aos políticos sujos e corruptos nas urnas. Vamos começar a limpar este país para que ELE seja realmente nosso! 🤘🤘 #acredite #facaacontecer #essepaisemeu  #inaceitável #chegadecorrupcao  #queroeducacao #querosaude #queroseguranca #queroumpaismelhor #naovaomecalar #euvoulutarsempre	2017-10-25 10:32:58-02	1	\N	t	1633385766964394591	f
924	https://instagram.fsjk2-1.fna.fbcdn.net/vp/51822c5a62854aa27cf64293cb15a251/5B86AB31/t51.2885-15/e35/22280879_141114443197371_4174374381083951104_n.jpg	1958774183	Que role mais empreendedor! ♡ #serempreendedor #queroeducacao #polijunior #ligaoarmotorista	2017-10-09 10:54:48-03	1	\N	t	1621830543035625307	f
925	https://instagram.fsjk2-1.fna.fbcdn.net/vp/694e61dc9f1d227d90c5ca35e84f674d/5B794654/t51.2885-15/e35/22157943_1530171793688131_8380063673665716224_n.jpg	213226786	Quando um experiente que guia (dá conselhos) para você e seu time (sócios), apresentando a intenção, propósito, espírito, paixão. [Por Extensão] do direcionamento, desenvolve, produz ou cria projetos, ideias, obras etc. Mentor Intelectual, são os nossos heróis internos. Aqueles nos quais nos espelhamos, que se transformam nos nossos role-models e cujas expectativas (reais ou supostas) tentamos atender ao longo da nossa vida, mesmo que não estejam mais conosco. . #querobolsa #queroeducacao #startups #educacaoempreendedora #sonho #tech #parquetecnologico #mentoria #empreendedorismo #sonhogrande #inquieto #pensesimples #empreendedorismosocial #business #anjos #startup #acreditar #desenvolvimentopessoal #time	2017-10-01 09:36:23-03	1	\N	t	1615992864876047094	f
926	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d62627e7cf9cda0b6902c616c5f2b6a8/5AF13A45/t51.2885-15/e35/21985276_1794626007233937_3607962288885071872_n.jpg	311698400	Um dia normal aqui😗😗 #querobolsa#queroeducacao	2017-09-29 18:00:14-03	1	\N	t	1614796910865084983	f
927	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ecbc3d716befab267d45c25b64881e3e/5B82F3CB/t51.2885-15/e35/21985275_132996120765031_3118196533783166976_n.jpg	274479807	Aniversariantes do mês do nosso jeitinho!  #queroeducacao #coreotop #family	2017-09-29 17:57:36-03	1	\N	t	1614795591597417487	f
928	https://instagram.fsjk2-1.fna.fbcdn.net/vp/19b36524bd99bb215417ea41b14020c5/5AF157F1/t51.2885-15/e35/26183813_1614706058643081_6698618324135182336_n.jpg	585035149	Povo que trabalha aqui deve ser plenamente feliz. Slc kk #codeinthedark #querobolsa #queroeducacao	2017-09-24 23:40:39-03	1	\N	t	1611344373294246411	f
929	https://instagram.fsjk2-1.fna.fbcdn.net/vp/783d9711a5700d7b7e0f43acb34ece01/5AF17D7E/t51.2885-15/e35/21827750_745130949017389_8807059967795265536_n.jpg	4476582566	#Repost @justgigio ・・・ Sobre uma sensação incrível... #tbt #codeinthedarkbr #queroeducacao #frontinvale  Com a palavra, o campeão da edição Vale do Paraíba!	2017-09-21 18:48:00-03	1	\N	t	1609022747212414464	f
930	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	1773015625558181222	f
931	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	1772896785146328206	f
932	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	1770589969024594937	f
933	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	1765001412365033038	f
934	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	1762638551148043668	f
935	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	1761793428805800175	f
936	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	1760587384716810596	f
937	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	1754688708692445144	f
938	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	1751900587840400551	f
939	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	1751899290013628385	f
940	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	1751844380215676513	f
941	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	1750298554880025841	f
942	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	1749609393740409909	f
943	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	1773015625558181222	f
944	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	1772896785146328206	f
945	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	1770589969024594937	f
946	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	1765001412365033038	f
947	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	1762638551148043668	f
948	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	1761793428805800175	f
949	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	1760587384716810596	f
950	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	1754688708692445144	f
951	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	1751900587840400551	f
952	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	1751899290013628385	f
953	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	1751844380215676513	f
954	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	1750298554880025841	f
956	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	1745886747513757744	f
976	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1a042e30f6b348c648c87efedd2bc7c4/5B84542B/t51.2885-15/e35/22860725_366481520460489_303477767750549504_n.jpg	262073731	Quero quero... #queroeducacao	2017-11-01 10:46:32-02	1	\N	t	1638466021507741792	f
957	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	1745827129105708685	f
958	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	1745822988764504354	f
959	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5a74f7dbb1f9f631746e69dc673bde1a/5B77BB02/t51.2885-15/e35/29417977_554597174925305_4297028729978224640_n.jpg	366384893	Eu amo meu trabalho ♥️😂😍 #eadieta #queroeducacao #ovosdepascoa	2018-03-29 12:34:00-03	1	\N	t	1745817124028616790	f
960	https://instagram.fsjk2-1.fna.fbcdn.net/vp/666288e5333effaa2fa76a466ac91bc6/5B879EE3/t51.2885-15/e35/28427348_1721218044606598_8903026927510487040_n.jpg	1072847106	Queridos!! #familiaquero #querobolsa #queroeducacao	2018-03-09 18:55:29-03	1	\N	t	1731513611255255015	f
961	https://instagram.fsjk2-1.fna.fbcdn.net/vp/af7fc26fad495d0c1c641f39bcc43379/5B9989A3/t51.2885-15/e35/26864040_2027044477553148_7792113346974580736_n.jpg	258105290	A vida me ensinou a nunca desistir Nem ganhar, nem perder mas procurar evoluir Podem me tirar tudo que tenho Só não podem me tirar as coisas boas que eu já fiz #querido #queroquero #photooftheday #happy #sp #sjc #queroeducacao	2018-01-26 09:48:40-02	1	\N	t	1700767611410593865	f
980	https://instagram.fsjk2-1.fna.fbcdn.net/vp/51822c5a62854aa27cf64293cb15a251/5B86AB31/t51.2885-15/e35/22280879_141114443197371_4174374381083951104_n.jpg	1958774183	Que role mais empreendedor! ♡ #serempreendedor #queroeducacao #polijunior #ligaoarmotorista	2017-10-09 10:54:48-03	1	\N	t	1621830543035625307	f
962	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1fda1bd0043ad420837bbb2d71594f17/5B818C35/t51.2885-15/e35/26285565_538989903142663_6989314045874536448_n.jpg	1808627157	Empresa Boa é ver pessoas felizes! Hoje foi o dia do picolé gourmet na quero bolsas! Leve para sua empresa nossos picolés gourmet!  #parceirostudodibom #picolégourmet #tendencia #top #quero #querobolsas #queroeducacao	2018-01-18 15:03:07-02	1	\N	t	1695127673067326815	f
963	https://instagram.fsjk2-1.fna.fbcdn.net/vp/67531d9a192f99b8df18bb0483790a35/5B940850/t51.2885-15/e35/26072397_1975036312714240_1880886863204450304_n.jpg	1376284178	Novo projeto 2018 #querobolsa #queroeducacao #jovempansjc	2018-01-08 09:30:59-02	1	\N	t	1687712752238212438	f
964	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b65d6769b16c81b77b04efade786fc78/5B9AC728/t51.2885-15/e35/26158479_341285343018361_5825048334343077888_n.jpg	3984491654	Acabei de receber um cartão de Natal e Fim de Ano da @querobolsa ! 😍 Como vocês sabem, em 2017, tive a felicidade de ser escolhido para o projeto Guia da Faculdade para escrever algumas matérias para a revista QB, e em 2018, tenho certeza que essa parceria continuará firme e forte.  Mafê, Dri, e todos que fazem parte desse projeto e que sempre me trataram com muito carinho, o meu muito obrigado! 💙❤💚 #querobolsa #queroeducacao #faculdade #universitário #letras #pedagogia #RJ #obrigado #muitoamorenvolvido	2018-01-04 17:05:43-02	1	\N	t	1685042522677456017	f
965	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f1b47b22fa0f1ad52a9f2d1993a6a83b/5AF10D84/t51.2885-15/e15/25014460_1536695553073152_171475757543981056_n.jpg	276511545	Uma festa de Natal dessas bichooo #querobolsa #queroeducacao #confra	2017-12-23 08:23:15-02	1	\N	t	1676081196809200492	f
966	https://instagram.fsjk2-1.fna.fbcdn.net/vp/caa58240b7f4640b1e59279ff36cddf7/5B927B77/t51.2885-15/e35/25022237_2031115147145536_8923232008449032192_n.jpg	238678792	Há alguns dias uma nova etapa da minha vida começou! Muitas mudanças aconteceram, muito amadurecimento, muitas saudades de casa... mas enfim é necessário que mudanças aconteçam pra que a gente possa crescer e se desenvolver como ser humano, acredito que tudo que acontece tem um motivo, e Deus prepara tudo direitinho! Posso dizer que Ele preparou tudo pra mim e pra me deixar super feliz, me deu uma oportunidade de me desenvolver profissionalmente em uma empresa incrível a @queroedu. Agradeço a eles por confiarem em mim para compor essa família que é demaisss!!! Enfim, acho que chegou a hora de mirar novos horizontes, mudar, melhorar e o principal, vestir mesmo essa camisa da Quero Educação e transformar a vida das pessoas por meio da educação! 😍😍❤ #queroeducacao #trabalho #melhorempresa #familiaqueroquero #sjc #life	2017-12-13 20:27:19-02	1	\N	t	1669198919489050784	f
967	https://instagram.fsjk2-1.fna.fbcdn.net/vp/33cd6a0679982f025111313467a16cf7/5B7D75F3/t51.2885-15/e35/24177644_168878290514587_6478922904334499840_n.jpg	39140288	Queri Perry, representando. #querobolsa #queroeducacao #startup #mascote #querido	2017-11-30 22:21:40-02	1	\N	t	1659834394549842162	f
968	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8c830dfb067879bf7364b9563146df3e/5B893146/t51.2885-15/s1080x1080/e15/fr/23734103_298508407306434_4806539957273362432_n.jpg	497896926	Presente de aniversário da #queroeducacao 💞💞💞💞	2017-11-22 17:05:48-02	1	\N	t	1653877206274757752	f
969	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f6d3ae96cdcf6a107d4dd8c55af1bbd2/5AF16725/t51.2885-15/e15/23594285_1979238058981831_2407180250006945792_n.jpg	5374086283	Dia 13/11 foi o Dia Mundial da Gentileza. E como todos os dias vivemos e vemos troca de gentilezas entre todo o time, fizemos a Semana Quero Gentileza. Teve presente, recadinhos, troca de carinho e felicidade!  Tudo porque acreditamos que gentileza gera gentileza! #SemanaQueroGentileza #gentileza #queroeducacao #gestaodefelicidade	2017-11-17 21:15:20-02	1	\N	t	1650373141099682827	f
970	https://instagram.fsjk2-1.fna.fbcdn.net/vp/80d2be7a5575f1b2b3dd307a38d35667/5B84FA47/t51.2885-15/e35/23595823_378647939239851_4315875810977251328_n.jpg	262736763	Quem disse que anjos não existem?! 😇  Um simples ato de carinho cria uma onda sem fim!  #SemanaDaGentileza #QueroEducacao #QueroBolsa #GentilezaGeraGentileza	2017-11-16 15:32:40-02	1	\N	t	1649481674079091123	f
971	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d5807ea0c2ba7a7699209f4f6db230c7/5B90C406/t51.2885-15/e35/23507207_2034369553510997_4799254623292489728_n.jpg	199506765	Das emoções das Bancas de Monografia. A aluna Estéfani Naara surpreendeu-me com essa linda gravura. Vai para quadro. Recebi, dizendo, você não vai me fazer chorar, né? #adoreioreconhecimento #direitoemusica #direito #musica #fip #paraiba #monografia #garoto #queroeducacao	2017-11-14 18:59:44-02	1	\N	t	1648136341073880442	f
972	https://instagram.fsjk2-1.fna.fbcdn.net/vp/a1b2404497adbd9792329a4fee8c81d9/5B99CF2C/t51.2885-15/e35/23347928_436805526721117_4503815866088947712_n.jpg	262073731	#enem2017 #queroeducacao #queroenem	2017-11-10 12:30:21-02	1	\N	t	1645041260501057531	f
973	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b2aa264e0cf03ae98dd3e831def04fa3/5B851828/t51.2885-15/e35/23416840_503869826654213_6977058279385989120_n.jpg	1376284178	Começando cedo! #querobolsa #queroeducacao	2017-11-10 07:41:24-02	1	\N	t	1644895828311868031	f
974	https://instagram.fsjk2-1.fna.fbcdn.net/vp/44e0fd2dbe17aa87022b2496c1121ec6/5B7C7043/t51.2885-15/e35/23280060_847792982012675_1059904444394635264_n.jpg	42105459	Enquanto vão prestigiar os atrasados do ENEM, nós trabalhamos pra ninguém atrasar! #queroeducacao #querobolsa #queroenem ❤️ Por um país com mais educação ❤️	2017-11-07 22:57:06-02	1	\N	t	1643182382733528675	f
975	https://instagram.fsjk2-1.fna.fbcdn.net/vp/88b164da64147ba55b7e80e884cbb9f2/5B98D9EC/t51.2885-15/e35/23098494_153681475236559_3765635653627281408_n.jpg	42105459	Halloween 🎃 #Queroeducacao	2017-11-01 21:15:22-02	1	\N	t	1638782528628342094	f
977	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8f5eb4f63bff747aec2dd53db70ecc16/5B8AD2EA/t51.2885-15/e35/22858451_1673246299372397_656970013051191296_n.jpg	274479807	Sobre um lugar cheeeeio de malucos! #queroeducacao #familiiaquero #malucos #aniverdomes #halloween	2017-10-31 19:37:50-02	1	\N	t	1638008664592080428	f
978	https://instagram.fsjk2-1.fna.fbcdn.net/vp/391b0a6c02b22199fb503f8ea6d9efd1/5B83DBA5/t51.2885-15/e35/22802371_489241758115705_816793975292690432_n.jpg	3993501518	#elixirday #queroeducacao #querobolsa pq hoje é dia de programar	2017-10-28 09:04:35-02	1	\N	t	1635515605343061218	f
979	https://instagram.fsjk2-1.fna.fbcdn.net/vp/92f24e626b083fb122d6d37088d14fcb/5B7FB149/t51.2885-15/e35/22710671_122932481733498_4646686565915951104_n.jpg	1460755894	O país é nosso; o dinheiro é nosso e continua faltando para educação, saúde, moradia, etc. Mas as ruas continuam vazias!! O povo só vai pras ruas para protestos vazios, gritos de ódio e disputas  de bandeiras que não mudam nada! Só o que parece importar é vestir camisa de tal cor e fazer selfies para as redes sociais!  #inaceitável !  Quem faz este país SOMOS NÓS  e isso tudo só vai mudar quando a população entender que NÓS PODEMOS TUDO! NÓS É QUE PODEMOS FAZER ACONTECER!!!! Faça acontecer! Diga não aos políticos sujos e corruptos nas urnas. Vamos começar a limpar este país para que ELE seja realmente nosso! 🤘🤘 #acredite #facaacontecer #essepaisemeu  #inaceitável #chegadecorrupcao  #queroeducacao #querosaude #queroseguranca #queroumpaismelhor #naovaomecalar #euvoulutarsempre	2017-10-25 10:32:58-02	1	\N	t	1633385766964394591	f
981	https://instagram.fsjk2-1.fna.fbcdn.net/vp/694e61dc9f1d227d90c5ca35e84f674d/5B794654/t51.2885-15/e35/22157943_1530171793688131_8380063673665716224_n.jpg	213226786	Quando um experiente que guia (dá conselhos) para você e seu time (sócios), apresentando a intenção, propósito, espírito, paixão. [Por Extensão] do direcionamento, desenvolve, produz ou cria projetos, ideias, obras etc. Mentor Intelectual, são os nossos heróis internos. Aqueles nos quais nos espelhamos, que se transformam nos nossos role-models e cujas expectativas (reais ou supostas) tentamos atender ao longo da nossa vida, mesmo que não estejam mais conosco. . #querobolsa #queroeducacao #startups #educacaoempreendedora #sonho #tech #parquetecnologico #mentoria #empreendedorismo #sonhogrande #inquieto #pensesimples #empreendedorismosocial #business #anjos #startup #acreditar #desenvolvimentopessoal #time	2017-10-01 09:36:23-03	1	\N	t	1615992864876047094	f
982	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d62627e7cf9cda0b6902c616c5f2b6a8/5AF13A45/t51.2885-15/e35/21985276_1794626007233937_3607962288885071872_n.jpg	311698400	Um dia normal aqui😗😗 #querobolsa#queroeducacao	2017-09-29 18:00:14-03	1	\N	t	1614796910865084983	f
983	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ecbc3d716befab267d45c25b64881e3e/5B82F3CB/t51.2885-15/e35/21985275_132996120765031_3118196533783166976_n.jpg	274479807	Aniversariantes do mês do nosso jeitinho!  #queroeducacao #coreotop #family	2017-09-29 17:57:36-03	1	\N	t	1614795591597417487	f
984	https://instagram.fsjk2-1.fna.fbcdn.net/vp/19b36524bd99bb215417ea41b14020c5/5AF157F1/t51.2885-15/e35/26183813_1614706058643081_6698618324135182336_n.jpg	585035149	Povo que trabalha aqui deve ser plenamente feliz. Slc kk #codeinthedark #querobolsa #queroeducacao	2017-09-24 23:40:39-03	1	\N	t	1611344373294246411	f
985	https://instagram.fsjk2-1.fna.fbcdn.net/vp/783d9711a5700d7b7e0f43acb34ece01/5AF17D7E/t51.2885-15/e35/21827750_745130949017389_8807059967795265536_n.jpg	4476582566	#Repost @justgigio ・・・ Sobre uma sensação incrível... #tbt #codeinthedarkbr #queroeducacao #frontinvale  Com a palavra, o campeão da edição Vale do Paraíba!	2017-09-21 18:48:00-03	1	\N	t	1609022747212414464	f
986	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	1773015625558181222	f
987	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	1772896785146328206	f
988	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	1770589969024594937	f
989	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	1765001412365033038	f
990	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	1762638551148043668	f
991	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	1761793428805800175	f
992	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	1760587384716810596	f
993	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	1754688708692445144	f
994	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	1751900587840400551	f
995	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	1751899290013628385	f
996	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	1751844380215676513	f
997	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	1750298554880025841	f
998	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	1749609393740409909	f
999	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	1745886747513757744	f
1000	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	1745827129105708685	f
1001	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	1745822988764504354	f
1002	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5a74f7dbb1f9f631746e69dc673bde1a/5B77BB02/t51.2885-15/e35/29417977_554597174925305_4297028729978224640_n.jpg	366384893	Eu amo meu trabalho ♥️😂😍 #eadieta #queroeducacao #ovosdepascoa	2018-03-29 12:34:00-03	1	\N	t	1745817124028616790	f
1003	https://instagram.fsjk2-1.fna.fbcdn.net/vp/666288e5333effaa2fa76a466ac91bc6/5B879EE3/t51.2885-15/e35/28427348_1721218044606598_8903026927510487040_n.jpg	1072847106	Queridos!! #familiaquero #querobolsa #queroeducacao	2018-03-09 18:55:29-03	1	\N	t	1731513611255255015	f
1004	https://instagram.fsjk2-1.fna.fbcdn.net/vp/af7fc26fad495d0c1c641f39bcc43379/5B9989A3/t51.2885-15/e35/26864040_2027044477553148_7792113346974580736_n.jpg	258105290	A vida me ensinou a nunca desistir Nem ganhar, nem perder mas procurar evoluir Podem me tirar tudo que tenho Só não podem me tirar as coisas boas que eu já fiz #querido #queroquero #photooftheday #happy #sp #sjc #queroeducacao	2018-01-26 09:48:40-02	1	\N	t	1700767611410593865	f
1005	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1fda1bd0043ad420837bbb2d71594f17/5B818C35/t51.2885-15/e35/26285565_538989903142663_6989314045874536448_n.jpg	1808627157	Empresa Boa é ver pessoas felizes! Hoje foi o dia do picolé gourmet na quero bolsas! Leve para sua empresa nossos picolés gourmet!  #parceirostudodibom #picolégourmet #tendencia #top #quero #querobolsas #queroeducacao	2018-01-18 15:03:07-02	1	\N	t	1695127673067326815	f
1006	https://instagram.fsjk2-1.fna.fbcdn.net/vp/67531d9a192f99b8df18bb0483790a35/5B940850/t51.2885-15/e35/26072397_1975036312714240_1880886863204450304_n.jpg	1376284178	Novo projeto 2018 #querobolsa #queroeducacao #jovempansjc	2018-01-08 09:30:59-02	1	\N	t	1687712752238212438	f
1007	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b65d6769b16c81b77b04efade786fc78/5B9AC728/t51.2885-15/e35/26158479_341285343018361_5825048334343077888_n.jpg	3984491654	Acabei de receber um cartão de Natal e Fim de Ano da @querobolsa ! 😍 Como vocês sabem, em 2017, tive a felicidade de ser escolhido para o projeto Guia da Faculdade para escrever algumas matérias para a revista QB, e em 2018, tenho certeza que essa parceria continuará firme e forte.  Mafê, Dri, e todos que fazem parte desse projeto e que sempre me trataram com muito carinho, o meu muito obrigado! 💙❤💚 #querobolsa #queroeducacao #faculdade #universitário #letras #pedagogia #RJ #obrigado #muitoamorenvolvido	2018-01-04 17:05:43-02	1	\N	t	1685042522677456017	f
1008	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f1b47b22fa0f1ad52a9f2d1993a6a83b/5AF10D84/t51.2885-15/e15/25014460_1536695553073152_171475757543981056_n.jpg	276511545	Uma festa de Natal dessas bichooo #querobolsa #queroeducacao #confra	2017-12-23 08:23:15-02	1	\N	t	1676081196809200492	f
1009	https://instagram.fsjk2-1.fna.fbcdn.net/vp/caa58240b7f4640b1e59279ff36cddf7/5B927B77/t51.2885-15/e35/25022237_2031115147145536_8923232008449032192_n.jpg	238678792	Há alguns dias uma nova etapa da minha vida começou! Muitas mudanças aconteceram, muito amadurecimento, muitas saudades de casa... mas enfim é necessário que mudanças aconteçam pra que a gente possa crescer e se desenvolver como ser humano, acredito que tudo que acontece tem um motivo, e Deus prepara tudo direitinho! Posso dizer que Ele preparou tudo pra mim e pra me deixar super feliz, me deu uma oportunidade de me desenvolver profissionalmente em uma empresa incrível a @queroedu. Agradeço a eles por confiarem em mim para compor essa família que é demaisss!!! Enfim, acho que chegou a hora de mirar novos horizontes, mudar, melhorar e o principal, vestir mesmo essa camisa da Quero Educação e transformar a vida das pessoas por meio da educação! 😍😍❤ #queroeducacao #trabalho #melhorempresa #familiaqueroquero #sjc #life	2017-12-13 20:27:19-02	1	\N	t	1669198919489050784	f
1010	https://instagram.fsjk2-1.fna.fbcdn.net/vp/33cd6a0679982f025111313467a16cf7/5B7D75F3/t51.2885-15/e35/24177644_168878290514587_6478922904334499840_n.jpg	39140288	Queri Perry, representando. #querobolsa #queroeducacao #startup #mascote #querido	2017-11-30 22:21:40-02	1	\N	t	1659834394549842162	f
1011	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8c830dfb067879bf7364b9563146df3e/5B893146/t51.2885-15/s1080x1080/e15/fr/23734103_298508407306434_4806539957273362432_n.jpg	497896926	Presente de aniversário da #queroeducacao 💞💞💞💞	2017-11-22 17:05:48-02	1	\N	t	1653877206274757752	f
1012	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f6d3ae96cdcf6a107d4dd8c55af1bbd2/5AF16725/t51.2885-15/e15/23594285_1979238058981831_2407180250006945792_n.jpg	5374086283	Dia 13/11 foi o Dia Mundial da Gentileza. E como todos os dias vivemos e vemos troca de gentilezas entre todo o time, fizemos a Semana Quero Gentileza. Teve presente, recadinhos, troca de carinho e felicidade!  Tudo porque acreditamos que gentileza gera gentileza! #SemanaQueroGentileza #gentileza #queroeducacao #gestaodefelicidade	2017-11-17 21:15:20-02	1	\N	t	1650373141099682827	f
1013	https://instagram.fsjk2-1.fna.fbcdn.net/vp/80d2be7a5575f1b2b3dd307a38d35667/5B84FA47/t51.2885-15/e35/23595823_378647939239851_4315875810977251328_n.jpg	262736763	Quem disse que anjos não existem?! 😇  Um simples ato de carinho cria uma onda sem fim!  #SemanaDaGentileza #QueroEducacao #QueroBolsa #GentilezaGeraGentileza	2017-11-16 15:32:40-02	1	\N	t	1649481674079091123	f
1034	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	1761793428805800175	f
1014	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d5807ea0c2ba7a7699209f4f6db230c7/5B90C406/t51.2885-15/e35/23507207_2034369553510997_4799254623292489728_n.jpg	199506765	Das emoções das Bancas de Monografia. A aluna Estéfani Naara surpreendeu-me com essa linda gravura. Vai para quadro. Recebi, dizendo, você não vai me fazer chorar, né? #adoreioreconhecimento #direitoemusica #direito #musica #fip #paraiba #monografia #garoto #queroeducacao	2017-11-14 18:59:44-02	1	\N	t	1648136341073880442	f
1015	https://instagram.fsjk2-1.fna.fbcdn.net/vp/a1b2404497adbd9792329a4fee8c81d9/5B99CF2C/t51.2885-15/e35/23347928_436805526721117_4503815866088947712_n.jpg	262073731	#enem2017 #queroeducacao #queroenem	2017-11-10 12:30:21-02	1	\N	t	1645041260501057531	f
1016	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b2aa264e0cf03ae98dd3e831def04fa3/5B851828/t51.2885-15/e35/23416840_503869826654213_6977058279385989120_n.jpg	1376284178	Começando cedo! #querobolsa #queroeducacao	2017-11-10 07:41:24-02	1	\N	t	1644895828311868031	f
1017	https://instagram.fsjk2-1.fna.fbcdn.net/vp/44e0fd2dbe17aa87022b2496c1121ec6/5B7C7043/t51.2885-15/e35/23280060_847792982012675_1059904444394635264_n.jpg	42105459	Enquanto vão prestigiar os atrasados do ENEM, nós trabalhamos pra ninguém atrasar! #queroeducacao #querobolsa #queroenem ❤️ Por um país com mais educação ❤️	2017-11-07 22:57:06-02	1	\N	t	1643182382733528675	f
1018	https://instagram.fsjk2-1.fna.fbcdn.net/vp/88b164da64147ba55b7e80e884cbb9f2/5B98D9EC/t51.2885-15/e35/23098494_153681475236559_3765635653627281408_n.jpg	42105459	Halloween 🎃 #Queroeducacao	2017-11-01 21:15:22-02	1	\N	t	1638782528628342094	f
1019	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1a042e30f6b348c648c87efedd2bc7c4/5B84542B/t51.2885-15/e35/22860725_366481520460489_303477767750549504_n.jpg	262073731	Quero quero... #queroeducacao	2017-11-01 10:46:32-02	1	\N	t	1638466021507741792	f
1020	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8f5eb4f63bff747aec2dd53db70ecc16/5B8AD2EA/t51.2885-15/e35/22858451_1673246299372397_656970013051191296_n.jpg	274479807	Sobre um lugar cheeeeio de malucos! #queroeducacao #familiiaquero #malucos #aniverdomes #halloween	2017-10-31 19:37:50-02	1	\N	t	1638008664592080428	f
1021	https://instagram.fsjk2-1.fna.fbcdn.net/vp/391b0a6c02b22199fb503f8ea6d9efd1/5B83DBA5/t51.2885-15/e35/22802371_489241758115705_816793975292690432_n.jpg	3993501518	#elixirday #queroeducacao #querobolsa pq hoje é dia de programar	2017-10-28 09:04:35-02	1	\N	t	1635515605343061218	f
1022	https://instagram.fsjk2-1.fna.fbcdn.net/vp/92f24e626b083fb122d6d37088d14fcb/5B7FB149/t51.2885-15/e35/22710671_122932481733498_4646686565915951104_n.jpg	1460755894	O país é nosso; o dinheiro é nosso e continua faltando para educação, saúde, moradia, etc. Mas as ruas continuam vazias!! O povo só vai pras ruas para protestos vazios, gritos de ódio e disputas  de bandeiras que não mudam nada! Só o que parece importar é vestir camisa de tal cor e fazer selfies para as redes sociais!  #inaceitável !  Quem faz este país SOMOS NÓS  e isso tudo só vai mudar quando a população entender que NÓS PODEMOS TUDO! NÓS É QUE PODEMOS FAZER ACONTECER!!!! Faça acontecer! Diga não aos políticos sujos e corruptos nas urnas. Vamos começar a limpar este país para que ELE seja realmente nosso! 🤘🤘 #acredite #facaacontecer #essepaisemeu  #inaceitável #chegadecorrupcao  #queroeducacao #querosaude #queroseguranca #queroumpaismelhor #naovaomecalar #euvoulutarsempre	2017-10-25 10:32:58-02	1	\N	t	1633385766964394591	f
1023	https://instagram.fsjk2-1.fna.fbcdn.net/vp/51822c5a62854aa27cf64293cb15a251/5B86AB31/t51.2885-15/e35/22280879_141114443197371_4174374381083951104_n.jpg	1958774183	Que role mais empreendedor! ♡ #serempreendedor #queroeducacao #polijunior #ligaoarmotorista	2017-10-09 10:54:48-03	1	\N	t	1621830543035625307	f
1024	https://instagram.fsjk2-1.fna.fbcdn.net/vp/694e61dc9f1d227d90c5ca35e84f674d/5B794654/t51.2885-15/e35/22157943_1530171793688131_8380063673665716224_n.jpg	213226786	Quando um experiente que guia (dá conselhos) para você e seu time (sócios), apresentando a intenção, propósito, espírito, paixão. [Por Extensão] do direcionamento, desenvolve, produz ou cria projetos, ideias, obras etc. Mentor Intelectual, são os nossos heróis internos. Aqueles nos quais nos espelhamos, que se transformam nos nossos role-models e cujas expectativas (reais ou supostas) tentamos atender ao longo da nossa vida, mesmo que não estejam mais conosco. . #querobolsa #queroeducacao #startups #educacaoempreendedora #sonho #tech #parquetecnologico #mentoria #empreendedorismo #sonhogrande #inquieto #pensesimples #empreendedorismosocial #business #anjos #startup #acreditar #desenvolvimentopessoal #time	2017-10-01 09:36:23-03	1	\N	t	1615992864876047094	f
1025	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d62627e7cf9cda0b6902c616c5f2b6a8/5AF13A45/t51.2885-15/e35/21985276_1794626007233937_3607962288885071872_n.jpg	311698400	Um dia normal aqui😗😗 #querobolsa#queroeducacao	2017-09-29 18:00:14-03	1	\N	t	1614796910865084983	f
1026	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ecbc3d716befab267d45c25b64881e3e/5B82F3CB/t51.2885-15/e35/21985275_132996120765031_3118196533783166976_n.jpg	274479807	Aniversariantes do mês do nosso jeitinho!  #queroeducacao #coreotop #family	2017-09-29 17:57:36-03	1	\N	t	1614795591597417487	f
1027	https://instagram.fsjk2-1.fna.fbcdn.net/vp/19b36524bd99bb215417ea41b14020c5/5AF157F1/t51.2885-15/e35/26183813_1614706058643081_6698618324135182336_n.jpg	585035149	Povo que trabalha aqui deve ser plenamente feliz. Slc kk #codeinthedark #querobolsa #queroeducacao	2017-09-24 23:40:39-03	1	\N	t	1611344373294246411	f
1028	https://instagram.fsjk2-1.fna.fbcdn.net/vp/783d9711a5700d7b7e0f43acb34ece01/5AF17D7E/t51.2885-15/e35/21827750_745130949017389_8807059967795265536_n.jpg	4476582566	#Repost @justgigio ・・・ Sobre uma sensação incrível... #tbt #codeinthedarkbr #queroeducacao #frontinvale  Com a palavra, o campeão da edição Vale do Paraíba!	2017-09-21 18:48:00-03	1	\N	t	1609022747212414464	f
1030	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	1772896785146328206	f
1031	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	1770589969024594937	f
1032	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	1765001412365033038	f
1033	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	1762638551148043668	f
1035	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	1760587384716810596	f
1036	https://instagram.fsjk2-1.fna.fbcdn.net/vp/cb72f1a3532510355d9b64fee9df7395/5B913B45/t51.2885-15/e35/30591691_225689448010071_2804804177627185152_n.jpg	357766717	10/04/2018 Estudantes em luta!  #golpistasfascitasnaopassarao #queroeducacao	2018-04-10 18:20:16-03	1	\N	t	1754688708692445144	f
1037	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	1751900587840400551	f
1038	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	1751899290013628385	f
1039	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	1751844380215676513	f
1077	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5d09317a1a1201d8d2c1a3cc42397ec1/5B94CC84/t51.2885-15/e35/30591359_163179714365155_3268471581134815232_n.jpg	289756512	Essa empresa me trata tão mal #queroeducacao	2018-04-20 13:36:04-03	1	\N	t	1761793428805800175	f
1040	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f4e942f7b2c7800f8767f504751a03a1/5B901E5F/t51.2885-15/e35/29417686_156996998327684_8232624601809551360_n.jpg	262736763	“Rafael, pra suas filhas! Ass: Time Quero” Olha aí @juh.cris_  e @rafilsk__!!! Coelhinho da Páscoa passou de novo!🐰 @queroedu  e @querobolsa vocês são fantásticos!! ❤️#PascoaDeNovo #QueroEducacao #QueroBolsa	2018-04-04 16:57:48-03	1	\N	t	1750298554880025841	f
1041	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9b2a0c83fa24c0975c2c1e9abe3adbe0/5B9152F0/t51.2885-15/e35/29415927_353661098455235_7950099608674238464_n.jpg	496241185	Brasil mostra a sua cara😯😓 #brasil #patriotismo #stfcorruputo #hc #habeascorpuspreventivo #foracorrupção #união #porumbrasilmelhor #cf #cartamagna #queroeducacao  #amdpunblica #saude #acessibilidade #foracorruptos #corrupcaomata	2018-04-03 18:08:34-03	1	\N	t	1749609393740409909	f
1042	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	1745886747513757744	f
1043	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	1745827129105708685	f
1044	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	1745822988764504354	f
1045	https://instagram.fsjk2-1.fna.fbcdn.net/vp/5a74f7dbb1f9f631746e69dc673bde1a/5B77BB02/t51.2885-15/e35/29417977_554597174925305_4297028729978224640_n.jpg	366384893	Eu amo meu trabalho ♥️😂😍 #eadieta #queroeducacao #ovosdepascoa	2018-03-29 12:34:00-03	1	\N	t	1745817124028616790	f
1046	https://instagram.fsjk2-1.fna.fbcdn.net/vp/666288e5333effaa2fa76a466ac91bc6/5B879EE3/t51.2885-15/e35/28427348_1721218044606598_8903026927510487040_n.jpg	1072847106	Queridos!! #familiaquero #querobolsa #queroeducacao	2018-03-09 18:55:29-03	1	\N	t	1731513611255255015	f
1047	https://instagram.fsjk2-1.fna.fbcdn.net/vp/af7fc26fad495d0c1c641f39bcc43379/5B9989A3/t51.2885-15/e35/26864040_2027044477553148_7792113346974580736_n.jpg	258105290	A vida me ensinou a nunca desistir Nem ganhar, nem perder mas procurar evoluir Podem me tirar tudo que tenho Só não podem me tirar as coisas boas que eu já fiz #querido #queroquero #photooftheday #happy #sp #sjc #queroeducacao	2018-01-26 09:48:40-02	1	\N	t	1700767611410593865	f
1048	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1fda1bd0043ad420837bbb2d71594f17/5B818C35/t51.2885-15/e35/26285565_538989903142663_6989314045874536448_n.jpg	1808627157	Empresa Boa é ver pessoas felizes! Hoje foi o dia do picolé gourmet na quero bolsas! Leve para sua empresa nossos picolés gourmet!  #parceirostudodibom #picolégourmet #tendencia #top #quero #querobolsas #queroeducacao	2018-01-18 15:03:07-02	1	\N	t	1695127673067326815	f
1049	https://instagram.fsjk2-1.fna.fbcdn.net/vp/67531d9a192f99b8df18bb0483790a35/5B940850/t51.2885-15/e35/26072397_1975036312714240_1880886863204450304_n.jpg	1376284178	Novo projeto 2018 #querobolsa #queroeducacao #jovempansjc	2018-01-08 09:30:59-02	1	\N	t	1687712752238212438	f
1050	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b65d6769b16c81b77b04efade786fc78/5B9AC728/t51.2885-15/e35/26158479_341285343018361_5825048334343077888_n.jpg	3984491654	Acabei de receber um cartão de Natal e Fim de Ano da @querobolsa ! 😍 Como vocês sabem, em 2017, tive a felicidade de ser escolhido para o projeto Guia da Faculdade para escrever algumas matérias para a revista QB, e em 2018, tenho certeza que essa parceria continuará firme e forte.  Mafê, Dri, e todos que fazem parte desse projeto e que sempre me trataram com muito carinho, o meu muito obrigado! 💙❤💚 #querobolsa #queroeducacao #faculdade #universitário #letras #pedagogia #RJ #obrigado #muitoamorenvolvido	2018-01-04 17:05:43-02	1	\N	t	1685042522677456017	f
1051	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f1b47b22fa0f1ad52a9f2d1993a6a83b/5AF10D84/t51.2885-15/e15/25014460_1536695553073152_171475757543981056_n.jpg	276511545	Uma festa de Natal dessas bichooo #querobolsa #queroeducacao #confra	2017-12-23 08:23:15-02	1	\N	t	1676081196809200492	f
1052	https://instagram.fsjk2-1.fna.fbcdn.net/vp/caa58240b7f4640b1e59279ff36cddf7/5B927B77/t51.2885-15/e35/25022237_2031115147145536_8923232008449032192_n.jpg	238678792	Há alguns dias uma nova etapa da minha vida começou! Muitas mudanças aconteceram, muito amadurecimento, muitas saudades de casa... mas enfim é necessário que mudanças aconteçam pra que a gente possa crescer e se desenvolver como ser humano, acredito que tudo que acontece tem um motivo, e Deus prepara tudo direitinho! Posso dizer que Ele preparou tudo pra mim e pra me deixar super feliz, me deu uma oportunidade de me desenvolver profissionalmente em uma empresa incrível a @queroedu. Agradeço a eles por confiarem em mim para compor essa família que é demaisss!!! Enfim, acho que chegou a hora de mirar novos horizontes, mudar, melhorar e o principal, vestir mesmo essa camisa da Quero Educação e transformar a vida das pessoas por meio da educação! 😍😍❤ #queroeducacao #trabalho #melhorempresa #familiaqueroquero #sjc #life	2017-12-13 20:27:19-02	1	\N	t	1669198919489050784	f
1053	https://instagram.fsjk2-1.fna.fbcdn.net/vp/33cd6a0679982f025111313467a16cf7/5B7D75F3/t51.2885-15/e35/24177644_168878290514587_6478922904334499840_n.jpg	39140288	Queri Perry, representando. #querobolsa #queroeducacao #startup #mascote #querido	2017-11-30 22:21:40-02	1	\N	t	1659834394549842162	f
1054	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8c830dfb067879bf7364b9563146df3e/5B893146/t51.2885-15/s1080x1080/e15/fr/23734103_298508407306434_4806539957273362432_n.jpg	497896926	Presente de aniversário da #queroeducacao 💞💞💞💞	2017-11-22 17:05:48-02	1	\N	t	1653877206274757752	f
1055	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f6d3ae96cdcf6a107d4dd8c55af1bbd2/5AF16725/t51.2885-15/e15/23594285_1979238058981831_2407180250006945792_n.jpg	5374086283	Dia 13/11 foi o Dia Mundial da Gentileza. E como todos os dias vivemos e vemos troca de gentilezas entre todo o time, fizemos a Semana Quero Gentileza. Teve presente, recadinhos, troca de carinho e felicidade!  Tudo porque acreditamos que gentileza gera gentileza! #SemanaQueroGentileza #gentileza #queroeducacao #gestaodefelicidade	2017-11-17 21:15:20-02	1	\N	t	1650373141099682827	f
1056	https://instagram.fsjk2-1.fna.fbcdn.net/vp/80d2be7a5575f1b2b3dd307a38d35667/5B84FA47/t51.2885-15/e35/23595823_378647939239851_4315875810977251328_n.jpg	262736763	Quem disse que anjos não existem?! 😇  Um simples ato de carinho cria uma onda sem fim!  #SemanaDaGentileza #QueroEducacao #QueroBolsa #GentilezaGeraGentileza	2017-11-16 15:32:40-02	1	\N	t	1649481674079091123	f
1057	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d5807ea0c2ba7a7699209f4f6db230c7/5B90C406/t51.2885-15/e35/23507207_2034369553510997_4799254623292489728_n.jpg	199506765	Das emoções das Bancas de Monografia. A aluna Estéfani Naara surpreendeu-me com essa linda gravura. Vai para quadro. Recebi, dizendo, você não vai me fazer chorar, né? #adoreioreconhecimento #direitoemusica #direito #musica #fip #paraiba #monografia #garoto #queroeducacao	2017-11-14 18:59:44-02	1	\N	t	1648136341073880442	f
1059	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b2aa264e0cf03ae98dd3e831def04fa3/5B851828/t51.2885-15/e35/23416840_503869826654213_6977058279385989120_n.jpg	1376284178	Começando cedo! #querobolsa #queroeducacao	2017-11-10 07:41:24-02	1	\N	t	1644895828311868031	f
1060	https://instagram.fsjk2-1.fna.fbcdn.net/vp/44e0fd2dbe17aa87022b2496c1121ec6/5B7C7043/t51.2885-15/e35/23280060_847792982012675_1059904444394635264_n.jpg	42105459	Enquanto vão prestigiar os atrasados do ENEM, nós trabalhamos pra ninguém atrasar! #queroeducacao #querobolsa #queroenem ❤️ Por um país com mais educação ❤️	2017-11-07 22:57:06-02	1	\N	t	1643182382733528675	f
1061	https://instagram.fsjk2-1.fna.fbcdn.net/vp/88b164da64147ba55b7e80e884cbb9f2/5B98D9EC/t51.2885-15/e35/23098494_153681475236559_3765635653627281408_n.jpg	42105459	Halloween 🎃 #Queroeducacao	2017-11-01 21:15:22-02	1	\N	t	1638782528628342094	f
1062	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1a042e30f6b348c648c87efedd2bc7c4/5B84542B/t51.2885-15/e35/22860725_366481520460489_303477767750549504_n.jpg	262073731	Quero quero... #queroeducacao	2017-11-01 10:46:32-02	1	\N	t	1638466021507741792	f
1063	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8f5eb4f63bff747aec2dd53db70ecc16/5B8AD2EA/t51.2885-15/e35/22858451_1673246299372397_656970013051191296_n.jpg	274479807	Sobre um lugar cheeeeio de malucos! #queroeducacao #familiiaquero #malucos #aniverdomes #halloween	2017-10-31 19:37:50-02	1	\N	t	1638008664592080428	f
1064	https://instagram.fsjk2-1.fna.fbcdn.net/vp/391b0a6c02b22199fb503f8ea6d9efd1/5B83DBA5/t51.2885-15/e35/22802371_489241758115705_816793975292690432_n.jpg	3993501518	#elixirday #queroeducacao #querobolsa pq hoje é dia de programar	2017-10-28 09:04:35-02	1	\N	t	1635515605343061218	f
1066	https://instagram.fsjk2-1.fna.fbcdn.net/vp/51822c5a62854aa27cf64293cb15a251/5B86AB31/t51.2885-15/e35/22280879_141114443197371_4174374381083951104_n.jpg	1958774183	Que role mais empreendedor! ♡ #serempreendedor #queroeducacao #polijunior #ligaoarmotorista	2017-10-09 10:54:48-03	1	\N	t	1621830543035625307	f
1067	https://instagram.fsjk2-1.fna.fbcdn.net/vp/694e61dc9f1d227d90c5ca35e84f674d/5B794654/t51.2885-15/e35/22157943_1530171793688131_8380063673665716224_n.jpg	213226786	Quando um experiente que guia (dá conselhos) para você e seu time (sócios), apresentando a intenção, propósito, espírito, paixão. [Por Extensão] do direcionamento, desenvolve, produz ou cria projetos, ideias, obras etc. Mentor Intelectual, são os nossos heróis internos. Aqueles nos quais nos espelhamos, que se transformam nos nossos role-models e cujas expectativas (reais ou supostas) tentamos atender ao longo da nossa vida, mesmo que não estejam mais conosco. . #querobolsa #queroeducacao #startups #educacaoempreendedora #sonho #tech #parquetecnologico #mentoria #empreendedorismo #sonhogrande #inquieto #pensesimples #empreendedorismosocial #business #anjos #startup #acreditar #desenvolvimentopessoal #time	2017-10-01 09:36:23-03	1	\N	t	1615992864876047094	f
1069	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ecbc3d716befab267d45c25b64881e3e/5B82F3CB/t51.2885-15/e35/21985275_132996120765031_3118196533783166976_n.jpg	274479807	Aniversariantes do mês do nosso jeitinho!  #queroeducacao #coreotop #family	2017-09-29 17:57:36-03	1	\N	t	1614795591597417487	f
1070	https://instagram.fsjk2-1.fna.fbcdn.net/vp/19b36524bd99bb215417ea41b14020c5/5AF157F1/t51.2885-15/e35/26183813_1614706058643081_6698618324135182336_n.jpg	585035149	Povo que trabalha aqui deve ser plenamente feliz. Slc kk #codeinthedark #querobolsa #queroeducacao	2017-09-24 23:40:39-03	1	\N	t	1611344373294246411	f
1071	https://instagram.fsjk2-1.fna.fbcdn.net/vp/783d9711a5700d7b7e0f43acb34ece01/5AF17D7E/t51.2885-15/e35/21827750_745130949017389_8807059967795265536_n.jpg	4476582566	#Repost @justgigio ・・・ Sobre uma sensação incrível... #tbt #codeinthedarkbr #queroeducacao #frontinvale  Com a palavra, o campeão da edição Vale do Paraíba!	2017-09-21 18:48:00-03	1	\N	t	1609022747212414464	f
1072	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ae63c0137718e967e164f26ccc66a212/5B9C7D48/t51.2885-15/e35/31170287_1782437348482589_2069091952158048256_n.jpg	236371070	#queroeducacao	2018-05-06 01:12:34-03	1	\N	t	1773015625558181222	f
1094	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f1b47b22fa0f1ad52a9f2d1993a6a83b/5AF10D84/t51.2885-15/e15/25014460_1536695553073152_171475757543981056_n.jpg	276511545	Uma festa de Natal dessas bichooo #querobolsa #queroeducacao #confra	2017-12-23 08:23:15-02	1	\N	t	1676081196809200492	f
1073	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ee0c0ff1099e44abafac183e201590ac/5B90404C/t51.2885-15/e35/31688265_450518652055382_4640112968145567744_n.jpg	366384893	Depois de um dia de trabalho duro vamos descansar um pouquinho na piscina de bolinhas 😍♥️😂 #melhorlugar #melhortrabalho #amomuitotutoisso  #queroeducacao	2018-05-05 21:16:27-03	1	\N	t	1772896785146328206	f
1074	https://instagram.fsjk2-1.fna.fbcdn.net/vp/142655e12450719fa9393740056191fe/5B929C35/t51.2885-15/e35/31474843_2200303466863767_6537845655157604352_n.jpg	39140288	This is how we do. #unicorn #pink #work #startup #querobolsa #queroeducacao #workstation	2018-05-02 16:53:14-03	1	\N	t	1770589969024594937	f
1075	https://instagram.fsjk2-1.fna.fbcdn.net/vp/0260d64b151cc29e8801e15e0ac2c0e6/5B813BE7/t51.2885-15/e35/31054648_2153545008202025_5626827514799194112_n.jpg	366384893	Ainda sobre esse domingo incrível (juro que parei) 😂 ♥️😍 um agradecimento especial a empresa mas linda de todas que nos proporciona momentos maravilhosos #queroeducacao #melhorempresa  eu amo meu trabalho e amo essa empresa!!!	2018-04-24 23:49:46-03	1	\N	t	1765001412365033038	f
1076	https://instagram.fsjk2-1.fna.fbcdn.net/vp/288a2e1f02f057e7b4ad9a606a26bf67/5B81CD32/t51.2885-15/e35/30591900_219739805442999_6918640049781211136_n.jpg	366384893	Minha mais nova paixão que me deixa super dolorida 😂 😍  #muaythai #chutealto #queroeducacao	2018-04-21 17:35:11-03	1	\N	t	1762638551148043668	f
1078	https://instagram.fsjk2-1.fna.fbcdn.net/vp/849128bba20398fcacc79499196dcc5a/5B7B6E10/t51.2885-15/e35/30604109_1003988746416672_4942547376670769152_n.jpg	366384893	Aquele momento que o gestor chama todo mundo só pra ver o pôr do sol 😍♥️ @gabrielcsp #queroeducacao #pordosol #melhorequipe #amomuitotutoisso #melhorlugar	2018-04-18 21:39:53-03	1	\N	t	1760587384716810596	f
1080	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ab9e0eb77d273eeefa396de5f99f736b/5B963342/t51.2885-15/e35/29416265_1777468339227103_316678581663039488_n.jpg	366384893	Menu da festa 😍 #queroeducacao	2018-04-06 22:00:46-03	1	\N	t	1751900587840400551	f
1081	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e97431428e403e68179effe283209818/5B973D4F/t51.2885-15/e35/29737681_183489879041139_6944744418624667648_n.jpg	366384893	#sextadacerveja  #queroeducacao	2018-04-06 21:58:11-03	1	\N	t	1751899290013628385	f
1082	https://instagram.fsjk2-1.fna.fbcdn.net/vp/e72464dc69eaf0e1622fb3668856bc43/5B97D77B/t51.2885-15/e35/29715310_233150633911421_8556024893190176768_n.jpg	366384893	Amo mais que chocolate #sextadacerveja #queroeducacao	2018-04-06 20:09:05-03	1	\N	t	1751844380215676513	f
1085	https://instagram.fsjk2-1.fna.fbcdn.net/vp/d509aae7baf91e2fb6e9f249d7f3c421/5AF0F694/t51.2885-15/e15/29414988_260062721201559_2591903997384196096_n.jpg	1808627157	Mais uma quinta-feira do sorvete e tivemos uma surpresa! Nosso querido amigo @marcelinhocariocaoficial aprovou  os nossos Picolés Gourmet. Muito obrigada pela referência, até a próxima. #queroeducacao #parceirostudodibom #veraosemfim #gratidão #picolegourmetpersonalizado #pedeanjo	2018-03-29 14:53:17-03	1	\N	t	1745886747513757744	f
1086	https://instagram.fsjk2-1.fna.fbcdn.net/vp/9a405f5ad8858a92131019524a317730/5B96A809/t51.2885-15/e35/29414949_209331453155967_7135188684483067904_n.jpg	262736763	“Não é crush, mas também traz felicidade” kkkkk @queroedu dando uma aula de valorização do colaborador como sempre!!! Showcolate pra todos! #FelizPascoa #QueroEducacao #CacauShow	2018-03-29 12:53:53-03	1	\N	t	1745827129105708685	f
1087	https://instagram.fsjk2-1.fna.fbcdn.net/vp/32e707e25cb009afb85778ef7658a916/5B8436AD/t51.2885-15/e35/29716644_356030778230129_7571686167825874944_n.jpg	262073731	Melhor empresa do mundoooo. #querobolsa  #queroeducacao	2018-03-29 12:45:39-03	1	\N	t	1745822988764504354	f
1089	https://instagram.fsjk2-1.fna.fbcdn.net/vp/666288e5333effaa2fa76a466ac91bc6/5B879EE3/t51.2885-15/e35/28427348_1721218044606598_8903026927510487040_n.jpg	1072847106	Queridos!! #familiaquero #querobolsa #queroeducacao	2018-03-09 18:55:29-03	1	\N	t	1731513611255255015	f
1090	https://instagram.fsjk2-1.fna.fbcdn.net/vp/af7fc26fad495d0c1c641f39bcc43379/5B9989A3/t51.2885-15/e35/26864040_2027044477553148_7792113346974580736_n.jpg	258105290	A vida me ensinou a nunca desistir Nem ganhar, nem perder mas procurar evoluir Podem me tirar tudo que tenho Só não podem me tirar as coisas boas que eu já fiz #querido #queroquero #photooftheday #happy #sp #sjc #queroeducacao	2018-01-26 09:48:40-02	1	\N	t	1700767611410593865	f
1091	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1fda1bd0043ad420837bbb2d71594f17/5B818C35/t51.2885-15/e35/26285565_538989903142663_6989314045874536448_n.jpg	1808627157	Empresa Boa é ver pessoas felizes! Hoje foi o dia do picolé gourmet na quero bolsas! Leve para sua empresa nossos picolés gourmet!  #parceirostudodibom #picolégourmet #tendencia #top #quero #querobolsas #queroeducacao	2018-01-18 15:03:07-02	1	\N	t	1695127673067326815	f
1092	https://instagram.fsjk2-1.fna.fbcdn.net/vp/67531d9a192f99b8df18bb0483790a35/5B940850/t51.2885-15/e35/26072397_1975036312714240_1880886863204450304_n.jpg	1376284178	Novo projeto 2018 #querobolsa #queroeducacao #jovempansjc	2018-01-08 09:30:59-02	1	\N	t	1687712752238212438	f
1093	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b65d6769b16c81b77b04efade786fc78/5B9AC728/t51.2885-15/e35/26158479_341285343018361_5825048334343077888_n.jpg	3984491654	Acabei de receber um cartão de Natal e Fim de Ano da @querobolsa ! 😍 Como vocês sabem, em 2017, tive a felicidade de ser escolhido para o projeto Guia da Faculdade para escrever algumas matérias para a revista QB, e em 2018, tenho certeza que essa parceria continuará firme e forte.  Mafê, Dri, e todos que fazem parte desse projeto e que sempre me trataram com muito carinho, o meu muito obrigado! 💙❤💚 #querobolsa #queroeducacao #faculdade #universitário #letras #pedagogia #RJ #obrigado #muitoamorenvolvido	2018-01-04 17:05:43-02	1	\N	t	1685042522677456017	f
1095	https://instagram.fsjk2-1.fna.fbcdn.net/vp/caa58240b7f4640b1e59279ff36cddf7/5B927B77/t51.2885-15/e35/25022237_2031115147145536_8923232008449032192_n.jpg	238678792	Há alguns dias uma nova etapa da minha vida começou! Muitas mudanças aconteceram, muito amadurecimento, muitas saudades de casa... mas enfim é necessário que mudanças aconteçam pra que a gente possa crescer e se desenvolver como ser humano, acredito que tudo que acontece tem um motivo, e Deus prepara tudo direitinho! Posso dizer que Ele preparou tudo pra mim e pra me deixar super feliz, me deu uma oportunidade de me desenvolver profissionalmente em uma empresa incrível a @queroedu. Agradeço a eles por confiarem em mim para compor essa família que é demaisss!!! Enfim, acho que chegou a hora de mirar novos horizontes, mudar, melhorar e o principal, vestir mesmo essa camisa da Quero Educação e transformar a vida das pessoas por meio da educação! 😍😍❤ #queroeducacao #trabalho #melhorempresa #familiaqueroquero #sjc #life	2017-12-13 20:27:19-02	1	\N	t	1669198919489050784	f
1096	https://instagram.fsjk2-1.fna.fbcdn.net/vp/33cd6a0679982f025111313467a16cf7/5B7D75F3/t51.2885-15/e35/24177644_168878290514587_6478922904334499840_n.jpg	39140288	Queri Perry, representando. #querobolsa #queroeducacao #startup #mascote #querido	2017-11-30 22:21:40-02	1	\N	t	1659834394549842162	f
1098	https://instagram.fsjk2-1.fna.fbcdn.net/vp/f6d3ae96cdcf6a107d4dd8c55af1bbd2/5AF16725/t51.2885-15/e15/23594285_1979238058981831_2407180250006945792_n.jpg	5374086283	Dia 13/11 foi o Dia Mundial da Gentileza. E como todos os dias vivemos e vemos troca de gentilezas entre todo o time, fizemos a Semana Quero Gentileza. Teve presente, recadinhos, troca de carinho e felicidade!  Tudo porque acreditamos que gentileza gera gentileza! #SemanaQueroGentileza #gentileza #queroeducacao #gestaodefelicidade	2017-11-17 21:15:20-02	1	\N	t	1650373141099682827	f
1099	https://instagram.fsjk2-1.fna.fbcdn.net/vp/80d2be7a5575f1b2b3dd307a38d35667/5B84FA47/t51.2885-15/e35/23595823_378647939239851_4315875810977251328_n.jpg	262736763	Quem disse que anjos não existem?! 😇  Um simples ato de carinho cria uma onda sem fim!  #SemanaDaGentileza #QueroEducacao #QueroBolsa #GentilezaGeraGentileza	2017-11-16 15:32:40-02	1	\N	t	1649481674079091123	f
1101	https://instagram.fsjk2-1.fna.fbcdn.net/vp/a1b2404497adbd9792329a4fee8c81d9/5B99CF2C/t51.2885-15/e35/23347928_436805526721117_4503815866088947712_n.jpg	262073731	#enem2017 #queroeducacao #queroenem	2017-11-10 12:30:21-02	1	\N	t	1645041260501057531	f
1102	https://instagram.fsjk2-1.fna.fbcdn.net/vp/b2aa264e0cf03ae98dd3e831def04fa3/5B851828/t51.2885-15/e35/23416840_503869826654213_6977058279385989120_n.jpg	1376284178	Começando cedo! #querobolsa #queroeducacao	2017-11-10 07:41:24-02	1	\N	t	1644895828311868031	f
1103	https://instagram.fsjk2-1.fna.fbcdn.net/vp/44e0fd2dbe17aa87022b2496c1121ec6/5B7C7043/t51.2885-15/e35/23280060_847792982012675_1059904444394635264_n.jpg	42105459	Enquanto vão prestigiar os atrasados do ENEM, nós trabalhamos pra ninguém atrasar! #queroeducacao #querobolsa #queroenem ❤️ Por um país com mais educação ❤️	2017-11-07 22:57:06-02	1	\N	t	1643182382733528675	f
1104	https://instagram.fsjk2-1.fna.fbcdn.net/vp/88b164da64147ba55b7e80e884cbb9f2/5B98D9EC/t51.2885-15/e35/23098494_153681475236559_3765635653627281408_n.jpg	42105459	Halloween 🎃 #Queroeducacao	2017-11-01 21:15:22-02	1	\N	t	1638782528628342094	f
1105	https://instagram.fsjk2-1.fna.fbcdn.net/vp/1a042e30f6b348c648c87efedd2bc7c4/5B84542B/t51.2885-15/e35/22860725_366481520460489_303477767750549504_n.jpg	262073731	Quero quero... #queroeducacao	2017-11-01 10:46:32-02	1	\N	t	1638466021507741792	f
1106	https://instagram.fsjk2-1.fna.fbcdn.net/vp/8f5eb4f63bff747aec2dd53db70ecc16/5B8AD2EA/t51.2885-15/e35/22858451_1673246299372397_656970013051191296_n.jpg	274479807	Sobre um lugar cheeeeio de malucos! #queroeducacao #familiiaquero #malucos #aniverdomes #halloween	2017-10-31 19:37:50-02	1	\N	t	1638008664592080428	f
1107	https://instagram.fsjk2-1.fna.fbcdn.net/vp/391b0a6c02b22199fb503f8ea6d9efd1/5B83DBA5/t51.2885-15/e35/22802371_489241758115705_816793975292690432_n.jpg	3993501518	#elixirday #queroeducacao #querobolsa pq hoje é dia de programar	2017-10-28 09:04:35-02	1	\N	t	1635515605343061218	f
1110	https://instagram.fsjk2-1.fna.fbcdn.net/vp/694e61dc9f1d227d90c5ca35e84f674d/5B794654/t51.2885-15/e35/22157943_1530171793688131_8380063673665716224_n.jpg	213226786	Quando um experiente que guia (dá conselhos) para você e seu time (sócios), apresentando a intenção, propósito, espírito, paixão. [Por Extensão] do direcionamento, desenvolve, produz ou cria projetos, ideias, obras etc. Mentor Intelectual, são os nossos heróis internos. Aqueles nos quais nos espelhamos, que se transformam nos nossos role-models e cujas expectativas (reais ou supostas) tentamos atender ao longo da nossa vida, mesmo que não estejam mais conosco. . #querobolsa #queroeducacao #startups #educacaoempreendedora #sonho #tech #parquetecnologico #mentoria #empreendedorismo #sonhogrande #inquieto #pensesimples #empreendedorismosocial #business #anjos #startup #acreditar #desenvolvimentopessoal #time	2017-10-01 09:36:23-03	1	\N	t	1615992864876047094	f
1112	https://instagram.fsjk2-1.fna.fbcdn.net/vp/ecbc3d716befab267d45c25b64881e3e/5B82F3CB/t51.2885-15/e35/21985275_132996120765031_3118196533783166976_n.jpg	274479807	Aniversariantes do mês do nosso jeitinho!  #queroeducacao #coreotop #family	2017-09-29 17:57:36-03	1	\N	t	1614795591597417487	f
1113	https://instagram.fsjk2-1.fna.fbcdn.net/vp/19b36524bd99bb215417ea41b14020c5/5AF157F1/t51.2885-15/e35/26183813_1614706058643081_6698618324135182336_n.jpg	585035149	Povo que trabalha aqui deve ser plenamente feliz. Slc kk #codeinthedark #querobolsa #queroeducacao	2017-09-24 23:40:39-03	1	\N	t	1611344373294246411	f
1114	https://instagram.fsjk2-1.fna.fbcdn.net/vp/783d9711a5700d7b7e0f43acb34ece01/5AF17D7E/t51.2885-15/e35/21827750_745130949017389_8807059967795265536_n.jpg	4476582566	#Repost @justgigio ・・・ Sobre uma sensação incrível... #tbt #codeinthedarkbr #queroeducacao #frontinvale  Com a palavra, o campeão da edição Vale do Paraíba!	2017-09-21 18:48:00-03	1	\N	t	1609022747212414464	f
\.


--
-- Name: core_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('core_post_id_seq', 1443, true);


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
2	2018-05-05 23:43:10.493102-03	1	Quero Educação	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
3	2018-05-05 23:43:27.955158-03	2	uCoder	1	[{"added": {}}]	15	1
4	2018-05-05 23:46:07.673649-03	2	uCoder	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
5	2018-05-05 23:46:13.014869-03	1	Quero Educação	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
6	2018-05-05 23:46:54.900471-03	2	uCoder	2	[{"changed": {"fields": ["main_photo"]}}]	15	1
7	2018-05-05 23:56:48.002756-03	3	CodeInQuero	1	[{"added": {}}]	15	1
8	2018-05-05 23:57:16.158513-03	4	Google	1	[{"added": {}}]	15	1
9	2018-05-05 23:57:33.967306-03	3	CodeInQuero	2	[{"changed": {"fields": ["main_photo"]}}]	15	1
10	2018-05-06 00:02:10.876274-03	4	Google	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
11	2018-05-06 00:02:25.956791-03	4	Google	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
12	2018-05-06 00:04:07.932513-03	4	Google	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
13	2018-05-06 00:04:11.199241-03	3	CodeInQuero	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
14	2018-05-06 00:04:14.804325-03	2	uCoder	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
15	2018-05-06 00:04:18.334355-03	1	Quero Educação	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
16	2018-05-06 00:43:27.388351-03	1	Quero Educação	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
17	2018-05-06 00:59:39.158368-03	2	uCoder	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
18	2018-05-06 01:43:57.582721-03	1	Quero Educação	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
19	2018-05-06 01:44:01.400812-03	2	uCoder	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
20	2018-05-06 01:44:05.105916-03	3	CodeInQuero	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
21	2018-05-06 01:44:09.369847-03	4	Google	2	[{"changed": {"fields": ["hashtag"]}}]	15	1
22	2018-05-06 09:39:49.658824-03	1	Quero Educação	2	[{"changed": {"fields": ["description"]}}]	15	1
23	2018-05-06 09:40:00.124671-03	1	Quero Educação	2	[{"changed": {"fields": ["description"]}}]	15	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 23, true);


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
24	core	0010_auto_20180505_1840	2018-05-05 22:58:38.934377-03
25	core	0011_auto_20180505_1846	2018-05-05 22:58:38.976361-03
26	core	0012_auto_20180505_1942	2018-05-05 23:42:26.377049-03
27	core	0013_auto_20180505_2123	2018-05-06 01:28:56.027683-03
28	core	0014_auto_20180505_2355	2018-05-06 05:51:13.228787-03
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: erich
--

SELECT pg_catalog.setval('django_migrations_id_seq', 28, true);


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

