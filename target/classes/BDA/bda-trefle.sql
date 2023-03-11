-- --------------------------------------------------------

--
-- Drop toutes les tables dans l'ordre
--

DROP TABLE IF EXISTS cart;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS movie_2;
DROP TABLE IF EXISTS director_2;
DROP TABLE IF EXISTS client;

-- --------------------------------------------------------

--
-- Structure de la table user
--

CREATE TABLE client
(
    Pseudo   varchar(60) PRIMARY KEY,
    Password varchar(60) NOT NULL,
    Mail     varchar(60),
    CONSTRAINT UK_Mail UNIQUE (Mail)
);

--
-- Fonction addClient
-- Ajoute des clients, renvois false si le pseudo est deja pris
--

CREATE
OR REPLACE FUNCTION addClient (pseudo varchar, password varchar, mail varchar)
RETURNS BOOLEAN AS $$
BEGIN
BEGIN
INSERT INTO client (pseudo, password, mail)
VALUES (LOWER($1), MD5($2), $3);
RETURN true;
EXCEPTION
            when others then
                return false;
END;
END;

$$
LANGUAGE plpgsql;

--SELECT addClient('Mart', 'Martin02', 'martin.bidaut@u-psud.fr') as Martinmail; return f
--SELECT addClient('Martin', 'Martin02', 'martin.bidaut') as Martinlogin; return f
--SELECT addClient('Mtruc123456789101112131415161718192021222324252627282930313233343536373839', 'Martin02', 'martin.bidautzzzz') as muche; return f

--
-- Fonction checkPassword
-- Renvois vrai si le combo password et login est le bon
--

CREATE
OR REPLACE FUNCTION checkPassword (pseudo varchar, password varchar)
RETURNS BOOLEAN AS $$
BEGIN
    IF
EXISTS(SELECT * FROM client WHERE client.pseudo = LOWER($1) AND client.password = MD5($2)) THEN
        return 1;
ELSE
        return 0;
END if;
END;

$$
LANGUAGE plpgsql;


--SELECT checkPassword('Feub', 'Feub01') as badword; return t
--SELECT checkPassword('feUb', 'FeuB01') as PseudoCaps; return f
--SELECT checkPassword('Feub', 'Feub') as BadPWD; return f
--SELECT checkPassword('Feub1', 'Feub01') as Badpseudo; return f

-- --------------------------------------------------------

--
-- Structure de la table director
--

CREATE TABLE director_2
(
    idDirector SERIAL PRIMARY KEY,
    Name       varchar(60) NOT NULL
);

--
-- Fonction addDirector
-- Ajoute un realisateur à un film, et le créé s'il le faut
--

CREATE
OR REPLACE FUNCTION addDirector (idM integer, idD integer, name varchar)
RETURNS BOOLEAN AS $$
BEGIN
    IF
NOT EXISTS( SELECT * FROM director_2
                  WHERE idDirector = $2) THEN
      INSERT INTO Director_2 (idDirector, name) VALUES ($2, $3);
END if;

UPDATE movie_2
SET IdDirector = $2
where IdMovie = $1;

RETURN true;
END;

$$
LANGUAGE plpgsql;

-- --------------------------------------------------------

--
-- Structure de la table film
--

CREATE TABLE movie_2
(
    IdMovie           SERIAL PRIMARY KEY,
    IdDirector        integer,
    Title             varchar(60) NOT NULL,
    Release           DATE,
    Runtime           integer,
    original_language varchar(5),
    poster_path       varchar(60),
    overview          text,
    CONSTRAINT fk_director_id
        FOREIGN KEY (idDirector)
            REFERENCES director_2 (idDirector)
);

--
-- Fonction addMovie
-- Ajoute des films
--

CREATE
OR REPLACE FUNCTION addMovie (idM integer, title varchar, release date)
RETURNS BOOLEAN AS $$
BEGIN
INSERT INTO movie_2 (IdMovie, Title, Release)
VALUES ($1, $2, $3);

RETURN true;
END;

$$
LANGUAGE plpgsql;

