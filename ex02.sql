SELECT 
    c.id_comanda,
    c.data,
    c.mesa,
    c.nome_cliente,
    i.id_comanda,
    ca.nome_produto,
    ca.descricao,
    i.quantidade,
    ca.preco_unitario,
    (i.quantidade * ca.preco_unitario) AS preco_total
FROM Comanda c
JOIN ItemComanda i ON c.id_comanda = i.id_comanda
JOIN Cardapio ca ON i.id_cardapio = ca.id_cardapio
ORDER BY c.data, c.id_comanda, ca.nome_produto;
