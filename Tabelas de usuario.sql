CREATE TABLE Users (
	ID INT NOT NULL AUTO_INCREMENT,
    NOMECOMPLETO VARCHAR(255) NOT NULL,
    CPF VARCHAR(20) NOT NULL UNIQUE,
    SETOR VARCHAR(255),
    EMPRESAID INT,
    TELEFONE VARCHAR (25),
    SENHA VARCHAR(512),
    PRIMARY KEY(ID),
    FOREIGN KEY(EMPRESAID) REFERENCES EMPRESAS(ID)
);

CREATE TABLE PERMISSOES (
	ID INT NOT NULL  AUTO_INCREMENT,
    DESCRICAO TEXT NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE EMPRESAS (
    ID INT NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(20) NOT NULL UNIQUE,
    ENDERECO TEXT,
    PRIMARY KEY (ID)
);

CREATE TABLE USUARIOS_PERMISSOES (
	USUARIOID INT,
    PERMISSAOID INT,
    FOREIGN KEY (USUARIOID) REFERENCES USUARIOS(ID),
    FOREIGN KEY (PERMISSAOID) REFERENCES PERMISSOES(ID)
);
