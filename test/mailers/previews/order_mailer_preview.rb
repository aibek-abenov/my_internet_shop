# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  def new_order_email
    # Set up a temporary order for the preview
    order = Order.new(
      customer: "Joe Smith",
      adress: "1-2-3 Chuo, Tokyo, 333-0000",
      phone_number: "090-7777-8888",
      order: [
        {"name"=>"Слипоны  Zilli", "size"=>"27", "price"=>5000, "amount"=>10000, "quantity"=>2},
        {"name"=>"Балетка Bershka", "size"=>"25", "price"=>3000, "amount"=>3000, "quantity"=>1}
      ]
    )

    OrderMailer.with(order: order).new_order_email
  end

end
