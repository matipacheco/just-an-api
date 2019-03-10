# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require 'csv'

$attribute_names = Pokemon.attribute_names

CSV.foreach(File.join(File.dirname(__FILE__), 'pokemon.csv'), { headers: true }) do |row|
  pokemon_attributes = row.to_h
  pokemon_attributes = pokemon_attributes.reject { |key, value| not $attribute_names.include? key }

  Pokemon.create(pokemon_attributes)
end