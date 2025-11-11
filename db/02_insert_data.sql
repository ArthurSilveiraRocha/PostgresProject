
-- Inserts

-- Tabela Países

INSERT INTO paises (sigla, nome) VALUES ('GBR', 'Reino Unido') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('AUS', 'Austrália') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('NED', 'Países Baixos') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('ITA', 'Itália') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('MON', 'Mônaco') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('ESP', 'Espanha') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('CAN', 'Canadá') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('DEU', 'Alemanha') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('FRA', 'França') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('BRA', 'Brasil') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('NZL', 'Nova Zelândia') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('THA', 'Tailândia') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('JPN', 'Japão') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('CHE', 'Suíça') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('USA', 'Estados Unidos') ON CONFLICT (sigla) DO NOTHING;
INSERT INTO paises (sigla, nome) VALUES ('AUT', 'Áustria') ON CONFLICT (sigla) DO NOTHING;




-- Tabela Equipes

INSERT INTO equipes (nome, id_pais) VALUES ('McLaren', (SELECT id_pais FROM paises WHERE sigla = 'GBR')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('Red Bull Racing', (SELECT id_pais FROM paises WHERE sigla = 'AUT')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('Mercedes', (SELECT id_pais FROM paises WHERE sigla = 'DEU')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('Ferrari', (SELECT id_pais FROM paises WHERE sigla = 'ITA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('Aston Martin', (SELECT id_pais FROM paises WHERE sigla = 'GBR')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('Alpine', (SELECT id_pais FROM paises WHERE sigla = 'FRA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('Williams', (SELECT id_pais FROM paises WHERE sigla = 'GBR')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('RB', (SELECT id_pais FROM paises WHERE sigla = 'ITA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('Haas', (SELECT id_pais FROM paises WHERE sigla = 'USA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO equipes (nome, id_pais) VALUES ('Sauber', (SELECT id_pais FROM paises WHERE sigla = 'CHE')) ON CONFLICT (nome) DO NOTHING;


-- Tabela Pilotos

INSERT INTO pilotos (nome, id_pais) VALUES ('Lando Norris', (SELECT id_pais FROM paises WHERE sigla = 'GBR')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Oscar Piastri', (SELECT id_pais FROM paises WHERE sigla = 'AUS')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Max Verstappen', (SELECT id_pais FROM paises WHERE sigla = 'NED')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Liam Lawson', (SELECT id_pais FROM paises WHERE sigla = 'NZL')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Charles Leclerc', (SELECT id_pais FROM paises WHERE sigla = 'MON')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Lewis Hamilton', (SELECT id_pais FROM paises WHERE sigla = 'GBR')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('George Russell', (SELECT id_pais FROM paises WHERE sigla = 'GBR')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Andrea Kimi Antonelli', (SELECT id_pais FROM paises WHERE sigla = 'ITA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Fernando Alonso', (SELECT id_pais FROM paises WHERE sigla = 'ESP')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Lance Stroll', (SELECT id_pais FROM paises WHERE sigla = 'CAN')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Nico Hulkenberg', (SELECT id_pais FROM paises WHERE sigla = 'DEU')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Gabriel Bortoleto', (SELECT id_pais FROM paises WHERE sigla = 'BRA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Pierre Gasly', (SELECT id_pais FROM paises WHERE sigla = 'FRA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Jack Doohan', (SELECT id_pais FROM paises WHERE sigla = 'AUS')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Oliver Bearman', (SELECT id_pais FROM paises WHERE sigla = 'GBR')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Esteban Ocon', (SELECT id_pais FROM paises WHERE sigla = 'FRA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Yuki Tsunoda', (SELECT id_pais FROM paises WHERE sigla = 'JPN')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Isack Hadjar', (SELECT id_pais FROM paises WHERE sigla = 'FRA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Alexander Albon', (SELECT id_pais FROM paises WHERE sigla = 'THA')) ON CONFLICT (nome) DO NOTHING;
INSERT INTO pilotos (nome, id_pais) VALUES ('Carlos Sainz', (SELECT id_pais FROM paises WHERE sigla = 'ESP')) ON CONFLICT (nome) DO NOTHING;