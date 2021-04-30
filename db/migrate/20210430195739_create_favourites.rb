class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :favouriteable_id
      t.string :favouriteable_type

      t.timestamps
    end
  end
end
