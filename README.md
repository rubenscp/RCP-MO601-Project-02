# Projeto 2 - Um simulador simples do processador RISC-V

### Universidade Estadual de Campinas

### Instituto de Computação

### MO601 – Arquitetura de Computadores II

### Prof. Rodolfo Jardim de Azevedo

### Aluno: Rubens de Castro Pereira - RA 217146

___

Este repositório contém todos os artefatos do Projeto 2 que implementa um simulador simples do processador RISC-V considerando o conjunto de instruções básicas de inteiros de 32 bits e, adicionalmente, as instruções de multiplicação e divisão inteiras de 32 bits. Os programas de testes foram disponibilizados no repositório ACStone (https://github.com/rjazevedo/ACStone) 


O **relatório compacto** do projeto pode ser acessado [aqui](https://github.com/rubenscp/RCP-MO601-Project-02/blob/main/relatorio.pdf){:target="_blank"}.

Siga as instruções abaixo para a execução da aplicação.

### 1. Pré-requisitos

O desenvolvimento do simulador foi realizado em computador com o sistema operacional Windows 10, bem como utilizadno as ferrametas de compilação e montagem (liked) baseadas nesse ambiente. Assim, é ncessário realizar os testes do simulador em ambiente equivalente ao especificado.


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