class CreatePokemon < ActiveRecord::Migration[5.2]
  def up
    create_table :pokemons do |t|
      t.string  :identifier
      t.integer :height
      t.integer :weight
      t.integer :base_experience
      t.timestamps
    end
  end

  def down
    drop_table :pokemons
  end
end
