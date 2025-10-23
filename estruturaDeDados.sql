CREATE TABLE Cardapio (
    id_cardapio INT PRIMARY KEY,
    nome_produto VARCHAR(100) UNIQUE NOT NULL,
    descricao VARCHAR(255),
    preco_unitario DECIMAL(10,2) NOT NULL
);

CREATE TABLE Comanda (
    id_comanda INT PRIMARY KEY,
    data DATE NOT NULL,
    numero_mesa INT NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE ItemComanda (
    id_comanda INT NOT NULL,
    id_cardapio INT NOT NULL,
    quantidade INT NOT NULL,
    id_item_comanda INT PRIMARY KEY NOT NULL,
    FOREIGN KEY (id_comanda) REFERENCES Comanda(id_comanda),
    FOREIGN KEY (id_cardapio) REFERENCES Cardapio(id_cardapio)
);


-- INSERINDO DADOS NAS TABELAS

INSERT INTO Cardapio (id_cardapio, nome_produto, descricao, preco_unitario) VALUES
(1, 'Café Expresso', 'Café puro e forte', 5.00),
(2, 'Cappuccino', 'Café com leite, espuma e canela', 7.50),
(3, 'Café Latte', 'Café com leite vaporizado', 6.00),
(4, 'Mocha', 'Café com chocolate e chantilly', 8.00),
(5, 'Macchiato', 'Café expresso com espuma de leite', 6.50);


INSERT INTO Comanda (id_comanda, data, numero_mesa, nome_cliente) VALUES
(101, '2025-10-20', 1, 'João Pereira'),
(102, '2025-10-20', 2, 'Maria Silva'),
(103, '2025-10-21', 3, 'Carlos Souza'),
(104, '2025-10-21', 4, 'Ana Lima'),
(105, '2025-10-22', 5, 'Roberto Alves');


INSERT INTO ItemComanda (id_item_comanda, id_comanda, id_cardapio, quantidade) VALUES
(1, 101, 1, 2),
(2, 101, 2, 1),
(3, 102, 3, 1),
(4, 103, 1, 1),
(5, 103, 3, 2),
(6, 103, 4, 1),
(7, 104, 2, 2),
(8, 104, 5, 1),
(9, 105, 4, 3); 