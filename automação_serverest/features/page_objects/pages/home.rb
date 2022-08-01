class Products < SitePrism::Section
    element :name, 'card-title negrito'
    element :price, 'card-subtitle mb-2 text-muted'
    element :btn_add_lista, 'button[class="btn btn-primary"]'
end

class Home < SitePrism::Page
    set_url '/'
    element :PesquisarProdutos, 'input[type="search"]'
    element :btn_add_lista, 'button[class="btn btn-primary"]'
    element :Pesquisar, :xpath, '//*[@id="root"]/div/div/div[1]/div/div[3]/button'
end


