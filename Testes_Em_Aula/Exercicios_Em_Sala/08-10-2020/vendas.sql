create database vendas;

use vendas;

CREATE TABLE `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `criado_em` varchar(45) NOT NULL,
  `preco` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

select * from produto;
