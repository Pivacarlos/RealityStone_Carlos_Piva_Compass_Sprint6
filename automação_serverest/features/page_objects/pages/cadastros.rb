class Cadastros < SitePrism::Page
    set_url '/cadastrarusuarios'
    element :name, '#nome'
    element :email, '#email'
    element :password, '#password'
    element :btn_cadastrar, xpath: '//*[@id="root"]/div/div/form/div[8]/button'
    element :checkbox, '#administrador'
end