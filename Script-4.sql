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

delimiter

create procedure inserirCliente(in nome varchar(100),in email varchar(100));
begin
	insert into cliente (nome,email) values (nome,email);
end;

delimiter;

call inserirCliente(t,t)

SELECT *
FROM teste.cliente;
