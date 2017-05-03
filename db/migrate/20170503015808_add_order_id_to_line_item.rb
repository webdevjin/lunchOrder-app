class AddOrderIdToLineItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :line_items, :cart_id
    add_column :line_items, :order_id, :integer
  end
end
