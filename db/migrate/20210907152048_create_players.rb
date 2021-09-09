class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :level
      t.string :player_role
      t.string :train_center

      t.timestamps
    end
  end
end
