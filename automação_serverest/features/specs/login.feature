#language: pt
@todos_os_testes
@adm_teste
@usuario_teste
@login_completo
Funcionalidade: Login de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar login 
    Para usar a aplicação
        
    Esquema do Cenário: Validar o login de usuários
        Dado que esteja na tela de login
        Quando o usuário preencher os campos "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email       |Digite sua senha |msg                                    |
        |                       |@Teste123        |Email é obrigatório                    |
        |carlosteste@gmail      |@Teste123        |Email deve ser um email válido         |
        |carlosteste@gmail.com  |                 |Password não pode ficar em branco      |
        |carlosteste@gmail.com  |@Teste123        |                                       |
        |carlosteste@gmail.com  |senhainvalida    |Email e/ou senha inválidos             |
                                       
