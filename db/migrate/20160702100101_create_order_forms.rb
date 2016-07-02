class CreateOrderForms < ActiveRecord::Migration
  def change
    create_table :order_forms do |t|
      t.date :order_date
      t.string :title

      t.timestamps null: false
    end
  end
end
