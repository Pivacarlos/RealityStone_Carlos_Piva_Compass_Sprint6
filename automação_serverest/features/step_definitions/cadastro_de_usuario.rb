Dado('que esteja com a tela de cadastro aberta') do
    @cadastros = Cadastros.new
    @cadastros.load
    end

    Quando('o usuário preencher os campos {string}, {string} e {string}') do |string, string2, string3|
      @cadastros.name.set string
      @cadastros.email.set string2
      @cadastros.password.set string3
      find('button[type="submit"]').click
    end

    Então('a mensagem  é exibida {string}') do |string|
      expect(@cadastros).to have_content string
    end

    Quando('o usuário preencher os campos com dados validos') do
      @GenerateCadastros = GenCadastro.new
      @cadastros.name.set @GenerateCadastros.generate_user_name
      @cadastros.email.set @GenerateCadastros.generate_email
      @cadastros.password.set @GenerateCadastros.generate_password
      find('button[type="submit"]').click
    end

    Então('o sistema deve retornar msg {string}') do |string|
      expect(@cadastros).to have_content string
    end


    