--
-- Fonction addDetails
-- Ajoute des details à un film
--

CREATE
OR REPLACE FUNCTION addDetails (idM integer, runtime integer, oc varchar, poster_path varchar, overview text)
RETURNS BOOLEAN AS $$
BEGIN
UPDATE movie_2
SET runtime          =$2,
    original_language=$3,
    poster_path=$4,
    overview=$5
where IdMovie = $1;

RETURN true;
END;

$$
LANGUAGE plpgsql;


-- --------------------------------------------------------

--
-- Structure de la table product
--

CREATE TABLE product
(
    IdProduct SERIAL PRIMARY KEY,
    IdMovie   integer NOT NULL,
    Support   varchar(3),
    Price     decimal(5, 2),
    Quantity  integer,
    CONSTRAINT fk_movie_id
        FOREIGN KEY (IdMovie)
            REFERENCES movie_2 (IdMovie),
    CONSTRAINT CHK_support
        CHECK (Support = 'DVD' OR Support = 'BR' OR Support = 'CB')
);

--
-- Fonction addProduct
-- Ajoute des produit
--

CREATE
OR REPLACE FUNCTION addProduct (idM integer, support varchar, price decimal, quantity integer)
RETURNS BOOLEAN AS $$
BEGIN
INSERT INTO product (IdMovie, Support, Price, Quantity)
VALUES ($1, $2, $3, $4);

RETURN true;
END;

$$
LANGUAGE plpgsql;

--
-- Fonction getProducts
-- Retourne les produit
--

create
or replace function getProducts ()
	returns table (
		idproduct integer,
		support varchar,
		price decimal,
		quantity integer,
		idmovie integer,
		title varchar,
		release date,
		runtime integer,
		original_language varchar,
		poster_path varchar,
		overview text,
		iddirector integer,
		name varchar
	)
	 as $$
begin
return query
select p.idproduct,
       p.support,
       p.price,
       p.quantity,
       m.idMovie,
       m.title,
       m.release,
       m.runtime,
       m.original_language,
       m.poster_path,
       m.overview,
       d.iddirector,
       d.name
from product p,
     movie_2 m,
     director_2 d
where p.idmovie = m.idmovie
  AND m.iddirector = d.iddirector
ORDER BY title;
end;
$$
LANGUAGE plpgsql;

--select *
--from getProducts() LIMIT 10;


--
-- Fonction getProduct
-- Retourne un produit
--

create
or replace function getProduct (idP integer)
	returns table (
		idproduct integer,
		support varchar,
		price decimal,
		quantity integer,
		idmovie integer,
		title varchar,
		release date,
		runtime integer,
		original_language varchar,
		poster_path varchar,
		overview text,
		iddirector integer,
		name varchar
	)
	 as $$
begin
return query
select p.idproduct,
       p.support,
       p.price,
       p.quantity,
       m.idMovie,
       m.title,
       m.release,
       m.runtime,
       m.original_language,
       m.poster_path,
       m.overview,
       d.iddirector,
       d.name
from product p,
     movie_2 m,
     director_2 d
where p.idmovie = m.idmovie
  AND m.iddirector = d.iddirector
  AND p.idProduct = $1
ORDER BY title;
end;
$$
LANGUAGE plpgsql;

--select *
--from getProduct(40);

--
-- Fonction getProductsDir
-- Retourne les produit qui ont un real donné
--

create
or replace function getProductsDir (idP integer)
	returns table (
		idproduct integer,
		support varchar,
		price decimal,
		quantity integer,
		idmovie integer,
		title varchar,
		release date,
		runtime integer,
		original_language varchar,
		poster_path varchar,
		overview text,
		iddirector integer,
		name varchar
	)
	 as $$
begin
return query
select p.idproduct,
       p.support,
       p.price,
       p.quantity,
       m.idMovie,
       m.title,
       m.release,
       m.runtime,
       m.original_language,
       m.poster_path,
       m.overview,
       d.iddirector,
       d.name
from product p,
     movie_2 m,
     director_2 d
