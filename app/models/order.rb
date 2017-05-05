class Order < ApplicationRecord
  belongs_to :user
  has_many :line_items, dependent: :destroy

  def self.paid
    Order.where.not(stripe_token: nil)
  end

  def self.unpaid
    Order.where(stripe_token: nil)
  end

end
