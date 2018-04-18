class AddOrderIdToItems1 < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :order_id, :integer 
  end
end
