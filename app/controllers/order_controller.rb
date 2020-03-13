class OrderController < ApplicationController
skip_before_action :verify_authenticity_token, only: [:webhook]

#Takes the selected item and transfers the data to Stripe for purchase 
  def new
    @item = Item.find(params[:item_id])
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @item.description, 
        amount: (@item.price * 100).to_i,
        currency: 'aud',
        quantity: 1,
      }],
      payment_intent_data: {
        metadata: {
          user_id: current_user.id,
          item_id: @item.id
        }
      },
      success_url: "#{order_complete_url}",
      cancel_url: "#{home_url}",
    )
  end 

#Action to render a successful purchase page and link back to market
  def complete
  end 

#Webhook allows data to be passed from Stripe after successful purchase and 
#   a the item and user are saved to the data base as a new order
  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)

    item_id = payment.metadata.item_id
    user_id = payment.metadata.user_id
    p "book id #{item_id}"
    p "user id #{user_id}"

    @order = Order.new
    @order.user_id = user_id
    @order.item_id = item_id
    @order.save

    @item = Item.find(item_id)
    @item.sold = true
    @item.save

    render plain: "Success"
  end 

end


