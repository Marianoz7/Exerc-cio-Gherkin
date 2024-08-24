# language: pt
Funcionalidade: Tela de Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
    Dado que eu acesse a pagina de cadastro da ebacshop

 Cenário: Cadastro Feito
    Quando eu completar corretamente os espaços com todos os dados obrigatórios, marcado com asteriscos
    E e interagir com o botao de finalizar compra
    Então Deve ser direcionado para a tela de pagamento

Cenário: campo e-mail com formato inválido
    Quando eu clicar no espaço do email
    E Digitar o email fffaaa#ebacxx.com
    Então o Sistema deve inserir uma mensagem de erro

Cenário: Tentar cadastrar com campos vazios
    Quando Eu colocar so o nome
    E e interagir com o botao de finalizar compra
    Então Deve exibir mensagem de alerta

