create database Lectio_V2;
use Lectio_V2;

/*
A fazer:
-Substituir "ENUMs" por check constraint
-Traduzir para inglês e usar normas internacionais de nomeação
-Adicionar índices nas Foreign Keys
*/

create table livro (
	id_livro int primary key identity(1, 1),
	isbn_livro char(13) not null unique,
	nome_livro nvarchar(150) not null,
	edicao_livro varchar(20) not null,
	descricao_livro nvarchar(1000),
	data_lancamento_livro date not null,
	quantidade_paginas_livro int not null,
	preco_compra_livro decimal(10, 2) not null default 0,
	preco_venda_livro decimal(10, 2) not null default 0,
	estoque_livro int not null default 0,
	status_livro nvarchar (10) null, --ENUM('Em Estoque', 'Esgotado') não funciona, por que?
	arquivo_imagem_livro nvarchar(255) null,
	arquivo_livro nvarchar(255) null
);

create table genero (
	id_genero int primary key identity(1, 1),
	nome_genero nvarchar(150) not null,
	imagem_genero nvarchar(255) null,
	descricao_genero nvarchar(1000) null
);

create table livro_genero (
	id_livro_genero int primary key identity(1, 1),
	id_livro int not null,
	id_genero int not null,
	constraint fk_livrogenero_idlivro foreign key (id_livro) references livro(id_livro),
	constraint fk_livrogenero_idgenero foreign key (id_genero) references genero(id_genero),
	constraint u_livrogenero unique (id_livro, id_genero)
);

create table autor (
	id_autor int primary key identity(1, 1),
	nome_autor nvarchar(150) not null,
	imagem_autor nvarchar(255) null,
	descricao_autor nvarchar(1000) null
);

create table livro_autor (
	id_livro_autor int primary key identity(1, 1),
	id_livro int not null,
	id_autor int not null,
	constraint fk_livroautor_idlivro foreign key (id_livro) references livro(id_livro),
	constraint fk_livroautor_idautor foreign key (id_autor) references autor(id_autor),
	constraint u_livroautor unique (id_livro, id_autor)
);

create table editora (
	id_editora int primary key identity(1, 1),
	nome_editora nvarchar(150) not null,
	endereco_editora nvarchar(255) not null,
	telefone_editora varchar(20) not null unique,
	email_editora nvarchar(255) not null unique,
	cnpj_editora char(14) not null unique
);

create table livro_editora (
	id_livro_editora int primary key identity(1, 1),
	id_livro int not null,
	id_editora int not null,
	constraint fk_livroeditora_idlivro foreign key (id_livro) references livro(id_livro),
	constraint fk_livroeditora_ideditora foreign key (id_editora) references editora(id_editora),
	constraint u_livroeditora unique (id_livro, id_editora)
);

create table promocao (
	id_promocao int primary key identity(1, 1),
	porcentagem_promocao decimal(3, 2) null,
	status_promocao nvarchar(20), --ENUM('Não Iniciada', 'Em andamento', 'Concluída') ainda não funcionando
	data_inicio_promocao datetime not null,
	data_fim_promocao datetime not null
);

create table livro_promocao (
	id_livro_promocao int primary key identity(1, 1),
	id_livro int not null,
	id_promocao int not null,
	constraint fk_livropromocao_idlivro foreign key (id_livro) references livro(id_livro),
	constraint fk_livropromocao_idpromocao foreign key (id_promocao) references promocao(id_promocao),
	constraint u_livropromocao unique (id_livro, id_promocao)
);

create table usuario (
	id_usuario int primary key identity(1, 1),
	nome_usuario nvarchar(150) not null,
	data_nascimento_usuario date not null,
	sexo_usuario char(1) not null,
	cpf_usuario char(11) unique not null,
	email_usuario nvarchar(255) unique not null,
	telefone_usuario nvarchar(20) unique not null,
	cep_usuario char(8) not null,
	senha_usuario nvarchar(255) not null
);

create table colaboracao (
	id_colaboracao int primary key identity(1, 1),
	data_colaboracao datetime not null,
	tipo_colaboracao nvarchar(20) not null, --ENUM('Tradução', 'Doação') ainda não funciona
	status_colaboracao nvarchar(20) not null, --ENUM('Não iniciada', 'Em andamento', 'Concluída')
	id_usuario int not null,
	constraint fk_colaboracao_idusuario foreign key (id_usuario) references usuario(id_usuario)
);

create table biblioteca_usuario (
	id_biblioteca_usuario int primary key identity(1, 1),
	data_biblioteca_usuario date not null,
	status_biblioteca_usuario nvarchar(20) not null, --ENUM('Não aberto', 'Lendo', 'Lido')
	pagina_biblioteca_usuario int not null,
	id_usuario int not null,
	id_livro int not null,
	constraint fk_bibliotecausuario_idusuario foreign key (id_usuario) references usuario(id_usuario),
	constraint fk_bibliotecausuario_idlivro foreign key (id_livro) references livro(id_livro),
	constraint u_bibliotecausuario unique (id_usuario, id_livro)
);

create table lista_desejo (
	id_lista_desejo int primary key identity(1, 1),
	id_usuario int not null,
	id_livro int not null,
	constraint fk_listadesejo_idusuario foreign key (id_usuario) references usuario(id_usuario),
	constraint fk_listadesejo_idlivro foreign key (id_livro) references livro(id_livro),
	constraint u_listadesejo unique (id_usuario, id_livro)
);

