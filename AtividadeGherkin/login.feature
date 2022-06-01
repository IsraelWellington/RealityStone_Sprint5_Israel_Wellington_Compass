#language: pt

Funcionalidade: login
    SENDO um usuário do Fantoy
    QUERO poder logar na conta
    PARA ter uma compra na plataforma

    Contexto: Ter uma conta
    Dado que já tenha cadastrado uma conta no site

    Esquema do Cenário: Logar no site
    Dado que esteja na página home do site
    Quando selecionar o ícone de "Minha Conta"
    E preencher o e-mail e senha
    Então deverá ser feito o login