class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.decimal :price, :precision => 6, :scale => 2
      t.string :model
      t.string :brand
      t.text :description
      t.string :image_url
      t.string :category

      t.timestamps
    end
  end
end
