class CartSession < ApplicationRecord

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

end
