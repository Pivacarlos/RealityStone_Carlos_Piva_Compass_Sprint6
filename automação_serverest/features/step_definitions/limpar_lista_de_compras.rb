Dado('que tenha uma quantidade de produto adcionada a lista de compras') do
    @login = Login.new
    @login.load
    @login.email.set 'carloscompra@gmail.com'
    @login.password.set '123'
    @login.submit.click
    @home = Home.new
    @home.PesquisarProdutos.set 'Logitech MX Vertical'
    @home.Pesquisar.click
    @home.btn_add_lista.click
  end
  
  Quando('clicar em limpar a lista') do
    @ListaProdutos = ListaProdutos.new
    @ListaProdutos.btn_limpa_lista.click
  end
  
  Então('deve exibir a mensagem {string}') do |string|
    expect(@home).to have_content string
  end