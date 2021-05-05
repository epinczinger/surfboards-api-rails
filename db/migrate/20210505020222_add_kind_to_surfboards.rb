class AddKindToSurfboards < ActiveRecord::Migration[6.0]
  def change
    add_column :surfboards, :kind, :string, default: 'surfboards'
  end
end
