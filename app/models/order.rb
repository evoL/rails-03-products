class Order < ActiveRecord::Base
  has_many :order_lines
  has_many :products, through: :order_lines

  def total
    order_lines.to_a.sum do |line|
      line.quantity * line.product.price
    end
  end
end
