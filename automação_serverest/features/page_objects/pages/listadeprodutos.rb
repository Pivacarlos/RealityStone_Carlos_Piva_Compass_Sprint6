class ListaProdutos < SitePrism::Page
    set_url '/minhaListaDeProdutos' 
    element :btn_limpa_lista, '#root > div > div > div > button' 
end