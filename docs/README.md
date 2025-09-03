# 🗃️ Sistema de Gerenciamento de Clientes MySQL

![MySQL](https://img.shields.io/badge/MySQL-8.0+-00758F?logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/status-ativo-brightgreen)

## 📋 Sobre o Projeto
Projeto de estudo em **MySQL** com foco em **modelagem de banco de dados relacional**, **consultas SQL** e **boas práticas de estruturação**.  

Aqui você encontra um banco completo para gerenciamento de clientes, pedidos, produtos e endereços, incluindo relacionamentos **1:N** e **N:N**.  

O objetivo é servir como **portfólio** e também como **base prática** para quem está aprendendo SQL.

---

## 🚀 Como Usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/TiagoCosta777/sistema_clientes.git

    Entre na pasta do projeto:

cd sistema_clientes

Crie o banco no MySQL:

mysql -u root -p < schema.sql
mysql -u root -p < inserts.sql

Execute consultas de exemplo:

    mysql -u root -p < queries.sql

---

## 🏗️ Estrutura do Projeto

    schema.sql → Criação do banco e tabelas com constraints.

    inserts.sql → Dados de exemplo para popular as tabelas.

    queries.sql → 10 consultas SQL úteis para análise.

    README.md → Documentação do projeto.

---

## 🔎 Exemplos de Consultas

    Listar clientes por e-mail.

    Mostrar produtos com estoque acima de um valor.

    Calcular o total gasto por cliente.

    Retornar os pedidos com mais de 1 item.

(Confira todas no arquivo queries.sql)

---

## 📌 Próximos Passos

Criar script para gerar relatórios automáticos (ex: top clientes).

Adicionar integração com Python para consultas automatizadas.

    Implementar container Docker para rodar facilmente em qualquer máquina.

---
