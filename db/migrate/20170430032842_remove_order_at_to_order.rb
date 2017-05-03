class RemoveOrderAtToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :order_at
  end
end
