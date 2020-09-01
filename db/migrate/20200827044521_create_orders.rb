class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :customer
      t.string :adress
      t.string :phone_number
      t.jsonb :order

      t.timestamps
    end
  end
end
