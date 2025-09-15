class Employee_Requests


    def find_employee
        Employee.get('/posts')
    end

    def create_employee(id, userId, title, body)
        Employee.post('/posts/', body: {
            "employee_id": id,
            "employee_userId": userId, 
            "employee_title": title,
            "employee_body": body
    }.to_json)
    end

    def update_employee(id,userId,  title, body)
        Employee.put('/posts/'+ id.to_s, body:{
            "employee_id": id,
            "employee_userId": userId, 
            "employee_title": title,
            "employee_body": body
        }.to_json)
    end

    def delete_employee(id)
        Employee.delete('/posts/' + id.to_s)
    end
end

