Dado('que esteja com a tela de cadastro aberta') do
    @cadastro = Cadastro.new
    @cadastro.load
    end

    Quando('o usuário preencher os campos {string}, {string} e {string}') do |string, string2, string3|
      @cadastro.name.set string
      @cadastro.email.set string2
      @cadastro.password.set string3
      find('button[type="submit"]').click
    end

    Então('a mensagem  é exibida {string}') do |string|
      expect(@cadastro).to have_content string
    end

    Quando('o usuário preencher os campos com dados validos') do
      @GenerateCadastro = GenCadastro.new
      @cadastro.name.set @GenerateCadastro.generate_user_name
      @cadastro.email.set @GenerateCadastro.generate_email
      @cadastro.password.set @GenerateCadastro.generate_password
      find('button[type="submit"]').click
    end

    Então('o sistema deve retornar msg {string}') do |string|
      expect(@cadastro).to have_content string
    end


    

