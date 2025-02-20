![](https://custom-icon-badges.demolab.com/badge/STATUS-EM%20DESENVOLVIMENTO-8957E5.svg?logo=tools&logoColor=white)

# Gympass - Gerenciamento de Check-ins em Academias  
> *Desenvolvido para a disciplina de **Desenvolvimento de Aplicações Móveis (DAM)** - UFAPE 2024.1*  
> **Docente**: *Thaís Alves Burity Rocha (**[@taburity](https://github.com/taburity)**)*  

## 📑 Descrição  

O **Gympass** é um aplicativo mobile para facilitar o gerenciamento de check-ins em academias próximas. Usuários podem se cadastrar, localizar academias próximas e registrar sua presença, acompanhando seu histórico de atividades.  

Os administradores possuem permissões exclusivas para cadastrar academias e validar check-ins, garantindo um controle eficiente e organizado.  

Este projeto tem como referência o **Gympass**, trazendo uma versão simplificada e adaptada para os objetivos da disciplina.  

---

## 📊 Tecnologias Utilizadas  

O aplicativo será desenvolvido utilizando `Flutter` para a interface e `PostgreSQL` para o armazenamento de dados.  

> **Tecnologias e Versões:**  
> | Flutter | PostgreSQL | Dart |
> | :------------: | :---: | :------: |
> | [![Flutter](https://img.shields.io/badge/versão-3.13.0-blue)](https://flutter.dev) | [![PostgreSQL](https://img.shields.io/badge/versão-15-green)](https://www.postgresql.org/) | [![Dart](https://img.shields.io/badge/versão-3.2.0-blue)](https://dart.dev/) |

Tecnologias adicionais:  
- **Dart**  
- **Flutter SDK**  
- **PostgreSQL**  
- **Firebase Auth**  
- **Git**  

---

## 🎯 Funcionalidades  

### 🔹 **Usuários**  
- Cadastro e autenticação com e-mail e senha.  
- Edição de perfil e visualização do histórico de check-ins.  

### 🔹 **Check-ins**  
- Localização de academias próximas.  
- Validação de proximidade para check-ins.  
- Registro do histórico de atividades do usuário.  

### 🔹 **Administração**  
- Cadastro de academias no sistema.  
- Validação dos check-ins realizados pelos usuários.  

---

## 🔒 Regras de Negócio  

1. O e-mail deve ser válido e único para cada usuário.  
2. Não é permitido realizar mais de um check-in no mesmo dia.  
3. O check-in só pode ser realizado dentro de um raio de 100 metros da academia.  
4. Check-ins são válidos por até 20 minutos após a criação.  
5. Apenas administradores podem validar check-ins e cadastrar academias.  

---

## 📌 Backlog e Planejamento  

### 🔹 **Backlog (Estórias do Usuário)**  

1. *"Como um usuário, quero me cadastrar e fazer login para acessar o aplicativo com segurança."*  
2. *"Como um usuário, quero visualizar as academias próximas para facilitar a escolha do local de treino."*  
3. *"Como um usuário, quero realizar check-ins para registrar minha presença na academia."*  
4. *"Como um usuário, quero acompanhar meu histórico de check-ins para manter meu controle de treinos."*  
5. *"Como um administrador, quero cadastrar novas academias para disponibilizá-las aos usuários."*  
6. *"Como um administrador, quero validar os check-ins dos usuários para garantir autenticidade."*  

### 🔹 **Planejamento do Desenvolvimento**  

O desenvolvimento será acompanhado pelo **GitHub Projects**, utilizando um quadro Kanban para organizar as tarefas e acompanhar o progresso.  

🔗 [Acesse o quadro Kanban do projeto no GitHub](https://github.com/users/luisfelipe03/projects/2) 

---

## 🚀 Mockups  

Acesse os protótipos no **Figma**: [Gympass - Mockups](https://www.figma.com/proto/OcfNjTHRbCeXtv5XIlDoxJ/Gympass?node-id=0-1&t=6kTRblV2AckuMgjt-1)  

---

## ⚙️ Configuração do Projeto  

> **Requisitos:** Certifique-se de ter instalado as ferramentas necessárias antes de iniciar o projeto.  

### 🖥️ **Rodando o Projeto Localmente**  

```bash
# Clone o repositório
$ git clone https://github.com/luisfelipe03/Gympass-DAM.git

# Acesse a pasta do projeto
$ cd gympass

# Instale as dependências
$ flutter pub get

# Configuração do banco de dados PostgreSQL
$ psql -U postgres -d gympass -f database/schema.sql

# Execute a aplicação
$ flutter run
```

---

## 🎲 Desenvolvedor  

![Luis Felipe](https://github.com/luisfelipe03)  
📧 luis.felipea@ufape.edu.br
