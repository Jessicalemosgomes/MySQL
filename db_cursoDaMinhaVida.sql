create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table  tb_categoria(
id bigint auto_increment,
area varchar (100) not null,
duracao varchar (100) not null,
formas_pagamento varchar (100) not null,
primary key (id));

create table tb_curso(
id bigint auto_increment,
nome varchar (100) not null,
valor varchar (100) not null,
carga_horaria int not null,
qtdade_diciplinas int not null,
primary key(id),
foreign key(id_categoria) references tb_categoria(id));

insert into tb_categoria (area, duracao, formas_pagamento) values
("Tecnologia", "08 semestres", "Credito, débito e boleto"),
("Exatas", "10 semestres", "Credito, débito"),
("Humanas", "08 semestres", "Débito e boleto"),
("Tecnologia", "05 semestres", "Credito, débito e boleto"),
("Biológica", "8 semestres", "Credito, débito e boleto");

select * from tb_categoria;

insert into tb_curso (nome, valor, carga_horaria, qtdade_disciplina) values
("Sistema da Informação", "600,00 por semestre", 3032, 40),
("Redes de Computadores", "500,00 por semestre", 1732, 23),
("Medicina Veterinária", "1200,00 por semestre", 3152, 45),
("Licenciatura em matemática", "500,00 por semestre", 3075, 42),
("Psicologia", "550,00 por semestre", 2982, 45),
("Ciencia da computação", "650,00 por semestre", 3132, 43),
("Ciencias Sociais", "450,00 por semestre", 2932, 38),
("Big Data e Inteligência Analítica", "550,00 por semestre", 2135, 30);

select * from tb_curso;

select * from tb_cursos where valor > 600;

select * from tb_cursos where valor between 450 and 650;

select * from tb_cursos where nome like "%ci%";

select * from tb_cursos inner join tb_categoria
on tb_categoria.id = tb_curso.id_categoria;

select * from tb_cursos inner join tb_categoria
on tb_categoria.id = tb_curso.id_categoria
where tb_categoria.id = 3;











