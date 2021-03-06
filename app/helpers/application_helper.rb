module ApplicationHelper

  def cart_count_over_one
    if @cart.line_items.count.positive?
      return "<span class='tag is-dark'>#{@cart.line_items.count}</span>".html_safe
    end
  end

  def total_cart_items
    return @cart.line_items.count > 0
  end
end
