class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :user_id
      t.string :user_name

      t.timestamps null: false
    end
  end
end
