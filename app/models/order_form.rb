class OrderForm < ActiveRecord::Base
    has_many :orders, foreign_key: 'order_form_id', dependent: :destroy, inverse_of: :order_form
    accepts_nested_attributes_for :orders, allow_destroy: true
end
