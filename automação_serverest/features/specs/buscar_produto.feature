#language: pt
@todos_os_testes
@usuario_teste
@busca_produto
Funcionalidade: Busca de produtos por nome
    Como um usuário do ecommerce ServeRest
    Quero pesquisar por produtos na home
    Para poder personalizar minhas compras

    Contexto: Estar na Home
    Dado que esteja na Home
    E logado com uma conta de usuário

    Esquema do Cenário: Buscar por produtos existentes
    Quando realizar uma busca pelo produto "<produto>"
    Então o sistema deve mostrar os produtos existentes
    Exemplos:
    | produto   |
    | Mouse     |
    | Samsung   |
    | Laptops   |


