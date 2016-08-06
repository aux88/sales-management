class OrderFormsController < ApplicationController
  def new
    @customer = Customer.find_by_id(params[:customer_id])
    @order_form = @customer.order_forms.build
  end
  
  def create
    @order_form = OrderForm.new(order_form_params)
    if @order_form.save
      redirect_to root_path , notice: '注文書を保存しました'
    else
      # メッセージが保存できなかった時
      flash.now[:alert] = "注文書の保存に失敗しました。"
      render 'visitors/index'
    end
  end
  
  def order_form_params
    params.require(:order_form).permit(:order_date, :customer_id, orders_attributes: [:id, :title, :date, :quantity, :_destroy])
  end
end
