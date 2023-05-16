require 'swagger_helper'

RSpec.describe 'pets', type: :request do

  path '/pets' do

    get('listPets pet') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('createPets pet') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/pets/{petId}' do
    # You'll want to customize the parameter types...
    parameter name: 'petId', in: :path, type: :string, description: 'petId'

    get('show pet') do
      response(200, 'successful') do
        let(:petId) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
