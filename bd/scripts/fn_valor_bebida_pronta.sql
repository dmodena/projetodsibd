--Função para calcular o valor total das bebidas prontas
CREATE OR REPLACE FUNCTION VALOR_BEBIDA_PRONTA(
  I_COD_BEBIDAP BEBIDAS_PRONTAS.CODIGO%TYPE
)
RETURN NUMBER IS
  VALOR_TOTAL NUMBER := 0;
  VALOR NUMBER;
  PCT NUMBER;
BEGIN
  SELECT I.VALOR, BP.PCT_LUCRO INTO VALOR, PCT
    FROM BEBIDAS_PRONTAS BP
    INNER JOIN ITENS I
      ON BP.COD_ITEM = I.CODIGO
    WHERE BP.CODIGO = I_COD_BEBIDAP;

    VALOR_TOTAL := VALOR + ((VALOR * PCT)/100);

  RETURN VALOR_TOTAL;
END;
/
