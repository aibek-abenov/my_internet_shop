module CartHelper
  def cart_count
    cart = session[:cart]
    if cart && cart != {}
      cart.count
    else
      0
    end
  end
end
