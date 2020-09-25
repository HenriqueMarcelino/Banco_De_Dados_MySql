# Criando o banco de dados
create database aula_select;

# Iniciando o banco de dados
use aula_select;

# Criando uma tabela
create table clientes (
codigo_cliente int not null primary key,
nome varchar (50),
cidade varchar (10),
serie char (1)
);

# Criando outra tabela
CREATE table funcionarios (
		id int not null auto_increment,
		nome varchar(30) NOT NULL,
		nascimento date,
		sexo enum ('M','F'),
		peso decimal(5,2),
		altura decimal(3,2),
		nacionalidade varchar(20) DEFAULT 'Brasil',
		primary key (id));

# Inserindo as informações
Insert into funcionarios values ('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');

# Inserindo mais informações
Insert into funcionarios values 
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');

# Selecionando dois dados da planilha
select id, nome from funcionarios;

# Selecionando duas colunas onde tem um certo valor da planilha.
select id, nome from funcionarios where id = 3;

# Selecionando duas colunas onde tem um certo valor da planilha.
select id, nome from funcionarios where nome = 'Gabriela';

# COUNT Ele faz a contagem dos dados que existem na coluna.
select COUNT(*) from funcionarios; 

# Selecionando todos os dados que COMECAM com a letra TAL;
select * from funcionarios where nome like 'G%';

# Selecionando todos os dados que TERMINAM com a letra TAL;
select * from funcionarios where nome like '%A';

# Selecione na no funcionários quando for mulher e quando a nacionalidade for Brasileira.
select * from funcionarios where sexo = 'f' AND nacionalidade = 'Brasil';

# Quando tiver as seguites caracteres no nome
select * from funcionarios where nome like '%abriel';

# Quando tiver a leta tal mostrar, para cada letra antes da que desejar tem que usar um _ 
select * from funcionarios where nome like '_l%';
