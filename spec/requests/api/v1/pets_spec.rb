require 'swagger_helper'

RSpec.describe 'api/v1/pets', type: :request do
  path '/pets' do
    get 'Retrieves a paged array of pets' do
      tags 'Pets'
      produces 'application/json'
      parameter name: :limit, in: :query, type: :integer, description: 'Limit for the number of pets'

      response '200', 'OK' do
        let(:limit) { 2 } # Example limit value

        schema type: :object,
          properties: {
            description: { type: :string },
            content: {
              type: :array,
              items: {
                type: :object,
                properties: {
                  id: { type: :integer },
                  name: { type: :string }
                },
                required: %w[id name] # Adjust this if necessary
              }
            }
          },
          required: %w[description content] # Adjust this if necessary

        run_test! do |response|
          expect(response).to have_http_status(:ok)
          expect(JSON.parse(response.body)['content'].size).to eq(2) # Adapt this to your specific scenario
        end
      end

      response '400', 'Bad Request' do
        let(:limit) { 150 } # Example limit value exceeding the allowed maximum

        schema type: :object,
          properties: {
            code: { type: :integer },
            message: { type: :string }
          },
          required: %w[code message] # Adjust this if necessary

        run_test! do |response|
          expect(response).to have_http_status(:bad_request)
          expect(JSON.parse(response.body)['message']).to eq('unexpected error')
        end
      end
    end
  end
end
