CREATE TABLE IF NOT EXISTS paises(
    id_pais serial primary key,
    sigla char(3),
    nome varchar(100) not null
);

CREATE TABLE IF NOT EXISTS equipes(
    id_equipe serial primary key,
    nome varchar(100) not null unique,
    id_pais int references paises(id_pais)
);

CREATE TABLE IF NOT EXISTS pilotos(
    id_piloto serial primary key,
    nome varchar(100) not null,
    id_pais references paises(id_pais)
);

CREATE TABLE pilotos_equipes (
    id_equipe int references equipes(id_equipe)
    id_piloto int references pilotos(id_piloto)
    data_inicio date not null,
    
);