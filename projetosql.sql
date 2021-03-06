--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-1.pgdg20.04+1)

-- Started on 2022-07-01 17:56:07 -03

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
-- TOC entry 210 (class 1259 OID 16977)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    nome character varying(309) NOT NULL,
    email character varying(50) NOT NULL,
    rg character varying(18) NOT NULL,
    cpf character varying(18) NOT NULL,
    telefone character varying,
    celular character varying,
    data_nascimento date NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16976)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_seq OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 209
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 222 (class 1259 OID 17067)
-- Name: contas_pagar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contas_pagar (
    id integer NOT NULL,
    id_fornecedores integer NOT NULL,
    vencimento date NOT NULL,
    emissao date NOT NULL,
    situacao boolean DEFAULT false NOT NULL
);


ALTER TABLE public.contas_pagar OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17066)
-- Name: contas_pagar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contas_pagar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contas_pagar_id_seq OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 221
-- Name: contas_pagar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contas_pagar_id_seq OWNED BY public.contas_pagar.id;


--
-- TOC entry 220 (class 1259 OID 17054)
-- Name: contas_receber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contas_receber (
    id integer NOT NULL,
    id_clientes integer NOT NULL,
    vencimento date NOT NULL,
    emissao date NOT NULL,
    situacao boolean DEFAULT false NOT NULL
);


ALTER TABLE public.contas_receber OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17053)
-- Name: contas_receber_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contas_receber_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contas_receber_id_seq OWNER TO postgres;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 219
-- Name: contas_receber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contas_receber_id_seq OWNED BY public.contas_receber.id;


--
-- TOC entry 214 (class 1259 OID 17013)
-- Name: enderecos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enderecos (
    id integer NOT NULL,
    numero character varying(100) NOT NULL,
    cidade character varying(310) NOT NULL,
    estado character varying(339) NOT NULL,
    rua character varying(303) NOT NULL,
    bairro character varying(303) NOT NULL,
    cep character varying(303) NOT NULL
);


ALTER TABLE public.enderecos OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17020)
-- Name: enderecos_clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enderecos_clientes (
    id integer NOT NULL,
    id_enderecos integer NOT NULL,
    id_clientes integer NOT NULL
);


ALTER TABLE public.enderecos_clientes OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17019)
-- Name: enderecos_clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enderecos_clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enderecos_clientes_id_seq OWNER TO postgres;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 215
-- Name: enderecos_clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enderecos_clientes_id_seq OWNED BY public.enderecos_clientes.id;


--
-- TOC entry 218 (class 1259 OID 17037)
-- Name: enderecos_fornecedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enderecos_fornecedores (
    id integer NOT NULL,
    id_enderecos integer NOT NULL,
    id_fornecedores integer NOT NULL
);


ALTER TABLE public.enderecos_fornecedores OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17036)
-- Name: enderecos_fornecedores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enderecos_fornecedores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enderecos_fornecedores_id_seq OWNER TO postgres;

--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 217
-- Name: enderecos_fornecedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enderecos_fornecedores_id_seq OWNED BY public.enderecos_fornecedores.id;


--
-- TOC entry 213 (class 1259 OID 17012)
-- Name: enderecos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enderecos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enderecos_id_seq OWNER TO postgres;

--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 213
-- Name: enderecos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enderecos_id_seq OWNED BY public.enderecos.id;


--
-- TOC entry 212 (class 1259 OID 16994)
-- Name: fornecedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornecedores (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    cnpj character varying(100) NOT NULL,
    inscricao_estadual character varying(100) NOT NULL,
    data_abertura date NOT NULL,
    website character varying(100),
    email character varying(100) NOT NULL,
    telefone character varying(100) NOT NULL,
    celular character varying(100) NOT NULL
);


ALTER TABLE public.fornecedores OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16993)
-- Name: fornecedores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fornecedores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fornecedores_id_seq OWNER TO postgres;

--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 211
-- Name: fornecedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fornecedores_id_seq OWNED BY public.fornecedores.id;


--
-- TOC entry 226 (class 1259 OID 17092)
-- Name: lancamentos_pagar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lancamentos_pagar (
    id integer NOT NULL,
    id_contas_pagar integer NOT NULL,
    valor numeric(15,2) NOT NULL
);


ALTER TABLE public.lancamentos_pagar OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17091)
-- Name: lancamentos_pagar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lancamentos_pagar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lancamentos_pagar_id_seq OWNER TO postgres;

--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 225
-- Name: lancamentos_pagar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lancamentos_pagar_id_seq OWNED BY public.lancamentos_pagar.id;


--
-- TOC entry 224 (class 1259 OID 17080)
-- Name: lancamentos_receber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lancamentos_receber (
    id integer NOT NULL,
    id_contas_receber integer NOT NULL,
    valor numeric(15,2) NOT NULL
);


ALTER TABLE public.lancamentos_receber OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17079)
-- Name: lancamentos_receber_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lancamentos_receber_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lancamentos_receber_id_seq OWNER TO postgres;

--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 223
-- Name: lancamentos_receber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lancamentos_receber_id_seq OWNED BY public.lancamentos_receber.id;


--
-- TOC entry 234 (class 1259 OID 17240)
-- Name: vw_aniversario; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_aniversario AS
 SELECT c.telefone,
    c.celular,
    c.email
   FROM public.clientes c
  WHERE ((EXTRACT(day FROM c.data_nascimento) = EXTRACT(day FROM now())) AND (EXTRACT(month FROM c.data_nascimento) = EXTRACT(month FROM now())));


ALTER TABLE public.vw_aniversario OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17212)
-- Name: vw_avg_valor_fornecedores; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_avg_valor_fornecedores AS
 SELECT round(avg(lp.valor), 2) AS round
   FROM ((public.lancamentos_pagar lp
     JOIN public.contas_pagar cp ON ((lp.id_contas_pagar = cp.id)))
     JOIN public.fornecedores f ON ((cp.id_fornecedores = f.id)))
  WHERE (f.id = ANY (ARRAY[20, 3, 17, 18, 19, 30]));


ALTER TABLE public.vw_avg_valor_fornecedores OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17230)
-- Name: vw_cidade_estado_mais_mil; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_cidade_estado_mais_mil AS
 SELECT e.cidade,
    e.estado
   FROM ((((public.lancamentos_pagar lp
     JOIN public.contas_pagar cp ON ((lp.id_contas_pagar = cp.id)))
     JOIN public.fornecedores f ON ((cp.id_fornecedores = f.id)))
     JOIN public.enderecos_fornecedores ef ON ((ef.id_fornecedores = f.id)))
     JOIN public.enderecos e ON ((ef.id_enderecos = e.id)))
  WHERE (lp.valor > 1000.00);


