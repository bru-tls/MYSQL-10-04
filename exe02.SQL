create database bd_escola;
use bd_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null, 
ano int not null,
materia varchar(255) not null, 
nota decimal(3,1) not null,
primary key (id)
);

insert into tb_alunos(nome,ano,materia,nota) values("Maria Isabel", 2, "Artes", 6.5); 
insert into tb_alunos(nome,ano,materia,nota) values("Bárbara", 3, "Matematica", 8.2);
insert into tb_alunos(nome,ano,materia,nota) values("Carla", 5, "Lingua Portuguesa", 7.5); 
insert into tb_alunos(nome,ano,materia,nota) values("Luis", 3, "Geografia", 9.7); 
insert into tb_alunos(nome,ano,materia,nota) values("Miguel", 3, "Artes", 10); 
insert into tb_alunos(nome,ano,materia,nota) values("Caio", 3, "Matematica", 5.1); 
insert into tb_alunos(nome,ano,materia,nota) values("Juliana", 1, "Lingua Portuguesa", 9.5); 
insert into tb_alunos(nome,ano,materia,nota) values("Matheus", 7, "Matematica", 1); 


select * from tb_alunos;

select * from tb_alunos where nota >= 7.0;
select * from tb_alunos where nota < 7.0;

update tb_alunos set ano = 4 where id= 4;