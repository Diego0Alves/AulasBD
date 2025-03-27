create database teste

use teste

create table usuario(
usuario_id int auto_increment primary key,
nome varchar(100),
senha varchar(12)
);

create table cliente(
cliente_id int auto_increment primary key,
nome varchar(100),
email varchar(100)
);

delimiter //

create procedure inserirCliente(in n varchar(100),in e varchar(100));
begin
	insert into cliente (nome,email) values (n,e);
end //

delimiter ;

call inserirCliente(t,t)

SELECT *
FROM teste.cliente;
