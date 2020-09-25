#Criando o banco de dados
create database ProdutosRick

default character set utf8
default collate utf8_general_ci;

#Inicializando o banco de dados.
use ProdutosRick;

#Criando a tabela com os respectivos.
create table produtos( 
	
    `ID` int auto_increment,
    `Nome` varchar (255) not null,  # not null obriga você colocar o que se pede naquele campo.
    `Setor` varchar(255),
    `Valor` double,
    `Codigo` int(255),
    `Marca` varchar (255),
	 PRIMARY KEY (ID)
    
)DEFAULT CHARSET = utf8;    

	#Inserindo informações no banco de dados.
    INSERT INTO produtos(ID,nome,setor,valor,codigo,marca)
    values
        (DEFAULT ,'Televisao', 'Eletronico','3000','5151616161616','Samsung'),
        (DEFAULT ,'Video Game','Eletronico','2500','164498494449','MicroSoftware'),
		(DEFAULT ,'Hack','Mantimentos','350','1516561616616','MDF'),
		(DEFAULT ,'Mesa','Casa','250','164498495546','Linda Cozinha'),
		(DEFAULT ,'Cama','Dormitorio','1000','165154944656','Durma Bem'),
		(DEFAULT ,'Som','Eletronico','2000','165195494949','Philco'),
        (DEFAULT ,'Bicicleta','lazer','300','1644984449','Sandow'),
        (DEFAULT ,'Carrinho Eletrico','Infantil','500','16449494666','Faça Feliz');
        
        
        select * from produtos;
        #drop database ProdutosRick;
			
	#Selecionando produtos maiores que o valor determinado "500,00"
    select * from produtos valor where valor>500;
    
    #Selecionando produtos menores que o valor determinado "500,00"
    select * from produtos valor where valor<500;
        
	#Atualização de dados no banco de dados.
       #UPDATE = ATUALIZE
       #SET = CONFIGURE 
       #WHERE = ONDE
       
    #Alterando informações do banco de dados.
    UPDATE produtos SET Nome = 'Televisão LCD' where nome = 'Televisao';
	
    select * from produtos;
