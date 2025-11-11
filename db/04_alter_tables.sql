/*
Atributo UNIQUE adicionado para que os inserts
possam ser rodados individualmente ou todos ao mesmo
tempo na mesma query. Como usei o VSCode para
criação do banco, gostaria de salvar todos os inserts
em um único arquivo, mas que os inserts anteriores, quando
rodados novamente (por ser um mesmo script), não impedissem
que os novos inserts rodassem.
Vou adicionar o link do
repositório Git só por vias de curiosidade, caso o professor
desejar conferir posteriormente

https://github.com/ArthurSilveiraRocha/PostgresProject.git
*/

ALTER TABLE paises
    ADD CONSTRAINT uk_paises_sigla UNIQUE (sigla);

ALTER TABLE equipes
    ADD CONSTRAINT uk_equipes_nome UNIQUE (nome);

ALTER TABLE pilotos
    ADD CONSTRAINT uk_pilotos_nome UNIQUE (nome);

ALTER TABLE circuitos
    ADD CONSTRAINT uk_circuitos_nome UNIQUE (nome);

ALTER TABLE corridas
    ADD CONSTRAINT uk_corridas_data_nome UNIQUE (date_corrida, nome_corrida);

/*Como a tabela pilotos_equipes já possuia uma primary key, removi a mesma
para padronizar os atributos UNIQUE da tabela e formalizar
o uso do método ON CONFLICT DO NOTHING nos inserts*/


ALTER TABLE pilotos_equipes
    DROP CONSTRAINT IF EXISTS pilotos_equipes_pkey;

ALTER TABLE pilotos_equipes
    ADD CONSTRAINT pk_pilotos_equipes PRIMARY KEY (id_equipe, id_piloto, data_inicio);

ALTER TABLE posicoes
    ADD CONSTRAINT uk_posicoes_corrida_piloto UNIQUE (id_corrida, id_piloto);