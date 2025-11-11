
/*
Legendas
SERIAL -> Incrementa o valor conforme quantia de inserts na tabela
    Ex: Insert 1, id 1, Insert 2, id 2...

NOT NULL -> Não permite que, no insert, o campo seja deixado em branco

UNIQUE -> Não permite que, no insert, seja adicionado outro campo
com conteúdo idêntico

INTERVAL (Tipo de Variável) -> Utilizada para armazenar um período de tempo
    Formato: 'ano', 'mês', 'dia', 'hora', 'minuto', 'segundo'
*/

-- Criação de Tabelas

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
    id_pais int references paises(id_pais)
);

CREATE TABLE IF NOT EXISTS pilotos_equipes (
    id_equipe int references equipes(id_equipe),
    id_piloto int references pilotos(id_piloto),
    data_inicio date not null,
    primary key (id_equipe, id_piloto, data_inicio)   
);

CREATE TABLE IF NOT EXISTS circuitos (
    id_circuito serial primary key,
    nome varchar(100) not null,
    id_pais int references paises(id_pais)
);

CREATE TABLE IF NOT EXISTS corridas(
    id_corrida serial primary key,
    data_corrida date not null,
    nome_corrida varchar(100) not null,
    duracao interval,
    id_circuito int references circuitos(id_circuito),
    nr_voltas int
);

CREATE TABLE IF NOT EXISTS posicoes (
    id_corrida int references corridas(id_corrida),
    posicao_largada int,
    posicao_chegada int,
    tempo interval,
    nr_voltas int,
    pontos int,
    id_piloto int references pilotos(id_piloto),
    id_equipe int references equipes(id_equipe),
    primary key (id_corrida, id_piloto)
);