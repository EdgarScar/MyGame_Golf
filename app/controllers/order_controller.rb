class OrderController < ApplicationController

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
      success_url: "#{order_complete_url}",
      cancel_url: "#{root_url}order/failed",
    )
  end 

  def complete
  end 

end
