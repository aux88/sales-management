class OrderForm < ActiveRecord::Base
    has_many :orders, dependent: :destroy, inverse_of: :order_form
    belongs_to :customer
    accepts_nested_attributes_for :orders, allow_destroy: true
    
    #validates_presence_of :orders
end
