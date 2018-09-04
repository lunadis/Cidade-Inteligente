use master
drop database CidadeInteligente
go

create database CidadeInteligente
go

use CidadeInteligente
go


create table tb_pessoas(
	cdPessoa int NOT NULL identity (1,1),
	nmPessoa varchar(250),
	dsEnderco varchar(250),
	dsEstadoCivil varchar(250),
	dtNascimento date,

	PRIMARY KEY (cdPessoa)
)
create table tb_PessoaDocumento(
	cdPessoaDocumento int NOT NULL identity (1,1),
	cdPessoa int NOT NULL,
	nrRG varchar(32),
	nrCPF varchar(32),
	nrReservista varchar(32),
	nrCTPS varchar(32),
	nrCNH varchar(32),
	
	PRIMARY KEY (cdPessoaDocumento),
	FOREIGN KEY (cdPessoa) references tb_pessoas (cdPessoa)
)
create table tb_Funcionario(
	cdFuncionario int not null identity (1,1),
	cdPessoa int not null,
	nmCargo varchar(150),
	nrSalario varchar(50),
	nrRamal varchar(12),
	
	PRIMARY KEY (cdFuncionario),
	FOREIGN KEY (cdPessoa) references tb_pessoas (cdPessoa)	
)
create table tb_cliente(
	cdCliente int not null identity (1,1),
	cdPessoa int not null,
	dtInclusao date,
	
	primary key (cdCliente),
	foreign key (cdPessoa) references tb_pessoas (cdPessoa)
)
