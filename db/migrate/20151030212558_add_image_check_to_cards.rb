class AddImageCheckToCards < ActiveRecord::Migration
  def change
    add_column :white_cards, :has_image, :boolean
    add_column :black_cards, :has_image, :boolean
  end
end
