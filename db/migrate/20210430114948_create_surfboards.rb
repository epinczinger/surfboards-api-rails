class CreateSurfboards < ActiveRecord::Migration[6.0]
  def change
    create_table :surfboards do |t|
      t.string :model
      t.decimal :price, :precision => 6, :scale => 2
      t.string :brand
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
