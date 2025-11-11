
-- Inserts



-- Tabela Países

-- Inserir na tabela paises: sigla e nome -> valores: 'Sigla', 'Nome'

INSERT INTO paises (sigla, nome) VALUES ('GBR', 'Reino Unido');
INSERT INTO paises (sigla, nome) VALUES ('AUS', 'Austrália');
INSERT INTO paises (sigla, nome) VALUES ('NED', 'Países Baixos');
INSERT INTO paises (sigla, nome) VALUES ('ITA', 'Itália');
INSERT INTO paises (sigla, nome) VALUES ('MON', 'Mônaco');
INSERT INTO paises (sigla, nome) VALUES ('ESP', 'Espanha');
INSERT INTO paises (sigla, nome) VALUES ('CAN', 'Canadá');
INSERT INTO paises (sigla, nome) VALUES ('DEU', 'Alemanha');
INSERT INTO paises (sigla, nome) VALUES ('FRA', 'França');
INSERT INTO paises (sigla, nome) VALUES ('BRA', 'Brasil');
INSERT INTO paises (sigla, nome) VALUES ('NZL', 'Nova Zelândia');
INSERT INTO paises (sigla, nome) VALUES ('THA', 'Tailândia');
INSERT INTO paises (sigla, nome) VALUES ('JPN', 'Japão');
INSERT INTO paises (sigla, nome) VALUES ('CHE', 'Suíça');
INSERT INTO paises (sigla, nome) VALUES ('USA', 'Estados Unidos');
INSERT INTO paises (sigla, nome) VALUES ('AUT', 'Áustria');
INSERT INTO paises (sigla, nome) VALUES ('CHN', 'China');



-- Tabela Equipes

-- Inserir na tabela equipes: nome, id_pais -> valores: nome, procura pelo id_pais da tabela países onde sigla = 'país da equipe'

INSERT INTO equipes (nome, id_pais) VALUES ('McLaren', (SELECT id_pais FROM paises WHERE sigla = 'GBR'));
INSERT INTO equipes (nome, id_pais) VALUES ('Red Bull Racing', (SELECT id_pais FROM paises WHERE sigla = 'AUT'));
INSERT INTO equipes (nome, id_pais) VALUES ('Mercedes', (SELECT id_pais FROM paises WHERE sigla = 'DEU'));
INSERT INTO equipes (nome, id_pais) VALUES ('Ferrari', (SELECT id_pais FROM paises WHERE sigla = 'ITA'));
INSERT INTO equipes (nome, id_pais) VALUES ('Aston Martin', (SELECT id_pais FROM paises WHERE sigla = 'GBR'));
INSERT INTO equipes (nome, id_pais) VALUES ('Alpine', (SELECT id_pais FROM paises WHERE sigla = 'FRA'));
INSERT INTO equipes (nome, id_pais) VALUES ('Williams', (SELECT id_pais FROM paises WHERE sigla = 'GBR'));
INSERT INTO equipes (nome, id_pais) VALUES ('RB', (SELECT id_pais FROM paises WHERE sigla = 'ITA'));
INSERT INTO equipes (nome, id_pais) VALUES ('Haas', (SELECT id_pais FROM paises WHERE sigla = 'USA'));
INSERT INTO equipes (nome, id_pais) VALUES ('Sauber', (SELECT id_pais FROM paises WHERE sigla = 'CHE'));



-- Tabela Pilotos

-- Inserir na tabela pilotos: nome, id_pais -> valores: nome, procura pelo id_pais da tabela países onde sigla = 'país do piloto'