ALTER TABLE public.vw_cidade_estado_mais_mil OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17208)
-- Name: vw_clientes_vencimentos; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_clientes_vencimentos AS
 SELECT c.nome
   FROM (public.contas_receber cr
     JOIN public.clientes c ON ((cr.id_clientes = c.id)))
  WHERE (cr.vencimento < '2024-12-31'::date);


ALTER TABLE public.vw_clientes_vencimentos OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17235)
-- Name: vw_media_idade; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_media_idade AS
 SELECT avg(age((c.data_nascimento)::timestamp with time zone)) AS media_idade
   FROM ((public.lancamentos_receber lr
     JOIN public.contas_receber cr ON ((lr.id_contas_receber = cr.id)))
     JOIN public.clientes c ON ((cr.id_clientes = c.id)))
  WHERE (lr.valor < (500)::numeric);


ALTER TABLE public.vw_media_idade OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17222)
-- Name: vw_movimentacoes; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_movimentacoes AS
 SELECT lancamentos_receber.valor,
    'R'::text AS tipo
   FROM public.lancamentos_receber
UNION ALL
 SELECT lancamentos_pagar.valor,
    'P'::text AS tipo
   FROM public.lancamentos_pagar;


ALTER TABLE public.vw_movimentacoes OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17226)
-- Name: vw_saldo; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_saldo AS
 SELECT sum(
        CASE
            WHEN (vw_movimentacoes.tipo = 'R'::text) THEN vw_movimentacoes.valor
            ELSE NULL::numeric
        END) AS lctos_receber,
    sum(
        CASE
            WHEN (vw_movimentacoes.tipo = 'P'::text) THEN vw_movimentacoes.valor
            ELSE NULL::numeric
        END) AS lctos_pagar,
    sum(
        CASE
            WHEN (vw_movimentacoes.tipo = 'R'::text) THEN vw_movimentacoes.valor
            ELSE (vw_movimentacoes.valor * ('-1'::integer)::numeric)
        END) AS saldo
   FROM public.vw_movimentacoes;


ALTER TABLE public.vw_saldo OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17217)
-- Name: vw_saldo_lr_menos_lp; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_saldo_lr_menos_lp AS
 SELECT sum(lp.valor) AS valor_que_sai,
    sum(lr.valor) AS valor_que_entra,
    (sum(lp.valor) - sum(lr.valor)) AS saldo
   FROM ((((((((public.lancamentos_receber lr
     JOIN public.contas_receber cr ON ((lr.id_contas_receber = cr.id)))
     JOIN public.clientes c ON ((cr.id_clientes = c.id)))
     JOIN public.enderecos_clientes ec ON ((ec.id_clientes = c.id)))
     JOIN public.enderecos e ON ((e.id = ec.id_enderecos)))
     JOIN public.enderecos_fornecedores ef ON ((ef.id_enderecos = e.id)))
     JOIN public.fornecedores f ON ((f.id = ef.id_fornecedores)))
     JOIN public.contas_pagar cp ON ((cp.id_fornecedores = f.id)))
     JOIN public.lancamentos_pagar lp ON ((lp.id_contas_pagar = cp.id)));


ALTER TABLE public.vw_saldo_lr_menos_lp OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17244)
-- Name: vw_vencimento_true; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vw_vencimento_true AS
 SELECT contas_receber.vencimento
   FROM public.contas_receber
  WHERE (contas_receber.situacao = true);


ALTER TABLE public.vw_vencimento_true OWNER TO postgres;

