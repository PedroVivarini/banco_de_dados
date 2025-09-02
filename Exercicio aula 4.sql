--1. Conte quantos livros estão cadastrados na biblioteca usando COUNT. 

select count(*) from livro;

--2. Descubra a média de tempo de empréstimo dos livros utilizando AVG. 

select avg(data_devolucao - data_emprestimo) from emprestimo
where data_devolucao is not null;

--3. Encontre o livro mais antigo e o mais recente utilizando MIN e MAX. 

select max (ano_publicacao) as "livro_mais_antigo", min(ano_publicacao) as "livro_mais_recente" from livro;

--4. Liste quantos empréstimos cada usuário já fez, agrupando por nome do usuário.

select u.nome,count(*) as "total_emprestimo" from usuario u 
left join emprestimo e on u.id = e.id_usuario --left pra mostrar todos os usuarios se fosse join so mostraria dois
group by u.nome  -- agrupar os usuarios
order by total_emprestimo desc  -- maior pro menor


--5. Mostre quantos livros existem por gênero, agrupando os resultados. 

select genero, count (*) as quantidade from livro group by genero order by quantidade asc;

