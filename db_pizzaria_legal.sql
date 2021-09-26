create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment not null,
tamanho varchar(100) not null,
doce boolean not null,
delivery boolean not null,
primary key  (id));

create table tb_pizza(
id bigint auto_increment not null,
sabor varchar(50) not null,
vegana boolean not null,
meio_a_meio varchar(50) not null,
borda_recheada varchar(50) not null,
preco decimal (4,2) not null,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria (tamanho, doce, delivery) values
("broto", true, true)
("tamanho familia", false, false)
("medio", false, true)
("tamanho familia", false, false)
("broto", true, false);

select * from tb_categoria;

insert into tb_pizza (sabor, vegana, meio_a_meio, borda_recheada, preco) values
("marguerita", true, "não","borda de queijo vegano", 29.00),
("calabresa", false, "meio calabresa, meio muçarela", "borda de catupiry", 50.00),
("brocolis", true, "nao", "borda de creme de batata", 65.0),
("portuguesa", false, "meio portuguesa, meio escarola", "borda de muçarela" ,70.00),
("A moda do chefe", false, "nao", "borda de cheddar", 75.0);

select * from tb_pizza;


select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "%c%";

select * from tb_pizza inner join  tb_categoria
on tb_categoria.id = tb_pizza.id_categoria;

select * from tb_pizza inner join  tb_categoria
on tb_categoria.id = tb_pizza.id_categoria;
where tb_categoria.id = 2;