--
-- TOC entry 3250 (class 2604 OID 16980)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 3257 (class 2604 OID 17070)
-- Name: contas_pagar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar ALTER COLUMN id SET DEFAULT nextval('public.contas_pagar_id_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 17057)
-- Name: contas_receber id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_receber ALTER COLUMN id SET DEFAULT nextval('public.contas_receber_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 17016)
-- Name: enderecos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos ALTER COLUMN id SET DEFAULT nextval('public.enderecos_id_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 17023)
-- Name: enderecos_clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos_clientes ALTER COLUMN id SET DEFAULT nextval('public.enderecos_clientes_id_seq'::regclass);


--
-- TOC entry 3254 (class 2604 OID 17040)
-- Name: enderecos_fornecedores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos_fornecedores ALTER COLUMN id SET DEFAULT nextval('public.enderecos_fornecedores_id_seq'::regclass);


--
-- TOC entry 3251 (class 2604 OID 16997)
-- Name: fornecedores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores ALTER COLUMN id SET DEFAULT nextval('public.fornecedores_id_seq'::regclass);


--
-- TOC entry 3260 (class 2604 OID 17095)
-- Name: lancamentos_pagar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lancamentos_pagar ALTER COLUMN id SET DEFAULT nextval('public.lancamentos_pagar_id_seq'::regclass);


--
-- TOC entry 3259 (class 2604 OID 17083)
-- Name: lancamentos_receber id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lancamentos_receber ALTER COLUMN id SET DEFAULT nextval('public.lancamentos_receber_id_seq'::regclass);


--
-- TOC entry 3458 (class 0 OID 16977)
-- Dependencies: 210
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clientes VALUES (2, 'Silvana Cec??lia Raquel Teixeira', 'silvana_cecilia_teixeira@uninorte.com.br', '20.334.221-5', '360.371.507-10', '(84) 2778-6954', '(84) 98918-0418', '1985-06-28');
INSERT INTO public.clientes VALUES (3, 'Igor Breno Nathan Moreira', 'igorbrenomoreira@plastic.com.br', '39.991.946-6', '633.403.343-31', '(41) 2574-6876', '(41) 98360-6620', '1948-04-19');
INSERT INTO public.clientes VALUES (4, 'Jaqueline J??ssica Sophia da Concei????o', 'jaqueline_jessica_daconceicao@coldblock.com.br', '31.966.824-1', '244.953.964-63', '(95) 3502-4310', '(95) 98228-3597', '1999-03-03');
INSERT INTO public.clientes VALUES (5, 'Matheus Gael Eduardo Caldeira', 'matheus_caldeira@renoveseuseguro.com', '29.399.564-3', '636.310.499-86', '(69) 2606-0657', '(69) 98871-8967', '2002-05-20');
INSERT INTO public.clientes VALUES (6, 'Cl??udia Clarice L??cia Fernandes', 'claudia.clarice.fernandes@alesalvatori.com', '17.827.146-9', '921.689.386-95', '(94) 2978-4916', '(94) 99864-6400', '1962-06-22');
INSERT INTO public.clientes VALUES (7, 'Luciana Patr??cia Isabela Baptista', 'luciana-baptista80@zf.com', '34.017.492-4', '821.904.871-96', '(98) 3690-4506', '(98) 98758-8895', '1990-06-03');
INSERT INTO public.clientes VALUES (8, 'Valentina Catarina Nunes', 'valentina_nunes@dvdja.com.br', '45.586.676-4', '697.207.806-73', '(21) 3931-2237', '(21) 99126-1429', '1977-02-12');
INSERT INTO public.clientes VALUES (9, 'Arthur Bruno dos Santos', 'arthur_bruno_dossantos@infortec.com.br', '21.356.312-5', '232.115.818-20', '(95) 2913-5473', '(95) 99450-8848', '1952-01-26');
INSERT INTO public.clientes VALUES (10, 'Renato Benjamin Porto', 'renato.benjamin.porto@geometrabte.com.br', '20.669.218-3', '184.988.708-01', '(98) 3665-4692', '(98) 98234-7081', '1948-04-05');
INSERT INTO public.clientes VALUES (11, 'Daniela Milena Melo', 'daniela_milena_melo@3dmaker.com.br', '43.096.267-8', '509.971.140-53', '(65) 3761-9946', '(65) 98981-1085', '1965-02-03');
INSERT INTO public.clientes VALUES (12, 'Isadora Luzia Vieira', 'isadora.luzia.vieira@eletroaquila.net', '34.309.326-1', '270.729.130-76', '(63) 3920-9059', '(63) 99550-4944', '1993-06-02');
INSERT INTO public.clientes VALUES (13, 'Sebasti??o Caleb Moura', 'sebastiao_caleb_moura@rebecacometerra.com.br', '26.848.915-4', '990.969.061-60', '(64) 2644-0684', '(64) 99125-4521', '1959-06-26');
INSERT INTO public.clientes VALUES (14, 'Benjamin Iago da Silva', 'benjamin_iago_dasilva@balloons.com.br', '23.730.347-4', '978.008.197-60', '(96) 2876-6346', '(96) 99115-7918', '1948-01-21');
INSERT INTO public.clientes VALUES (15, 'Kamilly Josefa das Neves', 'kamilly_josefa_dasneves@custodes.com.br', '44.152.415-1', '343.444.345-28', '(96) 2875-1473', '(96) 99488-4401', '1998-03-18');
INSERT INTO public.clientes VALUES (16, 'Igor M??rio Corte Real', 'igor_mario_cortereal@mpcnet.com.br', '22.085.270-4', '981.182.829-61', '(85) 3518-6043', '(85) 98847-5387', '1997-06-22');
INSERT INTO public.clientes VALUES (17, 'Iago Ruan Sales', 'iago_sales@salera.com.br', '16.812.862-7', '505.310.297-00', '(88) 3545-4204', '(88) 98975-7560', '1946-04-04');
INSERT INTO public.clientes VALUES (18, 'Carla Let??cia Aurora Silva', 'carla_silva@pib.com.br', '38.760.237-9', '273.787.494-78', '(85) 2908-2308', '(85) 99677-0169', '1943-03-02');
INSERT INTO public.clientes VALUES (19, 'Carlos Bryan Castro', 'carlosbryancastro@tigra.com.br', '29.451.956-7', '288.819.225-09', '(86) 3827-3712', '(86) 98576-4986', '1988-02-14');
INSERT INTO public.clientes VALUES (20, 'Alexandre Marcelo Thiago Peixoto', 'alexandre.marcelo.peixoto@icloud.com', '44.249.057-4', '516.011.436-05', '(95) 2874-8053', '(95) 98814-5548', '1948-05-10');
INSERT INTO public.clientes VALUES (21, 'Diego Cau?? Jos?? Santos', 'diego-santos93@bcconsult.com.br', '12.431.065-5', '080.268.509-98', '(27) 3773-4400', '(27) 98836-0347', '1955-05-07');
INSERT INTO public.clientes VALUES (22, 'Giovanna Catarina Jennifer Rodrigues', 'giovannacatarinarodrigues@montcalm.com.br', '40.041.876-9', '219.458.282-77', '(62) 2933-8601', '(62) 98892-0356', '2001-02-16');
INSERT INTO public.clientes VALUES (23, 'Luzia Isadora Nicole Cavalcanti', 'luzia-cavalcanti73@roche.com', '29.955.107-6', '528.438.587-04', '(79) 2772-8633', '(79) 99142-3891', '1978-05-03');
INSERT INTO public.clientes VALUES (24, 'Calebe Renato Galv??o', 'calebe.renato.galvao@michaelpage.com.br', '16.582.334-3', '651.293.284-69', '(79) 3738-5804', '(79) 98761-3243', '1989-04-23');
INSERT INTO public.clientes VALUES (25, 'Luciana Rayssa Allana Novaes', 'luciana_novaes@tce.sp.gov.br', '31.876.205-5', '958.490.074-90', '(68) 2572-6951', '(68) 98471-9447', '1961-05-01');
INSERT INTO public.clientes VALUES (26, 'Francisco Hugo Pires', 'francisco.hugo.pires@catsfeelings.com.br', '16.110.047-8', '535.915.895-60', '(83) 3700-0342', '(83) 99660-0754', '1945-01-04');
INSERT INTO public.clientes VALUES (27, 'Cec??lia Esther Joana Assun????o', 'cecilia_assuncao@db9.com.br', '40.756.915-7', '881.482.561-01', '(81) 2569-6106', '(81) 99723-4867', '1972-05-04');
INSERT INTO public.clientes VALUES (28, 'Jennifer Regina Bruna Gomes', 'jenniferreginagomes@morada.com.br', '49.081.168-1', '192.082.897-45', '(61) 2656-2182', '(61) 99622-7626', '1962-06-28');
INSERT INTO public.clientes VALUES (29, 'Mariane Stella Souza', 'mariane.stella.souza@barratravel.com.br', '25.117.609-5', '764.560.340-27', '(31) 2678-3937', '(31) 98636-6213', '1958-05-07');
INSERT INTO public.clientes VALUES (30, 'Luiza Tereza Rafaela Almada', 'luiza_tereza_almada@pozzer.net', '27.074.099-5', '968.670.953-30', '(51) 3952-3672', '(51) 99680-1802', '1992-05-21');
INSERT INTO public.clientes VALUES (31, 'Ros??ngela Antonella Stella Jesus', 'rosangelaantonellajesus@estadao.com.br', '36.189.335-8', '510.480.169-19', '(68) 2835-3106', '(68) 99759-3428', '1965-02-13');


--
-- TOC entry 3470 (class 0 OID 17067)
-- Dependencies: 222
-- Data for Name: contas_pagar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contas_pagar VALUES (37, 5, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (38, 6, '2024-04-15', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (41, 9, '2024-03-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (42, 10, '2024-05-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (43, 11, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (44, 12, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (46, 14, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (47, 15, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (49, 17, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (56, 24, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (61, 29, '2025-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (62, 30, '2025-04-10', '1995-06-08', false);
INSERT INTO public.contas_pagar VALUES (33, 2, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (34, 3, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (35, 4, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (36, 5, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (39, 7, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (40, 8, '2024-06-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (45, 13, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (48, 16, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (50, 18, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (51, 19, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (52, 20, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (53, 21, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (54, 22, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (55, 23, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (57, 25, '2025-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (58, 26, '2025-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (59, 27, '2025-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (60, 28, '2025-04-10', '1995-06-08', true);
INSERT INTO public.contas_pagar VALUES (63, 31, '2025-04-10', '1995-06-08', true);


--
-- TOC entry 3468 (class 0 OID 17054)
-- Dependencies: 220
-- Data for Name: contas_receber; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contas_receber VALUES (4, 2, '2024-04-11', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (5, 3, '2024-04-12', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (6, 4, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (7, 5, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (10, 8, '2024-06-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (11, 9, '2024-03-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (13, 11, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (14, 12, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (16, 14, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (17, 15, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (18, 16, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (19, 17, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (20, 18, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (21, 19, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (22, 20, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (24, 22, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (26, 24, '2024-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (28, 26, '2025-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (29, 27, '2025-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (30, 28, '2025-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (33, 31, '2025-04-10', '1995-06-08', false);
INSERT INTO public.contas_receber VALUES (3, 2, '2024-04-11', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (8, 6, '2024-04-15', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (9, 7, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (12, 10, '2024-05-10', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (15, 13, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (23, 21, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (25, 23, '2024-04-10', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (27, 25, '2025-04-10', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (31, 29, '2025-04-10', '1995-06-08', true);
INSERT INTO public.contas_receber VALUES (32, 30, '2025-04-10', '1995-06-08', true);


--
-- TOC entry 3462 (class 0 OID 17013)
-- Dependencies: 214
-- Data for Name: enderecos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.enderecos VALUES (5, '594', 'Lajes Pintadas', 'RN', 'Rua S??o Francisco 193', 'Centro', '59235-970');
INSERT INTO public.enderecos VALUES (6, '359', 'Curitiba', 'PR', 'Rua Pedro Viriato de Souza', 'Vista Alegre', '80820-600');
INSERT INTO public.enderecos VALUES (7, '677', 'Boa Vista', 'RR', 'Rua Telma Cavalcante', 'Equatorial', '69317-304');
INSERT INTO public.enderecos VALUES (8, '911', 'Porto Velho', 'RO', 'Rua Tracaj??', 'Ronaldo Arag??o', '76814-220');
INSERT INTO public.enderecos VALUES (9, '226', 'Reden????o', 'PA', 'Avenida Aparecido Morais dos Santos', 'Jardim Am??rica', '68551-521');
INSERT INTO public.enderecos VALUES (10, '768', 'Imperatriz', 'MA', 'Rua Cinco', 'Jardim Vit??ria', '65909-015');
INSERT INTO public.enderecos VALUES (11, '716', 'Rio de Janeiro', 'RJ', 'Rua Gordon', 'Jacarepagu??', '22753-230');
INSERT INTO public.enderecos VALUES (12, '243', 'Boa Vista', 'RR', 'Rua Equador', 'Cauam??', '69311-047');
INSERT INTO public.enderecos VALUES (13, '384', 'S??o Lu??s', 'MA', 'Rua Virg??lio Domingues', 'S??o Francisco', '65076-137');
INSERT INTO public.enderecos VALUES (14, '963', 'Cuiab??', 'MT', 'Rua O', 'Condom??nio Flor do Cerrado', '78089-222');
INSERT INTO public.enderecos VALUES (15, '434', 'Palmas', 'TO', 'Quadra 1003 Sul Alameda 9', 'Plano Diretor Sul', '77018-428');
INSERT INTO public.enderecos VALUES (16, '654', 'Jata??', 'GO', 'Rua Santiago', 'Setor Jacutinga', '75807-275');
INSERT INTO public.enderecos VALUES (17, '615', 'Macap??', 'AP', 'Rodovia Curiau', 'Jardim Felicidade', '68909-023');
INSERT INTO public.enderecos VALUES (18, '445', 'Macap??', 'AP', 'Rua Clara Nunes', 'Bon?? Azul', '68909-148');
INSERT INTO public.enderecos VALUES (19, '930', 'Fortaleza', 'CE', 'Rua Belenense', 'Guajiru', '60843-215');
INSERT INTO public.enderecos VALUES (20, '315', 'Vi??osa', 'CE', 'Rua Principal, s/n', 'Centro', '62956-972');
INSERT INTO public.enderecos VALUES (21, '344', 'Fortaleza', 'CE', 'Rua Baba??u', 'Conjunto Palmeiras', '60870-110');
INSERT INTO public.enderecos VALUES (22, '138', 'Teresina', 'PI', 'Rua Leonidas Francisco Rodrigues', 'Bom Jesus', '64008-371');
INSERT INTO public.enderecos VALUES (23, '585', 'Boa Vista', 'RR', 'Rua Uaic??', 'Treze de Setembro', '69308-375');
INSERT INTO public.enderecos VALUES (24, '457', 'Cariacica', 'ES', 'Avenida Vascol??ndia', 'Pica-Pau', '29157-010');
INSERT INTO public.enderecos VALUES (25, '596', 'Goi??nia', 'GO', 'Rua 242', 'Vila Monticelli', '74655-370');
INSERT INTO public.enderecos VALUES (26, '652', 'Aracaju', 'SE', 'Rua Jornalista Ant??nio Carlos Mendon??a', 'Bugio', '49090-320');
INSERT INTO public.enderecos VALUES (27, '312', 'Aracaju', 'SE', 'Rodovia dos N??ufragos', 'Zona de Expans??o (Aruana)', '49000-016');
INSERT INTO public.enderecos VALUES (28, '156', 'Rio Branco', 'AC', 'Rua 4', 'Loteamento Jardim S??o Francisco', '69902-112');
INSERT INTO public.enderecos VALUES (29, '808', 'Campina Grande', 'PB', 'Rua Coronel Benedito Lima J??nior', 'Nova Bras??lia', '58406-496');
INSERT INTO public.enderecos VALUES (30, '718', 'Jaboat??o dos Guararapes', 'PE', 'Rua Carand??', 'Socorro', '54150-510');
INSERT INTO public.enderecos VALUES (31, '384', 'Bras??lia', 'DF', 'Quadra Quadra 11', 'Setor Tradicional (Brazl??ndia)', '72720-110');
INSERT INTO public.enderecos VALUES (32, '108', 'Belo Horizonte', 'MG', 'Rua Lucimara Marques', 'Goi??nia', '31950-620');
INSERT INTO public.enderecos VALUES (33, '603', 'Porto Alegre', 'RS', 'Rua Leopoldino J. Santos', 'Passo das Pedras', '91230-350');
INSERT INTO public.enderecos VALUES (34, '916', 'Rio Branco', 'AC', 'Rua Socorro Medeiros de Moraes', 'Loteamento Santo Afonso', '69908-858');


--
-- TOC entry 3464 (class 0 OID 17020)
-- Dependencies: 216
-- Data for Name: enderecos_clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.enderecos_clientes VALUES (1, 5, 2);
INSERT INTO public.enderecos_clientes VALUES (2, 6, 3);
INSERT INTO public.enderecos_clientes VALUES (3, 7, 4);
INSERT INTO public.enderecos_clientes VALUES (4, 8, 5);
INSERT INTO public.enderecos_clientes VALUES (5, 9, 6);
INSERT INTO public.enderecos_clientes VALUES (6, 10, 7);
INSERT INTO public.enderecos_clientes VALUES (7, 11, 8);
INSERT INTO public.enderecos_clientes VALUES (8, 12, 9);
INSERT INTO public.enderecos_clientes VALUES (9, 13, 10);
INSERT INTO public.enderecos_clientes VALUES (10, 14, 11);
INSERT INTO public.enderecos_clientes VALUES (11, 15, 12);
INSERT INTO public.enderecos_clientes VALUES (12, 16, 13);
INSERT INTO public.enderecos_clientes VALUES (13, 17, 14);
INSERT INTO public.enderecos_clientes VALUES (14, 18, 15);
INSERT INTO public.enderecos_clientes VALUES (15, 19, 16);
INSERT INTO public.enderecos_clientes VALUES (16, 20, 17);
INSERT INTO public.enderecos_clientes VALUES (17, 21, 18);
INSERT INTO public.enderecos_clientes VALUES (18, 22, 19);
INSERT INTO public.enderecos_clientes VALUES (19, 23, 20);
INSERT INTO public.enderecos_clientes VALUES (20, 24, 21);
INSERT INTO public.enderecos_clientes VALUES (21, 25, 22);
INSERT INTO public.enderecos_clientes VALUES (22, 26, 23);
INSERT INTO public.enderecos_clientes VALUES (23, 27, 24);
INSERT INTO public.enderecos_clientes VALUES (24, 28, 25);
INSERT INTO public.enderecos_clientes VALUES (25, 29, 26);
INSERT INTO public.enderecos_clientes VALUES (26, 30, 27);
INSERT INTO public.enderecos_clientes VALUES (27, 31, 28);
INSERT INTO public.enderecos_clientes VALUES (28, 32, 29);
INSERT INTO public.enderecos_clientes VALUES (29, 33, 30);
INSERT INTO public.enderecos_clientes VALUES (30, 34, 31);


--
-- TOC entry 3466 (class 0 OID 17037)
-- Dependencies: 218
-- Data for Name: enderecos_fornecedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.enderecos_fornecedores VALUES (1, 5, 2);
INSERT INTO public.enderecos_fornecedores VALUES (2, 6, 3);
INSERT INTO public.enderecos_fornecedores VALUES (3, 7, 4);
INSERT INTO public.enderecos_fornecedores VALUES (4, 8, 5);
INSERT INTO public.enderecos_fornecedores VALUES (5, 9, 6);
INSERT INTO public.enderecos_fornecedores VALUES (6, 10, 7);
INSERT INTO public.enderecos_fornecedores VALUES (7, 11, 8);
INSERT INTO public.enderecos_fornecedores VALUES (8, 12, 9);
INSERT INTO public.enderecos_fornecedores VALUES (9, 13, 10);
INSERT INTO public.enderecos_fornecedores VALUES (10, 14, 11);
INSERT INTO public.enderecos_fornecedores VALUES (11, 15, 12);
INSERT INTO public.enderecos_fornecedores VALUES (12, 16, 13);
INSERT INTO public.enderecos_fornecedores VALUES (13, 17, 14);
INSERT INTO public.enderecos_fornecedores VALUES (14, 18, 15);
INSERT INTO public.enderecos_fornecedores VALUES (15, 19, 16);
INSERT INTO public.enderecos_fornecedores VALUES (16, 20, 17);
INSERT INTO public.enderecos_fornecedores VALUES (17, 21, 18);
INSERT INTO public.enderecos_fornecedores VALUES (18, 22, 19);
INSERT INTO public.enderecos_fornecedores VALUES (19, 23, 20);
INSERT INTO public.enderecos_fornecedores VALUES (20, 24, 21);
INSERT INTO public.enderecos_fornecedores VALUES (21, 25, 22);
INSERT INTO public.enderecos_fornecedores VALUES (22, 26, 23);
INSERT INTO public.enderecos_fornecedores VALUES (23, 27, 24);
INSERT INTO public.enderecos_fornecedores VALUES (24, 28, 25);
INSERT INTO public.enderecos_fornecedores VALUES (25, 29, 26);
INSERT INTO public.enderecos_fornecedores VALUES (26, 30, 27);
INSERT INTO public.enderecos_fornecedores VALUES (27, 31, 28);
INSERT INTO public.enderecos_fornecedores VALUES (28, 32, 29);
INSERT INTO public.enderecos_fornecedores VALUES (29, 33, 30);
INSERT INTO public.enderecos_fornecedores VALUES (30, 34, 31);


--
-- TOC entry 3460 (class 0 OID 16994)
-- Dependencies: 212
-- Data for Name: fornecedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fornecedores VALUES (2, 'Andrea Helena Novaes', '21.589.397-9', '60545-560', '1955-02-14', NULL, 'andrea-novaes99@cotamtambores.com.br', '(85) 3763-3902', '(85) 99722-7235');
INSERT INTO public.fornecedores VALUES (3, 'Marlene Betina Mait?? Baptista', '28.730.070-5', '77020-540', '1987-01-27', NULL, 'marlenebetinabaptista@archosolutions.com.br', '(63) 3611-1430', '(63) 98978-9082');
INSERT INTO public.fornecedores VALUES (4, 'Iago Noah da Concei????o', '33.425.182-5', '72320-508', '1991-06-08', NULL, 'iago_daconceicao@netpont.com.br', '(61) 3801-4243', '(61) 99360-1928');
INSERT INTO public.fornecedores VALUES (5, 'Lorenzo Theo da Costa', '38.331.475-6', '85301-020', '1999-03-13', NULL, 'lorenzo-dacosta95@uninet.com.br', '(42) 2783-0208', '(42) 98232-8954');
INSERT INTO public.fornecedores VALUES (6, 'Milena Andreia Farias', '49.860.900-5', '93056-260', '1989-03-19', NULL, 'milena_farias@focusgrafica.com.br', '(51) 3710-3151', '(51) 98287-8944');
INSERT INTO public.fornecedores VALUES (7, 'Cristiane Isabelly Isabella Pinto', '30.225.114-5', '94196-030', '1987-05-17', NULL, 'cristianeisabellypinto@likaleal.com.br', '(51) 2782-1235', '(51) 99901-2440');
INSERT INTO public.fornecedores VALUES (8, 'Lorenzo Guilherme Gustavo Fernandes', '22.433.469-4', '76829-500', '1958-03-05', NULL, 'lorenzo_fernandes@controtel.com.br', '(69) 3682-1002', '(69) 98375-3485');
INSERT INTO public.fornecedores VALUES (9, 'Teresinha Malu Assis', '30.705.101-8', '60822-904', '1976-02-10', NULL, 'teresinha_assis@vinax.com.br', '(85) 2997-6516', '(85) 99842-8664');
INSERT INTO public.fornecedores VALUES (10, 'Emily Andreia Almada', '27.351.086-1', '87033-040', '2002-02-20', NULL, 'emily-almada82@care-br.com', '(44) 2659-3615', '(44) 98163-1508');
INSERT INTO public.fornecedores VALUES (11, 'Henrique Lucas Costa', '48.114.365-8', '60170-260', '2001-05-26', NULL, 'henriquelucascosta@yahoo.fr', '(85) 2750-1333', '(85) 98173-5645');
INSERT INTO public.fornecedores VALUES (12, 'Henry M??rcio Bruno Silva', '21.228.243-8', '83203-133', '1973-04-10', NULL, 'henry-silva93@capgemini.com', '(41) 2516-4221', '(41) 99288-3170');
INSERT INTO public.fornecedores VALUES (13, 'Vitor Caio Vinicius Moura', '50.396.774-9', '27240-570', '1979-02-24', NULL, 'vitor_moura@bom.com.br', '(24) 3833-3831', '(24) 99665-5086');
INSERT INTO public.fornecedores VALUES (14, 'Ester Ana Nogueira', '40.641.707-6', '58802-050', '1976-06-02', NULL, 'ester.ana.nogueira@eletrotex.com.br', '(83) 2525-3809', '(83) 98173-5195');
INSERT INTO public.fornecedores VALUES (15, 'S??rgio Ricardo Henrique Oliveira', '13.216.265-9', '65911-590', '1950-05-15', NULL, 'sergio.ricardo.oliveira@lynce.com.br', '(98) 2705-0447', '(98) 99441-4800');
INSERT INTO public.fornecedores VALUES (16, 'Pietra Marlene Sebastiana Gon??alves', '45.355.725-9', '23540-042', '2000-01-14', NULL, 'pietra_marlene_goncalves@vieiradarocha.adv.br', '(21) 2810-5708', '(21) 98768-4954');
INSERT INTO public.fornecedores VALUES (17, 'Yuri Felipe Benedito Caldeira', '43.192.271-8', '81935-403', '1963-05-17', NULL, 'yuri_felipe_caldeira@humanfit.com.br', '(41) 3963-6775', '(41) 99838-8640');
INSERT INTO public.fornecedores VALUES (18, 'Leandro Cau?? Rodrigues', '47.752.495-3', '69314-028', '1974-06-04', NULL, 'leandro.caue.rodrigues@willianfernandes.com.br', '(95) 3930-3521', '(95) 99260-1699');
INSERT INTO public.fornecedores VALUES (19, 'Hugo Francisco Porto', '31.837.916-8', '58057-395', '1980-04-26', NULL, 'hugo.francisco.porto@timbrasil.com.br', '(83) 3957-5685', '(83) 98277-6611');
INSERT INTO public.fornecedores VALUES (20, 'Rodrigo Jorge Castro', '17.175.614-9', '68909-700', '1999-03-04', NULL, 'rodrigojorgecastro@comdados.com', '(96) 2797-9108', '(96) 99332-6616');
INSERT INTO public.fornecedores VALUES (21, 'Josefa Adriana Sueli Apar??cio', '23.232.104-8', '28922-530', '1990-06-25', NULL, 'josefa-aparicio99@yaooh.com', '(22) 3666-6142', '(22) 99285-2610');
INSERT INTO public.fornecedores VALUES (22, 'Iago Diego Lopes', '17.257.154-6', '26125-523', '1954-05-07', NULL, 'iagodiegolopes@octagonbrasil.com.br', '(21) 3867-9443', '(21) 99452-2307');
INSERT INTO public.fornecedores VALUES (23, 'Marcela T??nia T??nia Bernardes', '41.093.880-4', '76824-662', '1950-04-06', NULL, 'marcela-bernardes89@pichler.com.br', '(69) 3646-4490', '(69) 98610-6614');
INSERT INTO public.fornecedores VALUES (24, 'Igor Ot??vio Drumond', '21.599.247-7', '55606-230', '1978-06-07', NULL, 'igorotaviodrumond@gruporeis.net', '(81) 2645-4596', '(81) 99100-7958');
INSERT INTO public.fornecedores VALUES (25, 'Nelson Igor Edson Freitas', '22.151.252-4', '94967-405', '1999-02-07', NULL, 'nelson_igor_freitas@santosdumonthospital.com.br', '(51) 2723-9678', '(51) 98755-8279');
INSERT INTO public.fornecedores VALUES (26, 'Caroline Rita Galv??o', '32.791.168-2', '60868-664', '1945-04-21', NULL, 'carolineritagalvao@celiosilva.com', '(85) 3941-8154', '(85) 99717-4385');
INSERT INTO public.fornecedores VALUES (27, 'Luiz Nelson Ramos', '35.206.582-5', '79017-502', '1953-02-19', NULL, 'luiznelsonramos@live.com.pt', '(67) 3728-3621', '(67) 98144-6837');
INSERT INTO public.fornecedores VALUES (28, 'Guilherme Rafael Bryan Ferreira', '47.922.062-1', '88372-010', '1951-05-02', NULL, 'guilherme_ferreira@huios.com.br', '(49) 3628-6494', '(49) 98424-7688');
INSERT INTO public.fornecedores VALUES (29, 'Ant??nia Vera de Paula', '45.361.444-9', '78558-352', '1960-05-13', NULL, 'antonia.vera.depaula@cenavip.com.br', '(66) 3969-5287', '(66) 98746-9359');
INSERT INTO public.fornecedores VALUES (30, 'Gabriela Aparecida Sabrina Brito', '25.330.527-5', '78042-212', '1957-03-26', NULL, 'gabriela_brito@tricoproducts.com.br', '(65) 2685-8154', '(65) 98332-4008');
INSERT INTO public.fornecedores VALUES (31, 'Alexandre Paulo Kaique Cavalcanti', '45.148.823-4', '91510-460', '1942-06-04', NULL, 'alexandre_cavalcanti@peopleside.com.br', '(51) 2925-2424', '(51) 99605-1141');


--
-- TOC entry 3474 (class 0 OID 17092)
-- Dependencies: 226
-- Data for Name: lancamentos_pagar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lancamentos_pagar VALUES (32, 33, 235.00);
INSERT INTO public.lancamentos_pagar VALUES (33, 34, 580.39);
INSERT INTO public.lancamentos_pagar VALUES (34, 35, 235.00);
INSERT INTO public.lancamentos_pagar VALUES (35, 36, 235.00);
INSERT INTO public.lancamentos_pagar VALUES (36, 37, 580.39);
INSERT INTO public.lancamentos_pagar VALUES (37, 38, 580.39);
INSERT INTO public.lancamentos_pagar VALUES (38, 39, 235.00);
INSERT INTO public.lancamentos_pagar VALUES (39, 40, 1100.00);
INSERT INTO public.lancamentos_pagar VALUES (40, 41, 235.00);
INSERT INTO public.lancamentos_pagar VALUES (41, 42, 1500.00);
INSERT INTO public.lancamentos_pagar VALUES (42, 43, 1500.00);
INSERT INTO public.lancamentos_pagar VALUES (43, 44, 100.00);
INSERT INTO public.lancamentos_pagar VALUES (44, 45, 830.00);
INSERT INTO public.lancamentos_pagar VALUES (45, 46, 1500.00);
INSERT INTO public.lancamentos_pagar VALUES (46, 47, 100.00);
INSERT INTO public.lancamentos_pagar VALUES (47, 48, 830.00);
INSERT INTO public.lancamentos_pagar VALUES (48, 49, 830.00);
INSERT INTO public.lancamentos_pagar VALUES (49, 50, 580.39);
INSERT INTO public.lancamentos_pagar VALUES (50, 51, 200.39);
INSERT INTO public.lancamentos_pagar VALUES (51, 52, 580.39);
INSERT INTO public.lancamentos_pagar VALUES (52, 53, 100.00);
INSERT INTO public.lancamentos_pagar VALUES (53, 54, 150.39);
INSERT INTO public.lancamentos_pagar VALUES (54, 55, 100.00);
INSERT INTO public.lancamentos_pagar VALUES (55, 56, 100.00);
INSERT INTO public.lancamentos_pagar VALUES (56, 57, 235.00);
INSERT INTO public.lancamentos_pagar VALUES (57, 58, 235.00);
INSERT INTO public.lancamentos_pagar VALUES (58, 59, 80.00);
INSERT INTO public.lancamentos_pagar VALUES (59, 60, 50.00);
INSERT INTO public.lancamentos_pagar VALUES (60, 61, 32.00);
INSERT INTO public.lancamentos_pagar VALUES (61, 62, 32.00);
INSERT INTO public.lancamentos_pagar VALUES (62, 63, 300.00);


--
-- TOC entry 3472 (class 0 OID 17080)
-- Dependencies: 224
-- Data for Name: lancamentos_receber; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lancamentos_receber VALUES (1, 3, 235.00);
INSERT INTO public.lancamentos_receber VALUES (2, 4, 580.39);
INSERT INTO public.lancamentos_receber VALUES (3, 5, 235.00);
INSERT INTO public.lancamentos_receber VALUES (4, 6, 235.00);
INSERT INTO public.lancamentos_receber VALUES (5, 7, 580.39);
INSERT INTO public.lancamentos_receber VALUES (6, 8, 580.39);
INSERT INTO public.lancamentos_receber VALUES (7, 9, 235.00);
INSERT INTO public.lancamentos_receber VALUES (8, 10, 1500.00);
INSERT INTO public.lancamentos_receber VALUES (9, 11, 235.00);
INSERT INTO public.lancamentos_receber VALUES (10, 12, 1500.00);
INSERT INTO public.lancamentos_receber VALUES (11, 13, 1500.00);
INSERT INTO public.lancamentos_receber VALUES (12, 14, 100.00);
INSERT INTO public.lancamentos_receber VALUES (13, 15, 100.00);
INSERT INTO public.lancamentos_receber VALUES (14, 16, 1500.00);
INSERT INTO public.lancamentos_receber VALUES (15, 17, 100.00);
INSERT INTO public.lancamentos_receber VALUES (16, 18, 100.00);
INSERT INTO public.lancamentos_receber VALUES (17, 19, 100.00);
INSERT INTO public.lancamentos_receber VALUES (18, 20, 580.39);
INSERT INTO public.lancamentos_receber VALUES (19, 21, 580.39);
INSERT INTO public.lancamentos_receber VALUES (20, 22, 580.39);
INSERT INTO public.lancamentos_receber VALUES (21, 23, 100.00);
INSERT INTO public.lancamentos_receber VALUES (22, 24, 580.39);
INSERT INTO public.lancamentos_receber VALUES (23, 25, 100.00);
INSERT INTO public.lancamentos_receber VALUES (24, 26, 100.00);
INSERT INTO public.lancamentos_receber VALUES (25, 27, 235.00);
INSERT INTO public.lancamentos_receber VALUES (26, 28, 235.00);
INSERT INTO public.lancamentos_receber VALUES (27, 29, 100.00);
INSERT INTO public.lancamentos_receber VALUES (28, 30, 100.00);
INSERT INTO public.lancamentos_receber VALUES (29, 31, 353.00);
INSERT INTO public.lancamentos_receber VALUES (30, 32, 353.00);
INSERT INTO public.lancamentos_receber VALUES (31, 33, 353.00);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 209
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 31, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 221
-- Name: contas_pagar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contas_pagar_id_seq', 63, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 219
-- Name: contas_receber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contas_receber_id_seq', 33, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 215
-- Name: enderecos_clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enderecos_clientes_id_seq', 30, true);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 217
-- Name: enderecos_fornecedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enderecos_fornecedores_id_seq', 30, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 213
-- Name: enderecos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enderecos_id_seq', 34, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 211
-- Name: fornecedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fornecedores_id_seq', 31, true);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 225
-- Name: lancamentos_pagar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lancamentos_pagar_id_seq', 62, true);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 223
-- Name: lancamentos_receber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lancamentos_receber_id_seq', 31, true);


--
-- TOC entry 3262 (class 2606 OID 17141)
-- Name: clientes clientes_celular_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_celular_key UNIQUE (celular);


--
-- TOC entry 3264 (class 2606 OID 17104)
-- Name: clientes clientes_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_cpf_key UNIQUE (cpf);


--
-- TOC entry 3266 (class 2606 OID 16984)
-- Name: clientes clientes_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_email_key UNIQUE (email);


--
-- TOC entry 3268 (class 2606 OID 16982)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 17115)
-- Name: clientes clientes_rg_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_rg_key UNIQUE (rg);


--
-- TOC entry 3272 (class 2606 OID 17126)
-- Name: clientes clientes_telefone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_telefone_key UNIQUE (telefone);


--
-- TOC entry 3296 (class 2606 OID 17073)
-- Name: contas_pagar contas_pagar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar
    ADD CONSTRAINT contas_pagar_pkey PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 17060)
-- Name: contas_receber contas_receber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_receber
    ADD CONSTRAINT contas_receber_pkey PRIMARY KEY (id);


--
-- TOC entry 3290 (class 2606 OID 17025)
-- Name: enderecos_clientes enderecos_clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos_clientes
    ADD CONSTRAINT enderecos_clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 3292 (class 2606 OID 17042)
-- Name: enderecos_fornecedores enderecos_fornecedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos_fornecedores
    ADD CONSTRAINT enderecos_fornecedores_pkey PRIMARY KEY (id);


--
-- TOC entry 3288 (class 2606 OID 17018)
-- Name: enderecos enderecos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos
    ADD CONSTRAINT enderecos_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 17199)
-- Name: fornecedores fornecedores_celular_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_celular_key UNIQUE (celular);


--
-- TOC entry 3276 (class 2606 OID 17189)
-- Name: fornecedores fornecedores_cnpj_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_cnpj_key UNIQUE (cnpj);


--
-- TOC entry 3278 (class 2606 OID 17195)
-- Name: fornecedores fornecedores_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_email_key UNIQUE (email);


--
-- TOC entry 3280 (class 2606 OID 17191)
-- Name: fornecedores fornecedores_inscricao_estadual_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_inscricao_estadual_key UNIQUE (inscricao_estadual);


--
-- TOC entry 3282 (class 2606 OID 16999)
-- Name: fornecedores fornecedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_pkey PRIMARY KEY (id);


--
-- TOC entry 3284 (class 2606 OID 17197)
-- Name: fornecedores fornecedores_telefone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_telefone_key UNIQUE (telefone);


--
-- TOC entry 3286 (class 2606 OID 17193)
-- Name: fornecedores fornecedores_website_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_website_key UNIQUE (website);


--
-- TOC entry 3300 (class 2606 OID 17097)
-- Name: lancamentos_pagar lancamentos_pagar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lancamentos_pagar
    ADD CONSTRAINT lancamentos_pagar_pkey PRIMARY KEY (id);


--
-- TOC entry 3298 (class 2606 OID 17085)
-- Name: lancamentos_receber lancamentos_receber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lancamentos_receber
    ADD CONSTRAINT lancamentos_receber_pkey PRIMARY KEY (id);


--
-- TOC entry 3305 (class 2606 OID 17061)
-- Name: contas_receber fk_clientes_to_contas_receber; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_receber
    ADD CONSTRAINT fk_clientes_to_contas_receber FOREIGN KEY (id_clientes) REFERENCES public.clientes(id);


--
-- TOC entry 3302 (class 2606 OID 17031)
-- Name: enderecos_clientes fk_clientes_to_enderecos_clientes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos_clientes
    ADD CONSTRAINT fk_clientes_to_enderecos_clientes FOREIGN KEY (id_clientes) REFERENCES public.clientes(id);


--
-- TOC entry 3308 (class 2606 OID 17098)
-- Name: lancamentos_pagar fk_contas_pagar_to_lancamentos_pagar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lancamentos_pagar
    ADD CONSTRAINT fk_contas_pagar_to_lancamentos_pagar FOREIGN KEY (id_contas_pagar) REFERENCES public.contas_pagar(id);


--
-- TOC entry 3307 (class 2606 OID 17086)
-- Name: lancamentos_receber fk_contas_pagar_to_lancamentos_receber; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lancamentos_receber
    ADD CONSTRAINT fk_contas_pagar_to_lancamentos_receber FOREIGN KEY (id_contas_receber) REFERENCES public.contas_receber(id);


--
-- TOC entry 3301 (class 2606 OID 17026)
-- Name: enderecos_clientes fk_enderecos_to_enderecos_clientes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos_clientes
    ADD CONSTRAINT fk_enderecos_to_enderecos_clientes FOREIGN KEY (id_enderecos) REFERENCES public.enderecos(id);


--
-- TOC entry 3303 (class 2606 OID 17043)
-- Name: enderecos_fornecedores fk_enderecos_to_enderecos_fornecedores; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos_fornecedores
    ADD CONSTRAINT fk_enderecos_to_enderecos_fornecedores FOREIGN KEY (id_enderecos) REFERENCES public.enderecos(id);


--
-- TOC entry 3306 (class 2606 OID 17074)
-- Name: contas_pagar fk_fornecedores_to_contas_pagar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar
    ADD CONSTRAINT fk_fornecedores_to_contas_pagar FOREIGN KEY (id_fornecedores) REFERENCES public.fornecedores(id);


--
-- TOC entry 3304 (class 2606 OID 17048)
-- Name: enderecos_fornecedores fk_fornecedores_to_enderecos_fornecedores; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enderecos_fornecedores
    ADD CONSTRAINT fk_fornecedores_to_enderecos_fornecedores FOREIGN KEY (id_fornecedores) REFERENCES public.fornecedores(id);


-- Completed on 2022-07-01 17:56:08 -03

--
-- PostgreSQL database dump complete
--

