RSpec.describe PetsController, type: :controller do
  describe 'GET #hello' do
    it 'returns a hello message' do
      get :hello

      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq('application/json')

      parsed_response = JSON.parse(response.body)
      expect(parsed_response['message']).to eq('Hello, world!')
    end
  end
end
