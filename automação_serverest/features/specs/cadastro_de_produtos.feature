#language: pt
@todos_os_testes
@adm_teste
@cadastrar_produtos
Funcionalidade: Cadastrar um novo produto
    Como administrador do e-commerce Front - ServeRest
    Quero cadastrar um novo produto 
    Para os usuários poderem comprar

    Contexto: 
        Dado que esteja na tela de cadastro de produtos
        E logado como administrador

    Esquema do Cenário: Validar o cadastro de um novo produto
        Quando o usuário preencher os campos "<Nome:>", "<Preço:>", "<Descrição:>" e "<Quantidade:>"
        Então o Sistema Exibe a '<msg:>'
        Exemplos:
        |Nome:  |Preço: |Descrição:       |Quantidade:     |msg:                                      |
        |       |50     |DPI ajustavel    |1000            |Nome não pode ficar em branco             |
        |Mouse  |       |DPI ajustavel    |1000            |Preco é obrigatório                       |
        |Mouse  |50     |                 |1000            |Descricao não pode ficar em branco        |
        |Mouse  |50     |DPI ajustavel    |                |Quantidade é obrigatório                  |
        |Mouse  |50     |DPI ajustavel    |1000            |Já existe produto com esse nome           | 
        

    