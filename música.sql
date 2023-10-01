use música

CREATE TABLE GRAVADORA (
       Codigo_Gravadora     INTEGER NOT NULL,
       Nome_Gravadora       CHAR(60) NULL,
       Endereco             CHAR(60) NULL,
       Telefone             CHAR(20) NULL,
       Contato              CHAR(20) NULL,
       URL                  CHAR(80) NULL
);

CREATE TABLE CD (
       Codigo_CD            INTEGER NOT NULL,
       Codigo_Gravadora     INTEGER NULL,
       Nome_CD              CHAR(60) NULL,
       Preco_Venda          NUMERIC(14,2) NULL,
       Data_Lancamento      DATE NULL,
       CD_Indicado          INTEGER NULL
);

CREATE TABLE MUSICA (
       Codigo_Musica        INTEGER NOT NULL,
       Nome_Musica          CHAR(60) NULL,
       Duracao              NUMERIC(6,2) NULL
);

CREATE TABLE AUTOR (
       Codigo_Autor         INTEGER NOT NULL,
       Nome_Autor           CHAR(60) NULL
);

CREATE TABLE MUSICA_AUTOR (
       Codigo_Musica        INTEGER NOT NULL,
       Codigo_Autor         INTEGER NOT NULL
);

CREATE TABLE FAIXA (
       Codigo_Musica        INTEGER NOT NULL,
       Codigo_CD            INTEGER NOT NULL,
       Numero_Faixa         INTEGER NULL
);

CREATE TABLE CD_CATEGORIA(
       Codigo_Categoria   INTEGER    NOT NULL,
       Menor_Preco        NUMERIC(14,2) NOT NULL,
       Maior_Preco        NUMERIC(14,2) NOT NULL
);

ALTER TABLE GRAVADORA
       ADD  CONSTRAINT XPKGRAVADORA PRIMARY KEY (Codigo_Gravadora);

ALTER TABLE CD ADD  CONSTRAINT XPKCD PRIMARY KEY (Codigo_CD) ;

ALTER TABLE CD ADD estilo CHAR(20);

ALTER TABLE CD ADD vendas NUMERIC(8,2);

ALTER TABLE MUSICA
       ADD  CONSTRAINT XPKMUSICA PRIMARY KEY (Codigo_Musica);

ALTER TABLE AUTOR
       ADD  CONSTRAINT XPKAUTOR PRIMARY KEY (Codigo_Autor) ;

ALTER TABLE MUSICA_AUTOR
       ADD  CONSTRAINT XPKMUSICA_AUTOR PRIMARY KEY (Codigo_Musica, Codigo_Autor) ;

ALTER TABLE FAIXA ADD  CONSTRAINT XPKFAIXA PRIMARY KEY (Codigo_Musica, Codigo_CD);

ALTER TABLE CD
       ADD  CONSTRAINT GRAVADORA_CD  FOREIGN KEY (Codigo_Gravadora) REFERENCES gravadora;

ALTER TABLE CD
       ADD  CONSTRAINT CD_CD FOREIGN KEY (CD_Indicado) REFERENCES CD;

ALTER TABLE MUSICA_AUTOR
       ADD  CONSTRAINT AUTOR_MUSICA_AUTOR FOREIGN KEY (Codigo_Autor) REFERENCES AUTOR;


ALTER TABLE MUSICA_AUTOR
       ADD  CONSTRAINT MUSICA_MUSICA_AUTOR FOREIGN KEY (Codigo_Musica) REFERENCES MUSICA;


ALTER TABLE FAIXA
       ADD  CONSTRAINT CD_FAIXA FOREIGN KEY (Codigo_CD) REFERENCES CD;


ALTER TABLE FAIXA
       ADD  CONSTRAINT MUSICA_FAIXA FOREIGN KEY (Codigo_Musica) REFERENCES MUSICA;

