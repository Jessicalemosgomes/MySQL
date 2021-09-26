create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(100),
ativo bool not null,
primary key(id));

create table tb_produtos(
id bigint auto_increment,
nome varchar (50),
preco decimal (4,2),
quantidade int,
validade int,
tipo varchar(50),
primary key (id),
foreign key (categoria_id) references tb_categoria(id));

insert into tb_categoria (tipo, ativo) values
("citricas","true"),
("desidratadas", "false"),
("vermelhas", "true"),
("Da estação", "true");

select * from tb_categoria;

insert into tb_produtos (nome, preco, quantidade, validade, tipo) values
("Morangos", 5.5, 10, 2021111, "vermelhas" ),
("Manga", 6.0, 02, 20210806, "Da estação"),
("Laranja", 3.5, 08, 20210411, "citrica"),
("Ameixa", 8.0, 05, 20210911, "desidatrada"),
("Uva", 9.0, 09, 202104, "deisidratada"),
("Framboesa", 12.0, 04, 20210912, "vermelha"),
("Pitaya", 50.0, 03, 20210305, "Da estação"),
("Abacaxi", 8.0, 03, 20210909, "citrica");

select * from tb_produtos;

select * from tb_produtos where preco > 10;

select * from tb_produtos where preco between 03 and 10;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria
on tb_produtos.id = tb_produtos.tb_categoria_id;

select * from tb_produtos inner join tb_categoria
on tb_produtos.id = tb_produtos.tb_categoria_id
where tb_produtos.id = 1;

 


