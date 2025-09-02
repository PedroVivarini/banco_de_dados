--Crie um índice na tabela livro para melhorar a busca pelo campo titulo.
insert into livro(titulo, autor, ano_publicacao,genero,quantidade_estoque,editora)
select
	'livro' || i,
	'autor' || i% 500 + 1),
	1900 + (i %124),
	case (i % 5)
		when 0 then 'ficção'
		when 1 then 'romance'
		when 3 then 'fantasia'			--gerador de dados
		when 4 then 'ciencia'
		when 5 then 'hsitoria'
	end,
	(random() * 50+1 :: int,
	'editora' || (i % 100 + 1)
from generate_series(1,10000) i;

explain analyze select * from livro where titulo = '2000';
		
create index idx_busca_livro on livro(titulo);

select * from livro where titulo= 'curso 5000';
explain analyze select * from livro where titulo = 'curso 5000';

--Crie um índice na tabela emprestimo para otimizar a busca por data_emprestimo

create index  idx_data_emprestimo on emprestimo (data_emprestimo);  -- Deixa o processamento mais rapido

--Crie uma VIEW chamada vw_historico_emprestimos que exiba o nome do usuário, título do 
--livro, data do empréstimo e data de devolução.

create view view_emprestimo_livro as
select 
u.nome,
l.titulo,
e.data_emprestimo,
e.data_devolucao
from emprestimo e
inner join usuario  u on u.id = e.id_usuario
inner join livro l on l.id = e.id_livro

select * from view_emprestimo_livro;


select v.*, (v.data_devolucao - v. data_emprestimo) quantidadeDias
from view_emprestimo_livro v;



