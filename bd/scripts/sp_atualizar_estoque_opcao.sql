-- Atualiza o estoque de cada Item da Opção
CREATE OR REPLACE PROCEDURE ATUALIZAR_ESTOQUE_OPCAO(
  COD_OPCAO OPCOES.CODIGO%TYPE
)
IS
BEGIN
  DBMS_OUTPUT.PUT_LINE('Atualizar estoque de cada item de acordo com código da opção');
END;
/