-- TABELA DE AUTOR
INSERT INTO AUTOR (CODIGO_AUTOR, NOME_AUTOR)
VALUES ( 1, 'Renato Russo' ),
 ( 2, 'Tom Jobim' ),
 ( 3, 'Chico Buarque' ),
 ( 4, 'Dado Villa-Lobos' ),
 ( 5, 'Marcelo Bonfá' ),
 ( 6, 'Ico Ouro-Preto' ),
 ( 7, 'Vinicius de Moraes' ),
 ( 8, 'Baden Powell' ),
 ( 9, 'Paulo Cesar Pinheiro' ),
 ( 10, 'João Bosco' ),
 ( 11, 'Aldir Blanc' ),
 ( 12, 'Joyce' ),
 ( 13, 'Ana Terra' ),
 ( 14, 'Cartola' ),
 ( 15, 'Cláudio Tolomei' ),
 ( 16, 'João Nogueira' ),
 ( 17, 'Suely Costa' ),
 ( 18, 'Guinga' ),
 ( 19, 'Danilo Caymmi' ),
 ( 20, 'Tunai' ),
 ( 21, 'Sérgio Natureza' ),
 ( 22, 'Heitor Villa Lobos' ),
 ( 23, 'Ferreira Gullar' ),
 ( 24, 'Catulo da Paixão Cearense' ),
 ( 25, 'Zezé di Camargo' ),
 ( 26, 'Niltinho Edilberto' ),
 ( 27, 'Marisa Monte' ),
 ( 28, 'Carlinhos Brown' ),
 ( 29, 'Gonzaga Jr' ),
 ( 30, 'Roberto Mendes' ),
 ( 31, 'Ana Basbaum' ),
 ( 32, 'Caetano Veloso' ),
 ( 33, 'José Miguel Wisnik' ),
 ( 34, 'Vevé Calazans' ),
 ( 35, 'Gerônimo' ),
 ( 36, 'Sérgio Natureza' ),
 ( 37, 'Roberto Carlos' ),
 ( 38, 'Erasmo Carlos' ),
 ( 39, 'Renato Teixeira' ),
 ( 40, 'Chico César' ),
 ( 41, 'Vanessa da Mata' ),
 ( 42, 'Jorge Portugal' ),
 ( 43, 'Lilian Knapp' ),
 ( 44, 'Renato Barros' ),
 ( 45, 'Bebel Gilberto' ),
 ( 46, 'Cazuza' ),
 ( 47, 'Dé' ),
 ( 48, 'Adriana Calcanhoto' ),
 ( 49, 'Antonio Cícero' ),
 ( 50, 'Paulo Machado' ),
 ( 51, 'Dorival Caymmi' ),
 ( 52, 'João Donato' ),
 ( 53, 'Ronaldo Bastos' ),
 ( 54, 'Barry Manilow' ),
 ( 55, 'Richard Kerr' ),
 ( 56, 'Chris Arnold' ),
 ( 57, 'David Pomeranz' ),
 ( 58, 'George Michael' ),
 ( 59, 'S. Wonder' ),
 ( 60, 'Elton John' ),
 ( 61, 'Arnaldo Antunes' );

