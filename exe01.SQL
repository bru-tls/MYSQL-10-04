create database db_pizzaria_legal;
use db_pizzaria_legal;


create table tb_categorias(
id bigint auto_increment primary key, 
descricao varchar(255)
);

insert into tb_categorias (descricao) values("Doce");
insert into tb_categorias (descricao) values("Salgada");

create table tb_pizzas(
id bigint auto_increment primary key,
sabor varchar(255) not null,
massa varchar(255) not null,
borda varchar(255),
preco decimal(5,2) not null
);

select * from tb_pizzas;


insert into tb_pizzas (sabor,massa,borda,preco) values ("Romeu e Julieta", "Fina","", 32.00);
insert into tb_pizzas (sabor,massa,borda,preco) values("Chocolate com morango", "Pan", "Chocolate", 51.90);
insert into tb_pizzas (sabor,massa,borda,preco) values ("Banana nevada", "Pan", "Chocolate branco", 52.00);
insert into tb_pizzas (sabor,massa,borda,preco) values ("Brigadeiro", "Fina", "Chocolate", 60.00);
insert into tb_pizzas (sabor,massa,borda,preco) values ("Calabresa", "Pan", "Catupiry", 53.00);
insert into tb_pizzas (sabor,massa,borda,preco) values ("Portuguesa", "Pan", "Catupiry", 53.50);
insert into tb_pizzas (sabor,massa,borda,preco) values ("Baiana", "Fina", "", 50.00);
insert into tb_pizzas (sabor,massa,borda,preco) values ("Frango com Catupiry", "Pan", "Catupiry", 55.00);

select * from tb_pizzas;


alter table tb_pizzas add categoria_id bigint;
alter table tb_pizzas add constraint fk_pizzas_categorias 
foreign key(categoria_id) references tb_categorias(id);

update tb_pizzas set categoria_id = 1 where id = 1;
update tb_pizzas set categoria_id = 1 where id = 2;
update tb_pizzas set categoria_id = 1 where id = 3;
update tb_pizzas set categoria_id = 1 where id = 4;
update tb_pizzas set categoria_id = 2 where id = 5;
update tb_pizzas set categoria_id = 2 where id = 6;
update tb_pizzas set categoria_id = 2 where id = 7;
update tb_pizzas set categoria_id = 2 where id = 8;


select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco between 50.00 and 100.00;
select * from tb_pizzas where nome like "&M&";

select sabor, massa, borda, preco, tb_categorias.descricao
from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id;


select sabor, massa, borda, preco, tb_categorias.descricao 
from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id where tb_categorias.id = 1;
