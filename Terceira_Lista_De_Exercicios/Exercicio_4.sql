CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
	
    Id_Categoria int auto_increment not null,
    Marca varchar(255),
    Tipo_de_carne ENUM ('Aves','Bovina','Suina'),
    Primary key (Id_Categoria)
);

INSERT INTO tb_Categoria
    VALUES 
    
    ('1','Do frango','Aves'),
    ('2','Belo boi','Bovina'),
    ('3','Do porco','Suina');
    
    select * from tb_Categoria;
    
CREATE TABLE tb_produto (   
	
    Nome_Produto varchar(255),
    Valor_kilo decimal (10,2),
    Data_Producao varchar (255),
    Validade_Produto varchar(255),
    Codigo_Produto varchar(255),
    Id_Categoria int,
    
Constraint fk_tb_Categoria foreign key (Id_Categoria) references tb_categoria (Id_Categoria));

	INSERT INTO tb_produto Values

    ('AZA DE FRANGO','10.80','28/09/2020','30/09/2020','16449496656498','1'),
    ('BIFE','11.80','25/09/2020','28/09/2020','164979516531494','2'),
    ('COXA DE FRANGO','20.50','27/09/2020','38/09/2020','4649898151651','1'),
    ('CONTRA FILÉ','55.90','28/09/2020','30/09/2020','1654989874151564','2'),
    ('CARNE MOIDA','5.99','28/09/2020','30/09/2020','16519849813135','2'),
    ('PICADINHO','10.99','25/09/2020','28/09/2020','549798523123684','2'),
    ('PICANHA','60.99','25/09/2020','30/09/2020','16498451614843','2'),
    ('LINGUIÇA','18.59','28/09/2020','29/09/2020','164987951688983','3');
    
    
    SELECT * FROM tb_produto;
	
    SELECT * FROM tb_produto WHERE Valor_kilo > 50.00;
    
    SELECT * FROM tb_produto WHERE Valor_kilo BETWEEN 3.00 AND 60.00;
    
    SELECT * FROM tb_produto WHERE Nome_Produto LIKE '%C%';
    
    SELECT * FROM tb_produto INNER JOIN tb_categoria on tb_produto.Id_categoria = tb_categoria.Id_Categoria; 
    
    SELECT * FROM tb_categoria WHERE Tipo_de_carne = 'Bovina';
    
    
	
    #drop database tb_produto;
    #drop database db_cidade_das_carnes;
    
    
    
