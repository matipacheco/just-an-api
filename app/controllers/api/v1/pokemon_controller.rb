module Api
  module V1
    class PokemonController < ApplicationController
      def index
        render json: Pokemon.all
      end

      def show
        pokemon = Pokemon.find(params[:id])

        render json: pokemon
      end

      def create
        pokemon = Pokemon.create(pokemon_params)

        render json: pokemon
      end

      def update
        render json: {}
      end

      def delete
        pokemon = Pokemon.find(params[:id])
        pokemon.destroy

        render json: pokemon
      end

      private

      def pokemon_params
        params.require(:pokemon).permit(:identifier, :height, :weight, :base_experience)
      end
    end
  end
end