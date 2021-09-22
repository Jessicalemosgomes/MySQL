create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar (50),
poder varchar (50),
habilidade varchar (50),
primary key (id));

create table tb_personagens(
id bigint auto_increment,
nome varchar (50),
pontos_vida int,
defesa int,
ataque int,
primary key (id),
foreign key (id_classes) references tb_classes(id));

insert into tb_classes(nome, poder, habilidade) values
("carpinteiro", "comer cogumelos", "matar tartarugas"),
("Ouriço", "dar cambalhotas","velocidade"),
("Carpinteiro","ajudar o irmao","colher cogumelos");

select * from tb_classes;

insert into tb_personagens(nome, pontos_vida, defesa, ataque) values
("Mario", 200, 3000, 4000),
("Sonic", 300, 5000, 2000),
("Luigi", 250, 2000, 3000);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.classes_id;

select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.classes_id 
where tb_classes.id = 1;





