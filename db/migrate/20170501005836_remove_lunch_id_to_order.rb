class RemoveLunchIdToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :lunch_id, :integer
  end
end
