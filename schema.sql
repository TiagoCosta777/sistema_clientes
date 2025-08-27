USE meu_projeto;

CREATE TABLE clientes (
id int primary key auto_increment,
nome varchar(100) not null,
data_cadastro date not null,
email varchar(150) unique,
telefone varchar(20),
ativo boolean default true
);

create table enderecos (
id int primary key auto_increment,
cliente_id int not null,
logradouro varchar(200) not null,
numero varchar(10) not null,
cidade varchar(100) not null,
estado char(2) not null,
cep varchar(9) not null,
principal boolean default false,
foreign key (cliente_id) references clientes(id) on delete cascade
);

create table pedidos (
id int primary key auto_increment,
cliente_id int not null,
data_pedido date not null,
valor_total dec(10, 2) not null,
status ENUM('pendente', 'processando', 'enviado', 'entregue') default 'pendente',
foreign key (cliente_id) references clientes(id) on delete cascade
);

create table produtos (
id int primary key auto_increment,
nome varchar(100) not null,
preco dec(10, 2) not null,
estoque int default 0
);

create table itens_pedido (
pedido_id int not null,
produto_id int not null,
preco_unitario dec(10, 2) not null,
primary key (pedido_id, produto_id),
foreign key (pedido_id) references pedidos(id) on delete cascade,
foreign key (produto_id) references produtos(id) on delete cascade
);


create index idx_clientes_email on clientes(email);

create index idx_pedidos_data on pedidos(data_pedido);

create index idx_pedidos_cliente on pedidos(cliente_id);

create index idx_produtos_estoque on produtos(estoque);

create index idx_itens_pedido_pedido on itens_pedido(pedido_id);

create index idx_itens_pedido_produto on itens_pedido(produto_id);
