require 'json'
require 'spec_helper'

describe Api::V1::PokemonController, type: :api do
  context 'Bulbasaur, I choose you!' do
    before do
      get '/api/v1/pokemon/1'
    end

    it 'should respond with Bulbasaurs data' do
      bulbasaur = {
          "id": 1,
          "identifier": "bulbasaur",
          "height": 7,
          "weight": 69,
          "base_experience": 64
      }

      expect(last_response.body).to eq(bulbasaur.to_json)
    end
  end
end

describe Api::V1::PokemonController, type: :api do
  context 'Bulbasaur, I... update you (?)' do
    before do
      put '/api/v1/pokemon/1', pokemon: { "height": 1 }
    end

    it 'should respond with Bulbasaurs updated data' do
      bulbasaur = {
          "id": 1,
          "identifier": "bulbasaur",
          "height": 1,
          "weight": 69,
          "base_experience": 64
      }

      expect(last_response.body).to eq(bulbasaur.to_json)
    end
  end
end

describe Api::V1::PokemonController, type: :api do
  suki = {
      "identifier": 'Suki',
      "height": 1,
      "weight": 10,
      "base_experience": 0
  }

  context 'Suki, I create you!' do
    before do
      post '/api/v1/pokemon', pokemon: suki
    end

    it 'should respond with Bulbasaurs updated data' do
      response = JSON.parse last_response.body
      response.delete 'id'

      expect(response.to_json).to eq(suki.to_json)
    end
  end
end