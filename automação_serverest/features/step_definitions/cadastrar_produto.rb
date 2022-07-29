  Dado('logado como administrador') do
    @login = Login.new 
    @login.load 
    @login.email.set 'carlosteste@gmail.com' 
    @login.password.set '123' 
    @login.submit.click 
    @cadastroProduto = CadastroProduto.new 
    @cadastroProduto.btn_entrar_cadastro.click 
  end

  Dado('que esteja na tela de cadastro de produtos') do
    @cadastroProduto = CadastroProduto.new 
    end
  

