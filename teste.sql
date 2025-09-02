create table paciente(
    id serial primary key,
    nome varchar(30) not null,
    cpf char(15) unique not null,
    data_nascimento date not null,
    telefone varchar(20) not null,
    email varchar(50) unique not null,
    endereco varchar (50),
    historio_consultas varchar (30)
);

create table dentista(
    id serial primary key,
    nome varchar(30) not null,
    cpf char(15) unique not null,
    cro varchar (30) unique not null,
    especialidade varchar (30) not null,
    horario_atendimento varchar (20)not null
);

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

    CREATE TABLE Procedimento(
    id_procedimento serial PRIMARY key,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    duracao_media INT 
    );
    
    
insert into dentista(nome, cpf, cro, especialidade, horario_atendimento)
values
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


insert into procedimento(nome_procedimento, descricao, duracao_media)
values
('Profilaxia', 'remoção de placa bacteriana, tártaro e polimentos dos dentes', '40 '),
('Restauração Dentária', 'reparo de um dente danificado por cárie', '50 minutos'),
('Clareamento Dental', 'Aplicação de gel clareador para deixar os dentes mais brancos.', '1:30'),
('Extração dentária', 'Extração dentária', '40 minutos (Por dente)'),
('Tratamento de canal', 'Remoção da polpa infeccionada do dente e selamento dos canais.', '1  2 '),
('Implante dentário', 'Colocação de pino de titânio no osso para substituir dente perdido.', '1  2 '),
('Aparelho ortodôntico', 'dispositivos para alinhar dentes e corrigir mordida.', '1  1  3 .'),
('Prótese dentária', 'Substituição de dentes ausentes com próteses fixas ou removíveis.', '1 .'),
('Cirurgia periodontal', 'Tratamento cirúrgico para gengivite ou periodontite avançada, removendo tecido infectado.', '1:30 Horas'),
('Facetas dentárias', 'lâminas de porcelana ou resina aplicadas na frente dos dentes para estética.', '2 a 3 consultas, 1 à 2 horas cada.')