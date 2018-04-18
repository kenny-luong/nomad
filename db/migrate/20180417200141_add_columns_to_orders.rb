class AddColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :items, :has_many
    add_column :orders, :name, :string
    add_column :orders, :store_location, :string
  end
end
