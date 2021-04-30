class CreateAccesories < ActiveRecord::Migration[6.0]
  def change
    create_table :accesories do |t|
      t.text :description
      t.decimal :price
      t.string :model
      t.string :brand

      t.timestamps
    end
  end
end
