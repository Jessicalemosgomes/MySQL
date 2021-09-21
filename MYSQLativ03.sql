create database db_escola;
use db_escola;

create table tb_alunos (
id bigint auto_increment,

nome varchar (100),
nota decimal (4,1),
ano int,
idade varchar(10);
primary key  (id));

 INSERT INTO tb_alunos(nome, nota, ano, idade) VALUES 
("João", 9.0, "quinto ano", "10"),
("Maria", 6.0, "nono ano", "14"),
("Helena", 7.5, "segundo ano","8"),
("Pedro", 5.0, "setimo ano", "12"),
("Heloisa" , 9.5, "sexto ano","11");

SELECT * FROM tb_alunos;
SELECT  tb_alunos WHERE nota > 7.0;
SELECT  tb_alunos WHERE nota < 7.0;

UPDATE tb_aluno SET nota = 9.00 WHERE id =3;
SELECT * FROM tb_alunos;



 











