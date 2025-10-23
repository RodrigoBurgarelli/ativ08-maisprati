SELECT 
    c.data,
    SUM(i.quantidade * ca.preco_unitario) AS faturamento_total
FROM Comanda c
JOIN ItemComanda i ON c.id_comanda = i.id_comanda
JOIN Cardapio ca ON i.id_cardapio = ca.id_cardapio
GROUP BY c.data
ORDER BY c.data;
