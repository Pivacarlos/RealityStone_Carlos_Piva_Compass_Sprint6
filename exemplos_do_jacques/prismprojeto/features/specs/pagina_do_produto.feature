#language: pt

@regression
@pdp
Funcionalidade: Página do Produto
    SENDO um usuário do AvantageOnlineShopping
    QUERO poder personalizar os Produtos que irei comprar na pagina do Produto
    PARA ter uma melhor experiencia de compra

    Contexto: Estar na pagina de um produto
        Dado que esteja na home
        Quando realizar uma busca por um produto existente
        E acessar a página do produto 

    @change_color_pdp
    Cenário: Trocar a cor do produto na PDP
        Quando alterar a cor do produto
        Então deverá alterar a imagem apresentada na PDP