-- TABELA DE MÚSICA
INSERT INTO MUSICA (CODIGO_MUSICA, NOME_MUSICA, DURACAO )
 VALUES ( 1, 'Será',2.28 ),
 ( 2, 'Ainda é Cedo', 3.55 ),
 ( 3, 'Geração Coca-Cola', 2.20 ),
 ( 4, 'Eduardo e Monica', 4.32 ),
 ( 5, 'Tempo Perdido', 5.00 ),
 ( 6, 'Índios', 4.23 ),
 ( 7, 'Que País é Este',2.64 ),
 ( 8, 'Faroeste Caboclo', 9.03 ),
 ( 9, 'Há Tempos', 3.16 ),
 ( 10, 'Pais e Filhos', 5.06 ),
 ( 11, 'Meninos e Meninas', 3.22 ),
 ( 12, 'Vento no Litoral', 6.05 ),
 ( 13, 'Perfeição', 4.35 ),
 ( 14, 'Giz', 3.20 ),
 ( 15, 'Dezesseis', 5.28 ),
 ( 16, 'Antes das Seis', 3.09 ),
 ( 17, 'Meninos, Eu Vi', 3.25 ),
 ( 18, 'Eu Te Amo', 3.06 ),
 ( 19, 'Piano na Mangueira', 2.23 ),
 ( 20, 'A Violeira', 2.54 ),
 ( 21, 'Anos Dourados', 2.56 ),
 ( 22, 'Olha, Maria', 3.55 ),
 ( 23, 'Biscate', 3.20 ),
 ( 24, 'Retrato em Preto e Branco', 3.03 ),
 ( 25, 'Falando de Amor', 3.20 ),
 ( 26, 'Pois É', 2.48 ),
 ( 27, 'Noite dos Mascarados', 2.42 ),
 ( 28, 'Sabiá', 3.20 ),
 ( 29, 'Imagina', 2.52 ),
 ( 30, 'Bate-Boca', 4.41 ),
 ( 31, 'Cai Dentro', 2.41 ),
 ( 32, 'O Bêbado e o Equilibrista', 3.47 ),
 ( 33, 'Essa Mulher', 3.47 ),
 ( 34, 'Basta de Clamares Inocência', 3.38 ),
 ( 35, 'Beguine Dodói', 2.14 ),
 ( 36, 'Eu hein Rosa', 3.36 ),
 ( 37, 'Altos e Baixos', 3.29 ),
 ( 38, 'Bolero de Satã', 3.32 ),
 ( 39, 'Pé Sem Cabeça', 2.57 ),
 ( 40, 'As Aparências Enganam', 4.18 ),
 ( 41, 'É o Amor', 4.19 ),
 ( 42, 'Trenzinho Caipira', 3.32 ),
 ( 43, 'Luar do Sertão', 3.23 ),
 ( 44, 'Não tenha Medo', 3.27 ),
 ( 45, 'Eu queria que você viesse', 2.57 ),
 ( 46, 'Espere por mim Morena', 3.04 ),
 ( 47, 'Resto de mim', 2.59 ),
 ( 48, 'Gema', 2.51 ),
 ( 49, 'Cacilda', 2.22 ),
 ( 50, 'Agradecer e abraçar', 3.30 ),
 ( 51, 'As flores do jardim da nossa casa', 3.26 ),
 ( 52, 'Romaria', 3.16 ),
 ( 53, 'A força que nunca seca', 2.17 ),
 ( 54, 'Vila do Adeus', 3.06 ),
 ( 55, 'Devolva-me', 3.58 ),
 ( 56, 'Mais Feliz', 2.50 ),
 ( 57, 'Inverno', 4.40 ),
 ( 58, 'Mentiras', 2.58 ),
 ( 59, 'Esquadros', 3.10 ),
 ( 60, 'Cariocas', 3.14 ),
 ( 61, 'Vambora', 4.16 ),
 ( 62, 'Por isso eu Corro Demais', 2.58 ),
 ( 63, 'Maresia', 4.09 ),
 ( 64, 'Metade', 3.25 ),
 ( 65, 'Senhas', 3.37 ),
 ( 66, 'Marina', 2.55 ),
 ( 67, 'Naquela Estação', 4.46 ),
 ( 68, 'Mandy', 3.18 ),
 ( 69, 'New York City Rhythm', 4.41 ),
 ( 70, 'Looks Like We Made It', 3.32 ),
 ( 71, 'Daybreak', 3.05 ),
 ( 72, 'Can''t Smile Without you', 3.13 ),
 ( 73, 'It''s a Miracle', 3.53 ),
 ( 74, 'Even Now', 3.29 ),
 ( 75, 'Bandstand Boogie', 2.50 ),
 ( 76, 'Trying to get the feeling again', 3.50 ),
 ( 77, 'Some Kind of Friend', 4.02 ),
 ( 78, 'Praying for Time', 3.52 ),
 ( 79, 'Freedom 90', 3.52 ),
 ( 80, 'They Won''t Go When I Go', 3.22 ),
 ( 81, 'Something to Save', 4.10 ),
 ( 82, 'Cowboys and Angels', 4.12 ),
 ( 83, 'Don''t Let the Sun Go Down on Me', 3.45 ),
 ( 84, 'Waiting for That Day', 2.58 ),
 ( 85, 'Mothers Pride', 2.12 ),
 ( 86, 'Heal the Pain', 3.02 ),
 ( 87, 'Soul Free', 2.42 ),
 ( 88, 'Waiting', 3.32 ),
 ( 89, 'Lição De Baião', 2.15 ),
 ( 90, 'Oito Anos', 6.39 ),
 ( 91, 'Lig-Lig-Lig-Lé', 4.26 ),
 ( 92, 'Fico Assim Sem Você', 3.45 ),
 ( 93, 'Canção Da Falsa Tartaruga', 1.32 ),
 ( 94, 'Formiga Bossa Nova', 4.38 ),
 ( 95, 'Ciranda Da Bailarina', 3.32 ),
 ( 96, 'Ser De Sagitário', 3.19 ),
 ( 97, 'Borboleta', 3.46 ),
 ( 98, 'Saiba', 2.12 );

