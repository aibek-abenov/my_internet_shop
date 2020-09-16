class OrderMailer < ApplicationMailer

  def new_order_email
    @order = params[:order]

    mail(to: ENV['ADMIN_EMAIL'].to_s, subject: "You got a new order!")
  end
end