create table avaliacao (
	id_avaliacao int primary key identity(1, 1),
	nota_avaliacao int not null,
	comentario_avalicao nvarchar(1000) null,
	id_usuario int not null,
	id_livro int not null,
	constraint fk_avaliacao_idusuario foreign key (id_usuario) references usuario(id_usuario),
	constraint fk_avaliacao_idlivro foreign key (id_livro) references livro(id_livro),
	constraint u_avaliacao unique (id_usuario, id_livro)
);

create table cartao (
	id_cartao int primary key identity(1, 1),
	numero_cartao char(16) not null,
	nome_cartao nvarchar(150) not null,
	validade_cartao date not null,
	cvv_cartao nvarchar(3) not null,
	id_usuario int not null,
	constraint fk_cartao_idusuario foreign key (id_usuario) references usuario(id_usuario)
);

create table boleto (
	id_boleto int primary key identity(1, 1),
	data_boleto date not null,
	validade_boleto date not null,
	numero_boleto char(47) not null,
	status_boleto nvarchar(20) not null --ENUM('Aguardando Pagamento', 'Pago', 'Não Pago')
);

create table pix (
	id_pix int primary key identity(1, 1),
	data_pix datetime not null,
	chave_pix nvarchar(255) not null,
	status_pix nvarchar(20) not null --ENUM('Aguardando Pagamento', 'Pago', 'Não Pago')
);

create table pagamento_venda (
	id_pagamento_venda int primary key identity(1, 1),
	tipo_pagamento_venda nvarchar(10) not null, --ENUM('CARTAO', 'BOLETO', 'PIX')
);

create table pagamento_cartao (
	id_pagamento_cartao int primary key identity(1, 1),
	id_pagamento_venda int not null unique,
	id_cartao int not null,
	constraint fk_pagamentocartao_pagamento foreign key (id_pagamento_venda) references pagamento_venda(id_pagamento_venda),
	constraint fk_pagamentocartao_cartao foreign key (id_cartao) references cartao(id_cartao)
);

create table pagamento_boleto (
	id_pagamento_boleto int primary key identity(1, 1),
	id_pagamento_venda int not null unique,
	id_boleto int not null,
	constraint fk_pagboleto_pagamento foreign key (id_pagamento_venda) references pagamento_venda(id_pagamento_venda),
	constraint fk_pagboleto_boleto foreign key (id_boleto) references boleto(id_boleto)
);

create table pagamento_pix (
	id_pagamento_pix int primary key identity(1, 1),
	id_pagamento_venda int not null unique,
	id_pix int not null,
	constraint fk_pagpix_pagamento foreign key (id_pagamento_venda) references pagamento_venda(id_pagamento_venda),
	constraint fk_pagpix_pix foreign key (id_pix) references pix(id_pix)
);



create table venda (
	id_venda int primary key identity(1, 1),
	data_venda datetime not null,
	valor_venda decimal(10, 2) not null default 0,
	status_venda nvarchar(20) not null, --ENUM('Aguardando Pagamento', 'Concluída', 'Cancelada')
	id_usuario int not null,
	id_pagamento_venda	int not null unique,
	constraint fk_venda_idusuario foreign key (id_usuario) references usuario(id_usuario),
	constraint fk_venda_idpagamentovenda foreign key (id_pagamento_venda) references pagamento_venda(id_pagamento_venda)
);

create table item_venda (
	id_item_venda int primary key identity(1, 1),
	quantidade_item_venda int not null,
	preco_item_venda decimal (10, 2) not null default 0, --Preço base e Promoção
	id_livro int not null,
	id_venda int not null,
	constraint fk_itemvenda_idlivro foreign key (id_livro) references livro(id_livro),
	constraint fk_itemvenda_idvenda  foreign key (id_venda) references venda(id_venda),
	constraint u_itemvenda unique (id_livro, id_venda)
);

create table setor (
	id_setor int primary key identity(1, 1),
	nome_setor nvarchar(150) not null,
);

create table cargo (
	id_cargo int primary key identity(1, 1),
	nome_cargo nvarchar(150) not null,
	nivel_cargo nvarchar(20) not null, --ENUM('Júnior', 'Pleno', 'Sênior')
	salario_base decimal(10, 2) not null default 0,
	id_setor int not null,
	constraint fk_cargo_idsetor foreign key (id_setor) references setor(id_setor) 
);

create table funcionario (
	id_funcionario int primary key identity(1, 1),
	nome_funcionario nvarchar(150) not null,
	cpf_funcionario nvarchar(11) not null unique,
	rg_funcionario nvarchar(20) not null unique,
	data_nascimento_funcionario date not null,
	sexo_funcionario char(1) not null,
	email_funcionario nvarchar(155) not null unique,
	telefone_funcionario nvarchar(20) not null unique,
	endereco_funcionario nvarchar(255) not null,
	numero_funcionario nvarchar(10) not null,
	complemento_funcionario nvarchar(50) not null,
	bairro_funcionario nvarchar(100) not null,
	cidade_funcionario nvarchar(100) not null,
	estado_funcionario char(2) not null,
	cep_funcionario char(8) not null,
	salario_funcionario decimal(10, 2) not null default 0,
	data_admissao_funcionario date not null,
	data_demissao_funcionario date,
	status_funcionario nvarchar(20) not null, --ENUM('Ativo', 'Inativo')
	id_cargo int not null,
	id_setor int not null,
	constraint fk_funcionario_idcargo foreign key (id_cargo) references cargo(id_cargo),
	constraint fk_funcionario_idsetor foreign key (id_setor) references setor(id_setor)
);