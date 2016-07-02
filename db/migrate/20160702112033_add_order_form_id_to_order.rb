class AddOrderFormIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :order_form_id, :integer
  end
end
