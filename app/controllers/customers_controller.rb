class CustomersController < ApplicationController
    def index
        @q = Customer.search(params[:q])
        @customers = @q.result(distinct: true)
    end   
    
    def new
        @customer = Customer.new
    end
    
    def create
        
    end
    
    def update
        @customer = Customer.find(params[:id])
        @customer.update(customer_params)
        if @customer.save
            redirect_to root_path , notice: '注文書を保存しました'
        else
            redirect_to request.referrer , alert: '注文書の保存に失敗しました' 
        end
    end
    
    def show
        @customer = Customer.find_by_id(params[:id]) if params[:id]
        redirect_to request.referrer unless @customer
    end
  
    private
    
    def customer_params
        params.require(:customer).permit(:order_form, order_forms_attributes: [:id, :order_date, :orders, :_destroy])
    end
end