where p.idmovie = m.idmovie
  AND m.iddirector = d.iddirector
  AND p.idmovie != (SELECT p2.idmovie FROM product p2 WHERE p2.idproduct = $1)
  AND d.iddirector = (SELECT m3.IdDirector
                      from product p3,
                           movie_2 m3
                      where p3.idproduct = $1
                        and p3.IdMovie = m3.IdMovie)
ORDER BY title;
end;
$$
LANGUAGE plpgsql;

--select *
--from getProductsDir(935563) LIMIT 10;


--
-- Fonction getProductsYear
-- Retourne les produit d'une meme année
--

create
or replace function getProductsYear (idP integer)
	returns table (
		idproduct integer,
		support varchar,
		price decimal,
		quantity integer,
		idmovie integer,
		title varchar,
		release date,
		runtime integer,
		original_language varchar,
		poster_path varchar,
		overview text,
		iddirector integer,
		name varchar
	)
	 as $$
begin
return query
select p.idproduct,
       p.support,
       p.price,
       p.quantity,
       m.idMovie,
       m.title,
       m.release,
       m.runtime,
       m.original_language,
       m.poster_path,
       m.overview,
       d.iddirector,
       d.name
from product p,
     movie_2 m,
     director_2 d
where p.idmovie = m.idmovie
  AND m.iddirector = d.iddirector
  AND p.idmovie != (SELECT p2.idmovie FROM product p2 WHERE p2.idproduct = $1)
  AND EXTRACT(YEAR from m.release) = (SELECT EXTRACT(YEAR from m3.release)
                                      from product p3,
                                           movie_2 m3
                                      where p3.idproduct = $1
                                        and p3.IdMovie = m3.IdMovie)

ORDER BY title;
end;
$$
LANGUAGE plpgsql;

--
-- Fonction getProductsMovie
-- Retourne les produit d'un meme film
--

create
or replace function getProductsMovie (idP integer)
	returns table (
		idproduct integer,
		support varchar,
		price decimal,
		quantity integer,
		idmovie integer,
		title varchar,
		release date,
		runtime integer,
		original_language varchar,
		poster_path varchar,
		overview text,
		iddirector integer,
		name varchar
	)
	 as $$
begin
return query
select p.idproduct,
       p.support,
       p.price,
       p.quantity,
       m.idMovie,
       m.title,
       m.release,
       m.runtime,
       m.original_language,
       m.poster_path,
       m.overview,
       d.iddirector,
       d.name
from product p,
     movie_2 m,
     director_2 d
where p.idmovie = m.idmovie
  AND m.iddirector = d.iddirector
  AND p.IdProduct != $1
  AND p.idmovie = (SELECT p2.IdMovie
                   from product p2
                   where p2.idproduct = $1)
ORDER BY title;
end;
$$
LANGUAGE plpgsql;

--select *
--from getProductsMovie(122);

--
-- Fonction rechearcheProducts
-- Retourne les produit recherché
--

create
or replace function researchProducts (rech varchar)
	returns table (
		idproduct integer,
		support varchar,
		price decimal,
		quantity integer,
		idmovie integer,
		title varchar,
		release date,
		runtime integer,
		original_language varchar,
		poster_path varchar,
		overview text,
		iddirector integer,
		name varchar
	)
	 as $$
begin
return query
select p.idproduct,
       p.support,
       p.price,
       p.quantity,
       m.idMovie,
       m.title,
       m.release,
       m.runtime,
       m.original_language,
       m.poster_path,
       m.overview,
       d.iddirector,
       d.name
from product p,
     movie_2 m,
     director_2 d
where p.idmovie = m.idmovie
  AND m.iddirector = d.iddirector
  AND (lower(m.title) like CONCAT('%', lower($1), '%')
    OR lower(d.Name) like CONCAT('%', lower($1), '%'))
ORDER BY title;
end;
$$
LANGUAGE plpgsql;

--select *
--from researchProducts('ford') LIMIT 10;

-- --------------------------------------------------------

--
-- Structure de la table cart
--

