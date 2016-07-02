class OrderFormsController < ApplicationController
  def new
    @order_form = OrderForm.new
    @order_form.orders.build
  end
end
