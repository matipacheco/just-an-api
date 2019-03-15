module Api
  module V1
    class PokemonController < ApplicationController
      def index
        begin
          render json: Pokemon.all

        rescue Exception => e
          render json: { code: 500, message: e.message }
        end
      end

      def show
        begin
          pokemon = Pokemon.find(params[:id])
          render json: pokemon

        rescue Exception => e
          render json: { code: 500, message: e.message }
        end
      end

      def create
        begin
          pokemon = Pokemon.create(pokemon_params)
          render json: pokemon

        rescue Exception => e
          render json: { code: 500, message: e.message }
        end
      end

      def update
        begin
          pokemon = Pokemon.find(params[:id])
          pokemon.update_attributes(pokemon_params)

          render json: pokemon

        rescue Exception => e
          render json: { code: 500, message: e.message }
        end
      end

      def destroy
        begin
          pokemon = Pokemon.find(params[:id])

          render json: pokemon.destroy

        rescue Exception => e
          render json: { code: 500, message: e.message }  
        end
      end

      private

      def pokemon_params
        params.require(:pokemon).permit(:identifier, :height, :weight, :base_experience)
      end
    end
  end
end