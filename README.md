# Projeto 2 - Um simulador simples do processador RISC-V

### Universidade Estadual de Campinas

### Instituto de Computação

### MO601 – Arquitetura de Computadores II

### Prof. Rodolfo Jardim de Azevedo

### Aluno: Rubens de Castro Pereira - RA 217146

___

Este repositório contém todos os artefatos do Projeto 2 que implementa um simulador simples do processador RISC-V.

O **relatório compacto** do projeto pode ser acessado [aqui](https://github.com/rubenscp/RCP-MO601-Project-02/blob/main/relatorio.pdf).

Siga as instruções abaixo para a execução completa dessa aplicação:

### 1. Clonar repositório do projeto

```
git clone https://github.com/rubenscp/RCP-MO601-Project-02.git
```
	
### 2. Acessar a pasta do projeto Python
	
```
cd RCP-MO601-Project-02
```
	
### 3. Gerar programas em formato assembler _dump_ por intermédio do programa utilitário \textit{riscv32-unknown-elf-objdump.exe}

```
Executar o arquivo de lote _{dump_programas_compilados.bat}_
```

### 4. Abrir uma IDE para executar os programas/classes da aplicação Python
	
```
abrir o programa principal Python _main.py_.
```
```
executar o programa _main.py_
```

### 5. Visualização dos resultados da simulação


Todos os resultados dasdo processamento dos programas estarão na pasta _log_ dentro da pasta _test_.

___

### Comandos Docker auxiliares para o projeto

#### Remover o container "projeto-01"

```
docker rm projeto-01
```

#### Remover a imagem "projeto-01:1.0"

```
docker rmi projeto-01:1.0
```

#### Remover o volume "projeto-01:volume"

```
docker volume rm projeto-01-volume
```

#### Listar todos os containeres

```
docker container ls -a
```

#### Listar todas as imagens

```
docker images 
```

#### Listar todos os volumes

```
docker volume ls
```
