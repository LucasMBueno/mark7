#language: pt

Funcionalidade: Cadastro
    Para que eu possa usuar o site e gerenciar minhas tarefas
    Preciso preencher um formulário de cadastro
    
    Contexto: Formulário
        Dado que eu estou no formulário de cadastro

    @logout @cadastro
    Cenário: Cadastro simples

        E possuo os seguintes dados:
            | nome  | Fernando              |
            | email | fernando@qaninja.net1 |
            | senha | 123456                |
        Quando faço o meu cadastro 
        Então vejo a mensagem "Olá, Fernando"


    @cadastro @cadastro_teste
    Esquema do Cenario: Campos obrigatórios

        E possuo os seguintes dados:
        | nome  | <nome>  |
        | email | <email> |
        | senha | <senha> |
        Quando faço o meu cadastro 
        Então vejo a seguinte mensagem "<saida>"

        Exemplos:
            | nome     | email                | senha  | saida                |
            |          | fernando@qaninja.net | 123456 | Nome é obrigatório.  |
            | Fernando |                      | 123456 | Email é obrigatório. |
            | Fernando | fernando@qaninja.net |        | Informe uma senha.   |