CREATE TABLE  cliente (
	id_cliente SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email varchar (50) UNIQUE NOT NULL	
);

CREATE TABLE telefone( 
	id_telefone SERIAL PRIMARY KEY,
	fk_cliente INT REFERENCES cliente (id_cliente)  ON DELETE CASCADE,
	numero CHAR(14) NOT NULL
);

CREATE TABLE pedido (
	id_pedido SERIAL PRIMARY KEY,
	fk_cliente INT REFERENCES cliente (id_cliente) ON DELETE CASCADE,
	data TIMESTAMP,
	valor DECIMAL (10,2) NOT NULL
);

CREATE TABLE produto (
	id_produto SERIAL PRIMARY KEY,
	nome VARCHAR (100) NOT NULL,
	descricao VARCHAR(200) NOT NULL,
	preco DECIMAL (10,2) NOT NULL
);

CREATE TABLE pedido_produto (
	id_pedido  INT REFERENCES pedido (id_pedido) ON DELETE CASCADE,
	id_produto INT REFERENCES produto (id_produto),
	quantidade INT NOT NULL,
	PRIMARY KEY (id_pedido, id_produto)
);
