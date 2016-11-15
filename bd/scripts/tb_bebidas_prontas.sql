-- Tabela de Bebidas_Prontas
CREATE TABLE BEBIDAS_PRONTAS(
  CODIGO NUMBER(9) NOT NULL PRIMARY KEY,
  DESCRICAO VARCHAR2(50) NOT NULL UNIQUE,
  VALOR NUMBER(8,2) NOT NULL,
  PCT_LUCRO NUMBER(9) NOT NULL,
  COD_ESTOQUE NUMBER(9) NOT NULL
    REFERENCES ESTOQUE(CODIGO)
);
