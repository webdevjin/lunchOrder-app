class AddsStripeTokenToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :stripe_token, :string
  end
end
