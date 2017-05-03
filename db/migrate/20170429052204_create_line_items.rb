class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.integer :user_id
      t.integer :student_id
      t.integer :cart_id
      t.integer :lunch_id
      t.integer :qty

      t.timestamps
    end
  end
end
