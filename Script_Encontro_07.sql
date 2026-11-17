# Parte 1
USE DB_T05429_LIDIA_MESSIAS;

# Parte 2
CREATE TABLE PLAYER (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    AGE INT NOT NULL,
    POSITION VARCHAR(50) NOT NULL,
    SALARY DECIMAL(10, 2) NOT NULL,
    TEAM_ID INT NOT NULL
);

CREATE TABLE TEAM (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    CITY VARCHAR(100) NOT NULL,
    FOUNDATION_YEAR INT NOT NULL,
    STADIUM VARCHAR(100) NOT NULL
);

CREATE TABLE MATCHES (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    HOME_TEAM_ID INT NOT NULL,
    AWAY_TEAM_ID INT NOT NULL,
    MATCH_DATE DATE NOT NULL,
    HOME_SCORE INT,
    AWAY_SCORE INT,
    STADIUM VARCHAR(100) NOT NULL
);

# Parte 3
INSERT INTO TEAM VALUES	(NULL, 'Clube de Regatas do Flamengo', 'Rio de Janeiro', 1895, 'Maracanã'),
						(NULL, 'Club de Regatas Vasco da Gama', 'Rio de Janeiro', 1898, 'São Januário'),
                        (NULL, 'Esporte Clube Vitória', 'Salvador', 1899, 'Barradão'),
                        (NULL, 'Grêmio Foot-Ball Porto Alegrense', 'Porto Alegre', 1903, 'Arena do Grêmio'),
                        (NULL, 'Botafogo de Futebol e Regatas', 'Rio de Janeiro', 1904, 'Nilton Santos'),
                        (NULL, 'Sport Club Corinthians Paulista', 'São Paulo', 1910, 'Neo Química Arena'),
                        (NULL, 'Santos Futebol Clube', 'Santos', 1912, 'Vila Belmiro'),
                        (NULL, 'Sociedade Esportiva Palmeiras', 'São Paulo', 1914, 'Allianz Parque');
                        
INSERT INTO PLAYER VALUES	(NULL, 'Gabriel Souza', 19, 'Atacante', 45000.00, 1),
							(NULL, 'Lucas Mendes', 21, 'Meia', 65000.00, 2),
                            (NULL, 'Matheus Oliveira', 23, 'Lateral-Esquerdo', 80000.00, 3),
                            (NULL, 'Pedro Henrique', 24, 'Volante', 120000.00, 4),
                            (NULL, 'Rafael Costa', 27, 'Zagueiro', 95000.00, 5),
                            (NULL, 'Bruno Almeida', 29, 'Goleiro', 150000.00, 6),
                            (NULL, 'Diego Ferreira', 31, 'Atacante', 220000.00, 7),
                            (NULL, 'Thiago Martins', 33, 'Meia', 180000.00, 8);
INSERT INTO PLAYER VALUES 	(NULL, 'Bruno Henrique', 32, 'Atacante', 450000.00, 1);
                            
# Parte 4
SELECT * FROM PLAYER;
UPDATE PLAYER SET SALARY = 150000.00 WHERE ID = 4;
UPDATE TEAM SET CITY = 'Santa Catarina' WHERE ID = 6;
DELETE FROM PLAYER WHERE ID = 1;

# Parte 5
# 1 Comparações Simples
SELECT * FROM PLAYER WHERE AGE > 25;
SELECT * FROM PLAYER WHERE SALARY < 100000;
SELECT * FROM TEAM WHERE FOUNDATION_YEAR > 1900;

# 2 Operador AND
SELECT * FROM PLAYER WHERE AGE > 25 AND SALARY > 100000;
SELECT * FROM TEAM WHERE FOUNDATION_YEAR > 1900 AND CITY = 'São Paulo';

# 3 Operador OR
SELECT * FROM PLAYER WHERE AGE < 25 OR SALARY < 100000;
SELECT * FROM TEAM WHERE CITY = 'São Paulo' OR CITY = 'Rio de Janeiro';

# 4 BETWEEN 
SELECT * FROM PLAYER WHERE AGE BETWEEN 20 AND 30;
SELECT * FROM TEAM WHERE FOUNDATION_YEAR BETWEEN 1900 AND 1910;

# 5 IN 
SELECT * FROM PLAYER WHERE POSITION IN ('Atacante', 'Meia');
SELECT * FROM TEAM WHERE CITY IN ('Salvador', 'Santos', 'Porto Alegre');

# 6 LIKE
SELECT * FROM PLAYER WHERE NAME LIKE 'Bru%';
SELECT * FROM PLAYER WHERE NAME LIKE '%Martins';
SELECT * FROM PLAYER WHERE NAME LIKE '%Henri%';
SELECT * FROM PLAYER WHERE NAME LIKE '_____ Almeida';

# 7
INSERT INTO MATCHES VALUES	(NULL, 7, 5, '2026-11-15', NULL, NULL, 'Vila Belmiro');
SELECT * FROM MATCHES WHERE HOME_SCORE IS NULL;

# 8 
SELECT * FROM PLAYER ORDER BY SALARY DESC LIMIT 5;
SELECT * FROM TEAM ORDER BY FOUNDATION_YEAR DESC LIMIT 5;

# Parte 6
CREATE USER 'lidia_messias'@'%' IDENTIFIED BY 'senha778899';






