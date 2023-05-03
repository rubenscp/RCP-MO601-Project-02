# Projeto 2 - Um simulador simples do processador RISC-V

### Universidade Estadual de Campinas

### Instituto de Computação

### MO601 – Arquitetura de Computadores II

### Prof. Rodolfo Jardim de Azevedo

### Aluno: Rubens de Castro Pereira - RA 217146

___

Este repositório contém todos os artefatos do Projeto 2 que implementa um simulador simples do processador RISC-V considerando o conjunto de instruções básicas de inteiros de 32 bits e, adicionalmente, as instruções de multiplicação e divisão inteiras de 32 bits. Os programas fonte em C de testes foram disponibilizados no repositório ACStone (https://github.com/rjazevedo/ACStone) e os programas previamente compilados estão localizados em https://drive.google.com/drive/u/2/folders/1ei8E-qk2dwQvCWJv8ovGJiIdLjw7yVfP.


O **relatório compacto** do projeto pode ser acessado [aqui](https://github.com/rubenscp/RCP-MO601-Project-02/blob/main/relatorio.pdf).

Siga as instruções abaixo para a execução da aplicação.

### 1. Pré-requisitos

O desenvolvimento do simulador foi realizado em computador com o sistema operacional Windows 10, bem como as ferramentas de compilação e montagem (liked) baseadas nesse ambiente. Assim, é necessário realizar os testes do simulador em ambiente equivalente ao especificado.


### 2. Clonar repositório do projeto

```
git clone https://github.com/rubenscp/RCP-MO601-Project-02.git
```
	
### 3. Acessar a pasta do projeto Python
	
```
cd RCP-MO601-Project-02
```
	
### 4. Gerar programas assembler assembler por meio do programa utilitário "riscv32-unknown-elf-objdump.exe"

Executar o arquivo de comandos em lote para geração dos programas assembler.

```
dump_programas_compilados.bat
```

### 5. Executar o simulador do processador RISC-V (aplicação Python)

```
python source\main.py
```

### 5. Visualização dos resultados da simulação

Todos os arquivos de log da simulações estarão na pasta _log_ dentro da pasta _test_.

```
cd test\log
```