#language: pt
@todos_os_testes
@adm_teste
@cadastro_adm
Funcionalidade: Cadastro de administrador
    Como administrador do e-commerce ServeRest
    Quero realizar um cadastro de conta administradora
    Para ultilizar o e-commerce no modo administrador

    Contexto: 
        Dado que esteja com a tela de cadastro para administrador aberta 

    Esquema do Cenário: Validar o cadastro de administrador
        Quando o administrador preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email         |Digite sua senha  |msg                                       |
        |                |compass.adm@compass.com  |testes123@        |Nome não pode ficar em branco             |
        |compassadm      |                         |testes123@        |Email é obrigatório                       |
        |compassadm      |compa@ss.adm             |testes123@        |Email deve ser um email válido            |
        |compassadm      |compass.adm@compass.com  |                  |Password não pode ficar em branco         |
        |compassadm      |compass.adm@compass.com  |testes123@        |Este email já está sendo usado            |

    Cenário: Validar o cadastro de administrador com dados verdadeiros
        Quando o administrador preencher os campos com dados válidos 
        Então o site retorna mensagem "<msg>"
        Exemplos:
        |msg                                       |
        |Cadastro realizado com sucesso            |