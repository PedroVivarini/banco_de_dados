

create view view_emprestimo_livro as		--tipo um atalhoo		
select e.id,u.nome,
u.cpf,
u.email,
l.titulo,
l.autor,
e.data_emprestimo,
e.data_devolucao,
e.status
from emprestimo e 
inner join usuario u on u.id = e.id_usuario
inner join livro l on l.id = e.id_livro;


select * from view_emprestimo_livro;


create table teste(
id serial primary key,
nome varchar(255) not null

);

select * from teste where nome= 'curso 5000';

explain analyze select * from teste where nome = 'curso 5000';

create index idx_teste on teste(nome);

insert into teste (nome)
select 'curso' || i
fnull()from generate_series(1, 100000) i;

---------------------------------------------------------------------------------------------------------------------------------------------------

select * from emprestimo e 		-- traz registro de outras tabelas
right join usuario u on u.id = e.id_usuario   	-- e um atalho para n escrever muito





select * from usuario;


-- right join direita select * from emprestimo e right join (usuario iria aparecer usuario primeiro) 
--u on u.id = e.id_usuario
-- left join esquerda (vai aparecer emprestimo como primeiro)