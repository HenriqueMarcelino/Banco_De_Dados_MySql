#Criando a tabela "db_deletar"
create database db_deletar;

#Iniciando o banco de dados
use db_deletar;

create table if not exists consumidores(
	ID int PRIMARY KEY AUTO_INCREMENT,
	NOME varchar(30)
	);

#Inserindo dados no banco de dados
insert into consumidores (nome) values
	("Marcelo"), ("Julia");
    
#Esta selecionando a a base dos consumidores " nomes ".
select * from consumidores;

# O comando delete from esta excluindo um ação especifica, esta apagando o id 1 que no caso seria o "Marcelo"
delete from consumidores where id = 1;

#Esta selecionando a a base dos consumidores apos ter exluido um nome.
select * from consumidores;

# Comando para excluiir só os dados da tabela truncate consumidores;