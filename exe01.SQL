create database db_RHfunc;
use db_RHfunc;
create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
area varchar(255) not null,
senioridade varchar(255) not null, 
salario decimal(7,2) not null, 
primary key (id)
);

insert into tb_colaboradores(nome, area, senioridade, salario) values("Bruna", "recrutação", "junior", 1600);
insert into tb_colaboradores(nome, area, senioridade, salario) values("Juliana", "integração", "junior", 1600);
insert into tb_colaboradores(nome, area, senioridade, salario) values("Gregório", "folha de pagamento e beneficios","pleno", 2000);
insert into tb_colaboradores(nome, area, senioridade,salario) values("Bárbara", "recrutação e demissão", "senior", 2500);
insert into tb_colaboradores(nome, area, senioridade, salario) values("Julio", "treinamento e desenvolvimento", "pleno", 2010);

select * from tb_colaboradores;
select * from tb_colaboradores where salario >= 2000.00;
select * from tb_colabortb_colaboradoresadores where salario < 2000.00;

set sql_safe_updates=0;
update tb_colaboradores set senioridade= "pleno" where id= 1;
update tb_colaboradores set salario= 2000 where id= 1;
select * from tb_colaboradores;
set sql_safe_updates=1;