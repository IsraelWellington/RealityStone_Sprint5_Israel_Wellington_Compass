#language: pt

Funcionalidade: Cadastro
    SENDO um usuário do Fantoy
    QUERO poder criar uma conta no site
    PARA ter uma compra na plataforma

    Contexto: Estar na página de cadastro
        Dado que esteja na gome
        E selecionado para cadastrar

    Esquema do Cenário: Validar o cadastro de usuários
        Quando realizar cadastro "<tipo>"
        Então será exibida a mensagem "<msg>"
        Exemplos:
        | tipo        | msg                                                 |
        | válido      | cadastro realizado com sucesso                      |
        | inválido    | campos preenchidos são inválidos                    |
        | duplicidade | documento informado já conta na nossa base de dados |
        | campo vazio | campo obrigatório                                   |

    Esquema do Cenário: Validar o cadastro de endereço
        Quando informar o CEP
        E informar o número e complemento
        Então deverá mostrar a cidade, o estado e o endereço
        E cadastrar o endereço
