module Employee
    include HTTParty
    base_uri 'https://jsonplaceholder.typicode.com/'
    format :json
    headers 'Content-Type' => 'application/json', 'Authorization'
end