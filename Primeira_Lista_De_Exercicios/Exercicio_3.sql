#Criando a tabela
Create database controleAlunos

default character set utf8 		 	# Definição de caracteres.
default collate utf8_general_ci;

#Iniciando o banco de dados.
use controleAlunos;

#DROP DATABASE controleAlunos;

#Criando a tabela
Create table alunos(

	`id` int auto_increment,
    `Nome` varchar(255) not null,
    `Sexo` char(1),
    `Turma` int(255),
    `Acesso`int(255),
    `Nota1` float,
    `Nota2` float,
    `Nota3` float,
    
    PRIMARY KEY(id)

)DEFAULT CHARSET = utf8; 

	#Mostrando tabela com as colunas antes dos dados inseridos.
    select * from alunos;

			#Incluindo dados na tabela
    Insert into alunos(id,Nome,Sexo,Turma,Acesso,Nota1,Nota2,Nota3)
    Values
	(Default,'Henrique','M','8','100','10','8','10'),	
    (Default,'Gabriela','f','7','120','8','6','10'),	
    (Default,'Carlos','M','8','130','5','7','5'),	
    (Default,'Maylis','f','5','140','5','6','8'),	
    (Default,'Astolfo','M','8','150','2','4','5');
    
    #Mostrando tabela completa
    select * from alunos;
    
    #Buscando alunos com notas maiores que 7
    select * from alunos where nota3>7;
    
    #Buscando alunos com notas menores que 7
    select * from alunos where nota3<7;
    
    #Atualizando informação da tabela.
    UPDATE alunos set Nota1 = '10' where Acesso = '140';

	#Mostrando dados atualizados.
    select * from alunos;