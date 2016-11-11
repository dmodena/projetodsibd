CREATE OR REPLACE FUNCTION VALOR_BEBIDA(
  I_COD_BEBIDA BEBIDAS.CODIGO%TYPE
)
RETURN NUMBER IS
  VALOR_TOTAL NUMBER := 0;
  VALOR_ITEM NUMBER;

  CURSOR P_CUR IS
    SELECT BI.QUANTIDADE, I.VALOR, B.PCT_LUCRO
    FROM BEBIDAS B
    INNER JOIN BEBIDA_ITENS BI
      ON B.CODIGO = BI.COD_BEBIDA
    INNER JOIN ITENS I
      ON BI.COD_ITEM = I.CODIGO
    WHERE B.CODIGO = I_COD_BEBIDA;
BEGIN

  FOR R_CUR IN P_CUR LOOP
    VALOR_ITEM := (R_CUR.QUANTIDADE * R_CUR.VALOR) + ((R_CUR.QUANTIDADE * R_CUR.VALOR * R_CUR.PCT_LUCRO)/100);
    VALOR_TOTAL := VALOR_TOTAL + VALOR_ITEM;
  END LOOP;

  RETURN VALOR_TOTAL;
END;
/
