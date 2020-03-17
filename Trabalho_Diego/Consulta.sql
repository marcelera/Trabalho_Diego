
-- # /**/
-- Selecione o banco de dados (esquema) pokédex.
-- USE pokedex; 
-- Obtenha informações da estrutura da tabela Pokémon.

select * from `Pokemon`;
-- 3.	Selecione todos os pokémons cadastrados no banco de dados.
select nome from `Pokemon`;
-- 4.	Selecione o numero, nome, cor, altura_m e peso_kg de todos os pokémons cadastrados.
select numero, nome, cor, altura_m, peso_kg from `Pokemon`;