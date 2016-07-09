class Customer < ActiveRecord::Base
    has_many :order_forms, dependent: :destroy, inverse_of: :customer
    accepts_nested_attributes_for :order_forms, allow_destroy: true
end
