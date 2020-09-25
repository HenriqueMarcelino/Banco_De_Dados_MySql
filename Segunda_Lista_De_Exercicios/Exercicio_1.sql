# Criando o banco de dados
Create database db_generation_game_online;

# Iniciando o banco de dados.
use db_generation_game_online;

# Criando a primeira tabela
create table tb_classe(

	`Id_Classe` int primary key auto_increment,
	`Plano Ataque` varchar (255),
    `Armas` enum ('Fuzil','Metralhadora','Clock','Pistola'),
	`Tipo_classe` enum ('Soldado Fuzileiro','Soldado de Guerra','Combate','Pistoleiro')
	 
);

create table tb_personagem(

    `Id_classe` int auto_increment,
    `Nome` varchar (255),
    `Habilidades` varchar (255),
    `Sexo` enum ('M','F'),
    `Poder Ataque` int (255),
    `Poder Defesa` int (255),
    

Constraint fk_tb_classe foreign key (`Id_classe`) references tb_classe (`Id_classe`));
   
   #Inserindo os respectivos da tabela classes.
   insert into tb_classe (`Plano Ataque`,`Armas`,`Tipo_classe`)
    values
    ('A','Fuzil','Soldado Fuzileiro'),
    ('B','Metralhadora','Soldado de Guerra'),
    ('C','Clock','Combate'),
    ('D','Pistola','Pistoleiro');
    
	#Mostrando a tabela classe.
    select * from tb_classe;

	#Inserindo os respectivos da tabela personagens.
    insert into tb_personagem (`Nome`,`Habilidades`,`Sexo`,`Poder Ataque`,`Poder Defesa`)
    values
		('Henrique','Atirador eliti','M','4000','3900'),
		('Gabriela','Metralhar ','F','3500','3400'),
        ('Carlos','Atirador','M','3000','3200'),
        ('Maylis','Atirador ','F','3200','3000'),
        ('Marcelino','Metralhar','M','4200','4500'),
        ('Lucirene','Fuzileira ','F','5000','4400'),
        ('Sheila','Fuzileira','F','4800','2000'),
		('Fernando','Atirador','M','1000','1500'),
        ('Irineu','Atirador ','M','2000','1200');
        
        select * from tb_personagem WHERE `Poder ataque` > 2000;

		select * from tb_personagem WHERE `Poder Defesa` > 1000 AND `Poder Defesa` < 2000;

		select * from tb_personagem WHERE nome like 'M%';
    
    DROP DATABASE db_generation_game_online;