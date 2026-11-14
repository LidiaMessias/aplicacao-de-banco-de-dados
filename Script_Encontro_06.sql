USE DB_T05429_LIDIA_MESSIAS;

CREATE TABLE PRODUCT (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(120) NOT NULL,
    CATEGORY VARCHAR(60) NOT NULL,
    PRICE FLOAT NOT NULL,
    STOCK INT NOT NULL
);

ALTER TABLE PRODUCT MODIFY COLUMN PRICE DECIMAL(10, 2) NOT NULL;

CREATE TABLE CUSTOMER (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(120) NOT NULL,
    AGE INT NOT NULL,
    CITY VARCHAR(60) NOT NULL,
    EMAIL VARCHAR(80) NOT NULL
);

CREATE TABLE ORDER_TABLE (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(120) NOT NULL,
    PRODUCT_NAME VARCHAR(120) NOT NULL,
    QUANTITY INT NOT NULL,
    TOTAL_VALUE FLOAT NOT NULL
);

INSERT INTO PRODUCT (NAME, CATEGORY, PRICE, STOCK)
	VALUES ('Brigadeiro Gourmet Tradicional', 'Doces de Festa', 4.50, 120),
			('Bolo de Cenoura com Cobertura de Chocolate', 'Bolos e Tortas', 25.00, 36),
            ('Pudim de Leite Condensado (Fatia)', 'Sobremesas Geladas', 12.50, 24),
            ('Palha Italiana de Ninho com Nutella', 'Doces Artesanais', 8.00, 60),
            ('Paçoca Rolha Tradicional', 'Doces Típicos / Juninos', 2.50, 120);

INSERT INTO CUSTOMER (NAME, AGE, CITY, EMAIL)
	VALUES ('Mariana Silva Costa', 28, 'São Paulo', 'mariana.costa@email.com'),
			('Rafael Oliveira Santos', 34, 'Rio de Janeiro', 'rafael.santos@email.com'),
			('Camila Ferreira Almeida', 22, 'Belo Horizonte', 'camila.almeida@email.com'),
            ('Lucas Pereira Lima', 41, 'Curitiba', 'lucas.lima@email.com'),
            ('Beatriz Souza Mendes', 31, 'Salvador', 'beatriz.mendes@email.com');

INSERT INTO ORDER_TABLE (CUSTOMER_NAME, PRODUCT_NAME, QUANTITY, TOTAL_VALUE)
	VALUES ('Mariana Silva Costa', 'Brigadeiro Gourmet Tradicional', 10, 45.00),
			('Rafael Oliveira Santos', 'Bolo de Cenoura com Cobertura de Chocolate', 2, 50.00),
            ('Beatriz Souza Mendes', 'Palha Italiana de Ninho com Nutella', 3, 24.00),
            ('Lucas Pereira Lima', 'Pudim de Leite Condensado (Fatia)', 4, 50.00),
            ('Camila Ferreira Almeida', 'Paçoca Rolha Tradicional', 20, 50.00);

INSERT INTO PRODUCT VALUES 
	(NULL ,'Brownie de Chocolate Belga', 'Bolos e Tortas', 12.00, 50),
    (NULL, 'Beijinho de Coco Queimado', 'Doces de Festa', 4.00, 150),
    (NULL, 'Torta de Limão Siciliano (Fatia)', 'Sobremesas Geladas', 13.50, 20),
    (NULL, 'Cookie com Gotas de Chocolate', 'Doces Artesanais', 7.50, 80),
    (NULL, 'Pé de Moleque Crocante', 'Doces Típicos / Juninos', 3.50, 200);
    
INSERT INTO CUSTOMER VALUES
	(NULL, 'Gabriel Henrique Rocha', 26, 'Porto Alegre', 'gabriel.rocha@email.com'),
    (NULL, 'Juliana Martins Nogueira', 38, 'Recife', 'juliana.nogueira@email.com'),
    (NULL, 'Thiago Carvalho Ribeiro', 29, 'Florianópolis', 'thiago.ribeiro@email.com'),
    (NULL, 'Fernanda Alves Barbosa', 45, 'Brasília', 'fernanda.barbosa@email.com'),
    (NULL, 'Rodrigo Nunes Teixeira', 33, 'Goiânia', 'rodrigo.teixeira@email.com');
    
INSERT INTO ORDER_TABLE VALUES
	(NULL, 'Gabriel Henrique Rocha', 'Brownie de Chocolate Belga', 3, 36.00),
    (NULL, 'Juliana Martins Nogueira', 'Beijinho de Coco Queimado', 15, 60.00),
    (NULL, 'Thiago Carvalho Ribeiro', 'Torta de Limão Siciliano (Fatia)', 2, 27.00),
    (NULL, 'Fernanda Alves Barbosa', 'Cookie com Gotas de Chocolate', 4, 30.00),
    (NULL, 'Mariana Silva Costa', 'Pé de Moleque Crocante', 6, 21.00);
    

    
