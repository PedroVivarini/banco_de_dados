



Select * from emprestimo  emp
Inner join usuario u on emp. Id_usuario = u.id


Select 
Emp.data_emprestimo,
Emp.data_devolucao,
Emp.status,
Usuario.nome,
l.*
From emprestimo emp
Inner join usuario on emp.id_usuario = usuario.id
Inner join livro l on emp.id_livro = l.id
Where emp.data_devolucao is not null



Select
 emprestimo.id_usuario,
 usuario.nome
 from emprestimo -- tabela da esquerda
 left join usuario on usuario.id = 
emprestimo.id_usuario;



Select
 emprestimo.id_usuario,
 usuario.nome
 from emprestimo
 right join usuario on usuario.id =
 emprestimo.id_usuario;

Select * from emprestimo
inner join usuario on usuario.id=emprestimo.id_usuario
Where id_usuario = (select id from usuario where nome = 'Jorge')




select * from livro;
select * from usuario;
select * from emprestimo;

Select 
Emp.data_emprestimo,
Emp.data_devolucao,
Emp.status,
Usuario.nome,
l.*
From emprestimo emp
Inner join usuario on emp.id_usuario = usuario.id
Inner join livro l on emp.id_livro = l.id
Where emp.data_devolucao is not null

select
emp.id_usuario,
emp.id_livro,
l.*
from usuario emp
inner join usuario on emp. nome = usuario.nome
inner join livro l on emp.titulo = l.titulo

Select * from usuario  emp
Inner join  usuario u on emp. nome = u.nome

Select * from livro  emp
Inner join  livro l on emp. titulo = l.titulo



---------------------------------------------------------------------------------------------------------------------------------------

 from emprestimo -- tabela da esquerda
 left join usuario on usuario.id = 
emprestimo.id_usuario;


Select
 emprestimo.id_usuario,
 usuario.nome
 from emprestimo -- tabela da esquerda
 left join usuario on usuario.id = 
emprestimo.id_usuario;


select
    l.id as id_livro,
    l.titulo,
    l.autor,
    l.ano_publicacao,
    l.genero,												-- exemplo left join 
    l.quantidade_estoque,
    l.editora,
    coalesce(u.nome, '-') as usuario,
    coalesce(e.status::text, 'não emprestado') as status
from livro l
left join emprestimo e on l.id = e.id_livro
left join usuario u on u.id = e.id_usuario
order by l.titulo;



---------------------------------------------------------------------------------------------------------------------------------------



select * from livro; -- resposta 1 

select usuario.nome, livro.titulo from emprestimo
inner join usuario on emprestimo.id_usuario = usuario.id  -- resposta 2
inner join livro on emprestimo.id_livro = livro.id 

select * from emprestimo
where status =  'emprestado' -- resposta 3

select livro.autor, livro.titulo from livro; -- numero 4 


select
    l.id as id_livro,
    l.titulo,
    coalesce(u.nome, '-') as usuario,
    coalesce(e.status::text, 'não emprestado') as status	--resposta 5
from livro l
left join emprestimo e on l.id = e.id_livro
left join usuario u on u.id = e.id_usuario
order by l.titulo;


SELECT 
    u.nome AS usuario,
    l.titulo AS livro
FROM usuario u											-- resposta 5
LEFT JOIN emprestimo e ON u.id = e.id_usuario
LEFT JOIN livro l ON e.id_livro = l.id;