-- TABELA GRAVADORA
INSERT INTO GRAVADORA (CODIGO_GRAVADORA, NOME_GRAVADORA, ENDERECO, URL, CONTATO )
VALUES ( 1, 'EMI', 'Rod. Pres. Dutra, s/n – km 229,8', 'www.emi-music.com.br', 'JOÃO' ),
 ( 2, 'BMG', 'Av. Piramboia, 2898 - Parte 7', 'www.bmg.com.br', 'MARIA' ),
 ( 3, 'SOM LIVRE', NULL, 'www.somlivre.com.br', 'MARTA' ),
 ( 4, 'EPIC', NULL, 'www.epic.com.br', 'PAULO' ),
 ( 5, 'SONY MUSIC', NULL, 'www.sonymusic.com.br', 'JULIO' );

-- TABELA CD
INSERT INTO cd (CODIGO_CD, CODIGO_GRAVADORA, NOME_CD, PRECO_VENDA)
VALUES ( 1, 1, 'Mais do Mesmo', 15.00 ),
 ( 2, 2, 'Bate-Boca', 12.00 ),
 ( 3, 1, 'Elis Regina - Essa Mulher', 13.00 ),
 ( 4, 2, 'A Força que nunca Seca', 13.50 ),
 ( 5, 1, 'Perfil', 10.50 ),
 ( 6, 2, 'Barry Manilow Greatest Hits Vol I', 9.50),
 ( 7, 1, 'Listen Without Prejudice', 9.00 ),
 ( 8, 2, 'Adriana Partimpim', 21.90);

-- TABELA ITEMCD
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA )
VALUES ( 1, 1, 1 ),
 ( 1, 2, 2 ),
 ( 1, 3, 3 ),
 ( 1, 4, 4 ),
 ( 1, 5, 5 ),
 ( 1, 6, 6 ),
 ( 1, 7, 7 ),
 ( 1, 8, 8 ),
 ( 1, 9, 9 ),
 ( 1, 10, 10 ),
 ( 1, 11, 11 ),
 ( 1, 12, 12 ),
 ( 1, 13, 13 ),
 ( 1, 14, 14 ),
 ( 1, 15, 15 ),
 ( 1, 16, 16 );

-- BATE-BOCA
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA )
VALUES ( 2, 1, 17 ),
 ( 2, 2, 18 ),
 ( 2, 3, 19 ),
 ( 2, 4, 20 ),
 ( 2, 5, 21 ),
 ( 2, 6, 22 ),
 ( 2, 7, 23 ),
 ( 2, 8 ,24 ),
 ( 2, 9, 25 ),
 ( 2, 10, 26 ),
 ( 2, 11, 27 ),
 ( 2, 12, 28 ),
 ( 2, 13, 29 ),
 ( 2, 14, 30 );

-- ESSA MULHER
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA )
VALUES ( 3, 1, 31 ),
 ( 3, 2, 32 ),
 ( 3, 3, 33 ),
 ( 3, 4, 34 ),
 ( 3, 5, 35 ),
 ( 3, 6, 36 ),
 ( 3, 7, 37 ),
 ( 3, 8 ,38 ),
 ( 3, 9, 39 ),
 ( 3, 10, 40 );

-- FORÇA QUE NUNCA SECA
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA )
VALUES ( 4, 1, 41 ),
 ( 4, 2, 42 ),
 ( 4, 3, 43 ),
 ( 4, 4, 44 ),
 ( 4, 5, 45 ),
 ( 4, 6, 46 ),
 ( 4, 7, 47 ),
 ( 4, 8 ,48 ),
 ( 4, 9, 49 ),
 ( 4, 10, 50 ),
 ( 4, 11, 51 ),
 ( 4, 12, 52 ),
 ( 4, 13, 53 ),
 ( 4, 14, 54 );

