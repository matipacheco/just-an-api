require 'json'
require 'spec_helper'

describe Api::V1::PokemonController, type: :api do
  context 'Testing GET method' do
    before do
      get '/api/v1/pokemon/1'
    end

    it 'should respond with Bulbasaur data' do
      bulbasaur = {
          "id": 1,
          "identifier": "bulbasaur",
          "height": 7,
          "weight": 69,
          "base_experience": 64,
          "created_at": "2019-03-10T18:33:38.000Z",
          "updated_at": "2019-03-10T18:33:38.000Z"
      }

      expect(last_response.body).to eq(bulbasaur.to_json)
    end
  end
end

# describe Api::V1::PokemonController, type: :api do
#   context 'Testing POST method' do
#     before do
#       balbasaar = {
#         "identifier": "Balbasaar",
#         "height": 1,
#         "weight": 1,
#         "base_experience": 1
#       }
#
#       post '/api/v1/pokemon', params: balbasaar
#     end
#
#     it 'should respond with Balbasaar data' do
#       expect(last_response.body).to eq('')
#     end
#   end
# end