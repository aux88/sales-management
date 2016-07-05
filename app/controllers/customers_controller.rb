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
    
end
