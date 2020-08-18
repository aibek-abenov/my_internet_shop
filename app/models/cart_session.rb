class CartSession < ApplicationRecord
   #Initalize Cart Session
    # def initialize(session)
    #     @session = session
    #     @session[:cart] ||= []
    # end

    #Cart Count
    # def cart_count
    #   cart = session[:cart]
    #   if (cart && cart != {})
    #       cart.count
    #   else
    #       0
    #   end
    # end

    #Cart Contents
    def self.cart_contents(cart)
      shoes = cart

      if (shoes && shoes != {})

        #Determine Quantities
        quantities = Hash[shoes.uniq.map {|i| [i, shoes.count(i)]}]

        #Get shoes from DB
        shoes_array = Shoe.find(shoes.uniq)

        #Create Qty Array
        shoes_new = {}
        shoes_array.each{
            |a| shoes_new[a] = {"qty" => quantities[a.id.to_s]}
        }

        return shoes_new

      end

    end

    #Qty & Price Count
    def self.total(cart)
      shoes = (cart)

      #Get subtotal of the cart items
      total = 0
      unless shoes.blank?
          shoes.each do |a|
              total += (a[0]["price"].to_f * a[1]["qty"].to_f)
          end
      end

      return total

    end

    # #Build Hash For ActiveMerchant
    # def build_order

    #     #Take cart objects & add them to items hash
    #     products = cart_contents

    #     @order = []
    #     products.each do |product|
    #         @order << {name: product[0].name, quantity: product[1]["qty"], amount: (product[0].price * 100).to_i }
    #     end

    #     return @order
    # end

    # #Build JSON Requests
    # def self.build_json(cart)
    #   binding.pry
    #     shoes = cart
    #     json = {
    #       :total => total.to_f.round(2),
    #       :cart => Hash[shoes.uniq.map {|i| [i, shoes.count(i)]}]
    #       }
    #     return json
    # end
end
