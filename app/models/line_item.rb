class LineItem < ApplicationRecord
  belongs_to :lunch
  belongs_to :student
  belongs_to :order

  def total_price
  lunch.price * qty
  end

  def amount_due
  line_items.to_a.sum { |item, total_price| item.amount_due }
  end

end
