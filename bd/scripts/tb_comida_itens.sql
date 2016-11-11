-- Tabela de Comida_Itens
CREATE TABLE COMIDA_ITENS(
  COD_COMIDA NUMBER(9) NOT NULL
    REFERENCES COMIDAS(CODIGO),
  COD_ITEM NUMBER(9) NOT NULL
    REFERENCES ITENS(CODIGO),
  QUANTIDADE NUMBER(9) NOT NULL,
  CONSTRAINT PK_COMIDA_ITENS
    PRIMARY KEY(COD_COMIDA, COD_ITEM)
);
