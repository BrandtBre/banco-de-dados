create table clientes (
    id serial primary key,
    nome varchar(20) not null,
    email varchar(50) not null unique,
    rg varchar(30) not null unique,
    cpf varchar(30) not null unique,
    telefone varchar(30) unique,
    celular varchar(30) unique,
    data_nascimento date not null
);

create table fornecedores (
    id serial primary key,
    nome varchar(50) not null,
    cnpj varchar(30) not null unique,
    inscricao_estadual integer not null unique,
    data_abertura date not null,
    website varchar(50) unique,
    email varchar(50) unique not null,
    telefone varchar(30) unique not null,
    celular varchar(30) unique not null
);

create table enderecos (
    id serial primary key,
    numero varchar(30) not null,
    cidade varchar(30) not null,
    estado varchar(30) not null,
    rua varchar(30) not null,
    bairro varchar(30) not null,
    cep varchar(30) not null
);

create table enderecos_clientes (
    id serial primary key,
    id_enderecos integer not null,
    id_clientes integer not null,
    constraint  fk_enderecos_to_enderecos_clientes foreign key (id_enderecos) references enderecos (id),
    constraint fk_clientes_to_enderecos_clientes foreign key (id_clientes) references clientes (id)
);

create table enderecos_fornecedores (
    id serial primary key,
    id_enderecos integer not null,
    id_fornecedores integer not null,
    constraint  fk_enderecos_to_enderecos_fornecedores foreign key (id_enderecos) references enderecos (id),
    constraint fk_fornecedores_to_enderecos_fornecedores foreign key (id_fornecedores) references fornecedores (id)
);

create table contas_receber (
    id serial primary key,
    id_clientes integer not null,
    constraint fk_clientes_to_contas_receber foreign key (id_clientes) references clientes (id),
    vencimento date not null,
    emissao date not null,
    situacao boolean not null default false
);

create table contas_pagar (
    id serial primary key,
    id_fornecedores integer not null,
    constraint fk_fornecedores_to_contas_pagar foreign key (id_fornecedores) references fornecedores (id),
    vencimento date not null,
    emissao date not null,
    situacao boolean not null default false
);

create table lancamentos_receber (
    id serial primary key,
    id_contas_receber integer not null,
    constraint fk_contas_pagar_to_lancamentos_receber foreign key (id_contas_receber) references contas_receber (id),
    valor integer not null
);

create table lancamentos_pagar (
    id serial primary key,
    id_contas_pagar integer not null,
    constraint fk_contas_pagar_to_lancamentos_pagar foreign key (id_contas_pagar) references contas_pagar (id),
    valor integer not null
);


