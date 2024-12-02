CREATE TABLE IF NOT EXISTS public.prodotti
(
    id integer NOT NULL DEFAULT nextval('prodotti_id_seq'::regclass),
    descrizione character varying(100) COLLATE pg_catalog."default" NOT NULL,
    prezzo double precision DEFAULT 0,
    quantita_magazzino integer DEFAULT 0,
    venditore_id integer,
    CONSTRAINT prodotti_pkey PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS public.venditori
(
    id integer NOT NULL DEFAULT nextval('venditori_id_seq'::regclass),
    ragione_sociale character varying(200) COLLATE pg_catalog."default" NOT NULL,
    indirizzo character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT venditori_pkey PRIMARY KEY (id)
);