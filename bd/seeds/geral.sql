-- Inserindo gerentes
INSERT INTO GERENTES VALUES(1, 'Fernanda Souza');

-- Inserindo atendentes
INSERT INTO ATENDENTES VALUES(1, 'João Bezerra', 1);

-- Inserindo itens
INSERT INTO ITENS VALUES(1, 'Batata', 2.5, 10);
INSERT INTO ITENS VALUES(2, 'Filé de frango', 8.0, 15);
INSERT INTO ITENS VALUES(3, 'Chopp', 5.0, 10);
INSERT INTO ITENS VALUES(4, 'Macarrão', 3.0, 10);
INSERT INTO ITENS VALUES(5, 'Molho tomate', 2.8, 10);
INSERT INTO ITENS VALUES(6, 'Laranja', 1.0, 20);
INSERT INTO ITENS VALUES(7, 'Açúcar', 2.5, 3);
INSERT INTO ITENS VALUES(8, 'VINHO SECO', 17, 5);

-- Inserindo comidas
INSERT INTO COMIDAS VALUES(1, 'Porção de batata frita', 0);
INSERT INTO COMIDAS VALUES(2, 'Porção de frango frito', 0);
INSERT INTO COMIDAS VALUES(3, 'Macarrão na chapa', 0);

-- Inserindo comida_itens
INSERT INTO COMIDA_ITENS VALUES(1, 1, 2);
INSERT INTO COMIDA_ITENS VALUES(2, 2, 2);
INSERT INTO COMIDA_ITENS VALUES(3, 4, 1);

-- Inserindo bebidas_prontas
INSERT INTO BEBIDAS_PRONTAS VALUES(1, 3, 'Chopp', 0);
INSERT INTO BEBIDAS_PRONTAS VALUES(2, 8, 'Vinho Seco', 12);

-- Inserindo bebidas_itens
INSERT INTO BEBIDA_ITENS VALUES(1, 6, 4);
INSERT INTO BEBIDA_ITENS VALUES(1, 7, 1);

-- Inserindo bebidas
INSERT INTO BEBIDAS VALUES(1, 'Suco de laranja', 10);

-- Inserindo consumos
INSERT INTO CONSUMOS VALUES(1, SYSDATE, '21:00', NULL, NULL, 0, NULL);

-- Inserindo pedidos
INSERT INTO PEDIDOS VALUES(1, 'C', 1, 2, 1, 1, 3);
