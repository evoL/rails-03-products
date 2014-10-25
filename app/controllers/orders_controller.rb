class OrdersController < ApplicationController
  def show
    @orders = Order.includes(order_lines: :product).all
  end
end
