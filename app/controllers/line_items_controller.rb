class LineItemsController < ApplicationController
  def create
    if params[:student_id] == "Choose Student"
      return redirect_to lunches_path
    end

    order = Order.create(user: @current_user)

    params[:line_items].each do |index, line_item|
      if line_item["qty"].to_i > 0
        LineItem.create(
          cart_id: @current_cart.id,
          lunch_id: line_item["lunch_id"],
          qty: line_item["qty"],
          delivery_day: line_item["day"],
          student_id: params[:student_id]
        )
      end
    end
    redirect_to current_cart_path
  end
end
