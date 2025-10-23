SELECT 
    c.id_comanda,
    c.data,
    c.mesa,
    c.nome_cliente,
    SUM(i.quantidade * ca.preco_unitario) AS valor_total
FROM Comanda c
JOIN ItemComanda i ON c.id_comanda = i.id_comanda
JOIN Cardapio ca ON i.id_cardapio = ca.id_cardapio
GROUP BY c.cod_comanda, c.data, c.mesa, c.nome_cliente
HAVING COUNT(i.id_cardapio) > 1
ORDER BY c.data;
