#language: pt

@regression
@search 
Funcionalidade: Busca
    COMO um usuário do ecommerce AdvantageOnlineShopping
    QUERO poder buscar por diferetnes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar na home
        Dado que eu esteja na home

    @search_for_product
    Cenário: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resultados na busca
        
    @search_for_different_products
    Esquema do Cenário: Buscar por um produto existente
        Quando realizar pelo produto "<produto>"
        Então deverão ser retornados resultados na busca

    Exemplos:
    | Produto    |
    | Speakers   |
    | Tablets    |
    | Laptops    |
    | Mice       |
    | Headphones |