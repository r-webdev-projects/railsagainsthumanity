class CreateWhiteCards < ActiveRecord::Migration
  def change
    create_table :white_cards do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
