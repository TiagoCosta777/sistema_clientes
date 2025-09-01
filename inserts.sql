use meu_projeto;


INSERT INTO clientes (nome, data_cadastro, email, telefone, ativo) VALUES
('João Gamer', '2025-01-12', 'joao.gamer99@email.com', '11988887777', true),
('Maria Startup', '2025-02-03', 'maria.ceo@email.com', '21997776655', true),
('Carlos Memes', '2025-03-15', 'carlão_memes@email.com', '11911112222', true),
('Ana Fitness', '2025-04-10', 'ana.fit@email.com', '31933334444', true);

INSERT INTO enderecos (cliente_id, logradouro, numero, cidade, estado, cep, principal) VALUES
(1, 'Rua dos Controles', '101', 'São Paulo', 'SP', '01010-000', true),
(2, 'Avenida das Startups', '500', 'Rio de Janeiro', 'RJ', '20000-000', true),
(3, 'Travessa dos Memes', '77', 'Curitiba', 'PR', '80000-000', true),
(4, 'Rua Academia Fit', '321', 'Belo Horizonte', 'MG', '30000-000', true);

INSERT INTO produtos (nome, preco, estoque) VALUES
('Mouse Gamer RGB', 199.90, 50),
('Notebook Ultraleve', 3999.00, 20),
('Kit Whey Protein', 150.00, 100),
('Camisa “É só meme, mano”', 79.90, 200),
('Livro: Como Ficar Rico com Startups', 89.90, 30);

INSERT INTO pedidos (cliente_id, data_pedido, valor_total, status) VALUES
(1, '2025-05-01', 199.90, 'entregue'),
(2, '2025-05-02', 4088.90, 'processando'),
(3, '2025-05-03', 79.90, 'pendente'),
(4, '2025-05-04', 150.00, 'enviado');

INSERT INTO itens_pedido (pedido_id, produto_id, preco_unitario) VALUES
(1, 1, 199.90),   
(2, 2, 3999.00),  
(2, 5, 89.90),   
(3, 4, 79.90),    
(4, 3, 150.00);   

INSERT INTO pagamentos (pedido_id, metodo_pagamento, valor_pago, data_pagamento, status) values
(1, 'pix', 199.90, '2025-05-01 10:30:00', 'aprovado'),
(2, 'cartao_credito', 4088.90, '2025-05-02 14:45:00', 'processando'),
(3, 'boleto', 79.90, '2025-05-03 09:15:00', 'pendente'),
(4, 'cartao_debito', 150.00, '2025-05-04 16:20:00', 'aprovado');
