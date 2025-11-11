
-- Funções

-- Função para cálculo dos pontos da tabela posicoes


-- Cria ou substitui a função calcular_pontos, usando o parâmetro 'posicao'
create or replace function calcular_pontos(posicao int)
-- Inicia a estrutura plpgsql e indica que vai retornar um número inteiro
returns int as $$
begin
-- Cria um state case usando o parâmetro da função para retornar os pontos baseado na posição do piloto na corrida
    case posicao
        when 1 then return 25;
        when 2 then return 18;
        when 3 then return 15;
        when 4 then return 12;
        when 5 then return 10;
        when 6 then return 8;
        when 7 then return 6;
        when 8 then return 4;
        when 9 then return 2;
        when 10 then return 1;
        else return 0;
    -- Encerra o state case
    end case;
-- Encerra a estrutura plpgsql
end;
$$ language plpgsql;

-- Atualiza a coluna 'pontos' da tabela 'posicoes', definindo os novos valores
update posicoes
-- Utiliza a função de cálculo de pontos com o parâmetro da coluna 'posicao_chegada', já preenchida na tabela
set pontos = calcular_pontos(posicao_chegada);


-- Trigger para bloquear criação de equipes duplicadas na tabela equipes

-- Cria ou substituí a função de verificação de equipe
create or replace function equipe_existe()
-- Inicia a estrutura plpgpsql e indica que irá retornar uma trigger
returns trigger as $$
begin
-- Inicia condicional, utilizar NEW para representar o novo input
-- na coluna nome e compara com o que já existe
    if exists (select 1 from equipes where nome = NEW.nome) then
    -- Mostra um texto indicando que a linha que seria criada já existe
        raise exception 'Equipe "%" já existe', NEW.nome;
    -- Encerra a condicional
    end if;
    /* Não bloqueia exatamente que outra linha igual seja criada, mas RETURN NEW
    faz com que a linha antiga seja subtituída pela linha idêntica criada
    portanto, não altera o que foi inserido anteriormente, pois é idêntico ao que já constava na linha */
    return NEW;
-- Encerra a estrutura plpgsql
end;
$$ language plpgsql;

-- Cria a trigger para puxar a função que verifica se a equipe existe
create trigger trg_equipe_existe
-- Define condicional para a trigger
before insert on equipes
-- Inicia estrutura de repetição para passar por cada linha dos inserts
for each row
-- Executa a função criada posteriormente, que verifica se a linha já existe e,
-- caso já existir, vai impedir que seja criada uma duplicata.
execute function equipe_existe()