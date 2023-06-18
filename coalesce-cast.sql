--Exemplo para utilizar o COALESCE
-- Cria��o da tabela
CREATE TABLE Exemplo (
   ID INT,
   Nome VARCHAR(50),
   Sobrenome VARCHAR(50),
   Idade INT
);

-- Inser��o de dados na tabela
INSERT INTO Exemplo (ID, Nome, Sobrenome, Idade)
VALUES (1, 'Jo�o', NULL, 25),
       (2, 'Maria', 'Silva', NULL),
       (3, 'Pedro', 'Ferreira', 30);

-- Consulta usando COALESCE
SELECT ID, Nome, Sobrenome, Idade,
       COALESCE(Sobrenome, 'N/A') AS SobrenomeAtualizado,
       COALESCE(Idade, 0) AS IdadeAtualizada
FROM Exemplo;


--Exemplo utilizando CAST

SELECT CAST('123' AS INT) AS ConvertedValue;
