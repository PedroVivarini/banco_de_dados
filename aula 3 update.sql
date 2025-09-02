update usuario set cpf = '00000011123' where id = 4;

update usuario set nome = 'Ana Maria' where id = 4;

update usuario set nome = 'Ana'; 

update livro set ano_publicacao = '20012' where id = 2;

select * from usuario;
select * from livro;
select * from emprestimo;

update emprestimo set status = 'devolvido' where id = 2;

update emprestimo  set data_devolucao = 'timestemp' where id = 1;

update livro set autor = 'aline' where id = 4 or id = 5 or id = 6;

update livro set titulo = 'Ilha das Cobras' where id = 2
update usuario set telefone = '24988592333' where id = 1

UPDATE usuario SET telefone = '9999-9999';

update emprestimo set data_emprestimo = '2020-08-26' where data_emprestimo < '2020-01-01';

update emprestimo set status = 'devolvido' where id = 5 or id = 7