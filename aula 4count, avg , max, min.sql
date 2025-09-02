

select count (id) from livro; -- quantidade de registro de livros

select avg (quantidade_estoque), sum(quantidade_estoque), count(id) from livro; -- tirar media 

select sum(quantidade_estoque) from livro;  -- somatorio

select max(quantidade_estoque) from livro; -- maior quantidade de livro

select min(quantidade_estoque) from livro; -- menor quantidade de livro

select * from livro;
----------------------------------------------------------------------------------------------------------------------------------------

select count(*), genero from livro group by genero; 

select avg(quantidade_estoque), genero from livro group by genero; -- a media de quantidade de livros por genero

select max(quantidade_estoque), genero from livro group by genero;

select min(quantidade_estoque) as "estoque", genero from livro group by genero; -- as da pra renomear a coluna 

-------------------------------------------------------------------------------------------------------------------------------------------


select count(*), genero from livro group by genero having avg (quantidade_estoque) >= 10; -- having serve 

------------------------------------------------------------------------------------------------------------------------------------