--Função para gerenciar o estoque
CREATE OR REPLACE PROCEDURE CONTROLE_ESTOQUE(
  COD_ITEM ITENS.CODIGO%TYPE,
  QTD NUMBER
)IS
  QTD_ESTOQUE NUMBER;
  QUANTIDADE_INDISPONIVEL EXCEPTION;
BEGIN
  SELECT QUANTIDADE INTO QTD_ESTOQUE
  FROM ESTOQUE E
  JOIN ITENS I
    ON E.CODIGO = I.COD_ESTOQUE
  WHERE I.CODIGO = COD_ITEM;
  
  IF (QTD > QTD_ESTOQUE) THEN
    RAISE QUANTIDADE_INDISPONIVEL;
  ELSE 
    UPDATE ESTOQUE
    SET QUANTIDADE = QUANTIDADE - QTD
    WHERE CODIGO = COD_ITEM;
    
    IF (0 > QTD_ESTOQUE) AND (QTD_ESTOQUE <= 5) THEN
      DBMS_OUTPUT.PUT_LINE('O item usado está com últimas unidades no estoque.
        Favor fazer reposição.');      
      
    ELSIF (QTD_ESTOQUE = 0) THEN
      DBMS_OUTPUT.PUT_LINE('Últimas unidades do item escolhido foram usadas. 
        Favor fazer reposição.');
    END IF;
  END IF;
  
  COMMIT;

EXCEPTION
  WHEN QUANTIDADE_INDISPONIVEL THEN
    DBMS_OUTPUT.PUT_LINE('Não tem a quantidade desejada no estoque.');
END;
/

set serveroutput on;

begin 
  controle_estoque(1, 2);
end;
/