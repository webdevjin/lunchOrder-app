class RemoveLunchIdToCart < ActiveRecord::Migration[5.0]
  def change
    remove_column :carts, :lunch_id, :integer
  end
end
