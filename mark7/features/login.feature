#language:pt

Funcionalidade: Login 

    Para que eu possa cadastrar e gerenciar minhas tarefas 
    Sendo um usuário 
    Posso acessar o sistema com meu email e senha previamente cadastrados.


    Contexto: Página principal
        Dado que eu acesso a página principal 



    @logout
    Cenario: Usuário deve ser autorizado 

        Quando eu faço login com "eu@papito.io" e "123456" 
        Então devo  ver o email "eu@papito.io" no dashboard
        E devo ver a seguinte mensagem "Olá, Fernando"


    Esquema do Cenario: Tentaiva de login

        Quando eu faço login com "<email>" e "<senha>"
        Então devo ver a seguinte mensagem "<alerta>"

        Exemplos:
        |eu@papito.io|12345678|Senha inválida.|
        |eu@papito.net|12345678|Usuário não cadastrado.|
        |eupapito.io|12345678|Email incorreto ou ausente.|


