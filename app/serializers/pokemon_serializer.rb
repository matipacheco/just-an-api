class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :identifier, :height, :weight, :base_experience
end
