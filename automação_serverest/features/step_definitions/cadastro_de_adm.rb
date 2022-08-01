Dado('que esteja com a tela de cadastro para administrador aberta') do
  @cadastros = Cadastros.new
  @cadastros.load
end

Quando('o administrador preencher os campos {string}, {string} e {string}') do |string, string2, string3|
  @cadastros.name.set string
  @cadastros.email.set string2
  @cadastros.password.set string3
  @cadastros.checkbox.click
  find('button[type="submit"]').click
end

Então('a mensagem é exibida {string}') do |string|
  expect(@cadastros).to have_content string
end

Quando('o administrador preencher os campos com dados válidos') do
  @GenerateCadastros = GenCadastro.new
  @cadastros.name.set @GenerateCadastros.generate_user_name
  @cadastros.email.set @GenerateCadastros.generate_email
  @cadastros.password.set @GenerateCadastros.generate_password
  @cadastros.checkbox.click
  find('button[type="submit"]').click
end
        
Então('o site retorna mensagem {string}') do |string|
  expect(@cadastros).to have_content string
end
