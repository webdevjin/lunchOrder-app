class Lunch < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items

  def total_price
    lunch.price * qty
  end

  def price_in_dollars
    return sprintf '%.2f', (price / 100.0)
  end

end
