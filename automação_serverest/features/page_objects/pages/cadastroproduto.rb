class CadastroProduto < SitePrism::Page
    set_url '/admin/cadastrarprodutos' 
    element :name, '#nome'
    element :description, '#description' 
    element :price, '#price'
    element :quantity, '#quantity' 
    element :btn_cadastrar, '#root > div > div > div > form > div:nth-child(8) > div > button' 
    element :btn_entrar_cadastro, '#root > div > div > p.row > div:nth-child(4) > div > div > a' 
end