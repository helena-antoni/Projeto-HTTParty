
Dado('que o usuario consulte informacoes de funcionarios') do
    @get_url = 'https://jsonplaceholder.typicode.com/posts/1'
    puts @teste
end

    Quando('ele realizar a pesquisa') do
        @list_employee = HTTParty.get(@get_url)
    end

    Entao('uma lista de funcionarios deve retornar') do 
        expect(@list_employee.code).to eql 200
        expect(@list_employee.message).to eql 'OK'
    end

    #cenario_dois
    Dado('que o usuario cadastre um novo usuario') do
        @post_url = 'https://jsonplaceholder.typicode.com/posts'
        
    end

    Quando('ele enviar as informacoes do funcionarios') do
        @create_employee = HTTParty.post(@post_url, :headers => {'Content-Type': 'application/json'}, body:{
            "userId": 90,
            "id": 101,
            "title": "101at nam consequatur ea labore ea harum",
            "body": "101cupiditate quo est a modi nesciunt soluta\nipsa voluptas error itaque dicta in\nautem qui minus magnam et distinctio eum\naccusamus ratione error aut"
    }.to_json)

    puts @create_employee
    end

    Entao('esse funcionario sera cadastrado') do
        puts @create_employee.code
        puts @create_employee.message
        puts @create_employee["userId"]
        puts @create_employee["id"]
    
    end

    # cenario_tres
    Dado('que o usuario atualize as informacoes do funcionario') do
        @get_employee = HTTParty.get('https://jsonplaceholder.typicode.com/posts/', :headers => {'Content-Type': 'application/json'})
        puts @get_employee[0]['id']
        @put_url = 'https://jsonplaceholder.typicode.com/posts/' + @get_employee[0]['id'].to_s
    end

    Quando('ele enviar as novas informacoes') do
    @update_employee = HTTParty.put(@put_url, :headers => {'Content-Type': 'application/json'}, body:{
        "id": 1,
        "title": "titulo atualizado",
        "body": "corpo atualizado",
        "userId": 1
    }.to_json)
    puts (@update_employee)
    end

    Entao('as informacoes do funcionario serao atualizadas') do
        expect(@update_employee.code).to eq(200)
        expect(@update_employee.message).to eq('OK')
        expect(@update_employee['title']).to eq('titulo atualizado')
        expect(@update_employee['body']).to eq('corpo atualizado')
        expect(@update_employee['userId']).to eq(1)
        expect(@update_employee['id']).to eq(1)
    end