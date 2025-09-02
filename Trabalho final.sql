-- Pacientes da clínica
create table paciente(
    id serial primary key,
    nome varchar(30) not null,
    cpf char(15) unique not null,
    data_nascimento date not null,
    telefone varchar(20) not null,
    email varchar(50) unique not null,
    endereco varchar (50),
    historico_consultas varchar (30) 
);

-- Dentistas (profissionais)
create table dentista(
    id serial primary key,
    nome varchar(30) not null,
    cpf char(15) unique not null,
    cro varchar (30) unique not null,
    especialidade varchar (30) not null,
    horario_atendimento varchar (20)not null
);

-- Consultas agendadas
create table consulta(
    id_consulta serial primary key,
    id_dentista int not null,
    id_paciente int not null,
    foreign key (id_dentista) references dentista(id),
    foreign key (id_paciente) references paciente(id),
    data date not null,
    hora varchar (20) not null,
    descricao text,
    prescricao text
    );

-- Procedimentos oferecidos
create table procedimento(
    id_procedimento serial PRIMARY key,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    duracao_media INT 
    );


-- Dados dos Pacientes (10)
insert into paciente (nome, cpf, data_nascimento, telefone, email, endereco, historico_consultas) values
('Ana Souza',        '111.111.111-11', '1990-01-10', '(24)99999-0001', 'ana.souza@exemplo.com',        'Rua A, 100', NULL),
('Bruno Lima',       '222.222.222-22', '1988-03-22', '(24)99999-0002', 'bruno.lima@exemplo.com',       'Rua B, 200', NULL),
('Carla Ferreira',   '333.333.333-33', '1995-07-15', '(24)99999-0003', 'carla.ferreira@exemplo.com',   'Rua C, 300', NULL),
('Diego Santos',     '444.444.444-44', '1982-11-05', '(24)99999-0004', 'diego.santos@exemplo.com',     'Rua D, 400', NULL),
('Eduarda Nunes',    '555.555.555-55', '1999-02-18', '(24)99999-0005', 'eduarda.nunes@exemplo.com',    'Rua E, 500', NULL),
('Felipe Alves',     '666.666.666-66', '1986-09-30', '(24)99999-0006', 'felipe.alves@exemplo.com',     'Rua F, 600', NULL),
('Gabriela Pires',   '777.777.777-77', '1993-12-12', '(24)99999-0007', 'gabriela.pires@exemplo.com',   'Rua G, 700', NULL),
('Henrique Castro',  '888.888.888-88', '1980-08-08', '(24)99999-0008', 'henrique.castro@exemplo.com',  'Rua H, 800', NULL),
('Isabela Martins',  '999.999.999-99', '2001-05-25', '(24)99999-0009', 'isabela.martins@exemplo.com',  'Rua I, 900', NULL),
('João Pereira',     '000.000.000-00', '1992-04-02', '(24)99999-0010', 'joao.pereira@exemplo.com',     'Rua J, 1000',NULL);

-- Dados dos Dentistas (10)
insert into dentista(nome, cpf, cro, especialidade, horario_atendimento) values
('Dr. Paulo Macedo', '222.444.555-10', '54321', 'Ortodontia', '12:00 - 16:00'),
('Dr. Gabriel Rocha', '123.456.789-16', '38492', 'Implantodontia', '13:00 - 17:30'),
('Dr. Rafael Almeida', '333.222.444-55', '71536', 'Endodontia', '08:00 - 12:00'),
('Dra. Camila Ferreira', '555.666.777-99', '26017', 'Periodontia', '14:00 - 18:00'),
('Dra. Juliana Andrade', '789.987.654-32', '94851', 'Prótese Dentária', '09:00 - 17:00'),
('Dra. Larissa Monteiro', '657.489.312-56', '50743', 'Odontopediatria', '10:00 - 15:00'),
('Dr. Rafael Almeida', '666.333.444-12', '13289', 'Cirurgia Bucomaxilofacial', '15:00 - 20:00'),
('Dr. Eduardo Silva', '678.987.123-46', '67420', 'Odontologia Estética', '07:00 - 14:00'),
('Dr. Eneas Carneiro', '167.231.555-32', '85931', 'Radiologia Odontológica', '11:00 - 19:30'),
('Dr. Pedro Machado', '234.567.800-14', '30176', 'Odontogeriatria', '09:00 - 20:00');

