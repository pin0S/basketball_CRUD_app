class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :location
      t.integer :n_players
      t.string :stadium
      t.integer :stadium_cap

      t.timestamps
    end
  end
end
