Dado('que esteja com a tela de cadastro para administrador aberta') do
  @cadastroAdm = CadastroAdm.new
  @cadastroAdm.load
end

Quando('o administrador preencher os campos {string}, {string} e {string}') do |string, string2, string3|
  @cadastroAdm.name.set string
  @cadastroAdm.email.set string2
  @cadastroAdm.password.set string3
  @cadastroAdm.checkbox.click
  find('button[type="submit"]').click
end

Então('a mensagem é exibida {string}') do |string|
  expect(@cadastroAdm).to have_content string
end

Quando('o administrador preencher os campos com dados válidos') do
  @GenerateCadastro = GenCadastro.new
  @cadastroAdm.name.set @GenerateCadastro.generate_user_name
  @cadastroAdm.email.set @GenerateCadastro.generate_email
  @cadastroAdm.password.set @GenerateCadastro.generate_password
  @cadastroAdm.checkbox.click
  find('button[type="submit"]').click
end
        
Então('o site retorna mensagem {string}') do |string|
  expect(@cadastroAdm).to have_content string
end
