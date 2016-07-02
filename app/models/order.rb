class Order < ActiveRecord::Base
    belongs_to :order_form, foreign_key: 'order_form_id'
end
