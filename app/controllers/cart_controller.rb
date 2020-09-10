class CartController < ApplicationController
  include CartHelper


  def index
    cart = session[:cart]
    @cart = CartSession.cart_contents(cart)
    @cart_amount = CartSession.total(@cart)
    @order = Order.new
  end

  #Add
  def add
    id = params[:id]
    session[:cart] ||= []
    cart = session[:cart]

    #If exists, add new, else create new variable
    if cart
        cart << id
    else
        cart = Array(params[:id])
    end

    #Handle the request
    respond_to do |format|
      format.json { render json: build_json }
      format.html { redirect_to request.referrer }
    end

  end

  #Delete
  def delete
    id = params[:id]
    all = params[:all]
    shoes = session[:cart].sort!

    #Is ID present?
    unless id.blank?
      unless all.blank?
          shoes.delete(id)
      else
          shoes.delete_at(shoes.index(id) || shoes.length)
      end
    else
      shoes.clear
    end

    # #Handle the request
    respond_to do |format|
      format.json { render json: build_json }
      format.html { redirect_to cart_index_path }
    end
  end

  # def build_json
  #   cart = session[:cart]
  #   @cart = CartSession.cart_contents(cart)
  #   json = {
  #     :cart_count => cart.count,
  #     :cart => CartSession.cart_contents(cart),
  #     :cart_amount => CartSession.total(@cart)
  #   }
  #   json
  # end

  def create_order
    cart = session[:cart]
    @order = Order.new(order_params)
    if @order.save
      cart.clear
      redirect_to root_path
    else
      redirect_to cart_index_path
    end
  end

  private

  def order_params
    params["order"]["order"] = JSON.parse(params["order"]["order"])
    params.require(:order).permit(:customer, :adress, :phone_number, order: [:name, :size, :price, :quantity, :amount ])
  end
end
