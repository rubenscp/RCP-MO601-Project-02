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
Executar o arquivo de lote "dump_programas_compilados.bat"
```

### 4. Abrir uma IDE para executar os programas/classes da aplicação Python
	
```
Abrir o programa principal Python "main.py".
```
```
Executar o programa "main.py" por intermédio da IDE
```
```
Executar o programa simulador por meio de linha de comando: python source\main.py```


### 5. Visualização dos resultados da simulação

Todos os resultados dasdo processamento dos programas estarão na pasta _log_ dentro da pasta _test_.