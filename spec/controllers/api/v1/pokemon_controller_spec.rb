require 'spec_helper'

describe Api::V1::PokemonController, type: :api do
  context 'Testing GET methods' do
    before do
      get '/api/v1/pokemon/1'
    end

    it 'should respond with Bulbasaur data' do
      expect(last_response.status).to eq(200)
    end
  end
end