create database transporte_intermunicipal;
use transporte_intermunicipal;

create table veiculo (
id_veiculo int auto_increment primary key,
placa_veiculo varchar(10),
modelo_veiculo varchar (10),
capacidade_veiculo int,
ano_fabricacao date
);
create table rota (
id_rota int auto_increment primary key,
cidade_origem varchar (22),
cidade_destino varchar(22),
duracao double,
distancia int
);
create table motorista (
id_motorista int auto_increment primary key,
nome varchar (22),
identidade int,
data_nascimento date,
habilitacao varchar (22)
);
create table passageiros (
id_passageiros int auto_increment primary key,
nome varchar(64),
identidade int,
telefone int,
email varchar (64)
);
create table passagens (
id_passagens int auto_increment primary key,
assento int,
data_passagem date,
valor double
);
create table viagem (
id_viagem int auto_increment primary key,
data_hora_partida date,
fk_id_motorista int,
foreign key (fk_id_motorista) references motorista(id_motorista)
);
create table designado_envolve_veiculo (
fk_id_veiculo int,
foreign key (fk_id_veiculo) references veiculo(id_veiculo),
fk_id_viagem int,
foreign key (fk_id_viagem) references viagem(id_viagem),
fk_id_rota int,
foreign key (fk_id_rota) references rota(id_rota) 
);
create table compra_venda (
fk_id_passageiros int,
foreign key (fk_id_passageiros) references passageiros(id_passageiros),
fk_id_passagens int,  
foreign key (fk_id_passagens) references passagens(id_passagens),
fk_id_viagem int,
foreign key (fk_id_viagem) references viagem(id_viagem)
);








