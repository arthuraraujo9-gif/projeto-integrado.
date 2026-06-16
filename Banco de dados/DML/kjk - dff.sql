-- =========================================================================
-- INTEGRANTES: [Nome dos Integrantes]
-- TEMA ESCOLHIDO: Filmes / Catálogo de Cinema
-- =========================================================================

-- Criar o banco de dados se não existir e selecionar
CREATE DATABASE IF NOT EXISTS catalogo_filmes;
USE catalogo_filmes;

-- [Apenas para referência estrutural do script DML abaixo:]
-- tabela diretores: id_diretor, nome, nacionalidade
-- tabela filmes: id_filme, titulo, ano_lancamento, genero, id_diretor
-- tabela atores: id_actor, nome, data_nascimento
-- tabela filme_atores: id_filme, id_actor

-- -------------------------------------------------------------------------
-- QUESTÃO 1 – INSERÇÃO DE DADOS (INSERT INTO)
-- -------------------------------------------------------------------------

-- 1. Inserindo 5 registros na tabela: diretores
INSERT INTO diretores (nome, nacionalidade)
VALUES
('Christopher Nolan', 'Britânico'),
('Steven Spielberg', 'Americano'),
('Martin Scorsese', 'Americano'),
('Quentin Tarantino', 'Americano'),
('Denis Villeneuve', 'Canadense');

-- 2. Inserindo 5 registros na tabela: filmes
-- (Respeitando a chave estrangeira id_diretor)
INSERT INTO filmes (titulo, ano_lancamento, genero, id_diretor)
VALUES
('A Origem', 2010, 'Ficção Científica', 1),
('Interstellar', 2014, 'Ficção Científica', 1),
('O Resgate do Soldado Ryan', 1998, 'Guerra', 2),
('Os Infiltrados', 2006, 'Policial', 3),
('Duna', 2021, 'Ficção Científica', 5);

-- 3. Inserindo 5 registros na tabela: atores
INSERT INTO atores (nome, data_nascimento)
VALUES
('Leonardo DiCaprio', '1974-11-11'),
('Matthew McConaughey', '1969-11-04'),
('Tom Hanks', '1956-07-09'),
('Matt Damon', '1970-10-08'),
('Timothée Chalamet', '1995-12-27');

-- 4. Inserindo registros na tabela de relacionamento N:N: filme_atores
INSERT INTO filme_atores (id_filme, id_actor)
VALUES
(1, 1), -- Leonardo DiCaprio em A Origem
(2, 2), -- Matthew McConaughey em Interstellar
(3, 3), -- Tom Hanks em O Resgate do Soldado Ryan
(3, 4), -- Matt Damon em O Resgate do Soldado Ryan
(5, 5); -- Timothée Chalamet em Duna


-- -------------------------------------------------------------------------
-- QUESTÃO 2 – CONSULTA DE DADOS (SELECT)
-- -------------------------------------------------------------------------

-- a) Uma consulta exibindo todos os registros de uma tabela
SELECT * FROM filmes;

-- b) Uma consulta exibindo apenas alguns campos
SELECT nome, nacionalidade FROM diretores;

-- c) Uma consulta utilizando a cláusula WHERE
SELECT titulo, ano_lancamento 
FROM filmes 
WHERE ano_lancamento > 2010;


-- -------------------------------------------------------------------------
-- QUESTÃO 3 – ATUALIZAÇÃO DE DADOS (UPDATE)
-- -------------------------------------------------------------------------

-- Uma atualização alterando apenas um campo
UPDATE filmes
SET genero = 'Ficção Científica / Drama'
WHERE id_filme = 2;

-- Uma atualização alterando dois ou mais campos
UPDATE atores
SET nome = 'Leonardo Wilhelm DiCaprio', data_nascimento = '1974-11-12'
WHERE id_actor = 1;

-- Consultar os registros após as alterações para verificar o resultado
SELECT * FROM filmes WHERE id_filme = 2;
SELECT * FROM atores WHERE id_actor = 1;


-- -------------------------------------------------------------------------
-- QUESTÃO 4 – EXCLUSÃO DE DADOS (DELETE)
-- -------------------------------------------------------------------------

-- Realizar duas exclusões de registros vinculados
DELETE FROM filme_atores WHERE id_filme = 3 AND id_actor = 4;
DELETE FROM filme_atores WHERE id_filme = 1 AND id_actor = 1;

-- Uma consulta após as exclusões para verificar o resultado
SELECT * FROM filme_atores;


-- -------------------------------------------------------------------------
-- QUESTÃO 5 – DESAFIO: RELACIONANDO TABELAS COM INNER JOIN
-- -------------------------------------------------------------------------

-- Consulta 1: Relacionando Filmes e Diretores
-- Explicação: Retorna o título do filme e o nome do seu respectivo diretor.
SELECT 
    f.titulo AS nome_filme,
    d.nome AS nome_diretor
FROM filmes f
INNER JOIN diretores d 
    ON f.id_diretor = d.id_diretor;

-- Consulta 2: Relacionando Filmes, Atores e a tabela intermediária (Muitos para Muitos)
-- Explicação: Lista quais atores participaram de cada filme do catálogo.
SELECT 
    f.titulo AS nome_filme,
    a.nome AS nome_ator
FROM filme_atores fa
INNER JOIN filmes f 
    ON fa.id_filme = f.id_filme
INNER JOIN atores a 
    ON fa.id_actor = a.id_actor;

-- Desafio Extra: INNER JOIN de três tabelas com filtro WHERE
-- Explicação: Busca filmes de Ficção Científica mapeando seus diretores.
SELECT 
    f.titulo AS nome_filme,
    d.nome AS nome_diretor,
    f.genero
FROM filmes f
INNER JOIN diretores d 
    ON f.id_diretor = d.id_diretor
WHERE f.genero LIKE '%Ficção%';
