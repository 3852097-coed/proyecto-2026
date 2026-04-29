--
-- PostgreSQL database dump
--

\restrict wRILdFlqcyyo3HucCm1fROTHmgFaftiC1FoElhanjm7Q059fvxRpQTwpX4gvM0F

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-04-29 16:28:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 219 (class 1259 OID 16389)
-- Name: categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias (
    id_categoria integer NOT NULL,
    nombre_cat character varying(60) NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.categorias OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16397)
-- Name: categorias_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorias_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categorias_id_categoria_seq OWNER TO postgres;

--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 220
-- Name: categorias_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorias_id_categoria_seq OWNED BY public.categorias.id_categoria;


--
-- TOC entry 221 (class 1259 OID 16398)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_prod character varying(60) NOT NULL,
    precio numeric(10,2) NOT NULL,
    stock integer DEFAULT 0,
    fecha_ingreso date NOT NULL,
    id_categoria integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16406)
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_producto_seq OWNER TO postgres;

--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 222
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;


--
-- TOC entry 223 (class 1259 OID 16407)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(60) NOT NULL,
    pass character varying(10) NOT NULL,
    email character varying(100) NOT NULL,
    id_producto integer
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16414)
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 224
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- TOC entry 4866 (class 2604 OID 16415)
-- Name: categorias id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.categorias_id_categoria_seq'::regclass);


--
-- TOC entry 4867 (class 2604 OID 16416)
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);


--
-- TOC entry 4869 (class 2604 OID 16417)
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 5033 (class 0 OID 16389)
-- Dependencies: 219
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categorias (id_categoria, nombre_cat, descripcion) FROM stdin;
3	Motor	Sin un motor un carro no funciona
4	Interior	comodidad
5	Exterior	Estilo
\.


--
-- TOC entry 5035 (class 0 OID 16398)
-- Dependencies: 221
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_producto, nombre_prod, precio, stock, fecha_ingreso, id_categoria) FROM stdin;
53	Bujias	22.00	12	2026-04-29	3
54	culata	400.00	12	2026-04-29	3
55	Empaque de punteria	10.00	12	2026-04-29	3
56	Empaque de culata	60.00	12	2026-04-29	3
57	Sigueñal	450.00	12	2026-04-29	3
58	Radiador	145.00	12	2026-04-29	3
59	Pistones	120.00	12	2026-04-29	3
60	Filtro de aire acondicionado	12.00	15	2026-04-29	4
61	Timon	140.00	15	2026-04-29	4
62	Asientos	260.00	15	2026-04-29	4
63	Fundas de asientos	75.00	15	2026-04-29	4
64	Alfombras	40.00	15	2026-04-29	4
65	Retrovisor	35.00	15	2026-04-29	4
66	Palanca de cambios	23.00	15	2026-04-29	4
67	Pintura	1500.00	18	2026-04-29	5
68	Silvines	65.00	18	2026-04-29	5
69	Stops traseros	60.00	18	2026-04-29	5
70	Espejos retrovisores	45.00	18	2026-04-29	5
71	Rines especiales	280.00	18	2026-04-29	5
72	Llantas	280.00	18	2026-04-29	5
\.


--
-- TOC entry 5037 (class 0 OID 16407)
-- Dependencies: 223
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id_usuario, nombre_usuario, pass, email, id_producto) FROM stdin;
4	administrador	12345	administrador@gmail.com	\N
5	vendedor	12345	vendedor@gmail.com	\N
6	invitado	12345	invitado@gmail.com	\N
\.


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 220
-- Name: categorias_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_id_categoria_seq', 8, true);


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 222
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_producto_seq', 72, true);


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 224
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 6, true);


--
-- TOC entry 4871 (class 2606 OID 16419)
-- Name: categorias categorias_nombre_cat_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_nombre_cat_key UNIQUE (nombre_cat);


--
-- TOC entry 4873 (class 2606 OID 16421)
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 4875 (class 2606 OID 16440)
-- Name: categorias nombre_cat_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT nombre_cat_unique UNIQUE (nombre_cat);


--
-- TOC entry 4877 (class 2606 OID 16438)
-- Name: productos nombre_prod_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT nombre_prod_unique UNIQUE (nombre_prod);


--
-- TOC entry 4881 (class 2606 OID 16442)
-- Name: usuarios nombre_usuario_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT nombre_usuario_unique UNIQUE (nombre_usuario);


--
-- TOC entry 4879 (class 2606 OID 16423)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 4883 (class 2606 OID 16425)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 4884 (class 2606 OID 16426)
-- Name: productos productos_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria);


--
-- TOC entry 4885 (class 2606 OID 16431)
-- Name: usuarios usuarios_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


-- Completed on 2026-04-29 16:28:22

--
-- PostgreSQL database dump complete
--

\unrestrict wRILdFlqcyyo3HucCm1fROTHmgFaftiC1FoElhanjm7Q059fvxRpQTwpX4gvM0F

