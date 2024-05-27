class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.string :nationality
      t.integer :dob

      t.timestamps
    end
  end
end
