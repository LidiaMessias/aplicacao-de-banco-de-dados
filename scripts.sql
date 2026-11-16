# SELECT * FROM ALUNO WHERE SOBRENOME = 'Almeida'; - Comentário

# PARTE 01 - Criação do Banco de Dados 
CREATE DATABASE DB_T05429_LIDIA_MESSIAS;
USE DB_T05429_LIDIA_MESSIAS;

SHOW DATABASES;

# Parte 2 – Criação das Tabelas
CREATE TABLE NOVEL (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(120) NOT NULL,
    YEAR YEAR NOT NULL,
    GENRE VARCHAR(50) NOT NULL,
    AUDIENCE FLOAT
); 

CREATE TABLE ACTOR (
	ACTOR_ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    AGE INT NOT NULL,
    CHARACTER_NAME VARCHAR(120) NOT NULL,
    SALARY FLOAT NOT NULL
);

CREATE TABLE BROADCASTER (
	BROADCASTER_ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(120) NOT NULL,
    COUNTRY VARCHAR(120) NOT NULL,
    FOUNDATION_YEAR YEAR NOT NULL
);

# Parte 3 – Inserção de Dados com Campos Especificados
INSERT INTO NOVEL (NAME, YEAR, GENRE, AUDIENCE) 
	VALUES ('Roque Santeiro', 1985, 'Comédia dramática / Sátira Política', 74.0), 
			('Tieta', 1989, 'Comédia dramática / Regionalista', 65.0),  
            ('Rainha da Sucata', 1990, 'Comédia dramática', 61.0),
            ('A Viagem', 1994, 'Drama / Espiritualista', 52.4),
            ('Senhora do Destino', 2004, 'Drama familiar', 50.4);
	
INSERT INTO ACTOR (NAME, AGE, CHARACTER_NAME, SALARY)
	VALUES ('Lima Duarte', 96, 'Sinhozinho Malta', 200000.00),
			('Betty Faria', 85, 'Tieta', 180000.00),
            ('Regina Duarte', 79, 'Maria do Carmo Pereira', 190000.00),
            ('Christiane Torloni', 69, 'Dinah Toledo', 160000.00),
            ('Susana Vieira', 84, 'Maria do Carmo Ferreira', 220000.00);
            
INSERT INTO BROADCASTER (NAME, COUNTRY, FOUNDATION_YEAR)
	VALUES ('Record', 'Brasil', 1953),
			('TV Globo', 'Brasil', 1965),
            ('Band (Rede Bandeirantes)', 'Brasil', 1967),
            ('SBT', 'Brasil', 1981),
            ('RedeTV!', 'Brasil', 1999);
   
# Parte 4 – Inserção de Dados sem Especificar
INSERT INTO NOVEL VALUES 	(NULL, 'Pantanal', 1990, 'Drama / Romance rural', 21.6),
							(NULL, 'Chiquititas', 1997, 'Novela infantil', 13.5),
                            (NULL, 'A Escrava Isaura', 2004, 'Drama histórico', 14.2),
                            (NULL, 'Avenida Brasil', 2012, 'Drama / Suspense', 38.8),
                            (NULL, 'Os Dez Mandamentos', 2015, 'Drama épico / Bíblico', 16.2);

INSERT INTO ACTOR VALUES	(NULL, 'Cristiana Oliveira', 62, 'Juma Marruá', 150000.00),
							(NULL, 'Fernanda Souza', 42, 'Mili', 90000.00),
                            (NULL, 'Bianca Rinaldi', 52, 'Isaura', 110000.00),
                            (NULL, 'Adriana Esteves', 56, 'Carminha', 210000.00),
                            (NULL, 'Guilherme Winter', 47, 'Moisés', 120000.00);
                            
INSERT INTO BROADCASTER VALUES	(NULL, 'TV Cultura', 'Brasil', 1969),
								(NULL, 'CNN Brasil', 'Brasil', 2020),
                                (NULL, 'Televisa', 'México', 1973),
                                (NULL, 'SIC - Sociedade Independente de Comunicação', 'Portugal', 1992),
                                (NULL, 'KBS - Korean Broadcasting System', 'Coreia do Sul', 1927);

# Parte 5 – Exercícios de SELECT
SELECT * FROM NOVEL;
SELECT * FROM ACTOR;
SELECT * FROM BROADCASTER;

SELECT NAME, YEAR FROM NOVEL;
SELECT NAME, GENRE FROM NOVEL;
SELECT NAME, AGE FROM ACTOR;
SELECT NAME, SALARY FROM ACTOR;
SELECT NAME FROM BROADCASTER;

SELECT * FROM NOVEL ORDER BY YEAR ASC;
SELECT * FROM ACTOR ORDER BY AGE;
SELECT * FROM BROADCASTER ORDER BY FOUNDATION_YEAR;
