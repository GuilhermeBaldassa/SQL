
'''SQL (Structured Query Language) é uma linguagem de programação 
   padrão usada para gerenciar e manipular bancos de dados relacionais.
   Com SQL, você pode realizar diversas operações, como:

- Criar bancos de dados e tabelas
- Inserir, atualizar e deletar dados
- Consultar dados de tabelas
- Definir permissões de acesso
- Principais Comandos SQL

Aqui estão alguns comandos SQL básicos com exemplos:'''

--1. Criar um Banco de Dados
CREATE DATABASE nome_do_banco;

--2. Criar uma Tabela
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade INT
);

--3. Inserir Dados
INSERT INTO usuarios (nome, email, idade) 
VALUES ('João Silva', 'joao@example.com', 30);

--4. Consultar Dados
-- Selecionar todos os registros
SELECT * FROM usuarios;

-- Selecionar registros com uma condição
SELECT * FROM usuarios WHERE idade > 25;

--5. Atualizar Dados
UPDATE usuarios 
SET idade = 31 
WHERE nome = 'João Silva';

--6. Deletar Dados
DELETE FROM usuarios 
WHERE nome = 'João Silva';

--7. Ordenar Resultados
SELECT * FROM usuarios 
ORDER BY idade DESC;

--8. Agrupar Dados
SELECT idade, COUNT(*) AS total 
FROM usuarios 
GROUP BY idade;

--9. Joins
--Para combinar dados de duas ou mais tabelas, você pode usar joins.

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    produto VARCHAR(100),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Consultar usuários e seus pedidos
SELECT u.nome, p.produto 
FROM usuarios u 
JOIN pedidos p ON u.id = p.usuario_id;