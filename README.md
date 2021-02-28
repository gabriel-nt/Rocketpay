<p align="center">
  <img src="https://github.com/gabriel-nt/Rocketpay/blob/master/assets/logo.png" alt="Spider-Man-Miles-Morales" height="140"/>
</p>
<h1 align="center">
    🚀 Rocketpay
</h1>
<p align="center">Aplicação desenvolvida durante a NLW4 na trilha de Elixir</p>

<p align="center">
  <img src="https://img.shields.io/badge/elixir%20version-1.7.0-694b77"/>
  <img src="https://img.shields.io/badge/phoenix%20version-1.5.7-important" />
  <img src="https://img.shields.io/badge/last%20commit-february-blue" />
  <img src="https://img.shields.io/badge/license-MIT-success"/>
</p>

<p align="center">
  <a href="#-features">Features</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-pré-requisitos">Pré-Requisitos</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-rodando-a-aplicação">Backend</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-licença">Lincença</a>
</p>

<h3 align="center"> 
🚧  Finalizado  🚧
</h3>

### 💻 Projeto

A Rocketpay é aplicação é uma REST API para transações, depósitos e saques de contas

### 📎 Features

- [x] Criação de usuários
- [x] Criação de contas
- [x] Depósito na conta
- [x] Saque da conta
- [x] Transações entre contas
- [x] Leitura de arquivo cvs
- [x] Autenticação de rotas
- [x] Testes com elixir 

### ⚙ Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
[Git](https://git-scm.com) e [Elixir](https://elixir-lang.org/install.html)
Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/) 

### 🎲 Rodando a Aplicação

```bash
# Clone este repositório
$ git clone https://github.com/gabriel-nt/Rocketpay/

# Instale as dependências
$ mix deps.get

# Crie a conexão com o banco
$ mix ecto.setup

# Rode as migrations
$ mix ecto.migrate 

# Execute o server
$ mix phx.server
```

### 🧾 Insomnia
Para ter um exemplo das rotas para a nossa API, basta clicar no link abaixo:
</br>
<a href="https://insomnia.rest/run/?label=Rocketpay&uri=https%3A%2F%2Fgithub.com%2Fgabriel-nt%2FRocketpay%2Fblob%2Fmaster%2Fassets%2Frest_api.json" target="_blank"><img src="https://insomnia.rest/images/run.svg" alt="Run in Insomnia"></a>

### 🚀 Tecnologias

Esse projeto foi desenvolvido com as seguintes tecnologias:

- Elixir
- Phoenix
- Ecto
- Postgres
- Docker

### 📕 Bibliotecas

Esse projeto foi utilizou das seguintes lib:

- decimal
- pbkdf2_elixir
- excoveralls
- postgrex
- plug

### 📝 Licença

Esse projeto está sob a licença MIT.

<hr/>

Feito por Gabriel Teixeira

