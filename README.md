# Gympass

Projeto avaliativo da disciplina **Desenvolvimento de Aplicações Móveis (DAM)**, focado em um aplicativo para gerenciamento de check-ins em academias próximas.

## 👋 Descrição
Este aplicativo permite que usuários se cadastrem, localizem academias próximas, realizem check-ins e acompanhem seu histórico de atividades. Administradores podem gerenciar academias e validar check-ins.

## 🛠️ Tecnologias Utilizadas
- **Framework**: Flutter
- **Banco de Dados**: SQLite

## 🎯 Funcionalidades
1. **Usuários**
   - Cadastro e autenticação com e-mail e senha.
   - Visualização e edição do perfil.
   - Histórico de check-ins e total de check-ins realizados.

2. **Check-ins**
   - Busca de academias próximas ou pelo nome.
   - Realização de check-ins com validação de proximidade e tempo.

3. **Administração**
   - Cadastro de academias no sistema.
   - Validação dos check-ins realizados pelos usuários.

## 🔒 Regras de Negócio
1. E-mail deve ser válido e único.
2. Não é permitido realizar dois check-ins no mesmo dia.
3. Check-in permitido apenas dentro de um raio de 100 metros da academia.
4. Check-ins válidos por até 20 minutos após a criação.
5. Apenas administradores podem validar check-ins e cadastrar academias.

## 🛠 Requisitos Não Funcionais
- Senhas armazenadas de forma criptografada.
- Autenticação utilizando armazenamento local seguro.
- Dados persistidos com SQLite.
- Paginação de 20 itens por página para históricos e listagens.

## 🚀 Mockups
[Figma](https://www.figma.com/proto/OcfNjTHRbCeXtv5XIlDoxJ/Gympass?node-id=0-1&t=6kTRblV2AckuMgjt-1)

## 📧 Discente
Luis Felipe de Oliveira Andrade  
[luis.felipea@ufape.edu.br](mailto:luis.felipea@ufape.edu.br)

