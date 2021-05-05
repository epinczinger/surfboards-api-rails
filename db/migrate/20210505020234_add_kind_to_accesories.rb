class AddKindToAccesories < ActiveRecord::Migration[6.0]
  def change
    add_column :accesories, :kind, :string, default: 'accesories'
  end
end
