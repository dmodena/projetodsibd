-- Verifica se o restaurante está em funcionamento
-- Recebe DATE Dia e horário para verificar funcionamento
-- Retorna CHAR 1 - Aberto ou 0 - Fechado
CREATE OR REPLACE FUNCTION RESTAURANTE_ABERTO(
  HORA_CONSULTA DATE
)
RETURN NUMBER IS
  V_DIA_ABERTO NUMBER(1);
  V_HORA_ABERTURA VARCHAR2(5);
  V_HORA_FECHAMENTO VARCHAR2(5);
  V_ABERTO NUMBER(1) := 0;
BEGIN
  SELECT EM_FUNCIONAMENTO, HORA_ABERTURA, HORA_FECHAMENTO
  INTO V_DIA_ABERTO, V_HORA_ABERTURA, V_HORA_FECHAMENTO
  FROM HORARIO_FUNCIONAMENTO
  WHERE DIA_SEMANA = SEMANA_NUMERO(HORA_CONSULTA);

  IF(V_DIA_ABERTO = '1') THEN
    IF(TO_CHAR(HORA_CONSULTA, 'HH24:MI') BETWEEN V_HORA_ABERTURA AND V_HORA_FECHAMENTO)  THEN
      V_ABERTO := 1;
    END IF;
  END IF;
  RETURN V_ABERTO;
END;
/
