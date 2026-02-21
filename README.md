# Projeto-HTTParty


## 📝 Descrição
Este projeto foi desenvolvido como parte dos meus estudos no curso [**QAlizando** ](https://www.youtube.com/watch?v=tX3SKUaGL14&list=PL0nYAInGtru1q0laP62tgjTWohsij782i&i), onde apliquei os conceitos de automação de testes em Ruby. Para este repositório, utilizei a API pública [ **Dummy Rest API** ](https://dummy.restapiexample.com/) como alvo dos testes, simulando o gerenciamento de funcionários (mapeados como `posts` na API).

A suíte valida operações fundamentais de CRUD, garantindo que as requisições de consulta, criação, atualização e deleção funcionem conforme o esperado em um ambiente de integração contínua.



## 🔶 Funcionalidades Principais
* **Cenários BDD:** Escrita de testes em Gherkin (Português) para facilitar a leitura por qualquer stakeholder.

* **Validação de CRUD Completo:** Cobertura dos métodos `GET`, `POST`, `PUT` e `DELETE`.

* **Asserções de Resposta:** Verificação de *Status Codes* (200, 201), mensagens de retorno e integridade do JSON.

* **Encapsulamento de Requisições:** Uso do padrão de projeto para separar a lógica do HTTP da lógica do teste.

## 🚀 Tecnologias Utilizadas
- **Ruby**: Linguagem base pela sua agilidade e sintaxe voltada a testes.

- **Cucumber**: Framework de BDD para execução e documentação dos cenários.

- **HTTParty**: Cliente HTTP para consumo de APIs REST.

- **RSpec**: Biblioteca de expectativas usada para as validações (*matchers*).

- **Faker**: Integrado para geração de dados dinâmicos e realistas.

## 🏗️ Arquitetura do Projeto
Este projeto segue a estrutura:
- **`features/bdd`**: Especificações dos comportamentos esperados (arquivos `.feature`).

- **`features/requests`**: Camada de serviço que isola as chamadas à API (ex: `Employee_Requests`).

- **`features/assertions`**: Camada de validação para reutilização de lógicas de sucesso/erro.

- **`features/step_definitions`**: Código que conecta a escrita humana (Gherkin) à execução técnica.

- **`features/support`**: Configurações globais, como a URL base da API e carregamento de hooks.

## ⚙️ Configuração e Como Executar

### Pré-requisitos
Para rodar este projeto, você precisará de:
* **Ruby:** Versão 3.0 ou superior instalada.
* **Bundler:** Gem para gerenciar as dependências do projeto.

### Instalação
1. Clone o repositório:
   ```bash
   git clone [https://github.com/helena-antoni/Projeto-HTTParty.git](https://github.com/helena-antoni/Projeto-HTTParty.git) 
   ```

2. Acesse a pasta do projeto:
    ```bash 
    cd Projeto-HTTParty
    ```
3. Instale as dependências:
   ```bash 
   cd bundle install
   ```
### Execução dos Testes
Para rodar todos os cenários e ver o relatório detalhado no terminal:
```
bundle exec cucumber
```
 
## 🔗 Endpoints da API Testada
Os testes são direcionados para os seguintes recursos da Dummy Rest API:
* **GET (Listar):** https://dummy.restapiexample.com/api/v1/employees

* **POST (Criar):** https://dummy.restapiexample.com/api/v1/create

* **PUT (Atualizar):** https://dummy.restapiexample.com/api/v1/update/{id}

* **DELETE (Remover):** https://dummy.restapiexample.com/api/v1/delete/{id}

<br>

 ## 🤝 Contato e Conexão
|  | GitHub | LinkedIn | Email |
| :--- | :--- | :--- | :--- |
**Helena Antoni** | [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/helena-antoni) | [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/helena-antoni/) | helena.antoni.dev@gmail.com| 