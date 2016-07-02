class OrderFormsController < ApplicationController
  def new
    @order_form = OrderForm.new
  end
  def order_form_params
    params.require(:order_form).permit(:order_date, orders_attributes: [:id, :title, :date, :quantity, :_destroy])
  end
end
