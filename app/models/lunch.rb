class Lunch < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items

def total_price
  lunch.price * qty
end

end
