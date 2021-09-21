create database db_ecomerce;
use db_ecomerce;

create table tb_produtos (
id bigint auto_increment,

nome varchar (100),
preço decimal (7,2),
lote int,
primary key  (id));

 INSERT INTO tb_produtos(nome, preço, lote) VALUES 
("Notbook", 3000.00, "271021"),
("fone de ouvido", 60.00, "301122"),
("TABLET", 1500.00, "052022"),
("Video game", 1500.00, "5643075"),
("TV" , 3500.00, "0456459");

SELECT * FROM tb_produtos;
SELECT  tb_produtos WHERE salario > 500.00;
SELECT  tb_produtos WHERE salario < 500.00;

UPDATE tb_produto SET preço = 2500.00 WHERE id =1;
SELECT * FROM tb_produtos;



 











