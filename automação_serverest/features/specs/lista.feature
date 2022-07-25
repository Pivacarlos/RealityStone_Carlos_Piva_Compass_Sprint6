#language: pt
@todos_os_testes
@usuario_teste
@adicionar_produtos_lista
Funcionalidade: Adiconar produto a lista de compra
    Como usuário do e-commerce ServeRest
    Quero Adiconar um produto a lista de compra
    Para Salvar intes para minhas compras

    Cenário: Adicionar produto a lista de compra
    Dado que esteja com home produtos aberta
    E logado na aplicação
    Quando clicar em adicionar a um dos produtos a lista
    Então devo ver uma lista de compras com o produto "Mouse" adicionado




