-- Tabela de Bebidas_Prontas
CREATE TABLE BEBIDAS_PRONTAS(
  CODIGO NUMBER(9) NOT NULL PRIMARY KEY,
  COD_ITEM NUMBER(9) NOT NULL
    REFERENCES ITENS(CODIGO),
  DESCRICAO VARCHAR2(50) NOT NULL,
  PCT_LUCRO NUMBER(9) NOT NULL
);
