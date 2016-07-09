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
    
    def show
        @customer = Customer.find_by_id(params[:id]) if params[:id]
        redirect_to request.referrer unless @customer
    end
end
