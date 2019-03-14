class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :identifier, :weight, :height, :base_experience
end