INSERT INTO pilotos (nome, id_pais) VALUES ('Lando Norris', (SELECT id_pais FROM paises WHERE sigla = 'GBR'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Oscar Piastri', (SELECT id_pais FROM paises WHERE sigla = 'AUS'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Max Verstappen', (SELECT id_pais FROM paises WHERE sigla = 'NED'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Liam Lawson', (SELECT id_pais FROM paises WHERE sigla = 'NZL'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Charles Leclerc', (SELECT id_pais FROM paises WHERE sigla = 'MON'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Lewis Hamilton', (SELECT id_pais FROM paises WHERE sigla = 'GBR'));
INSERT INTO pilotos (nome, id_pais) VALUES ('George Russell', (SELECT id_pais FROM paises WHERE sigla = 'GBR'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Andrea Kimi Antonelli', (SELECT id_pais FROM paises WHERE sigla = 'ITA'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Fernando Alonso', (SELECT id_pais FROM paises WHERE sigla = 'ESP'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Lance Stroll', (SELECT id_pais FROM paises WHERE sigla = 'CAN'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Nico Hulkenberg', (SELECT id_pais FROM paises WHERE sigla = 'DEU'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Gabriel Bortoleto', (SELECT id_pais FROM paises WHERE sigla = 'BRA'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Pierre Gasly', (SELECT id_pais FROM paises WHERE sigla = 'FRA'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Jack Doohan', (SELECT id_pais FROM paises WHERE sigla = 'AUS'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Oliver Bearman', (SELECT id_pais FROM paises WHERE sigla = 'GBR'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Esteban Ocon', (SELECT id_pais FROM paises WHERE sigla = 'FRA'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Yuki Tsunoda', (SELECT id_pais FROM paises WHERE sigla = 'JPN'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Isack Hadjar', (SELECT id_pais FROM paises WHERE sigla = 'FRA'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Alexander Albon', (SELECT id_pais FROM paises WHERE sigla = 'THA'));
INSERT INTO pilotos (nome, id_pais) VALUES ('Carlos Sainz', (SELECT id_pais FROM paises WHERE sigla = 'ESP'));



-- Tabela Pilotos_Equipes

-- Inserir na tabela pilotos_equipes: id_equipe, id_piloto, data_inicio -> valores:
--   -> procura pelo id_equipe na tabela equipes onde nome = 'Nome da equipe do piloto'
--   -> procura pelo id_piloto na tabela pilotos onde nome = 'Nome do piloto da equipe'
--   -> data_inicio = jan/01/2025

INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'McLaren'), (SELECT id_piloto FROM pilotos WHERE nome = 'Lando Norris'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'McLaren'), (SELECT id_piloto FROM pilotos WHERE nome = 'Oscar Piastri'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Red Bull Racing'), (SELECT id_piloto FROM pilotos WHERE nome = 'Max Verstappen'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Red Bull Racing'), (SELECT id_piloto FROM pilotos WHERE nome = 'Liam Lawson'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Mercedes'), (SELECT id_piloto FROM pilotos WHERE nome = 'George Russell'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Mercedes'), (SELECT id_piloto FROM pilotos WHERE nome = 'Andrea Kimi Antonelli'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Ferrari'), (SELECT id_piloto FROM pilotos WHERE nome = 'Charles Leclerc'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Ferrari'), (SELECT id_piloto FROM pilotos WHERE nome = 'Lewis Hamilton'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Aston Martin'), (SELECT id_piloto FROM pilotos WHERE nome = 'Fernando Alonso'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Aston Martin'), (SELECT id_piloto FROM pilotos WHERE nome = 'Lance Stroll'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Alpine'), (SELECT id_piloto FROM pilotos WHERE nome = 'Pierre Gasly'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Alpine'), (SELECT id_piloto FROM pilotos WHERE nome = 'Jack Doohan'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Williams'), (SELECT id_piloto FROM pilotos WHERE nome = 'Alexander Albon'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Williams'), (SELECT id_piloto FROM pilotos WHERE nome = 'Carlos Sainz'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'RB'), (SELECT id_piloto FROM pilotos WHERE nome = 'Yuki Tsunoda'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'RB'), (SELECT id_piloto FROM pilotos WHERE nome = 'Isack Hadjar'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Haas'), (SELECT id_piloto FROM pilotos WHERE nome = 'Oliver Bearman'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Haas'), (SELECT id_piloto FROM pilotos WHERE nome = 'Esteban Ocon'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Sauber'), (SELECT id_piloto FROM pilotos WHERE nome = 'Nico Hulkenberg'), '2025-01-01');
INSERT INTO pilotos_equipes (id_equipe, id_piloto, data_inicio) VALUES ((SELECT id_equipe FROM equipes WHERE nome = 'Sauber'), (SELECT id_piloto FROM pilotos WHERE nome = 'Gabriel Bortoleto'), '2025-01-01');



-- Tabela Circuitos

-- Inserir na tabela circuitos: nome, id_pais -> valores, procura id_pais na tabela paises onde sigla = 'País do circuito'

INSERT INTO circuitos (nome, id_pais) VALUES ('Circuito do Grande Prêmio de Melbourne', (SELECT id_pais FROM paises WHERE sigla = 'AUS'));
INSERT INTO circuitos (nome, id_pais) VALUES ('Circuito Internacional de Xangai', (SELECT id_pais FROM paises WHERE sigla = 'CHN'));



-- Tabela Corridas

-- Inserir na tabela corridas: data_corrida, nome_corrida, duracao, id_circuito, nr_voltas -> valores
--    -> data da corrida, nome da corrida, duração exata da corrida, procura id_circuito na tabela circuitos onde nome do circuito = "Nome do circuito daquela corrida"

INSERT INTO corridas (data_corrida, nome_corrida, duracao, id_circuito, nr_voltas) VALUES ('2025-03-16', 'Grande Prêmio da Austrália', '01:42:06.304', (SELECT id_circuito FROM circuitos WHERE nome = 'Circuito do Grande Prêmio de Melbourne'), 57);
INSERT INTO corridas (data_corrida, nome_corrida, duracao, id_circuito, nr_voltas) VALUES ('2025-03-23', 'Grande Prêmio da China', '01:30:55.026', (SELECT id_circuito FROM circuitos WHERE nome = 'Circuito Internacional de Xangai'), 56);


-- Tabela Posições

-- 20 pilotos, 2 corridas = 40 inserts

-- Inserir na tabela posicoes: id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe -> valores
--    -> procura id_corrida na tabela corridas onde o nome da corrida = 'Nome da corrida'
--    -> posicao do piloto no inicio da corrida, posicao do piloto no fim da corrida
--    -> tempo do piloto naquela corrida
--    -> numero de voltas daquela corrida
--    -> pontuação zerada pois será preenchida por procedure
--    -> procura id_piloto na tabela pilotos onde o nome do piloto = 'Nome do piloto participante da corrida'
--    -> procura id_equipe na tabela equipes onde o nome da equipe = 'Nome da equipe do piloto participante'

INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 1, 1, '01:42:06.304', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Lando Norris'), (SELECT id_equipe FROM equipes WHERE nome = 'McLaren'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 2, 2, '01:42:07.200', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Max Verstappen'), (SELECT id_equipe FROM equipes WHERE nome = 'Red Bull Racing'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 4, 3, '01:42:14.785', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'George Russell'), (SELECT id_equipe FROM equipes WHERE nome = 'Mercedes'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 10, 4, '01:42:16.439', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Andrea Kimi Antonelli'), (SELECT id_equipe FROM equipes WHERE nome = 'Mercedes'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 14, 5, '01:42:19.077', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Alexander Albon'), (SELECT id_equipe FROM equipes WHERE nome = 'Williams'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 9, 6, '01:42:23.717', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Lance Stroll'), (SELECT id_equipe FROM equipes WHERE nome = 'Aston Martin'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 11, 7, '01:42:24.727', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Nico Hulkenberg'), (SELECT id_equipe FROM equipes WHERE nome = 'Sauber'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 5, 8, '01:42:26.130', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Charles Leclerc'), (SELECT id_equipe FROM equipes WHERE nome = 'Ferrari'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 4, 9, '01:42:26.752', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Oscar Piastri'), (SELECT id_equipe FROM equipes WHERE nome = 'McLaren'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 6, 10, '01:42:28.777', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Lewis Hamilton'), (SELECT id_equipe FROM equipes WHERE nome = 'Ferrari'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 15, 11, '01:42:32.806', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Pierre Gasly'), (SELECT id_equipe FROM equipes WHERE nome = 'Alpine'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 13, 12, '01:42:36.188', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Yuki Tsunoda'), (SELECT id_equipe FROM equipes WHERE nome = 'RB'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 16, 13, '01:42:39.465', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Esteban Ocon'), (SELECT id_equipe FROM equipes WHERE nome = 'Haas'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 17, 14, '01:42:46.655', 57, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Oliver Bearman'), (SELECT id_equipe FROM equipes WHERE nome = 'Haas'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 7, 15, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Liam Lawson'), (SELECT id_equipe FROM equipes WHERE nome = 'Red Bull Racing'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 20, 16, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Gabriel Bortoleto'), (SELECT id_equipe FROM equipes WHERE nome = 'Sauber'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 8, 17, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Fernando Alonso'), (SELECT id_equipe FROM equipes WHERE nome = 'Aston Martin'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 12, 18, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Carlos Sainz'), (SELECT id_equipe FROM equipes WHERE nome = 'Williams'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 19, 19, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Jack Doohan'), (SELECT id_equipe FROM equipes WHERE nome = 'Alpine'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da Austrália'), 18, 20, NULL, 0, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Isack Hadjar'), (SELECT id_equipe FROM equipes WHERE nome = 'RB'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 1, 1, '01:30:55.026', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Oscar Piastri'), (SELECT id_equipe FROM equipes WHERE nome = 'McLaren'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 2, 2, '01:31:04.774', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Lando Norris'), (SELECT id_equipe FROM equipes WHERE nome = 'McLaren'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 3, 3, '01:31:06.123', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'George Russell'), (SELECT id_equipe FROM equipes WHERE nome = 'Mercedes'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 4, 4, '01:31:11.682', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Max Verstappen'), (SELECT id_equipe FROM equipes WHERE nome = 'Red Bull Racing'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 5, 5, '01:31:45.000', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Esteban Ocon'), (SELECT id_equipe FROM equipes WHERE nome = 'Haas'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 6, 6, '01:31:48.774', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Andrea Kimi Antonelli'), (SELECT id_equipe FROM equipes WHERE nome = 'Mercedes'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 7, 7, '01:31:51.347', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Alexander Albon'), (SELECT id_equipe FROM equipes WHERE nome = 'Williams'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 8, 8, '01:31:56.329', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Oliver Bearman'), (SELECT id_equipe FROM equipes WHERE nome = 'Haas'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 9, 9, '01:32:05.230', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Lance Stroll'), (SELECT id_equipe FROM equipes WHERE nome = 'Aston Martin'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 10, 10, '01:32:11.413', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Carlos Sainz'), (SELECT id_equipe FROM equipes WHERE nome = 'Williams'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 11, 11, '01:32:13.901', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Isack Hadjar'), (SELECT id_equipe FROM equipes WHERE nome = 'RB'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 12, 12, '01:32:16.173', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Liam Lawson'), (SELECT id_equipe FROM equipes WHERE nome = 'Red Bull Racing'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 13, 13, '01:32:23.427', 56, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Jack Doohan'), (SELECT id_equipe FROM equipes WHERE nome = 'Alpine'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 14, 14, NULL, 55, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Gabriel Bortoleto'), (SELECT id_equipe FROM equipes WHERE nome = 'Sauber'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 15, 15, NULL, 55, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Nico Hulkenberg'), (SELECT id_equipe FROM equipes WHERE nome = 'Sauber'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 16, 16, NULL, 55, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Yuki Tsunoda'), (SELECT id_equipe FROM equipes WHERE nome = 'RB'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 17, 17, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Fernando Alonso'), (SELECT id_equipe FROM equipes WHERE nome = 'Aston Martin'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 18, 18, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Charles Leclerc'), (SELECT id_equipe FROM equipes WHERE nome = 'Ferrari'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 19, 19, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Lewis Hamilton'), (SELECT id_equipe FROM equipes WHERE nome = 'Ferrari'));
INSERT INTO posicoes (id_corrida, posicao_largada, posicao_chegada, tempo, nr_voltas, pontos, id_piloto, id_equipe) VALUES ((SELECT id_corrida FROM corridas WHERE nome_corrida = 'Grande Prêmio da China'), 20, 20, NULL, 50, 0, (SELECT id_piloto FROM pilotos WHERE nome = 'Pierre Gasly'), (SELECT id_equipe FROM equipes WHERE nome = 'Alpine'));