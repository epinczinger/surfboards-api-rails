class CreateSurfboards < ActiveRecord::Migration[6.0]
  def change
    create_table :surfboards do |t|
      t.string :model
      t.integer :price
      t.string :brand
      t.string :description

      t.timestamps
    end
  end
end
