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

class Login < SitePrism::Page
    set_url'/login'
    element :email, '#email'
    element :password, '#password'
    element :submit, 'button[type="submit"]'
end

class Cadastro < SitePrism::Page
    set_url '/cadastrarusuarios'
    element :name, '#nome'
    element :email, '#email'
    element :password, '#password'
    element :btn_cadastrar, xpath: '//*[@id="root"]/div/div/form/div[8]/button'
end

class CadastroAdm < SitePrism::Page
    set_url '/cadastrarusuarios'
    element :name, '#nome'
    element :email, '#email'
    element :password, '#password'
    element :btn_cadastrar, xpath: '//*[@id="root"]/div/div/form/div[8]/button'
    element :checkbox, '#administrador'
end

class CadastroProduto < SitePrism::Page
    set_url '/admin/cadastrarprodutos' 
    element :name, '#nome'
    element :description, '#description' 
    element :price, '#price'
    element :quantity, '#quantity' 
    element :btn_cadastrar, '#root > div > div > div > form > div:nth-child(8) > div > button' 
    element :btn_entrar_cadastro, '#root > div > div > p.row > div:nth-child(4) > div > div > a' 
end

class RegistrarUsuario < SitePrism::Page
    set_url '/admin/cadastrarusuarios'
    element :name, '#nome'
    element :email, '#email'
    element :password, '#password'
    element :btn_cadastrar_usuario , '#root > div > div > div > form > div:nth-child(7) > div > button'
end

class IncrementoDecrementoListaCompras < SitePrism::Page
    set_url '/minhaListaDeProdutos'
    element :incremento, xpath: '//*[@id="root"]/div/div/div/div/div/section/div/div/div[3]/button[2]'
    element :decremento, xpath: '//*[@id="root"]/div/div/div/div/div/section/div/div/div[3]/button[1]'
    element :lista_compras, xpath: '//*[@id="navbarTogglerDemo01"]/ul/li[2]/a'
end


class ListaProdutos < SitePrism::Page
    set_url '/minhaListaDeProdutos' 
    element :btn_limpa_lista, '#root > div > div > div > button' 
end