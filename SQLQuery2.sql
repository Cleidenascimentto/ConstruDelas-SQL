
use [Escola]

drop table turmas;


create table turmas(
	id_turma int identity(1,1) primary key,
	nome_turma varchar(50)
	
);

create table alunos (
	id_aluno int identity(1,1) primary key,
	nome_aluno varchar(50) not null,
	sobrenome_aluno varchar(100) not null,
	data_nascimento date,
	data_matricula datetime,
	id_turma int not null,
foreign key (id_turma)
references turmas (id_turma)
/*on delete no action*/
);
