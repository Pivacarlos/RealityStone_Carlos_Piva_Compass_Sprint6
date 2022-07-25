Dado('que esteja com home produtos aberta') do
    @login = Login.new
    @login.load
    @login.email.set 'carloscompra@gmail.com'
    @login.password.set '123'
  end

  Dado('logado na aplicação') do
    @login = Login.new
    @login.load
    @login.email.set 'carloscompra@gmail.com'
    @login.password.set '123'
    @login.submit.click
  end
  
  Quando('clicar em adicionar a um dos produtos a lista') do
    @home = Home.new
    @home.btn_add_lista.click
  end
  
  Então('devo ver uma lista de compras com o produto {string} adicionado') do |string|
    expect(@home).to have_content string
  end
