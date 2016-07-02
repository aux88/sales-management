class OrderForm < ActiveRecord::Base
    has_many :orders, foreign_key: 'order_form_id'
    accepts_nested_attributes_for :orders
end
