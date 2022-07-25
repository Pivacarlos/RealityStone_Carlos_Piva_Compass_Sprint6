#language: pt

@regression
@search
Funcionalidade: Busca
    COMO um usuario do ecommerce AdvantageOnlineShopping
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar na home
        Dado que esteja na home

    @search_for_product
    Cenario: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resultados na busca

    @search_for_diferent_products
    Esquema do Cenario: Buscar por produtos existentes
        Quando buscar pelo produto "<produto>"
        Então deverão ser retornados resultados na busca
    
        Exemplos:
        |     produto   |
        | Speakers      |
        | Tablets       |           
        | Laptops       |
        | Mice          |
        | Headphones    |

        