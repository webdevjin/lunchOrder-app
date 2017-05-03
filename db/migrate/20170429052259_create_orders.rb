class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :lunch_id
      t.timestamp :order_at

      t.timestamps
    end
  end
end
