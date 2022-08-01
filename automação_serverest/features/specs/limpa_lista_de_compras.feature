#language: pt
@todos_os_testes
@usuario_teste
@limpar_lista_produtos
Funcionalidade: Limpar lista de compras de um usuário

    Cenário: Limpar lista de compras
    Dado que tenha uma quantidade de produto adcionada a lista de compras
    Quando clicar em limpar a lista
    Então deve exibir a mensagem 'Seu carrinho está vazio'

