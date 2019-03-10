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
        pokemon = Pokemon.new
        pokemon.update_attributes(params[:pokemon])
        pokemon.save

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
    end
  end
end