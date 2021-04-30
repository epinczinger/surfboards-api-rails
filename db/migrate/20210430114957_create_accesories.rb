class CreateAccesories < ActiveRecord::Migration[6.0]
  def change
    create_table :accesories do |t|
      t.string :category
      t.string :model
      t.string :brand
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
