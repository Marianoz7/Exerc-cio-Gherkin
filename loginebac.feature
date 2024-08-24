# language: pt
Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto:
    Dado que eu acesse a pagina de login da ebacshop

  Cenário: Autenticação Valida
    Quando eu digitar o usário "gustavo@ebacshop.com"
    E a Senha "@123"
    Então Deve ser direcionado para a tela de checkout

  Cenário: Usuário Inexistente
    Quando eu digitar o usário "xxgustavo@ebacshop.com"
    E a Senha "xx@123"
    Então Deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

  Esquema do Cenário: Autenticar Multiplos usuarios
    Quando Eu digitar <usuario>
    E a <senha>
    Entao Deve exibir a <mensagem> de Sucesso

    Exemplos:
      | usuario               | senha | mensagem            |
      | "gustavo@ebacshop.com | @123  | "Login com Sucesso" |
      | "camilla@ebacshop.com | @12345  | "Login com Sucesso" |
