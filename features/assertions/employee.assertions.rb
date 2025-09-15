class Assertions
    def request_sucess(status_code, message)
        expect(status_code).to eq(201)
        expect(message).to eq('Created')
    end
end