# Criei o meu banco de dados como empresa RH
create database empresaRh

# Parametros de constraints. 
default character set utf8 		 	# Definição de caracteres.
default collate utf8_general_ci; 	# Definição de caracteres.

	# Vou usar o banco de dados criado que é a empresaRh.
use empresaRh;

create table dadosfuncionarios(
	
    #not null OBRIGA VOCÊ COLOCAR A INFORMAÇÃO NO CAMPO DA COLUNA.
    
    `Nome` varchar (255) not null,
    `CPF` varchar (255) ,
    `Registro` int (255),
    `Cargo` varchar (255) ,
	`Salario` double ,
	
    #PRIMARY KEY É PARA CRIAR A CHAVE PRIMARIA, UM CAMPO QUE APENAS UMA PESSOA PODE TER 
    primary key(CPF)
) 	DEFAULT CHARSET = utf8;

	#drop database = #comando para deixar o banco de dados.

INSERT INTO dadosfuncionarios(Nome,CPF,Registro,Cargo,Salario)
VALUES ('Henrique','45565899710','458','Analista de TI','5000'),
	   ('Gabriela','46549846654','460','Analista de depatarmento pessoal','2500'),
       ('Carlos','54549849448','420','Gerente Geral','2000'),
       ('Maylis','54654984449','410','Aprendiz financeiro','1500'),
       ('Irineu','44984949848','540','Aprendiz DP','1200');
       
       #Selecionando os funcionários que ganham mais que 2000 reais !
       select * from dadosfuncionarios salario where salario>=2000;
       
       #Selecionando os funcionários que ganham menos que 2000 reais !
       select * from dadosfuncionarios salario where salario<2000;
       
       #Atualização de dados no banco de dados.
       #UPDATE = ATUALIZE
       #SET = CONFIGURE 
       #WHERE = ONDE
       UPDATE dadosfuncionarios SET salario = '1550' WHERE CPF = '54654984449';
       
		#Mostrando a tabela novamente para confirma a mudança dos dados.
        select * from dadosfuncionarios;
        
		
       
       
       
       
       
       
       
       