# language: pt
Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto:
    Dado que eu acesse a pagina do produto desejado

  Cenário: Selecionar Cor , Tamanho e Quantidade
    Quando Eu clicar na cor e tamanho desejado
    E escolher a quantidade
    Então o Produto deve ser direcionado ao carrinho de compras

  Cenário: Escolher mais de 10 Produtos por Venda
    Quando Eu clicar na quantidade de produtos
    E escolher mais que 10 produtos
    Então Deve exibir a mensagem de erro

  Cenário: Botão Limpar
    Quando Eu desejar desfazer a escolha de tamanho , cor ou Quantidade
    E interagir com o Botão "limpar"
    Então Deve voltar as opções ao estado original

  Esquema do Cenário: Escolher Multiplas opções
    Quando Eu escolher <Cor> e <tamanho>
    E escolher a <quantidade>
    Entao o produto deve ser direcionado ao carrinho de compras

    Exemplos:
      | cor    | tamanho | quantidade |
      | Blue   | XS      |          1 |
      | Red    | S       |          2 |
      | Orange | L       |          3 |
      | Red    | M       |          4 |
      | Red    | XL      |          9 |
