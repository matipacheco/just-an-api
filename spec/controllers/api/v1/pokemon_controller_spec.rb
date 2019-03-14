require 'json'
require 'spec_helper'

describe Api::V1::PokemonController, type: :api do
  bulbasaur = {
      "id": 1,
      "identifier": "bulbasaur",
      "height": 7,
      "weight": 69,
      "base_experience": 64
  }

  suki = {
      "identifier": 'Suki',
      "height": 1,
      "weight": 10,
      "base_experience": 0
  }

  ############################################################
  # GET test
  ############################################################
  context 'Bulbasaur, I choose you!' do
    before do
      get '/api/v1/pokemon/1'
    end

    it 'should respond with Bulbasaurs data' do
      expect(last_response.body).to eq(bulbasaur.to_json)
    end
  end

  ############################################################
  # PUT test
  ############################################################
  context 'Bulbasaur, I... update you (?)' do
    before do
      put '/api/v1/pokemon/1', pokemon: { "height": 1 }
    end

    it 'should respond with Bulbasaurs updated data' do
      response = JSON.parse last_response.body
      bulbasaur[:height] = 1

      expect(response.to_json).to eq(bulbasaur.to_json)

      bulbasaur[:height] = 7
    end
  end

  ############################################################
  # DELETE test
  ############################################################
  context 'Bulbasaur... I... kill you :(' do
    before do
      delete '/api/v1/pokemon/1'
    end

    it 'should respond with Bulbasaurs deleted data' do
      expect(last_response.body).to eq(bulbasaur.to_json)
    end
  end

  ############################################################
  # POST test
  ############################################################
  context 'Suki, I create you!' do
    before do
      post '/api/v1/pokemon', pokemon: suki
    end

    it 'should respond with Sukis created data' do
      response = JSON.parse last_response.body
      response.delete 'id'

      expect(response.to_json).to eq(suki.to_json)
    end
  end
end