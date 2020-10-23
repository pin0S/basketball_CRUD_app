class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :school
      t.integer :height
      t.integer :weight
      t.integer :years
      t.integer :age
      t.money :salary
      t.boolean :free_agent
      t.string :position
      t.references :teams, null: false, foreign_key: true

      t.timestamps
    end
  end
end
