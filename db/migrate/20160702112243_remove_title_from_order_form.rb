class RemoveTitleFromOrderForm < ActiveRecord::Migration
  def change
    remove_column :order_forms, :title, :string
  end
end
