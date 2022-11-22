
GO
CREATE DATABASE bdLoja
CREATE TABLE tbFabricante(
codFabricante INT PRIMARY KEY IDENTITY(1,1)
,nomeFabricante VARCHAR (40) not null
)
CREATE TABLE tbFuncionario(
codFuncionario INT PRIMARY KEY IDENTITY(1,1)
,nomeFuncionario VARCHAR(60) not null
,idadeFuncionario INT CHECK (idadeFuncionario>=18)
,dataAmissao SMALLDATETIME DEFAULT '13/01/2010'
,salarioFuncionario SMALLMONEY not null	CHECK (salarioFuncionario>=565.00)
)
 
CREATE TABLE tbProduto (
codProduto INT PRIMARY KEY IDENTITY(1,1)
,nomeProduto VARCHAR(60) not null UNIQUE
,precoProduto SMALLMONEY not null	
,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
,dataEntradaProduto SMALLDATETIME DEFAULT GETDATE()
,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
)