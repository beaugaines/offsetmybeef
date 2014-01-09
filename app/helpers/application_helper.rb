module ApplicationHelper
  def formatted_price(amount)
    sprintf("$%0.2f", amount / 100.0)
  end

  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << 'Offset My Beef').join(' - ')
      end
    end
  end
  
end
