Dado('que o usuario consulte informacoes de funcionarios') do
    @get_url= ('https://jsonplaceholder.typicode.com/posts/1') 

end

Quando('ele realizar a pesquisa') do
    @list_employee = HTTParty.get(@get_url)
end

Entao('uma lista de funcionarios deve retornar') do
    expect(@list_employee.code).to eq 200
    expect(@list_employee.message).to eq 'OK'
end
