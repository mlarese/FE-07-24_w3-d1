-- estrae tutti i prodotti
/* commento multi riga */
 -- SELECT id, descrizione, prezzo, quantita_magazzino FROM prodotti;

-- select * from prodotti;

-- mostra solo il campo prodotto
-- select descrizione from prodotti order by descrizione  desc;


-- select descrizione, prezzo from prodotti where prezzo=200 order by descrizione  desc;
-- select descrizione, prezzo from prodotti where prezzo>200 order by descrizione  desc;
-- select descrizione, prezzo from prodotti where  prezzo between 200 and 1200    order by descrizione  desc;
-- select descrizione, prezzo from prodotti where descrizione like ('%ung%');

-- select descrizione, prezzo, venditore_id, venditori.ragione_sociale from prodotti
  -- left join venditori on  prodotti.venditore_id = venditori.id ;

-- select descrizione,  extract(MONTH from data_inserimento_catalogo)   from prodotti;


-- select descrizione,  data_inserimento_catalogo   from prodotti where extract(year FROM prodotti.data_inserimento_catalogo) = 2004;
-- select descrizione,  data_inserimento_catalogo   from prodotti  where extract(month FROM prodotti.data_inserimento_catalogo) = 4;
-- somma prezzi a magazzino

-- select sum(prezzo) as somma_prezzi, avg(prezzo) as media_prezzi , count(prezzo) as conteggio_prezzi from prodotti where prezzo >1000

-- select extract(year from  data_inserimento_catalogo) as data_inserimento ,  sum(prezzo) as somma, count(*) as numero from prodotti
-- group by extract(year from  data_inserimento_catalogo);

select categoria, count(*)  as numero_prodotti from prodotti GROUP by categoria

