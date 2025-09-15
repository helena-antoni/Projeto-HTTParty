    #cenario_um
    Dado('que o usuario consulte informacoes de funcionarios') do
        @getlist = Employee_Requests.new 
    end

    Quando('ele realizar a pesquisa') do
        @list_employee = @getlist.find_employee
    end

    Entao('uma lista de funcionarios deve retornar') do 
        expect(@list_employee.code).to eql 200
        expect(@list_employee.message).to eql 'OK'
    end

    #cenario_dois
    Dado('que o usuario cadastre um novo usuario') do
        @create = Employee_Requests.new 
        @assert = Assertions.new
    end

    Quando('ele enviar as informacoes do funcionarios') do
        @create_employee = @create.create_employee(
            DATABASE[:id][:id1],
            DATABASE[:userId][:userId1],
            DATABASE[:title][:title1], 
            DATABASE[:body][:body1]
        )
        puts @create_employee
    end

    Entao('esse funcionario sera cadastrado') do
        @assert.request_sucess(@create_employee.code, @create_employee.message)
        expect(@create_employee["employee_id"]).to eql DATABASE[:id][:id1]
        expect(@create_employee["employee_userId"]).to eql DATABASE[:userId][:userId1]
        expect(@create_employee["employee_title"]).to eql DATABASE[:title][:title1]
        expect(@create_employee["employee_body"]).to eql  DATABASE[:body][:body1]


    end

    # cenario_tres
    Dado('que o usuario atualize as informacoes do funcionario') do
        @request = Employee_Requests.new
    end

    Quando('ele enviar as novas informacoes') do
        @update_employee = @request.update_employee(@request.find_employee[0]['id'],
        1,
        'titulo atualizado',
        'corpo atualizado')
        puts (@update_employee)
    end

    Entao('as informacoes do funcionario serao atualizadas') do
        expect(@update_employee.code).to eq(200)
        expect(@update_employee.message).to eq('OK')
        expect(@update_employee['employee_title']).to eq('titulo atualizado')
        expect(@update_employee['employee_body']).to eq('corpo atualizado')
        expect(@update_employee['employee_userId']).to eq(1)
        expect(@update_employee['id']).to eq(1)
    end

    #cenario_quatro
    Dado('que o usuario delete um cadastro de funcionario')  do
       @request = Employee_Requests.new
    end

    Quando('ele enviar a identificacao unica') do
         @delete_employee = @request.delete_employee(@request.find_employee[0]['id'])
    end

    Entao('o cadastro do funcionario sera removido') do
        expect(@delete_employee.code).to eq(200) 
        expect(@delete_employee.message).to eq('OK') 
        expect(@delete_employee).to be_empty

    end