-- DEVOLVA-ME
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA )
VALUES ( 5, 1, 55 ),
 ( 5, 2, 56 ),
 ( 5, 3, 57 ),
 ( 5, 4, 58 ),
 ( 5, 5, 59 ),
 ( 5, 6, 60 ),
 ( 5, 7, 61 ),
 ( 5, 8 ,62 ),
 ( 5, 9, 63 ),
 ( 5, 10, 64 ),
 ( 5, 11, 65 ),
 ( 5, 12, 66 ),
 ( 5, 13, 67 );

-- BARRY MANILOW
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA )
VALUES ( 6, 1, 68 ),
 ( 6, 2, 69 ),
 ( 6, 3, 70 ),
 ( 6, 4, 71 ),
 ( 6, 5, 72 ),
 ( 6, 6, 73 ),
 ( 6, 7, 74 ),
 ( 6, 8 ,75 ),
 ( 6, 9, 76 ),
 ( 6, 10, 77 );

-- LISTEN WITHOUT PREJUDICE
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA )
VALUES ( 7, 1, 78 ),
 ( 7, 2, 79 ),
 ( 7, 3, 80 ),
 ( 7, 4, 81 ),
 ( 7, 5, 82 ),
 ( 7, 6, 83 ),
 ( 7, 7, 84 ),
 ( 7, 8 ,85 ),
 ( 7, 9, 86 ),
 ( 7, 10, 87 ),
 ( 7, 11, 88 );
 
-- ADRIANA
INSERT INTO FAIXA (CODIGO_CD, NUMERO_FAIXA, CODIGO_MUSICA )
VALUES ( 8, 1, 89 ),
 ( 8, 2, 90 ),
 ( 8, 3, 91 ),
 ( 8, 4, 92 ),
 ( 8, 5, 93 ),
 ( 8, 6, 94 ),
 ( 8, 7, 95 ),
 ( 8, 8, 96 ),
 ( 8, 9, 97 ),
 ( 8, 10, 98 );

-- TABELA MUSICA_AUTOR
INSERT INTO MUSICA_AUTOR (CODIGO_MUSICA, CODIGO_AUTOR )
VALUES ( 1, 1 ),
 ( 2, 5 ),
 ( 2, 6 ),
 ( 3, 4 ),
 ( 3, 5 ),
 ( 3, 1 ),
 ( 4, 1 ),
 ( 4, 4 ),
 ( 5, 1 ),
 ( 6, 1 ),
 ( 7, 1 ),
 ( 8, 1 ),
 ( 9, 1 ),
 ( 9, 4 ),
 ( 9, 5 ),
 ( 10, 1 ),
 ( 10, 4 ),
 ( 10, 5 ),
 ( 11, 1 ),
 ( 11, 4 ),
 ( 11, 5 ),
 ( 12, 1 ),
 ( 12, 4 ),
 ( 12, 5 ),
 ( 13, 1 ),
 ( 13, 4 ),
 ( 13, 5 ),
 ( 14, 1 ),
 ( 14, 4 ),
 ( 14, 5 ),
 ( 15, 1 ),
 ( 15, 4 ),
 ( 15, 5 ),
 ( 16, 1 ),
 ( 16, 4 ),
 ( 16, 5 ),
 ( 17, 2 ),
 ( 17, 3 ),
 ( 18, 2 ),
 ( 18, 3 ),
 ( 19, 2 ),
 ( 19, 3 ),
 ( 20, 2 ),
 ( 20, 3 ),
 ( 21, 2 ),
 ( 21, 3 ),
 ( 22, 2 ),
 ( 22, 3 ),
 ( 22, 7 ),
 ( 23, 3 ),
 ( 24, 2 ),
 ( 24, 3 ),
 ( 25, 2 ),
 ( 26, 2 ),
 ( 26, 3 ),
 ( 27, 3 ),
 ( 28, 2 ),
 ( 28, 3 ),
 ( 29, 2 ),
 ( 29, 3 ),
 ( 30, 3 );

-- ESSA MULHER
INSERT INTO MUSICA_AUTOR (CODIGO_MUSICA, CODIGO_AUTOR )
VALUES ( 31, 8 ),
 ( 31, 9 ),
 ( 32, 10 ),
 ( 32, 11 ),
 ( 33, 12 ),
 ( 33, 13 ),
 ( 34, 14 ),
 ( 35, 10 ),
 ( 35, 11 ),
 ( 35, 15 ),
 ( 36, 16 ),
 ( 36, 9 ),
 ( 37, 17 ),
 ( 37, 11 ),
 ( 38, 18 ),
 ( 38, 9 ),
 ( 39, 19 ),
 ( 39, 13 ),
 ( 40, 20 ),
 ( 40, 21 );

