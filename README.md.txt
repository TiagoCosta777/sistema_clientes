# 🗃️ Sistema de Gerenciamento de Clientes MySQL

![MySQL](https://img.shields.io/badge/MySQL-8.0+-00758F?logo=mysql&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?logo=github)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen)

## 📖 Sobre o Projeto

Sistema completo de banco de dados MySQL para gestão de clientes, pedidos, produtos e endereços com relacionamentos bem estruturados. Desenvolvido como projeto inicial para portfólio no GitHub.

## 🏗️ Estrutura do Banco de Dados

### Esquema Relacional
O sistema possui 5 tabelas inter-relacionadas:

- **`clientes`** - Cadastro principal de clientes
- **`enderecos`** - Endereços dos clientes (relacionamento 1:N)
- **`pedidos`** - Registro de pedidos (relacionamento 1:N com clientes)
- **`produtos`** - Catálogo de produtos disponíveis
- **`itens_pedido`** - Itens dos pedidos (relacionamento N:N entre pedidos e produtos)

### Script `schema.sql`
Contém a estrutura completa do banco de dados:
- Criação de todas as tabelas
- Definição de chaves primárias e estrangeiras
- Constraints de integridade referencial
- Tipos de dados apropriados para cada campo
- Relacionamentos com `ON DELETE CASCADE`

### Dados de Exemplo `inserts.sql`
Inclui dados demonstrativos para teste:
- 4 clientes com perfis diferentes (gamer, startup, memes, fitness)
- Endereços correspondentes para cada cliente
- 5 produtos variados com preços e estoque
- 4 pedidos com status diferentes
- Itens de pedido conectando produtos aos pedidos

### Consultas SQL `queries.sql`
10 consultas úteis para análise de dados:
1. Listagem básica de clientes e e-mails
2. Produtos com estoque acima de 50 unidades
3. Pedidos com valores totais
4. Clientes e suas cidades
5. Pedidos com nomes dos clientes
6. Produtos comprados em cada pedido
7. Cliente com pedido mais valioso
8. Total gasto por cliente
9. Produtos nunca vendidos
10. Número de pedidos por status

## 🚀 Como Executar

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/TiagoCosta777/sistema_clientes.git