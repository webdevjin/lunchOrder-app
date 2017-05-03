class CreateLunches < ActiveRecord::Migration[5.0]
  def change
    create_table :lunches do |t|
      t.string :lunchname
      t.text :description
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