-- Dados das Consultas (10)
insert into consulta (id_paciente, id_dentista, data, hora, descricao, prescricao) values
(1,  5, '2025-07-10', '09:00', 'Avaliação inicial', NULL),
(8,  3, '2025-07-15', '10:00', 'Ajuste ortodôntico', NULL),
(5,  1, '2025-07-20', '11:00', 'Dor de dente - canal', NULL),
(2,  4, '2025-08-01', '09:30', 'Consulta pediátrica', NULL),
(4,  7, '2025-08-05', '14:00', 'Tratamento periodontal', NULL),
(3,  3, '2025-08-12', '10:00', 'Planejamento implante', NULL),
(6,  7, '2025-08-20', '15:00', 'Prova de prótese', NULL),
(10,  8, '2025-08-25', '16:00', 'Limpeza semestral', NULL),
(9,  2, '2025-09-02', '09:00', 'Instalação aparelho', NULL),
(7, 6,'2025-09-10', '17:00', 'Avaliação estética', NULL);

-- Dados dos Procedimentos (10)
insert into procedimento(nome, descricao, duracao_media) values
('Profilaxia', 'remoção de placa bacteriana, tártaro e polimentos dos dentes', '40'),
('Restauração Dentária', 'reparo de um dente danificado por cárie', '50'),
('Clareamento Dental', 'Aplicação de gel clareador para deixar os dentes mais brancos', '120'),
('Extração dentária', 'Extração dentária', '40'),
('Tratamento de canal', 'Remoção da polpa infeccionada do dente e selamento dos canais', '60'),
('Implante dentário', 'Colocação de pino de titânio no osso para substituir dente perdido', '60'),
('Aparelho ortodôntico', 'dispositivos para alinhar dentes e corrigir mordida', '60'),
('Prótese dentária', 'Substituição de dentes ausentes com próteses fixas ou removíveis', '60'),
('Cirurgia periodontal', 'Tratamento cirúrgico para gengivite ou periodontite avançada, removendo tecido infectado', '120'),
('Facetas dentárias', 'lâminas de porcelana ou resina aplicadas na frente dos dentes para estética', '120');

select * from paciente -- Ver os dados que foram inseridos na tabela paciente
select * from dentista -- Ver os dados que foram inseridos na tabela dentista
select * from consulta -- Ver os dados que foram inseridos na tabela consulta
select * from procedimento -- Ver os dados que foram inseridos na tabela procedimento



-- Dois índices coerentes
create index idx_nome_paciente on paciente(nome)
create index idx_especialidade on dentista(especialidade)

-- 1ª Alteração de registro
update procedimento set descricao = 'Extração do siso' where id_procedimento = 4

-- 2ª Alteração de registro
update consulta set data = '2025-09-21' where id_consulta = 7

-- 3ª Alteração de registro
update paciente set telefone = '(45)98563-1244' where id = 10

-- 1ª Exclusão de registro
delete from consulta where id_paciente = 10;

--2ª Exclusão de registro

delete from paciente where id = 10;

--3ª Exclusão de registro

delete from procedimento where nome = 'Facetas dentárias';

-- Quantidade de consultas por especialidade
select d.especialidade, count(c.id_consulta) as total_consultas
from consulta c
right join dentista d ON c.id_dentista = d.id
group by d.especialidade;


-- Quantidade de consultas por dentista
select d.nome, count(c.id_dentista) as total_consultas
from consulta c
join dentista d on c.id_dentista = d.id
group by d.nome
order by total_consultas desc;

-- Pacientes com maior número de consultas
select p.nome, COUNT(c.id_dentista) as total_consultas
from consulta c
 join paciente p ON c.id_paciente = p.id
group by p.nome
order by total_consultas desc;

-- View com lista de consultas ordenadas por data
create view vw_consultas_ordenadas as
select
    c.id_consulta as id_consulta,
    p.nome as nome_paciente,
    d.nome as nome_dentista,
    c.data,
    c.descricao AS procedimento_descrito
from consulta c
join paciente p on c.id_paciente = p.id
join dentista d on c.id_dentista = d.id
order by c.data desc;

select * from vw_consultas_ordenadas;

-- Média de consultas por dentista
select avg(total) as media_consultas
from (
    select count(*) as total
    from consulta
    group by id_dentista
);

