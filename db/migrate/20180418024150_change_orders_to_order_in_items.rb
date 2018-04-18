class ChangeOrdersToOrderInItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :order, :belongs_to
  end
end
