#language: pt
@todos_os_testes
@usuario_teste
@cadastro_usuario
Funcionalidade: Cadastro de usuário
    Como usuário do e-commerce ServeRest
    Quero realizar um cadastro simples
    Para logar na aplicação 

    Contexto: 
        Dado que esteja com a tela de cadastro aberta

    Esquema do Cenário: Validar o cadastro de usuários
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem  é exibida "<msg>"
        Exemplos:
        |Digite seu nome  |Digite seu email          |Digite sua senha  |msg                                  |
        |                 |carlosteste@gmail.com     |testes123@        |Nome não pode ficar em branco        |
        |Carlos           |                          |testes123@        |Email é obrigatório                  |
        |Carlos           |carlosteste@gmail         |testes123@        |Email deve ser um email válido       |
        |Carlos           |carlosteste@gmail.com     |                  |Password não pode ficar em branco    |
        |Carlos           |carlosteste@gmail.com     |testes123@        |Já é cadastrado?Entrar               |
        |rodrigofaro      |carlosteste@gmail.com     |testes123@        |Este email já está sendo usado       |
    
    Cenário: Validar o cadastro de usuários com dados validos
        Quando o usuário preencher os campos com dados validos
        Então o sistema deve retornar msg "<mensagem>"
        Exemplos:
        |mensagem                                  |
        |Cadastro realizado com sucesso            |                                       
    
    
