
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

    # --- Cenario 2 ---

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
        # puts @create_employee.parsed_response['data']["employee_name"]
        
        #expect(@create_employee.code).to eql (201)
        #expect(@create_employee.msg).to eql 'OK'
        #expect(@create_employee['status']).to eql 'sucess'
    end