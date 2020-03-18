
-- # /**/
-- Selecione o banco de dados (esquema) pokédex.
-- USE pokedex; 
-- Obtenha informações da estrutura da tabela Pokémon.
-- 2. Obtenha informações da estrutura da tabela Pokémon.
select * from `Pokemon`;
-- 3. Selecione todos os pokémons cadastrados no banco de dados.
select nome from `Pokemon`;
-- 4. Selecione o numero, nome, cor, altura_m e peso_kg de todos os pokémons cadastrados.
select numero, nome, cor, altura_m, peso_kg from `Pokemon`;
-- 5. Qual é o numero e o nome de todos os pokémons da primeira geração?
select numero, nome from Pokemon where geracao  like '1%';
-- 6. Quais são os pokémons Amarelo da primeira geração?
select nome, cor from Pokemon where  geracao  like '1%' and cor like 'ama%';
-- 7. Qual é o pokémon mais forte? 
select nome,total from Pokemon where total=(select max(total) from Pokemon);
-- 8. Selecione o numero, nome e tipo1; de todos os pokémons cujo tipo primário é Fire.
select numero,nome, tipo1 from Pokemon where tipo1 like 'fir%';
-- 9. Selecione em ordem decrescente o numero, nome e defesa de todos os pokémons.
select numero,nome, defesa from Pokemon order by  numero, nome, defesa desc ;
-- 10. Qual o pokémon possui menor taxa de captura? Selecione apenas numero e nome.
select nome, numero from Pokemon where taxa_captura=(select min(taxa_captura) from Pokemon);
-- 11. Selecione todos pokémons que não possuem tipo secundário, ou seja, tipo2.
select nome,tipo2 from Pokemon where tipo2 Is null;.
-- 12.  Selecione numero, nome, tipo1, tipo2 de todos os pokémons que possuem o peso entre 100kg e 500kg.
select nome_projeto,valor_projeto FROM projetos WHERE valor_projeto > 2000000 AND valor_projeto < 2500000;
select  numero, nome, tipo1, tipo2, from Pokemon  where peso_kg > 100 and peso_kg <500;
-- 13. Crie um ranking dos top 10 pokémons mais velozes, contendo numero, nome e velocidade.
select numero,nome,velocidade from pokemon where velocidade=(select max(velocidade)from Pokemon); 
# select numero,nome,velocidade from pokemon limit 0,10;
-- 14. Selecione numero, nome, tipo1, tipo2, taxa_captura dos pokémons que possuem os dois tipos e tenham uma taxa de captura acima de 100. Ordene os resultados decrescente pela taxa de captura.
#  select  numero, nome, tipo1, tipo2, taxa_captura  from pokemon;
-- 15. Quais são os tipos primários dos pokémons?
select tipo1,tipo2 from Pokemon ;
-- 16. Selecione o numero, nome e cor; de todos os pokémons que o nome começa com a letra D.
select numero, nome,cor from Pokemon  where nome like'D%';
-- 17. Qual é o pokémon mais poderoso de todas as gerações?
###########################;
-- 19. Selecione todos os pokémons do tipo Planta e Venenoso que não sejam Green, ordenado crescente pelo nome.

-- 20. Selecione de maneira crescente os nomes dos pokémons que possuem a letra y na 4ª posição do nome.
select nome from Pokemon WHERE nome LIKE '___y%';
-- 21. Qual é o maior valor de ataque_especial cadastrado?
select nome,ataque_especial from Pokemon where ataque_especial=(select max(ataque_especial)from Pokemon);
-- 22. Selecione o numero, nome e altura_m dos pokémons que possuem altura acima de 2,10m.
select numero, nome,altura_m from Pokemon where  altura_m > 2.10;
-- 23. Quais são as diferentes tipos de cores dos pokémons? Apresente os resultados de maneira crescente pelo nome da cor.
select cor from Pokemon  order by cor asc;
-- 24. Selecione o nome e velocidade dos pokémons com velocidade entre 30 e 70. Ordene os resultados por nome (crescente) e velocidade (decrescente)
select  nome,velocidade from Pokemon  where velocidade > 30 and velocidade <70 order by velocidade;
-- 25. Selecione o nome e velocidade dos pokémons com velocidade entre 30 e 70. Ordene os resultados por nome (crescente) e velocidade (decrescente)

-- 26. Selecione os pokémons da primeira geração com taxa de captura igual a 255.
select nome, taxa_captura from Pokemon  where geracao like '1%' and taxa_captura=255;
-- 27. Quem é o mais poderoso? selecione o Pikachu, Squirtle, Bulbasaur e Charmander; ordenados decrescente pelo total.

-- 28. Quem são os pokémons da primeira geração, que começam com a letra d e não possuem tipo secundário? Ordene os resultados crescente por taxa_captura e decrescente pelo total.

-- 29. Qual é o ranking dos top 5 pokémons lendários com maior taxa_captura e total? Apresente apenas numero, nome, total, taxa_captura nos resultados.

-- 30. Selecione o numero, nome, peso_kg dos pokémons com peso entre 2kg e 3kgs?
select numero, nome, peso_kg from Pokemon where peso_kg>2 and peso_kg<3;
-- 31. Selecione o numero, nome, tipo1 e tipo2 dos pokémons com tipo primário Normal, que não possuem tipo secundário. Existe algum pokémon lendário nos resultados, se sim, os remova dos resultados?

-- 32. Quem são os pokémons do tipo Water que não são azuis? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.

-- 33. Crie um ranking dos top 10 pokémons mais lentos.

-- 34. Selecione os pokémons cujo nome comece e termine com a letra a.
select nome from Pokemon where nome like'a%'and nome like'%a';
-- 35. Quem são os pokémons do tipo Fire que não são vermelhos? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.

-- 36. Quais são os diferentes tipos de peso_kg dos pokémons? Apresente os resultados ordenados de maneira crescente.
select peso_kg from Pokemon order by peso_kg asc;
-- 37. Selecione o numero, nome e hp dos pokémons com valores entre 0 e 100. Ordene os resultados de maneira crescente por hp e nome.

-- 38. Selecione o numero, nome, hp, ataque, defesa e total; dos pokémons com valores de hp, ataque, defesa maiores ou iguais a 100.

-- 39. Selecione todos os pokémons do tipos Water e Gelo, ordenados decrescente por total.
select nome,tipo1,tipo2 from Pokemon where tipo1 like 'wate%' or tipo2 like 'wate%'or tipo1 like 'gel%' or tipo2 like 'gel%';
