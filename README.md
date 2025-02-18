![](https://custom-icon-badges.demolab.com/badge/STATUS-EM%20DESENVOLVIMENTO-8957E5.svg?logo=tools&logoColor=white)

# Gympass - Gerenciamento de Check-ins em Academias
> *Desenvolvido para a disciplina de **Desenvolvimento de Aplicações Móveis (DAM)** - UFAPE 2024.2*  
> **Docente**: Thaís Alves Burity Rocha (**[@taburity](https://github.com/taburity)**)*

### 📑 Descrição

O **Gympass** é um aplicativo mobile que permite aos usuários se cadastrarem, localizarem academias próximas, realizarem check-ins e acompanharem seu histórico de atividades. Além disso, administradores têm acesso a funcionalidades exclusivas para gerenciar academias e validar check-ins.

A aplicação oferece uma interface intuitiva, promovendo uma experiência fluida para quem deseja acompanhar sua rotina de treinos e otimizar a gestão de academias.

---

### 📊 Tecnologias Utilizadas

O aplicativo será desenvolvido utilizando `Flutter` para a interface e `SQLite` para o armazenamento de dados locais.

> **Tecnologias e Versões:**  
> | Flutter | SQLite | Dart |
> | :------------: | :---: | :------: |
> | [![Flutter](https://img.shields.io/badge/versão-3.29.0-blue)](https://flutter.dev) | [![SQLite](https://img.shields.io/badge/versão-3-lightgray)](https://www.sqlite.org/index.html) | [![Dart](https://img.shields.io/badge/versão-3.7.0-blue)](https://dart.dev/) |

Tecnologias adicionais:
- **Dart**
- **Flutter SDK**
- **SQLite**
- **Git**

---

## 🎯 Funcionalidades

### 🔹 Usuários
- Cadastro e autenticação com e-mail e senha.
- Edição de perfil e visualização do histórico de check-ins.

### 🔹 Check-ins
- Localização de academias próximas.
- Validação de proximidade para check-ins.
- Histórico de atividades do usuário.

### 🔹 Administração
- Cadastro de academias no sistema.
- Validação de check-ins realizados pelos usuários.

---

## 🔒 Regras de Negócio

1. O e-mail deve ser válido e único para cada usuário.
2. Não é permitido realizar mais de um check-in no mesmo dia.
3. O check-in só pode ser realizado dentro de um raio de 100 metros da academia.
4. Check-ins são válidos por até 20 minutos após a criação.
5. Apenas administradores podem validar check-ins e cadastrar academias.

---

## 🛠 Requisitos Não Funcionais

- Senhas armazenadas de forma criptografada.
- Autenticação utilizando armazenamento local seguro.
- Persistência de dados com SQLite.

---

## 🚀 Mockups

Acesse os protótipos no **Figma**: [Gympass - Mockups](https://www.figma.com/proto/OcfNjTHRbCeXtv5XIlDoxJ/Gympass?node-id=0-1&t=6kTRblV2AckuMgjt-1)

---

## ⚙️ Configuração do Projeto

> **Requisitos:** Certifique-se de ter instalado as ferramentas necessárias antes de iniciar o projeto.

### 🖥️ **Rodando o Projeto Localmente**

```bash
# Clone o repositório
$ git clone <https://github.com/seu-usuario/gympass.git>

# Acesse a pasta do projeto
$ cd gympass

# Instale as dependências
$ flutter pub get

# Execute a aplicação
$ flutter run
```
