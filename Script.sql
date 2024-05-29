CREATE  DATABASE F1Rookie;
use F1Rookie;

CREATE TABLE Usuario (
idUsuario INT PRIMARY KEY auto_increment,
nome VARCHAR (45),
email VARCHAR (45),
senha VARCHAR (45)
);

CREATE TABLE Pesquisa (
idPesquisa INT PRIMARY KEY auto_increment,
avaliacao VARCHAR (500),
satisfacao CHAR (3),
fkUsuario INT, 
	foreign key (fkUsuario) references Usuario (idUsuario)
);

select * from usuario;

