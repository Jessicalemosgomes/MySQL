create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
elétrica varchar (100),
hidráulica varchar (100),
material_de_construcao varchar (100),
primary key (id));

create table tb_produtos(
id bigint auto_increment,
nome varchar (100),
preco decimal (10,2),
quantidade int,
marca varchar (100),
peso double,
primary key(id),
foreign key (id_categoria) references tb_categoria(id));

insert into tb_categoria (eletrica, hidraulica, material_de_construcao) values
("Disjuntor", "Valvula registro", "Bloco de concreto"),
("Tomada dupla", "Sifão lavatório", "Azulejo"),
("Extensão", "te soldável", "Cimento"), 
("Fita isolante","Curva 90", "Telha de fibrocimento"),
("Chave De Fenda Isolada 1000V","Luva Transferência FF","Vedacit Branco");

select * from tb_categoria;

insert into tb_produtos (nome, preco, quantidade, marca, peso) values
("Chave Torx Isolada VDE T27x", 150.9, 02, "Irwin", 0.1),
("Chave De Fenda Isolada 1000V Ponta Cruzada - Phillips 8X150mm", 25.9, 01, "Tramontina", 0.1),
("Piso Laminado Click Standard Ticino Walnut 19,3cmx137cmx7mm Caixa 2,39m² Café", 39.9, 50, "Holztek", 14.23),
("Bloco Cerâmico Bloquinho 11,5x14x24cm", 1.9, 200, "Nova União", 2.0),
("Aditivo Plastificante Vedalit 1L", 19.9, 02, "Otto Baumgart", 0.8),
("Cimento Cinza Uso Geral", 27.9, 05, "Caue", 50.0);

select * from tb_produtos;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria
where tb_categoria.id = 2;
