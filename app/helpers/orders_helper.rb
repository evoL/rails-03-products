module OrdersHelper
  def format_price(total)
    '$' << sprintf('%.2f', total.to_f)
  end
end
