#Criando o banco de dados
create database funcoes_novas;

#Iniciando o banco de dados
use funcoes_novas;

#Criando a tabela para inserir as informações
create table produtos (

Nome varchar(30) not null unique, #not null (não pode ser nulo), unique:nao pode repetir
Descricao text,
Pagamento enum ('cartao', 'dinheiro', 'cheque'),
Quantidade int UNSIGNED,
Preco decimal(5,2), #5 numéros ao todo, com dois depois da virugula
data date,
Cidade varchar(30) DEFAULT 'São Paulo'
);

# alter adiciona colunas no começo
# first é adicionar no primeiro da tabela.
alter table produtos add column Codigo_Produto int first;

# Mostrando a coluna adicionada
select * from produtos;

# Adicionando uma coluna
alter table produtos add column marca varchar(30) after preco;

# Mostrando a alteração.
select * from produtos;

#Adicionando uma coluna
alter table produtos drop column pagamento;

#Adicionando uma coluna
alter table produtos add column pagamento enum ('cartao', 'dinheiro') after descricao;

#Adicionando uma coluna
alter table produtos change column pagamento forma_pagamento varchar(30);

# Mostrando a alteração.
select * from produtos;
