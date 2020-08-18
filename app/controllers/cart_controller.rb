class CartController < ApplicationController
  include CartHelper
 #Index
  def index
      cart = session[:cart]
      @cart = CartSession.cart_contents(cart)
      @cart_amount = CartSession.total(@cart)

      # @shipping = Shipping.all
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

  def build_json
    cart = session[:cart]
    @cart = CartSession.cart_contents(cart)
    json = {
      :cart_count => cart.count,
      :cart => CartSession.cart_contents(cart),
      :cart_amount => CartSession.total(@cart)
    }
    json
  end
end
