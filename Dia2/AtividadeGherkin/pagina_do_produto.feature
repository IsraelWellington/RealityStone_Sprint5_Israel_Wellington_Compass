#language: pt

Funcionalidade: Página do Produto
    SENDO um usuário do Fantoy
    QUERO poder selecionar os produtos que da PDP
    PARA ter uma compra na plataforma

    Contexto: Estar na página do produto
        Dado que esteja na home
        Quando selecionar o produto
        E acessar a página do produto
    
    Esquema do Cenário: Vizualizar descrição do produto
        Então o produto deverá ter sua descrição

    Esquema do Cenário: Aumentar quantidade do produto na PDP
        Quando aumentar quantidade de produtos
        Então deverá aumentar a quantidade exibida na PDP

    Esquema do Cenário: Aumentar quantidade do produto na PDP aumenta no carrinho
        Quando aumentar quantidade de produtos
        E adicionar produto ao carrinho
        Então deverá adicionar o produto no carrinho com a quantidade selecionada

    Esquema do Cenário: Adiocionar item ao carrinho
        Quando adicionar o produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho com sucesso
