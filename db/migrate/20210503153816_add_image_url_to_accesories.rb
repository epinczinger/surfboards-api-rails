class AddImageUrlToAccesories < ActiveRecord::Migration[6.0]
  def change
    add_column :accesories, :image_url, :string
  end
end
