class CreateBlackCards < ActiveRecord::Migration
  def change
    create_table :black_cards do |t|
      t.string :text
      t.integer :blanks

      t.timestamps null: false
    end
  end
end
