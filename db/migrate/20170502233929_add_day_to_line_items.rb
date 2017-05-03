class AddDayToLineItems < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :delivery_day, :string
    remove_column :orders, :delivery_day
  end
end
