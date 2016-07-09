class Customer < ActiveRecord::Base
    has_many :order_forms, dependent: :destroy, inverse_of: :customer
end
