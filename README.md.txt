📊 Sistema de Gerenciamento de Clientes MySQL
📋 Sobre o Projeto

Sistema completo de banco de dados MySQL para gerenciamento de clientes, pedidos, produtos e endereços com relacionamentos 1:N e N:N.
🚀 Como Usar
1. Executar no MySQL Workbench

    Abra o schema.sql e execute para criar o banco

    Execute inserts.sql para popular com dados de exemplo

    Use queries.sql para consultas prontas

2. Estrutura das Tabelas

    clientes: id, nome, email, data_cadastro, telefone

    enderecos: cliente_id, logradouro, cidade, estado, cep

    pedidos: cliente_id, data_pedido, valor_total, status

    produtos: nome, preco, estoque

    itens_pedido: pedido_id, produto_id, quantidade

3. Consultas Principais
sql

-- Clientes com endereços
SELECT c.nome, c.email, e.cidade, e.estado 
FROM clientes c JOIN enderecos e ON c.id = e.cliente_id;

-- Pedidos com valor total
SELECT c.nome, p.data_pedido, p.valor_total 
FROM pedidos p JOIN clientes c ON p.cliente_id = c.id;

📦 Arquivos do Projeto
text

/database
  │── schema.sql    # Criação das tabelas
  │── inserts.sql   # Dados de exemplo
  └── queries.sql   # Consultas úteis
README.md          # Documentação
.gitignore         # Arquivos ignorados

🔄 Próximas Etapas

    Adicionar interface web

    Criar API REST

    Implementar relatórios

    Adicionar autenticação

👨‍💻 Autor

Desenvolvido por [Tiago Costa] - Perfil GitHub: [TiagoCosta777]