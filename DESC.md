# 📊 Sistema de Gerenciamento de Clientes - MySQL  

![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)  
![MySQL](https://img.shields.io/badge/MySQL-Database-blue)  
![License](https://img.shields.io/badge/License-MIT-green)  

## 📋 Sobre o Projeto  
Sistema completo de **banco de dados MySQL** para gerenciamento de clientes, pedidos, produtos e endereços.  
Inclui **relacionamentos 1:N e N:N**, consultas úteis e base para evoluir em projetos maiores.  

---

## 🚀 Como Usar  

1. Executar no MySQL Workbench  
   - Abra `schema.sql` e execute para criar o banco  
   - Execute `inserts.sql` para popular com dados de exemplo  
   - Use `queries.sql` para testar consultas prontas  

2. Estrutura das Tabelas  

| Tabela        | Campos principais |
|---------------|------------------|
| clientes      | id, nome, email, data_cadastro, telefone |
| enderecos     | cliente_id, logradouro, cidade, estado, cep |
| pedidos       | cliente_id, data_pedido, valor_total, status |
| produtos      | id, nome, preco, estoque |
| itens_pedido  | pedido_id, produto_id, quantidade |

---

## 🔎 Consultas Principais  

```sql
-- Clientes com endereços
SELECT c.nome, c.email, e.cidade, e.estado 
FROM clientes c 
JOIN enderecos e ON c.id = e.cliente_id;

-- Pedidos com valor total
SELECT c.nome, p.data_pedido, p.valor_total 
FROM pedidos p 
JOIN clientes c ON p.cliente_id = c.id;
