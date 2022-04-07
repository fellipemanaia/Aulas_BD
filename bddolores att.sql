create database trafegohumano;
use trafegohumano;
create table pessoas(
	nome varchar(30),
    idade int,
    sexo char(1),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(30)
);
insert into pessoas(
nome,idade,sexo,peso,altura,nacionalidade)
values
("Godofredo",30,"m",90.80,1.85,"Brasileiro"),
("Dolores",25,"f",50.62,1.52,"Mexicana"),
("Godolores",8,"f",30.25,1.12,"Americana");
select * from pessoas;