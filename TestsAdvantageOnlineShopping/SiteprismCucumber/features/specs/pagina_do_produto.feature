#language: pt

@regression
@search
Funcionalidade: Busca
    COMO um usuário do Ecommerce AdvantageOnlineShopping
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar na página de um produto
        Dado que esteja na página do produto existente

    @change_color_pdp
    Cenário: Trocar a cor do produto na PDP
        Quando alterar a cor do produto
        Então deverá alterar a quantidade exibida na PDP

    @increase_product_quantity
    @increase_product_quantity_only_pdp
    Cenário: Aumentar quantidade do produto na PDP
        Quando aumentar a quantidade do produto
        Então deverá alterar a quantidade exibida na PDP
        
    @increase_product_quantity
    @increase_product_quantity_validate_cart
    Cenário: Aumentar quantidade do produto na PDP aumenta no carrinho
        Quando aumentar a quantidade do produto
        E adicionar o produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho com a quantidade