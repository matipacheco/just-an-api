require 'json'
require 'spec_helper'

describe Api::V1::PokemonController, type: :api do
  context 'Bulbasaur, I choose you!' do
    before do
      get '/api/v1/pokemon/1'
    end

    it 'should respond with Bulbasaur data' do
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