-- A FORÇA QUE NUNCA SECA
INSERT INTO MUSICA_AUTOR (CODIGO_MUSICA, CODIGO_AUTOR )
VALUES ( 41, 25 ),
 ( 44, 26 ),
 ( 45, 27 ),
 ( 45, 28 ),
 ( 46, 29 ),
 ( 47, 30 ),
 ( 47, 31 ),
 ( 48, 32 ),
 ( 49, 33 ),
 ( 50, 35 ),
 ( 50, 36 ),
 ( 51, 37 ),
 ( 51, 38 ),
 ( 52, 39 ),
 ( 53, 40 ),
 ( 53, 41 ),
 ( 54, 30 ),
 ( 54, 42 );

-- DEVOLVA-ME
INSERT INTO MUSICA_AUTOR (CODIGO_MUSICA, CODIGO_AUTOR )
 VALUES ( 55, 43 ),
 ( 55, 44 ),
 ( 56, 45 ),
 ( 56, 46 ),
 ( 56, 47 ),
 ( 57, 48 ),
 ( 57, 49 ),
 ( 58, 48 ),
 ( 59, 48 ),
 ( 60, 48 ),
 ( 61, 48 ),
 ( 62, 37 ),
 ( 63, 50 ),
 ( 63, 49 ),
 ( 64, 48 ),
 ( 65, 48 ),
 ( 66, 51 ),
 ( 67, 52 ),
 ( 67, 53 ),
 ( 67, 32 );

-- BARRY MANILOW
INSERT INTO MUSICA_AUTOR (CODIGO_MUSICA, CODIGO_AUTOR )
VALUES ( 68, 55 ),
 ( 69, 54 ),
 ( 70, 55 ),
 ( 71, 54 ),
 ( 72, 56 ),
 ( 73, 54 ),
 ( 74, 54 ),
 ( 75, 54 ),
 ( 76, 57 ),
 ( 77, 54 ),

-- LISTEN WITHOUT PREJUDICE
INSERT INTO MUSICA_AUTOR (CODIGO_MUSICA, CODIGO_AUTOR )
VALUES ( 78, 58 ),
 ( 79, 58 ),
 ( 80, 59 ),
 ( 81, 58 ),
 ( 82, 58 ),
 ( 83, 60 ),
 ( 84, 58 ),
 ( 85, 58 ),
 ( 86, 58 ),
 ( 87, 58 ),
 ( 88, 58 ),
 ( 89, 48 ),
 ( 90, 48 ),
 ( 91, 48 ),
 ( 92, 48 ),
 ( 93, 48 ),
 ( 94, 48 ),
 ( 95, 48 ),
 ( 96, 48 ),
 ( 97, 48 ),
 ( 98, 48 );

-- TABELA CD_CATEGORIA
INSERT INTO CD_CATEGORIA (CODIGO_CATEGORIA, MENOR_PRECO, MAIOR_PRECO)
 values ( 1, 5, 10),
 ( 2, 10.01, 12),
 ( 3, 12.01, 15),
 ( 4, 15.01, 20);


UPDATE CD
   SET CD_INDICADO = 5, estilo = 'Bossa Nova', vendas = 2500
 WHERE CODIGO_CD = 1;
UPDATE CD
   SET CD_INDICADO = 3, estilo = 'MPB', vendas = 800
 WHERE CODIGO_CD = 2;
UPDATE CD
   SET CD_INDICADO = 1, estilo = 'Bossa Nova', vendas = 1500
 WHERE CODIGO_CD = 3;
UPDATE CD
   SET CD_INDICADO = 2, estilo = 'MPB', vendas = 3000
 WHERE CODIGO_CD = 5;
UPDATE CD
   SET CD_INDICADO = 7, estilo = 'Internacional', vendas = 900
 WHERE CODIGO_CD = 6;
UPDATE CD
   SET CD_INDICADO = 1, estilo = 'Internacional', vendas = 200
 WHERE CODIGO_CD = 4;
UPDATE CD
   SET CD_INDICADO = 8, estilo = 'MPB', vendas = 10
 WHERE CODIGO_CD = 8;
