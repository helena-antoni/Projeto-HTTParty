#language: pt 

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informações
    O usuário do sistema 
    Deseja poder consultar informações dos funcionários

    Cenario: Buscar informações de Funcionarios
        Dado que o usuario consulte informacoes de funcionarios
        Quando ele realizar a pesquisa
        Entao uma lista de funcionarios deve retornar 
    
    @cenario_dois
    Cenario: Cadastrar funcionarios 
        Dado que o usuario cadastre um novo usuario
        Quando ele enviar as informacoes do funcionarios
        Entao esse funcionario sera cadastrado

    @cenario_tres
    Cenario: Atualizar informacoes cadastrais
        Dado que o usuario atualize as informacoes do funcionario
        Quando ele enviar as novas informacoes
        Entao as informacoes do funcionario serao atualizadas

    