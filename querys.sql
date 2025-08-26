use meu_projeto;

-- 1) Liste todos os clientes e seus e-mails.
select 
email
from clientes
;

-- 2) Liste os produtos que têm estoque maior que 50
select
nome,
estoque
from produtos
where estoque > 50
;

-- 3) Mostre os pedidos e seus valores totais.
select
id as num_pedido,
valor_total,
status
from pedidos
;

-- 4) Liste os clientes e as cidades em que moram.
select 
cl.nome,
en.cidade
from clientes cl
inner join enderecos en on cl.id = en.cliente_id
;

-- 5) Liste todos os pedidos com o nome do cliente.
select
pe.id,
cl.nome,
pe.valor_total,
pe.status
from clientes cl
inner join pedidos pe on cl.id = pe.cliente_id
;

-- 6) Liste quais produtos foram comprados em cada pedido.
select
pe.id as cod_produto,
cl.nome as cliente,
pr.nome as produto,
pr.preco as valor_unitario
from itens_pedido ip 
inner join pedidos pe on ip.pedido_id = pe.id
inner join clientes cl on pe.cliente_id = cl.id
inner join produtos pr on ip.produto_id = pr.id
;

-- 7) Qual cliente fez o pedido mais caro?
select
cl.nome as nome,
pe.valor_total as Vl_total
from clientes cl
inner join pedidos pe on cl.id =pe.cliente_id
order by Vl_total desc
limit 1
;

-- 8) Mostre o total gasto por cada cliente (somando pedidos).
select
cl.nome as NOME,
sum(pe.valor_total) as TOTAL
from clientes cl
inner join pedidos pe on cl.id = pe.cliente_id
group by NOME
;

-- 9) Quais produtos nunca foram comprados?
select 
pr.nome as PRODUTO
from produtos pr
inner join itens_pedido ip on pr.id = ip.produto_id
where ip.produto_id is null
;

-- 10) Mostre o número de pedidos por status
select 
status,
count(*) as TOTAL
from pedidos
group by status
;