CREATE TABLE cart
(
    IdCart    SERIAL PRIMARY KEY,
    Pseudo    varchar(60) NOT NULL,
    IdProduct integer     NOT NULL,
    Quantity  integer,
    CONSTRAINT fk_pseudo
        FOREIGN KEY (Pseudo)
            REFERENCES client (Pseudo),
    CONSTRAINT fk_product_id
        FOREIGN KEY (IdProduct)
            REFERENCES product (IdProduct)
);

--
-- Fonction addToCart
-- Ajoute un produit a un cart, si le produit est deja dans le panier, ca incremente la ligne
--

CREATE
OR REPLACE FUNCTION addToCart (p varchar, idP integer, q integer)
RETURNS BOOLEAN AS $$
declare
    qP integer;
    qR integer;
BEGIN
    Select quantity into qP from product where idProduct = $2;
    SELECT Quantity into qR  FROM cart c WHERE c.pseudo = $1 AND c.idProduct = $2;
    IF qP = 0 then
        return false;
    ELSE
        IF qR IS NULL THEN

            IF $3 <= qP THEN
                INSERT INTO cart (pseudo, IdProduct, Quantity) VALUES ($1, $2, $3);
            ELSE
                RETURN false;
            END if;

        ELSE
            IF qR + $3 <= qP THEN
                UPDATE Cart c
                SET Quantity = c.Quantity + $3
                WHERE c.pseudo = $1
                  AND c.idProduct = $2;
            ELSE
                RETURN FALSE;
            END if;
        END if;
    END if;
    RETURN true;
END;

$$ LANGUAGE plpgsql;

--
-- Fonction removeFromCart
-- Enleve un product du cart, si le product est a zero, cela supprime le product, si on ne met pas de quantité, ou une trop grosse quantité, ca enleve le produit
--

CREATE
OR REPLACE FUNCTION removeFromCart (p varchar, idP integer, q integer default 0)
RETURNS BOOLEAN AS $$
declare
    qP integer;
BEGIN

    IF $3 = 0 THEN
        DELETE FROM cart c WHERE c.pseudo = $1 AND c.IdProduct = $2;
    ELSE
        Select c.quantity into qP from cart c WHERE c.pseudo = $1 AND c.IdProduct = $2;
        IF qP - $3 <= 0 THEN
            DELETE FROM cart c WHERE c.pseudo = $1 AND c.IdProduct = $2;
        ELSE
            UPDATE Cart C SET Quantity = c.Quantity - $3 WHERE c.pseudo = $1 AND c.IdProduct = $2;
        END IF;
    END IF;

    RETURN true;
END;

$$ LANGUAGE plpgsql;

--
-- Fonction getCart
-- Recuperer les paniers d'un utilisateurs, calcul le coup pour un produit
--

CREATE
OR REPLACE FUNCTION getCart (p varchar)
returns table (
		IdProduct integer,
        Quantity integer,
        Totalprice decimal
	)
	 as $$
BEGIN
return query
select c.IdProduct,
       c.quantity,
       p.Price * c.Quantity as TotalPrice
from cart c,
     product p
where c.Pseudo = $1
  AND c.IdProduct = p.IdProduct;
END;

$$
LANGUAGE plpgsql;

--
-- Fonction emptyCart
-- Ajoute un produit a un cart, si le produit est deja dans le panier, ca incremente la ligne
--

CREATE
OR REPLACE FUNCTION emptyCart (p varchar)
RETURNS BOOLEAN AS $$
BEGIN

DELETE
FROM cart c
WHERE c.pseudo = $1;

RETURN true;
END;

$$
LANGUAGE plpgsql;

--
-- Fonction getCartSize
-- Renvois le nombre de produit dans le cart
--

CREATE
OR REPLACE FUNCTION getCartSize (p varchar)
RETURNS integer AS $$
declare
    nbP integer;
BEGIN
    select SUM(c.Quantity) into nbP from cart c where c.pseudo = $1 group by c.pseudo;

    RETURN nbP;
END;

$$
LANGUAGE plpgsql;

