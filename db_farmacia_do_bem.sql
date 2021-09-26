create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
classificacao varchar(50),
tarja varchar(50),
fabricante varchar (50),
primary key(id));

create table tb_produto(
id bigint primary key auto_increment,
nome varchar(255),
preco decimal (10,2),
data_validade date,
estoque int,
classificacao_idade varchar(50),
primary key(id),
foreign key (id_categoria) references tb_categoria(id));

insert into tb_categoria (classicacao, tarja, fabricante) values
("Cosmético","livre", "Unilever"),
("Antibiotico", "vermelha", "Medley"),
("Antiflamatório", "amarela", "NeoQuimica"),
("Aconcepcional","vermelha", "Bayer"),
("Ansiolítico", "preta", "EMS");

select * from tb_categoria;

insert into tb_produto(nome, preco, data_validade, estoque, classificacao_idade) values
("Amoxilina", 80.0, 20221008, 30, "Maiores de 02 anos"),
("Dipirona", 8.0, 20220712, 50, "maiores de 5 anos", "livre"),
("Shampoo", 12.0, 20320111, 40, "livre"),
("Paracetamol", 7.0, 20220311, 20, "maiores de 02 ano"),
("Yasmin", 65.5, 20230412, 15, "maiores de 15 anos"),
("Soro fisiológico", 5.0, 20220304,60, "livre"),
("Nasonex", 70.0, 20230111, 8, "Maiores de 10 anos"),
("DorFlex", 14.0, 20240912, 70, "Maiores de 12 anos");

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 5 and 60;

select * from tb_produto where nome like "%o%";

select tb_produto.nome, tb_categoria.classificacao from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria
WHERE tb_categoria.id = 1;







