-- Cria��o de todas as views

-- View para itens e quantidade em estoque
CREATE OR REPLACE VIEW ITENS_ESTOQUE AS
  SELECT I.DESCRICAO, E.QUANTIDADE
  FROM ITENS I
  JOIN ESTOQUE E
    ON I.COD_ESTOQUE = E.CODIGO
JOIN BEBIDAS_PRONTAS BP
    ON BP.COD_ESTOQUE = E.CODIGO;

SELECT * FROM ITENS_ESTOQUE;

-- View para bebidas prontas e quantidade em estoque
CREATE OR REPLACE VIEW BEBIDAS_PRONTAS_ESTOQUE AS
  SELECT O.DESCRICAO, E.QUANTIDADE
  FROM BEBIDAS_PRONTAS BP
  JOIN ESTOQUE E
    ON BP.COD_ESTOQUE = E.CODIGO
  JOIN OPCOES O
    ON BP.CODIGO = O.CODIGO;

SELECT * FROM BEBIDAS_PRONTAS_ESTOQUE;
