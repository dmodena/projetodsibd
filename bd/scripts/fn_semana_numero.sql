-- Retorna o n�mero do dia da semana
--  sendo Domingo o primeiro dia (1)
--  e S�bado o �ltimo dia (7)
CREATE OR REPLACE FUNCTION SEMANA_NUMERO(
  DIA_ATUAL DATE
)
RETURN NUMBER IS
BEGIN
  RETURN TO_CHAR(DIA_ATUAL, 'D');
END;
/
