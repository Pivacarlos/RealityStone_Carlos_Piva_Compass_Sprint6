Dado('que esteja na Home') do
    @home = Home.new
    @home.load
    end
    
Dado('logado com uma conta de usuário') do
  @login = Login.new
  @login.load
  @login.email.set 'carloscompra@gmail.com'
  @login.password.set '123'
  @login.submit.click
end
  
Quando('realizar uma busca pelo produto {string}') do |string|
  @home.PesquisarProdutos.set string
  @home.Pesquisar.click
end
  
Então('o sistema deve mostrar os produtos existentes') do
  expect(@home).to have_xpath('//*[@id="root"]/div/div/div[1]/div/div[2]/input')
end