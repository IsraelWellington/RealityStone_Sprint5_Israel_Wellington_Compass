#language: pt

@regression
@search
Funcionalidade: Contato

    Contexto: Estar na home
        Dado que esteja na home

    @contact_ok
    Cenário: Entrar em contato pelo formulário HomePage
        Quando entrar em contato pelo formulário da home
        Então deverá apresentar um modal de mensagem enviada
